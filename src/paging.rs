use crate::{println, print};
use crate::mem;
use crate::util;

pub const KERN_BASE: usize = 0xc0000000;
pub const UTOP: usize = 0xc0000000;
pub const USTACK: usize = 0x40000000;
pub const PAGE_SIZE: usize = 4096;
pub const NUM_PAGES: usize = ((1<<30) / PAGE_SIZE) << 2;
/// Section size: 1MB
pub const SECTION_SIZE: usize = 1<<20;

const DIRECTORY_MASK: usize = !((1<<20) - 1);
const TABLE_ADDR_MASK: usize = !((1<<10) -1);
const L2_ADDR_MASK: usize = !((1<<12)-1);

const SECTION_MASK: usize = 0x2;
const TABLE_MASK: usize = 0x1;

pub const USER_FLAG:usize = 1<<5;

pub use mem::{Vaddr, Paddr};

extern "C" {
    static _kern_pgdir: usize;
}

#[repr(C)]
pub struct L1PageTable {
    pub entries: [L1TableEntry; 4096],
}   

static mut MMIO_BASE: usize = KERN_BASE - 16 * SECTION_SIZE;

impl L1PageTable {
    pub fn map_va2pa(&mut self, va: Vaddr, pa: Paddr, flag: usize) {
        let va = va.addr;
        let pa= pa.addr;


        let directory;
        unsafe {
            directory = &mut *(&mut self.entries[va/SECTION_SIZE] as *mut L1TableEntry);
        }
        if directory.is_section() {
            panic!("Attempt {:x}-> {:x}: Can't remap section", va, pa);
        } else if directory.is_table() {
        } else {
            let data = alloc_frame(PAGE_SIZE, 1).to_paddr().addr | 0x1;
            unsafe {
                let directory_ptr = self.entries.as_mut_ptr().offset(util::round_down(va/SECTION_SIZE, 4) as isize);
                *directory_ptr = L1TableEntry{ data};
                *directory_ptr.offset(1) = L1TableEntry{data: data + PAGE_SIZE/4};
                *directory_ptr.offset(2) = L1TableEntry{data: data + 2 * PAGE_SIZE/4};
                *directory_ptr.offset(3) = L1TableEntry{data: data + 3 *PAGE_SIZE/4};
            }
        }

        
        let l2_table = directory.get_l2_table();
        l2_table.entries[(va&!DIRECTORY_MASK)/PAGE_SIZE] = L2TableEntry { data: L2_ADDR_MASK&pa | flag | 0x89e};
    
    }

    pub fn map_device(&mut self, pa: Paddr, flag: usize) -> Vaddr {
        let va;
        let pa = pa.addr;
        unsafe {
            va = MMIO_BASE;
            MMIO_BASE += PAGE_SIZE;
        }
        let directory = &mut self.entries[va/SECTION_SIZE];
        
        if directory.is_section() {
            panic!("Attempt {:x}-> {:x}: Can't remap section", va, pa);
        } else if directory.is_table() {
    
        } else {
            *directory = L1TableEntry{ data: alloc_frame(PAGE_SIZE, 1).to_paddr().addr
                | 0x1};
        }
        let l2_table = directory.get_l2_table();
        l2_table.entries[(va&!DIRECTORY_MASK)/PAGE_SIZE] = L2TableEntry { data: L2_ADDR_MASK&pa | flag | 0x813};   
        
        Vaddr::new(va)
    }

    pub fn get() -> &'static mut Self {
        // Read page table base address (Physical addr)
        let pgdir_addr = crate::reg::TTBR0::read() as usize;
        // Change to Virtual address
        let pgdir_addr = pgdir_addr | KERN_BASE;
        let pgdir;
        unsafe {
            pgdir = &mut *(pgdir_addr as *mut L1PageTable);
        }
        pgdir
    }
    pub fn get_kern_pgdir() -> &'static mut Self {
        unsafe {
            let kern_pgdir_addr = &_kern_pgdir as *const usize as usize;
            let kern_pgdir_addr = kern_pgdir_addr ^ KERN_BASE;
            let kern_pgdir = &mut *(kern_pgdir_addr as *mut _);
            kern_pgdir
        }
    }

    pub fn list(&self) {
        for (i, entry) in self.entries.iter().enumerate() {
            if entry.is_table() {
                println!("Section {} => {:x}", i, entry.data);
            }
        }
    }

}

#[repr(C)]
pub struct L1TableEntry {
    pub data: usize
}

impl L1TableEntry {
    pub fn is_present(&self) -> bool {
        self.is_section() || self.is_table()
    }

    pub fn is_section(&self) -> bool {
        self.data & SECTION_MASK != 0
    }

    pub fn is_table(&self) -> bool {
        self.data & TABLE_MASK != 0
    }

    pub fn get_l2_table(&self) -> &mut L2PageTable {
        unsafe {
            &mut *(((self.data & TABLE_ADDR_MASK) ^ KERN_BASE)  as *mut L2PageTable)
        }
    }
}

#[repr(C)]
pub struct L2PageTable {
    pub entries: [L2TableEntry; 256],
}

pub struct L2TableEntry {
    data: usize
}

impl L2TableEntry {
    pub fn is_present(&self) -> bool {
        self.data & 2 != 0
    }
}


/// Map [3G, 4G-1M) => [0, 1G-1M]
pub unsafe fn page_init() {
    let kern_pgdir = L1PageTable::get();
    let entries = &mut kern_pgdir.entries;
    let mut i = 0;
    mem::memset(entries as *mut _ as *mut u8, 0, 1024*3*4);
    let offset = KERN_BASE / (1024*1024); 
    while i < 1024 {
        entries[i+offset].data = (i << 20) | 0x1280e;
        i += 1;
    }
}

fn directory_index(va: Vaddr) -> usize{
    va.addr / SECTION_SIZE
}

use crate::mem::alloc_frame;

 /// return physical address of old pgdir
pub unsafe fn change_pgdir(pa: Paddr) {
    crate::reg::TTBR0::write(pa.addr);
    // TLB flush
    asm!("MCR p15, 0, r0, c8, c5, 0")
}

pub fn list_pgdir(pgdir: &L1PageTable) {
    for (i, entry) in pgdir.entries.iter().enumerate() {
        if entry.is_present() {
            println!("{} {:8x}",i, entry.data);
        }
    }
}

/* ARM Page table entry format (Simplified)
    Section: 1MB
    PA[31:20]   000S    AP[2]TEX[2:0]AP[1]  AP[0](IMP)00  000X    CB10
    Page table
    Table addr[31:10]                            (IMP)00  0000    0001
    Small Page
    PA[31:12]                               0SAP[2]TEX[2] TEX[1:0]AP[1:0] CB1X


    Sharable device
    TEX = 0 C = 0 B = 1 S = 1
    Normal Outer sharable Write-Back Write-Allocate Cacheable
    TEX = 001 C =1 B = 1 S = 1
*/

/* ARM VMSAv7 MMU access permissions
    AP[2]   AP[1:0]     Kernel      User
    0       00          x           x
    0       01          RW          x
    0       10          RW          RO
    0       11          RW          RW
    1       00    reserved
    1       01          RO          x
    1       10          RO          RO (deprecated)
    1       11          RO          RO

    Simplified model
    AP[0] is always set
    AP[1] is user bit
    AP[2] is RO bit
*/

