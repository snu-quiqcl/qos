use volatile_register::{RO, RW};
use crate::{println,print};
use crate::io::uart;
use crate::paging::L1PageTable;
use crate::mem::Paddr;

pub const MPCORE_PHYS0: usize = 0xf8f0_0000; // Physical base address of Mpcore (first 4 KB)
pub const MPCORE_PHYS1: usize = 0xf8f0_1000; // Physical base address of Mpcore (second 4 KB)
pub static mut MPCORE_VIRT0: usize = 0; // Virtual base address of Mpcore -> GICC,TimerRegs
pub static mut MPCORE_VIRT1: usize = 0; // Virtual base address of Mpcore -> GICD,GICPRegs

/// Map two pages (8 KB) to MPCOREs 
pub fn mpcore_init() {
    let page_table = L1PageTable::get();
    unsafe{
        MPCORE_VIRT0 = page_table.map_device(Paddr::new(MPCORE_PHYS0), 0).addr;
        MPCORE_VIRT1 = page_table.map_device(Paddr::new(MPCORE_PHYS1), 0).addr;
    }
}

#[repr(C)]
pub struct SCURegs{          // Snoop Control Unit: MPCORE_VIRT0
    pub scr: RW<u32>,        // SCU Control 
    pub cfr: RW<u32>,        // SCU Configuration
    pub psr: RW<u32>,        // SCU Power Status
    pub xasr: RW<u32>,       // SCU Invalidate All Registers in Secure State
    pub reserved0: [u32;12],
    pub fsar: RW<u32>,       // Filtering Start Address
    pub fear: RW<u32>,       // Filtering End Address
    pub reserved1: [u32;2],
    pub sacr: RW<u32>,       // SCU Access Control 
    pub nacr: RW<u32>,       // Non-secure Access Control
}

#[repr(C)]
pub struct GICCRegs{   // GIC CPU Interface: MPCORE_VIRT0 + 0x0000_0100
    pub icr: RW<u32>,  // CPU Interface Control 
    pub pmr: RW<u32>,  // Interrupt Priority Mask
    pub bpr: RW<u32>,  // Binary Point
    pub iar: RW<u32>,  // Interrupt acknowledge
    pub eoir: RW<u32>, // End of Interrupt
}

#[repr(C)]
pub struct TimerRegs{         // Timers: MPCORE_VIRT0 + 0x0000_0200
    pub gtcr0: RW<u32>,       // Global Timer Counter 0
    pub gtcr1: RW<u32>,       // Global Timer Counter 1
    pub gtccr: RW<u32>,       // Global Timer Control
    pub gtcisr: RW<u32>,      // Global Timer Interrupt Status
    pub cvr0: RW<u32>,        // Comparator Value 0
    pub cvr1: RW<u32>,        // Comparator Value 1
    pub air: RW<u32>,         // Auto Increment
    pub reserved0: [u32;249],    
    pub ptclr: RW<u32>,       // Private Timer Load
    pub ptcr: RW<u32>,        // Private Timer Counter
    pub ptccr: RW<u32>,       // Private Timer Control
    pub ptcisr: RW<u32>,      // Private Timer Interrupt Status
    pub reserved1: [u32;4],   
    pub wtclr: RW<u32>,       // Watchdog Load
    pub wtcr: RW<u32>,        // Watchdog Counter
    pub wtccr: RW<u32>,       // Watchdog Control
    pub wtcisr: RW<u32>,      // Watchdog Interrupt Status
    pub wtcrsr: RW<u32>,      // Watchdog Reset Status
    pub wtcdir: RW<u32>,      // Watchdog Disable Register
}

#[repr(C)]
pub struct GICDRegs{          // GIC Distributor: MPCORE_VIRT1
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
pub struct GICPRegs{          // Peripherals: MPCORE_VIRT1 + 0x0000_0d00
    pub ppir: RW<u32>,        // PPI (Private Peripheral) Status
    pub spir: [RW<u32>;2],    // SPI (Shared Peripheral) Status
    pub reserved0: [u32;125],
    pub sgir: RW<u32>,        // SGI (Software generated)
    pub reserved1: [u32;51],
    pub pidr: [RW<u32>;8],    // Peripheral ID
    pub cidr: [RW<u32>;4],    // Component ID
}

/// Wrapper for Mpcore
pub struct Mpcore {
    pub scu: &'static mut SCURegs,
    pub cpu_interface: &'static mut GICCRegs,
    pub distributor: &'static mut GICDRegs,
    pub timer: &'static mut TimerRegs,
    pub peripheral: &'static mut GICPRegs,
}

pub static mut SCU_BASE: usize = 0;
pub static mut GICC_BASE: usize = 0;
pub static mut TIMER_BASE: usize = 0;
pub static mut GICD_BASE: usize = 0;
pub static mut GICP_BASE: usize = 0;
pub static mut TIMER_LOOP: usize = 1;

impl Mpcore{
    pub const IAR_MASK: u32 = 0x3ff;
    pub const EOI_MASK: u32 = 0x1c00;

    pub fn get() -> Mpcore {
        Mpcore {
            scu: unsafe {&mut *(SCU_BASE as *mut _)},
            cpu_interface: unsafe {&mut *(GICC_BASE as *mut _)},
            distributor: unsafe {&mut *(GICD_BASE as *mut _)},
            timer: unsafe {&mut *(TIMER_BASE as *mut _)},
            peripheral: unsafe {&mut *(GICP_BASE as *mut _)},
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

    pub fn ptc_start_timer(&mut self, mode: u32, prescaler: u8, load: u32){
        unsafe { 
            self.timer.ptclr.write(load);
            self.timer.ptccr.write((prescaler as u32) << 8 | 1 << 2 | mode);
        }
    }

    pub fn irq_ptc_preempt(&mut self, ptc_arg: u32) {
        unsafe {
            if TIMER_LOOP != 1 {
                self.ptc_disable_interrupt();
            }
        }
    }

    pub fn ptc_get_counter(&mut self) -> u32 {
        self.timer.ptcr.read()
    }

    pub fn ptc_interrupt_status(&mut self) -> u32 {
        self.timer.ptcisr.read()
    }

    pub fn ptc_disable_interrupt(&mut self) {
        unsafe { self.timer.ptccr.write(0 << 2); }
    }

    pub fn clear_interrupt(&mut self, irq_type: u32) {
        match irq_type {
            29 => { unsafe { self.timer.ptcisr.write(0x1); } },
            _ => {}
        }
    }
}

/// Enable secure interrupts
pub unsafe fn gic_init() {
    SCU_BASE = MPCORE_VIRT0;
    GICC_BASE = MPCORE_VIRT0 + 0x0000_0100;
    TIMER_BASE = MPCORE_VIRT0 + 0x0000_0200;
    GICD_BASE = MPCORE_VIRT1;
    GICP_BASE = MPCORE_VIRT1 + 0x0000_0d00;
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
    mpcore.distributor.iptr[7].write(1 << 8); // timer target cpu0
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

/// Enable timer interrupts
pub unsafe fn timer_init() {
    pub const TIMER_SINGLE: u32 = 0x1; // mode: singleshot
    pub const TIMER_AUTO: u32 = 0x3; // mode: autoreload
    pub const TIMER_PRESCALER: u8 = 0xf0; // set prescaler value
    pub const TIMER_LOAD: u32 = 0x10000; // set load value

    let mut mpcore = Mpcore::get();
    mpcore.ptc_start_timer(TIMER_AUTO, TIMER_PRESCALER, TIMER_LOAD);
}

/* CALCULATION OF TIME INTERVAL FOR TIMER COUNTERS
    Time Interval = (PRESCALAR + 1)*(LOAD + 1)*(CPU_3X2X)
    PRESCALAR: 8 bits
*/