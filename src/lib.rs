#![no_std]
#![feature(asm)]
#![feature(rustc_private)]
#![feature(global_asm)]

pub mod elf;
pub mod env;
pub mod interrupt;
pub mod io;
pub mod lock;
pub mod mem;
pub mod paging;
pub mod reg;
pub mod sched;
pub mod syscall;
pub mod util;

global_asm!(include_str!("init.S"));
static USER_PROG: &[u8] = include_bytes!("../usr/hello");

pub fn init() {
    unsafe {
        mem::mem_init(); // Initialize memory allocator
        paging::page_init(); // Initialize kernel page mapping
        io::slcr::slcr_init(); // Map system level control registers
        io::mpcore::mpcore_init(); // Map mpcore registers
        io::mpcore::gic_init(); // Initialize generic interrupt controller
        io::uart::uart_init(); // Initialize uart
        io::axi::axi_init(); // Initialize axi

        let mut uart = io::uart::Uart::get();
        let mut timer = io::mpcore::Mpcore::get();

        io::mpcore::timer_init();

        env::env_init();
        env::env_create(USER_PROG.as_ptr() as usize);
        sched::sched_yield();
    }
}

pub fn test() {}
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    println!("{}", info);
    unsafe {
        loop {
            asm!("wfe")
        }
    }
}
