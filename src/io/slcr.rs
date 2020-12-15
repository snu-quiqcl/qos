use volatile_register::{RO, RW};

use crate::{mem::Paddr, paging::L1PageTable};

pub const SLCR_PHYS: usize = 0xf800_0000; // Physical base address of System Level Control registers (SLCRs)
pub static mut SLCR_VIRT: usize = 0; // Virtual base address of SLCRs -> SlcrRegs

/// Map a page (4 KB) to SLCRs 
pub unsafe fn slcr_init() {
    let page_table = L1PageTable::get();
    SLCR_VIRT = page_table.map_device(Paddr::new(SLCR_PHYS), 0).addr;
    SLCR_BASE = SLCR_VIRT;
}

#[repr(C)]
pub struct SlcrRegs {           // Base Address - End Address:     0xFFF01000 - 0xFFF02000
    pub reserved0: [u32;11],
    pub arm_clk_ctrl: RW<u32>,  // CPU Clock Control:              0x0000_0120 
    pub ddr_clk_ctrl: RW<u32>,  // DDR Clock Control:              0x0000_0124
    pub dci_clk_ctrl: RW<u32>,  // DCI Clock Control:              0x0000_0128
    pub aper_clk_ctrl: RW<u32>, // AMBA Peripheral Clock Control:  0x0000_012C
    pub reserved1: [u32;9],
    pub uart_clk_ctrl: RW<u32>, // UART Ref Clock Control:         0x0000_0154
    pub reserved2: [u32;22],
    pub clk_621_true: RW<u32>,  // CPU Clock Ratio Mode Select:    0x0000_01C4
    pub reserved3: [u32;10],
    pub uart_rst_ctrl: RW<u32>, // UART Software Reset Control:    0x0000_0228
    pub reserved4: [u32;5],
    pub a9_cpu_rst: RW<u32>,    // CPU Reset and Clock Control:    0x0000_0244
    pub reserved5: [u32;97],
}

impl SlcrRegs {
    pub unsafe fn set_arm_clk(&mut self) {
        /* CPU Clock
            CPU_PERI_CLKACT[28]   CPU_1XCLKACT[27]   CPU_2XCLKACT[26]
            CPU_3OR2XCLKACT[25]   CPU_6OR4XCLKACT[24]    DIVISOR[13:8]   SRCSEL[5:4]
            SRCSEL: IO PLL(00), ARM PLL(10), DDR PLL(11)
        */        
        return // pending definition
    }

    pub unsafe fn set_clk_621(&mut self, mode: u32) {
        /* Clock Ratio Mode Select
            CLK_621_TRUE[0]
            note: reset value is 0x1 (6:2:1)
        */ 
        self.clk_621_true.write(mode);
    }

    pub unsafe fn set_amba_clk(&mut self) {
        /* AMBA Clock
            UART1_CPU_1XCLKACT[21]   UART0_CPU_1XCLKACT[20]
            note: must be enabled to perform read from the peripheral register space
                  reset value is 0x1 (enable)
        */
        return // pending definition
    }

    pub unsafe fn set_uart_clk(&mut self, div: u32, src: u32, uart: u32) {
        /* UART Clock (Refer to set_arm_clk)
                DIVISOR[13:8]   SRCSEL[5:4]   CLKACT1[1]   CLKACT0[0]
                example: 50 MHz to uart 1 -> div = 20, src = 0 (1000 MHz), uart = 2
        */
        self.uart_clk_ctrl.write((div << 8) | (src << 4) | uart);    
    }
    
    pub unsafe fn set_uart_rst(&mut self, uref: u32, cpu1x: u32) {
        /* UART Reset
                UART1_REF[3]   UART0_REF[2]   UART1_CPU1x[1]   UART0_CPU1x[0]
                example: assert uart 1 controller reset -> uref = 2, cpu1x = 2
        */
        self.uart_rst_ctrl.write((uref << 2) | cpu1x);
    }

    pub unsafe fn set_a9_cpu(&mut self, peri_rst: u32) {
        /* CPU Control and Clock Reset
            PERI_RST[8]   A9_CLKSTOP1[5]   A9_CLKSTOP0[4]   A9_RST1[1]   A9_RST0[0]
            PERI_RST = 1 resets the interrupt controller, CPU private timers, private watchdog timers
            note: the interrupt controller operates with the CPU3X2X clk
        */
        self.a9_cpu_rst.write(peri_rst << 8);
    }
}

/// Wrapper for SlcrRegs
pub struct Slcr {
    regs: &'static mut SlcrRegs,
}

static mut SLCR_BASE: usize = 0;
impl Slcr {

    pub fn get() -> Slcr {
        Slcr {
            regs: unsafe {&mut *(SLCR_BASE as *mut _)},
        }
    }

    pub unsafe fn set_CPU_clk(&mut self) {
        self.regs.set_arm_clk(); // pending definition
        self.regs.set_clk_621(1); // reset value
    }

    pub unsafe fn set_uart_1(&mut self) {
        self.regs.set_uart_rst(2, 2); // reset uart 1 
        self.regs.set_uart_clk(63, 0, 2); // reset value
    }
}

/*
System Clock information (Figure 25-1 in Zynq-7000 SOC TRM)
    CPU clk determined by PS_CLK + PLL type + Divisor + Clock Ratio
    Uart clk determined by PS_CLK + PLL type + Divisor

    PS_CLK: max 866 MHz

    PLL types: ARM, I/O, DDR => find formula for PLL 
    
    Clock Ratio
                    6:2:1       4:2:1
    CPU_6X4X        800 MHz     600 MHz
    CPU_3X2X        400 MHz     300 MHz
    CPU_2X          266 MHz     300 MHz
    CPU_1X          133 MHz     150 MHz

    Reset Value
        CPU clk:
        Uart clk:
*/