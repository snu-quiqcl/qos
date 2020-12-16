use crate::{println, print};
use super::env::TrapFrame;
use core::ffi;
use crate::io::uart;
use crate::io::mpcore;
use crate::env::{self, get_envs};
use crate::syscall;

pub static mut count_isr: u32 = 0;

#[no_mangle]
pub extern "C" fn undefined(tf: &TrapFrame) {
    println!("undefined");
}
#[no_mangle]
pub unsafe extern "C" fn svc(tf: &TrapFrame) {
    get_envs().envs[env::get_current_env().unwrap()].tf = *tf;
    syscall::dispatch_syscall(tf);
}

#[no_mangle]
pub unsafe extern "C" fn irq() {
    let mut mpcore = mpcore::Mpcore::get();
    let irqid: u32 = mpcore.irq_acknowledge_interrupt();
    match irqid {
        82 => { /* Uart */
            const UART_TX_EMPTY: u32 = 0x8;

            let mut uart = uart::Uart::get();
            let uart_irqid = uart.regs.read_interrupt();
            
            if uart_irqid & UART_TX_EMPTY == UART_TX_EMPTY {
                unsafe {count_isr += 1;}
                uart.regs.irq_tx_empty();
                uart.regs.clear_interrupt(UART_TX_EMPTY);
            }
            }, 
        _ => {}
    }
    mpcore.irq_end_interrupt(irqid);
}
#[no_mangle]
pub extern "C" fn fiq(tf: &TrapFrame) {
    println!("fiq");
}

#[no_mangle]
pub unsafe extern "C" fn page_fault_handler(addr: usize) {
    println!("{:x}", addr);
}