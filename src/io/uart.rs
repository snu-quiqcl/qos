use volatile_register::{RO, RW};
use core::fmt::Write;
use crate::io::slcr;
use crate::paging::KERN_BASE;
use crate::{println, print};
use lazy_static::lazy_static;
use spin::Mutex;

pub const _UART_PHYS: usize = 0xe000_1000; // Physical base address of Uart 1   
pub const _UART_VIRT: usize = 0xfff0_0000; // Virtual base address of Uart -> UartRegs

pub struct IrqTxEmpty {
    pub UART_TX_STRING: &'static str,
    pub UART_TX_LENGTH: u32,
    pub UART_TX_ITERATE: u32,
    pub UART_TX_RANGE: u32,
}

lazy_static! {
    pub static ref IRQ_TX_EMPTY: Mutex<IrqTxEmpty> = Mutex::new(IrqTxEmpty {
        UART_TX_STRING: "uart...",
        UART_TX_LENGTH: 64,
        UART_TX_ITERATE: 64,
        UART_TX_RANGE: 0,
    });
}

#[repr(C)]
pub struct UartRegs {
    pub cr: RW<u32>,          // Control Register
    pub mr: RW<u32>,          // Mode Register
    pub ier: RW<u32>,         // Interrupt Enable
    pub idr: RW<u32>,         // Interrupt Disable
    pub imr: RO<u32>,         // Interrupt Mask 
    pub isr: RW<u32>,         // Channel Interrupt Status
    pub baudgen: RW<u32>,     // Baud Rate
    pub rx_tout: RW<u32>,     // Receiver Timeout
    pub rxwm: RW<u32>,        // Receiver FIFO Trigger level
    pub modem_cr: RW<u32>,    // Modem Control
    pub modem_st: RW<u32>,    // Modem Status
    pub sr: RO<u32>,          // Channel status
    pub fifo: RW<u32>,        // Transmit and recieve
    pub baudgen_div: RW<u32>, // Baud Rate Divder
    pub flow_delay: RW<u32>,  // Flow Control Delay
    pub reserved: [u32;2],
    pub tx_trigger: RW<u32>,  // Transmitter FIFO Trigger level
}

impl UartRegs {
    pub const TX_FIFO: u32 = 64;

    pub fn macro_print(&mut self, s: &str) {
        for c in s.bytes() { self.macro_write(c) }        
    }

    pub fn macro_write(&mut self, c: u8) {
        // while self.is_tx_full() {} // polling
        unsafe { self.fifo.write(c as u32); }
    }

    pub fn irq_tx_empty (&mut self) {
        let mut tx_empty_lock = IRQ_TX_EMPTY.lock();
        let tx_str = tx_empty_lock.UART_TX_STRING;
        if tx_empty_lock.UART_TX_ITERATE > Self::TX_FIFO {
            let tx_ran: usize = tx_empty_lock.UART_TX_RANGE as usize;
            let tx_itr = &tx_str[tx_ran..(tx_ran+(Self::TX_FIFO as usize))+1];
            for c in tx_itr.bytes() { self.irq_write(c); }
            tx_empty_lock.UART_TX_ITERATE -= Self::TX_FIFO;
            tx_empty_lock.UART_TX_RANGE += Self::TX_FIFO;
        } else {
            let tx_ran: usize = tx_empty_lock.UART_TX_RANGE as usize;
            let tx_len: usize = tx_empty_lock.UART_TX_LENGTH as usize;
            let tx_itr = &tx_str[tx_ran..tx_len];
            for c in tx_itr.bytes() { self.irq_write(c); }
            self.disable_interrupt();
        }
        drop(tx_empty_lock);
    }

    pub fn irq_write(&mut self, c: u8) {
        unsafe {self.fifo.write(c as u32); }
    }

    pub fn macro_read(&mut self) -> u8 {
        // while self.is_rx_empty() {} // polling
        self.fifo.read() as u8
    }

    pub fn enable_interrupt(&mut self) {
        unsafe {self.ier.write(1 << 3); } 
    }

    pub fn disable_interrupt(&mut self) {
        unsafe {self.idr.write(1 << 3); } 
    }

    pub fn read_interrupt(&mut self) -> u32 {
        self.sr.read() as u32
    }

    pub fn clear_interrupt(&mut self, irq_type: u32) {
        match irq_type {
            0x8 => { unsafe {self.isr.write(0 << 3); } },
            _ => {}
        }
    }
}

impl Write for UartRegs {
    fn write_str(&mut self, s: &str) -> Result<(), core::fmt::Error> {
        self.macro_print(s);
        Ok(())
    }
}

/// Wrapper for UartRegs
pub struct Uart {
    pub regs: &'static mut UartRegs,
}

impl Uart {
    pub const UART_BASE: *mut UartRegs = _UART_VIRT as *mut UartRegs;

    pub fn get() -> Uart {
        Uart {
            regs: unsafe {&mut *(Self::UART_BASE)}
        }
    }

    pub fn rst_clk(&self) {
        if (slcr::_SLCR_VIRT) ^ KERN_BASE != slcr::_SLCR_PHYS { return } // check if Slcr has been mapped
        let mut slcr = slcr::Slcr::get();
        unsafe{
            slcr.set_uart_1();
        }
    }

    pub unsafe fn config_frame(&mut self, chmode: u32, nbstop: u32, par: u32, chrl: u32, clk: u32) {
        /* Character frame
            CHMODE[9:8]   NBSTOP[7:6]   PAR[5:3]   CHRL[2:1]   CLKSEL[0]
            CLKSEL: uart_ref_clk(0), uart_ref_clk/8(1)
            default: chmode: normal(00), nbstop: 1 stop bit(00), par: none(100), chrl: 8 bits(00), clk: ref(00) 
        */
        self.regs.mr.write((chmode << 8) | (nbstop << 6) | (par << 3) | (chrl << 1) | clk);
    }   

    pub unsafe fn config_baud(&mut self, cd: u32, bdiv: u32) {
        /* Baud rate (Table 19-1 in Zynq-7000 SOC TRM)
            1. regs.cr             TX_DIS[5]   TX_EN[4]   RX_DIS[3]   RX_EN[2]   TX_RST[1]   RX_RST[0]
            2. regs.baudgen        CD[15:0]
            3. regs.badugen_div    BDIV[7:0]
            note: baud rate: 115,200 -> cd: (62), bdiv: (6) or 921,600 -> cd: (9), bdiv: (5) when uart_clk = 50 MHz     
        */
        self.regs.cr.write((1 << 5) | (1 << 3)); // disable TX and RX paths
        self.regs.baudgen.write(cd);                
        self.regs.baudgen_div.write(bdiv);
    }

    pub unsafe fn config_trig_lev(&mut self, trig: u32) {
        /* RxFIFO trigger level
            RTRIG[5:0]
            default: trig: none(0) / when non-zero, write value between 1 - 63
        */
        self.regs.rxwm.write(trig);
    }

    pub unsafe fn enable_ctrl(&mut self) {
        // Enable (Refer to config_baud)
        self.regs.cr.write((1 << 1) | 1); // reset TX and RX paths
        self.regs.cr.write((1 << 4) | (1 << 2)) // enable TX and RX paths
    }

/*
    pub unsafe fn config_timeout(&mut self) {
        /* Receiver timeout mechanism
        */

    }

    pub unsafe fn config_trig_irpt(&mut self) {
        /* RxFIFO trigger level interrupt
        */
    }

*/

/*
    pub unsafe receive(&self) {
        /* Receive using interrupt
        */
    }
*/

    pub unsafe fn config_init(&mut self){
        //if self.regs.cr.read() & (1<<4) != 0 { return } // check if transmit bit is disabled
        self.rst_clk();
        self.config_frame(0, 0, 3, 0, 0); // no parity
        self.config_baud(651, 15); // reset value
        self.config_trig_lev(0);
        self.enable_ctrl();
       }

    pub fn print(&mut self, s: &'static str) {
        let str_len: u32 = s.len() as u32;
        let mut tx_empty_lock = IRQ_TX_EMPTY.lock();
        tx_empty_lock.UART_TX_STRING = s;
        tx_empty_lock.UART_TX_LENGTH = str_len;
        tx_empty_lock.UART_TX_ITERATE = str_len;
        tx_empty_lock.UART_TX_RANGE = 0;
        drop(tx_empty_lock);
        self.regs.enable_interrupt();
    }
}

/// Initialize uart
/// Reference: Zynq-7000 SOC TRM
pub unsafe fn uart_init() {
    let mut uart = Uart::get();
    uart.config_init();
}

#[doc(hidden)]
pub fn _print(args: core::fmt::Arguments) {
    unsafe {
        let mut uart = Uart::get();
        uart.regs.write_fmt(args).unwrap();
    }
}

#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => ($crate::io::uart::_print(format_args!($($arg)*)));
}

#[macro_export]
macro_rules! println {
    () => (print!("\r\n"));
    ($($arg:tt)*) => (print!("{}\r\n", format_args!($($arg)*)));
}