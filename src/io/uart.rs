use volatile_register::{RO, RW};
use crate::io::slcr;

const _UART_PHYS: usize = 0xe000_1000;       // Physical base address of Uart (1)   
const _UART_VIRT: usize = 0xfff0_0000;       // Virtual base address of Uart -> UartRegs

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
    pub tx_trigger: RW<u32>,  // Transmitter FIFO Trigger level
}

impl UartRegs {
    pub fn write(&mut self, c: u8) {
        while self.is_tx_full() {} // Polling
        unsafe {
            self.fifo.write(c as u32);
        }
    }

    pub fn write_str(&mut self, s: &str) {
        for c in s.bytes() {
            self.write(c);
        }    
    }

    pub fn read(&mut self) -> u8 {
        while self.is_rx_empty() {}
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

impl core::fmt::Write for UartRegs {
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
    const UART_BASE: *mut UartRegs = _UART_VIRT as *mut UartRegs;

    pub fn get() -> Uart {
        Uart {
            regs: unsafe {&mut *(Self::UART_BASE)}
        }
    }

    pub fn setup(&self) {
        // must be used after initializing system level control registers
        let slcr = slcr::Slcr::get();
        unsafe{
            slcr.set_uart_rst(2, 2);       // reset uart 1 
            slcr.set_uart_clk(20, 0, 2);   // 50 MHz to uart 1
        }
    }

    pub unsafe fn config_frame(&self, chmode: u32, nbstop: u32, par: u32, chrl: u32, clk: u32) {
        /* Character frame
            CHMODE[9:8]   NBSTOP[7:6]   PAR[5:3]   CHRL[2:1]   CLKSEL[0]
            CLKSEL: uart_ref_clk(0), uart_ref_clk/8(1)
            default: chmode: normal(00), nbstop: 1 stop bit(00), par: none(100), chrl: 8 bits(00), clk: ref(00) 
        */
        self.regs.mr.write((chmode << 8) | (nbstop << 6) | (par << 3) | (chrl << 1) | clk);
    }   

    pub unsafe fn config_baud(&self, cd: u32, bdiv: u32) {
        /* Baud rate (Table 19-1 in Zynq-7000 SOC TRM)
            1. regs.cr             TX_DIS[5]   TX_EN[4]   RX_DIS[3]   RX_EN[2]   TX_RST[1]   RX_RST[0]
            2. regs.baudgen        CD[15:0]
            3. regs.badugen_div    BDIV[7:0]
            default: baud rate: 921,600 -> cd: (9), bdiv: (5)           
        */
        self.regs.cr.write((1 << 5) | (1 << 3));    // disable TX and RX paths
        self.regs.baudgen.write(cd);                
        self.regs.baudgen_div.write(bdiv);
    }

    pub unsafe fn config_trig_lev(&self, trig: u32) {
        /* RxFIFO trigger level
            RTRIG[5:0]
            default: trig: none(0) / when non-zero, write value between 1 - 63
        */
        self.regs.rxwm.write(trig);
    }

    pub unsafe fn enable_ctrl(&self) {
        // Enable (Refer to config_baud)
        self.regs.cr.write((1 << 1) | 1);           // reset TX and RX paths
        self.regs.cr.write((1 << 4) | (1 << 2))     // enable TX and RX paths
    }

/*
    pub unsafe fn config_timeout(&self) {
        // program the receiver timeout mechanism
    }

    pub unsafe fn config_trig_irpt(&self) {
        // RxFIFO trigger level interrupt
    }

    pub unsafe transmit(&self) {

    }

    pub unsafe receive(&self) {

    }
*/
}

/// Initialize uart
/// Reference: Zynq-7000 SOC TRM
pub unsafe fn uart_init() {
    let uart = Uart::get();
    if uart.regs.cr.read() & (1<<4) != 0 { return }
    uart.config_frame(0, 0, 3, 0, 0);
    uart.config_baud(9, 5);
    uart.config_trig_lev(0);
    uart.enable_ctrl();
}

#[doc(hidden)]
pub fn _print(args: core::fmt::Arguments) {
    use core::fmt::Write;
    unsafe {
        let uart = Uart::get();
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


/*
let uart = Uart::get();


*/

/*
pub fn write(c: u8) {
    unsafe {
        let uart = &mut *UART_BASE;
        uart.write(c);
    }
}

pub fn read() -> u8 {
    unsafe {
        let uart = &mut *UART_BASE;
        uart.read()
    }
}
*/