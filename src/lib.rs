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

global_asm!(include_str!("init.S"));
static USER_PROG:&[u8] = include_bytes!("../usr/shell");

pub fn init() {
    unsafe {
        io::slcr::slcr_init(); // Map system level control registers
        
        io::uart::uart_init();// Initialize uart
        paging::page_init(); // Initialize kernel page mapping
        mem::mem_init(); // Initialize memory allocator
        
 //       println!("Init slcr");
        io::mpcore::mpcore_init(); // Map mpcore registers
        io::mpcore::gic_init(); // Initialize generic interrupt controller
        println!("Init gic");

        /* println uses polling for debugging issues
           uart.print is interrupt-driven */
        println!("num uart_tx interrupt: {}", interrupt::count_isr);
        println!("num uart_tx interrupt: {}", interrupt::count_isr);
        println!("num uart_tx interrupt: {}", interrupt::count_isr);

        env::env_init();       
        let user_prog = mem::alloc_frame(3, 0);
        use mem::memcpy;
        memcpy(user_prog.addr as *mut u8, USER_PROG.as_ptr(), USER_PROG.len());
        env::env_create(user_prog.addr);
        
    }
}

pub fn test() {
}
#[panic_handler]
fn panic(info: &core::panic::PanicInfo) -> ! {
    println!("{}", info);
    unsafe { loop { asm!("wfe") } }
}