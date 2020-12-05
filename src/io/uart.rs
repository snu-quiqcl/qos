use volatile_register::{RO, RW};
use core::fmt::Write;
use crate::io::slcr;
use crate::paging::KERN_BASE;

pub const _UART_PHYS: usize = 0xe000_1000; // Physical base address of Uart (1)   
pub const _UART_VIRT: usize = 0xfff0_0000; // Virtual base address of Uart -> UartRegs

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

    pub fn write(&mut self, c: u8) {
        while self.is_tx_full() {} // Polling
        unsafe {
            self.fifo.write(c as u32);
        }
    }

    pub fn write_str(&mut self, s: &str) {
        let str_len: u32 = s.len() as u32;
        let mut len_itr: u32 = str_len;
        let mut _itr: u32 = 0;

        if str_len > Self::TX_FIFO {
            while len_itr > Self::TX_FIFO {
                for c in s.bytes() {
                    if (c as u32) > _itr-1 && (c as u32) < _itr+(Self::TX_FIFO) { self.write(c); }
                }
                len_itr -= Self::TX_FIFO;
                _itr += Self::TX_FIFO;
            } 
            for c in s.bytes() {
                if (c as u32) > _itr-1 && (c as u32) < _itr+(Self::TX_FIFO) { self.write(c); }
            }
        } else {
            for c in s.bytes() {
                self.write(c);
            }
        }
    }
/* 
    pub fn write_str(&mut self, s: &str) {
        for c in s.bytes() {
            if (c as u32) >= 0 && (c as u32) < Self::TX_FIFO { self.write(c); }
        }
        while self.is_tx_full {}

    }
 */
    pub fn read(&mut self) -> u8 {
        while self.is_rx_empty() {} // polling
        self.fifo.read() as u8
    }

    pub fn is_tx_full(&self) -> bool {
        (self.sr.read() & (1<<4)) != 0
    }

    pub fn is_tx_empty(&self) -> bool {
        (self.sr.read() & (1<<3)) != 0
    }

    pub fn is_rx_full(&self) -> bool {
        (self.sr.read() & (1<<2)) != 0
    }

    pub fn is_rx_empty(&self) -> bool {
        (self.sr.read() & (1<<1)) != 0
    }
}

impl Write for UartRegs {
    fn write_str(&mut self, s: &str) -> Result<(), core::fmt::Error> {
        self.write_str(s);
        Ok(())
    }
}

/// Wrapper for UartRegs
pub struct Uart {
    regs: &'static mut UartRegs,
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

    pub unsafe fn transmit_fmt(&mut self, args: core::fmt::Arguments) {
        /* Transmit using interrupt
        */
        self.config_init();

        self.regs.idr.write(1 << 3); // disable TX FIFO empty interrupt
        self.regs.write_fmt(args).unwrap();
       // self.regs.

    }
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
        uart.transmit_fmt(args);
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