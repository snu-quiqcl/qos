use crate::{println, print};
use super::env::TrapFrame;
use core::ffi;
use core::str::FromStr;
use crate::io::uart::Uart;
use crate::io::mpcore::Mpcore;
use lazy_static::lazy_static;
use spin::Mutex;
pub static mut count_isr: u32 = 0;
pub static mut UART_TX_STR: &'static str = "uart...";
pub static mut UART_TX_LEN: u32 = 64;
pub static mut UART_TX_ITR: u32 = 64;
pub static mut UART_TX_SET: u32 = 0;

/*
pub struct WriteUart {
    pub UART_TX_STR: &'static str,
    pub UART_TX_LEN: u32,
    pub UART_TX_ITR: u32,
    pub UART_TX_SET: u32,
}

lazy_static! {
    pub static ref WRITEUART: Mutex<WriteUart> = Mutex::new(WriteUart {
        pub UART_TX_STR = "uart...",
        pub UART_TX_LEN = 0,
        pub UART_TX_ITR = 0,
        pub UART_TX_SET = 0,
    }) {

    }
}
*/

#[no_mangle]
pub extern "C" fn undefined(tf: &TrapFrame) {
    println!("undefined");
}
#[no_mangle]
pub unsafe extern "C" fn svc(tf: &TrapFrame) {
    match tf.reg[0] {
        0 => {
            let s = tf.reg[1] as *const u8;
            for i in 0..tf.reg[2] {
                print!("{}", *s.offset(i as isize) as char);
            }
        },
        _ => {}
    }
}
#[no_mangle]
pub extern "C" fn prefetch_abort(tf: &TrapFrame) {
    println!("prefetch");
}
#[no_mangle]
pub extern "C" fn data_abort(tf: &TrapFrame) {
    println!("{:x?}", tf);
}
#[no_mangle]
pub unsafe extern "C" fn irq() {
    let irqid: u32 = irq_acknowledge_interrupt();
    match irqid {
        82 => { /* Uart TX Empty*/
            unsafe {count_isr += 1;}
            let mut uart = Uart::get();
            uart.regs.isr_tx(UART_TX_STR);
            uart.regs.isr.write(0 << 3); // disable before return
              },
        _ => {}
    }
    irq_end_interrupt(irqid);
}
#[no_mangle]
pub extern "C" fn fiq(tf: &TrapFrame) {
    println!("fiq");
}

pub fn irq_acknowledge_interrupt() -> u32 {
    let mut mpcore = Mpcore::get();
    let iar_mask: u32 = 0x3ff;
    let irqid: u32 = mpcore.cpu_interface.iar.read() & iar_mask;
    irqid
}

pub fn irq_end_interrupt(irqid: u32) {
    let mut mpcore = Mpcore::get();
    let eoi_mask = 0x1c00;
    let mut eoi: u32 = mpcore.cpu_interface.eoir.read() & eoi_mask;
    eoi +=  irqid;
    unsafe {
        mpcore.cpu_interface.eoir.write(eoi);
    }
}