use super::env::TrapFrame;
use crate::env::{self, get_envs};
use crate::io::mpcore;
use crate::io::uart;
use crate::syscall;
use crate::{env::EnvStatus, sched};
use crate::{print, println};
use core::ffi;

pub static mut count_tx_irq: u32 = 0;
pub static mut count_ptc_irq: u32 = 0;

#[no_mangle]
pub extern "C" fn undefined(tf: &TrapFrame) {
    println!("undefined");
}
#[no_mangle]
pub unsafe extern "C" fn svc(tf: &mut TrapFrame) {
    let tf_static = &mut get_envs().envs[env::get_current_env().unwrap()].tf;
    *tf_static = *tf;
    syscall::dispatch_syscall(tf);
}

#[no_mangle]
pub unsafe extern "C" fn irq(tf: &TrapFrame, is_user: bool) {
    let mut mpcore = mpcore::Mpcore::get();
    let irqid: u32 = mpcore.irq_acknowledge_interrupt();
    match irqid {
        29 => {
            /* Timer */
            let mut mpcore = mpcore::Mpcore::get();
            count_ptc_irq += 1;
            //println!("{}", count_ptc_irq);
            //mpcore.irq_ptc_preempt(count_ptc_irq);
            mpcore.clear_interrupt(irqid);
            mpcore.irq_end_interrupt(irqid);
            let env = env::get_current_env().unwrap();
            let envs = env::get_envs();
            if is_user {
                envs.envs[env].tf = *tf;
            }
            envs.envs[env].status = EnvStatus::Runnable;

            sched::sched_yield();
        }
        82 => {
            /* Uart */
            const UART_TX_EMPTY: u32 = 0x8;

            let mut uart = uart::Uart::get();
            let uart_irqid = uart.regs.read_interrupt();

            if uart_irqid & UART_TX_EMPTY == UART_TX_EMPTY {
                count_tx_irq += 1;
                uart.irq_tx_empty();
                uart.regs.clear_interrupt(UART_TX_EMPTY);
            }
        }
        _ => {}
    }
}

#[no_mangle]
pub extern "C" fn fiq(tf: &TrapFrame) {
    println!("fiq");
}

#[no_mangle]
pub unsafe extern "C" fn page_fault_handler(addr: usize, faulted_instruction: usize) {
    panic!("invalid address: {:x} at {:x}", addr, faulted_instruction);
}
