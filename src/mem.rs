//! Initial physial memory
//!```
//! 1G -----------> +------------------------------+
//!                 |                              |
//!                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//!                 :              .               :
//!                 :              .               :
//!                 +------------------------------+
//!                 |          boot stack          |  16KB
//!                 +------------------------------+
//!                 |  Kernel(text, data, bss)     |
//!                 +------------------------------+
//!                 |         MMIO_pgtable         |  1KB
//!                 +------------------------------+
//!                 |         kern_pgdir           |  16KB
//!                 +------------------------------+
//!                 |         .text.init           |  16KB
//! 1M -----------> +------------------------------+
//!```
//! Virtual memory map
//!```
//! 4G -----------> +------------------------------+
//!                 |          MMIO region         | 1MB
//!                 +------------------------------+
//!                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//!                 :              .               :
//!                 :              .               :
//!                 +------------------------------+
//!                 |          IRQ stack           |  4KB 
//!                 +------------------------------+
//!                 |          boot stack          |  16KB
//!                 +------------------------------+
//!                 |  Kernel(text, data, bss)     |
//!                 +------------------------------+
//!                 |         MMIO_pgtable         |  1KB
//!                 +------------------------------+
//!                 |         kern_pgdir           |  16KB
//!                 +------------------------------+
//!                 |         .text.init           |  16KB
//! 3G + 1M ------> +------------------------------+
//!                 |                              |
//!                 +------------------------------+
//!                 |            empty             |  1 MB
//! 1M -----------> +------------------------------+
//!```



use crate::env::{UserEnv, ENVS};
use crate::util::round_up;


pub unsafe fn memset(dest: *mut u8, value: u8, size: usize) {
    for i in 0..(size as isize) {
        *dest.offset(i) = value;
    }
}

pub unsafe fn memcpy(dest: *mut u8, src: *const u8, size: usize) {
    for i in 0..(size as isize) {
        *dest.offset(i) = *src.offset(i);
    }
}

extern "C" {
    static _bootstack: usize;
    static _bss_start: usize;
    static _bss_end: usize;
    static _irq_stack: usize;
    static _uart_buffer: usize;
}

/// Kernel virtual memory
#[derive(Clone, Copy, Debug)]
pub struct Vaddr {
    pub addr: usize
}

impl Vaddr {
    pub fn new(addr: usize) -> Self {
        Vaddr { addr }
    }
    pub fn to_paddr(&self) -> Paddr {
        Paddr::new(self.addr ^ KERN_BASE)
    }
}

/// Physical memory
#[derive(Clone, Copy, Debug)]
pub struct Paddr {
    pub addr: usize
}

impl Paddr {
    pub const fn new(addr: usize) -> Self {
        Paddr { addr }
    }
    pub fn to_vaddr(&self) -> Vaddr {
        Vaddr::new(self.addr ^ KERN_BASE)
    }
}

use super::paging::{KERN_BASE, PAGE_SIZE};
static mut NEXT: usize = 0;

/// Initialize bss and
/// physical frame allocator.
pub unsafe fn mem_init() {
    use core::mem::size_of;
    // Init bss
    let bss_start = &_bss_start as *const usize as usize;
    let bss_end = &_bss_end as *const usize as usize;
    memset(bss_start as *mut u8, 0, bss_end - bss_start);

    // irq stack is end of kernel
    let mut end = &_uart_buffer as *const usize as usize;

    // Alloc user env array
    ENVS = boot_alloc(&mut end, size_of::<UserEnv>());
    NEXT = end;
}

/// Allocate a physical frame
/// Panic if allocation failed
pub fn alloc_frame(len: usize, flag: u32) -> Vaddr {
    let ret;
    unsafe {
        ret = NEXT;
        NEXT += round_up(len, PAGE_SIZE);
        if flag & 1 != 0 {   
            memset(ret as *mut u8, 0, len);
        }
    }
    Vaddr::new(ret)
}

/// Do nothing
pub fn free_frame(frame_number: usize) {
}

/// Allocator for initial setup
/// allocate static kernel memory
pub unsafe fn boot_alloc(next_free: &mut usize, size: usize) -> Vaddr {
    let ret = *next_free;
    *next_free = round_up(*next_free + size, PAGE_SIZE);
    memset(ret as *mut u8, 0, size);
    Vaddr::new(ret)
}

