use crate::{println, print};
use super::env::TrapFrame;
use core::ffi;
use crate::io::uart;
use crate::io::mpcore::Mpcore;

pub static mut count_isr: u32 = 0;

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
        82 => { /* Uart */
            const UART_TX_EMPTY: u32 = 0x8;

            let mut uart = uart::Uart::get();
            let uart_irqid = uart.regs.sr.read();
            
            if uart_irqid & UART_TX_EMPTY == UART_TX_EMPTY {
                unsafe {count_isr += 1;}
                uart.regs.irq_tx_empty();
                uart.regs.isr.write(0 << 3); // disable channel status
            }
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