#![no_std]
#![feature(asm)]
#![feature(rustc_private)]
#![feature(global_asm)]

pub mod io;
pub mod mem;
pub mod paging;
pub mod reg;
pub mod util;
pub mod interrupt;
pub mod env;
pub mod lock;
pub mod elf;
pub mod sched;
pub mod syscall;

global_asm!(include_str!("init.S"));
static USER_PROG:&[u8] = include_bytes!("../usr/shell");

pub fn init() {
    unsafe {
        mem::mem_init(); // Initialize memory allocator
        paging::page_init(); // Initialize kernel page mapping
        io::slcr::slcr_init(); // Map system level control registers
        io::mpcore::mpcore_init(); // Map mpcore registers
        io::mpcore::gic_init(); // Initialize generic interrupt controller
        io::uart::uart_init();// Initialize uart

        let mut uart = io::uart::Uart::get();
        let mut timer = io::mpcore::Mpcore::get();
        io::mpcore::timer_init();

        for i in 0..17 {
            let stamp = timer.ptc_get_counter();
            //println!("stamp: {}", stamp);
            //uart.print("uart----------12----\n");
            //uart.print("uart----------34---------------------\n");
        };

        //println!("num count_tx_irq : {}", interrupt::count_tx_irq);
        //println!("num count_ptc_irq : {}", interrupt::count_ptc_irq);
        
        env::env_init();
        let user_prog = mem::alloc_frame(3, 0);
        use mem::memcpy;
        memcpy(user_prog.addr as *mut u8, USER_PROG.as_ptr(), USER_PROG.len());
        env::env_create(user_prog.addr);
        env::env_create(user_prog.addr);
        sched::sched_yield();

    }
}

pub fn test() {
}
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    println!("{}", info);
    unsafe { loop { asm!("wfe") } }
}