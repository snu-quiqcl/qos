use volatile_register::{RO, RW};
use crate::paging::map_va_to_device;

pub const _MPCORE_PHYS0: usize = 0xf8f0_0000; // Physical base address of Mpcore (first 4 KB)
pub const _MPCORE_PHYS1: usize = 0xf8f0_1000; // Physical base address of Mpcore (first 4 KB)
pub const _MPCORE_VIRT0: usize = 0xfff0_1000; // Virtual base address of Mpcore -> GICC,TimerRegs
pub const _MPCORE_VIRT1: usize = 0xfff0_2000; // Virtual base address of Mpcore -> GICD,GICPRegs

/// Map two pages (8 KB) to MPCOREs 
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
    pub global: [RW<u32>;7],  // To be defined
    pub reserved0: [u32;249],    
    pub private: [RW<u32>;3], // To be defined
    pub reserved1: [u32;4],
    pub watch: [RW<u32>;6],   // To be defined
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
    pub reserved8: [u32;232],    
    pub icfr: [RW<u32>;6],    // Interrupt Configuration
}

#[repr(C)]
pub struct GICPRegs{          // Peripherals: _MPCORE_VIRT1 + 0x0000_0d00
    pub ppir: RW<u32>,        // PPI (Private Peripheral) Status
    pub spir: [RW<u32>;2],    // SPI (Shared Peripheral) Status
    pub reserved0: [u32;125],
    pub sgir: RW<u32>,        // SGI (Software generated)
    pub reserved1: [u32;51],
    pub pidr: [RW<u32>;8],    // Peripheral ID
    pub cidr: [RW<u32>;4],    // Component ID
}

/// Wrapper for GICRegs
pub struct Mpcore {
    pub cpu_interface: &'static mut GICCRegs,
    pub distributor: &'static mut GICDRegs,
    pub timer: &'static mut TimerRegs,
    pub peripheral: &'static mut GICPRegs,
}

impl Mpcore{
    pub const GICC_BASE: *mut GICCRegs = ((_MPCORE_VIRT0 as u32) + 0x0000_0100) as *mut GICCRegs; 
    pub const TIMER_BASE: *mut TimerRegs = ((_MPCORE_VIRT0 as u32) + 0x0000_0200) as *mut TimerRegs;
    pub const GICD_BASE: *mut GICDRegs = (_MPCORE_VIRT1 as u32) as *mut GICDRegs;
    pub const GICP_BASE: *mut GICPRegs = ((_MPCORE_VIRT1 as u32) + 0x0000_0d00) as *mut GICPRegs;
    pub const IAR_MASK: u32 = 0x3ff;
    pub const EOI_MASK: u32 = 0x1c00;

    pub fn get() -> Mpcore {
        Mpcore {
            cpu_interface: unsafe {&mut *(Self::GICC_BASE)},
            distributor: unsafe {&mut *(Self::GICD_BASE)},
            timer: unsafe {&mut *(Self::TIMER_BASE)},
            peripheral: unsafe {&mut *(Self::GICP_BASE)},
        }
    }

    pub fn irq_acknowledge_interrupt(&mut self) -> u32 {
        let irqid: u32 = self.cpu_interface.iar.read() & Self::IAR_MASK;
        irqid
    }
    
    pub fn irq_end_interrupt(&mut self, irqid: u32) {
        let mut eoi: u32 = self.cpu_interface.eoir.read() & Self::EOI_MASK;
        eoi +=  irqid;
        unsafe { self.cpu_interface.eoir.write(eoi); }
    }    
}

/// Enable secure interrupts
pub unsafe fn gic_init() {
    pub const PRI_LEVEL: u32 = 0xff; // enable all priority levels
    pub const ICR_ENABLE: u32 = 0x1; // enable cpu interface: gicc -> processor
    pub const DCR_ENABLE: u32 = 0x1; // enable distributor
    pub const SET_ENABLE: u32 = 0xffff_ffff; // enable forwarding: gicd -> gicc

    let mut mpcore = Mpcore::get();
    mpcore.cpu_interface.pmr.write(PRI_LEVEL);
    mpcore.cpu_interface.icr.write(ICR_ENABLE);
    mpcore.distributor.dcr.write(DCR_ENABLE);
    for i in 0..3 {
        mpcore.distributor.iser[i].write(SET_ENABLE);
    }
    mpcore.distributor.iptr[20].write(1 << 16); // uart target cpu0
    global_interrupt_enable();
}

pub unsafe fn global_interrupt_enable() {
    /* r0-r3, r12 are scratch registers */
    /*
    asm!("
        mrs r1, cpsr
        bic r1, r1, #0x80 /* enable irq */
        msr cpsr_c, r1
    ");
    */
    asm!("cpsie i");
}