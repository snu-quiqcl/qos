use volatile_register::{RO, RW};
use crate::paging::map_va_to_device;

const _SLCR_PHYS: usize = 0xf800_0000;               // Physical base address of System Level Control registers (SLCRs)
const _SLCR_VIRT: usize = 0xfff0_1000;               // Virtual base address of SLCRs -> SlcrRegs

/// Map a page (4 KB) to SLCRs 
pub fn slcr_init() {
    map_va_to_device(_SLCR_VIRT, _SLCR_PHYS, 0);
}

#[repr(C)]
pub struct SlcrRegs {                                // Base Address - End Address:    0xFFF01000 - 0xFFF02000
    pub reserved0: [u32; 24],
    pub uart_clk_ctrl: RW<u32>,                      // UART Ref Clock Control:        0x00000154
    pub reserved1: [u32; 33],
    pub uart_rst_ctrl: RW<u32>,                      // UART Software Reset Control:   0x00000228
    pub reserved2: [u32; 103],
}

/// Wrapper for SlcrRegs
pub struct Slcr {
    regs: &'static mut SlcrRegs,
}

impl Slcr {
    const SLCR_BASE: *mut SlcrRegs = _SLCR_VIRT as *mut SlcrRegs;

    pub fn get() -> Slcr {
        Slcr {
            regs: unsafe {&mut *(Self::SLCR_BASE)},
        }
    }

    pub unsafe fn set_uart_clk(&self, div: u32, src: u32, uart: u32) {
        /* UART Clock
                DIVISOR[13:8]   SRCSEL[5:4]   CLKACT1[1]   CLKACT0[0]
                SRCSEL: IO PLL(00), ARM PLL(10), DDR PLL(11)
                example: 50 MHz to uart 1 -> div = 20, src = 0 (1000 MHz), uart = 2
        */
        self.regs.uart_clk_ctrl.write((div << 8) | (src << 4) | uart);    
    }
    
    pub unsafe fn set_uart_rst(&self, uref: u32, cpu1x: u32) {
        /* UART Reset
                UART1_REF[3]   UART0_REF[2]   UART1_CPU1x[1]   UART0_CPU1x[0]
                example: assert uart 1 controller reset -> uref = 2, cpu1x = 2
        */
        self.regs.uart_rst_ctrl.write((uref << 2) | cpu1x);
    }
}