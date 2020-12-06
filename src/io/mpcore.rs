use volatile_register::{RO, RW};
use crate::paging::map_va_to_device;
use crate::{println, print};

pub const _MPCORE_PHYS0: usize = 0xf8f0_0000; // Physical base address of Mpcore (first page)
pub const _MPCORE_PHYS1: usize = 0xf8f0_1000; // Physical base address of Mpcore (second page)
pub const _MPCORE_VIRT0: usize = 0xfff0_1000; // Virtual base address of Mpcore -> GIC(C,T)Regs
pub const _MPCORE_VIRT1: usize = 0xfff0_2000; // Virtual base address of Mpcore -> GIC(D,P)Regs

/// Map two pages (4 KB) to MPCOREs 
pub fn mpcore_init() {
    map_va_to_device(_MPCORE_VIRT0, _MPCORE_PHYS0, 0);
    map_va_to_device(_MPCORE_VIRT1, _MPCORE_PHYS1, 0);
}

#[repr(C)]
pub struct GICCRegs{   // GIC CPU Interface: _MPCORE_VIRT0 + 0x0000_0100
    pub icr: RW<u32>,  // CPU Interface Control 
    pub pmr: RW<u32>,  // Interrupt Priority Mask
    pub bpr: RW<u32>,  // Binary Point
    pub iar: RW<u32>,  // Interrupt acknowledge
    pub eoir: RW<u32>, // End of Interrupt
}

#[repr(C)]
pub struct TimerRegs{         // Timers: _MPCORE_VIRT0 + 0x0000_0200
    // Global Timers
    pub global: [RW<u32>;7],   // To be defined
    pub reserved: [u32;249],    
    pub private: [RW<u32>;10], // To be defined
}

#[repr(C)]
pub struct GICDRegs{          // GIC Distributor: _MPCORE_VIRT1
    pub dcr: RW<u32>,         // Distribution Control
    pub ictr: RW<u32>,        // Interrupt Controller Type 
    pub iidr: RW<u32>,        // Distributor Implenter Identification
    pub reserved0: [u32;29],       
    pub isr: [RW<u32>;3],     // Interrupt Security
    pub reserved1: [u32;29], 
    pub iser: [RW<u32>;3],    // Interrupt Set-Enable
    pub reserved2: [u32;29], 
    pub icer: [RW<u32>;3],    // Interrupt Clear-Enable
    pub reserved3: [u32;29],
    pub ispr: [RW<u32>;3],    // Interrupt Set-Pending
    pub reserved4: [u32;29],
    pub icpr: [RW<u32>;3],    // Interrupt Clear-Pending
    pub reserved5: [u32;29],
    pub abr: [RW<u32>;3],     // Active Bit
    pub reserved6: [u32;61],
    pub ipr: [RW<u32>;24],    // Interrupt Priority
    pub reserved7: [u32;232],   
    pub iptr: [RW<u32>;24],   // Interrupt Processor Targets
    pub reserved8: [u32;292],    
    pub icfr: [RW<u32>;6],    // Interrupt Configuration
}

#[repr(C)]
pub struct GICPRegs{           // Peripherals: _MPCORE_VIRT1 + 0x0000_0d00
    pub ppi_stat: RW<u32>,     // PPI (Private Peripheral) Status
    pub spi_stat: [RW<u32>;2], // SPI (Shared Peripheral) Status
    pub reserved: [u32;125],
    pub sgir: RW<u32>,         // SGI (Software generated)
    pub pidr: [RW<u32>;8],     // Peripheral ID
    pub cidr: [RW<u32>;4],     // Component ID
}

/// Wrapper for GICRegs
pub struct Mpcore {
    timers: &'static mut TimerRegs,
    cpu_interface: &'static mut GICCRegs,
    distributor: &'static mut GICDRegs,
    peripherals: &'static mut GICPRegs,
}

impl Mpcore{
    pub const GICC_BASE: *mut GICCRegs = (_MPCORE_VIRT0 as u32 + 0x0000_0100) as *mut GICCRegs; 
    pub const TIMER_BASE: *mut TimerRegs = (_MPCORE_VIRT0 as u32 + 0x0000_0200) as *mut TimerRegs;
    pub const GICD_BASE: *mut GICDRegs = _MPCORE_VIRT1 as u32 as *mut GICDRegs;
    pub const GICP_BASE: *mut GICPRegs = (_MPCORE_VIRT1 as u32 + 0x0000_0d00) as *mut GICPRegs;
    
    pub fn get() -> Mpcore {
        Mpcore {
            cpu_interface: unsafe {&mut *(Self::GICC_BASE)},
            distributor: unsafe {&mut *(Self::GICD_BASE)},
            timers: unsafe {&mut *(Self::TIMER_BASE)},
            peripherals: unsafe {&mut *(Self::GICP_BASE)},      
        }
    }
}

pub unsafe fn gic_init() {
    // Enable secure interrupts only
    pub const PRI_LEVEL: u32 = 0xff;
    pub const ICR_ENABLE: u32 = 0x1;
    pub const DCR_ENABLE: u32 = 0x1;

    let mut mpcore = Mpcore::get();
    mpcore.cpu_interface.pmr.write(PRI_LEVEL); // enable interrupts of all priority levels
    mpcore.cpu_interface.icr.write(ICR_ENABLE); // enable signaling of interrupts to processors
    mpcore.distributor.dcr.write(DCR_ENABLE); // enable distributions of secure interrupts

    interrupt_enable();
}

pub unsafe fn interrupt_enable() {
    asm!("cpsie if");
}

#[no_mangle]
pub extern "C" fn gic_isr() {
    println!("ISR");
}