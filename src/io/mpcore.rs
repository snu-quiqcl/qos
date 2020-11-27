use volatile_register::{RO, RW};
use crate::paging::map_va_to_device;

pub const _MPCORE_PHYS: usize = 0xf8f0_0000; // Physical base address of Mpcore
pub const _MPCORE_VIRT: usize = 0xfff0_2000; // Virtual base address of Mpcore -> MpcoreRegs

/// Map a page (4 KB) to SLCRs 
pub fn mpcore_init() {
    map_va_to_device(_MPCORE_VIRT, _MPCORE_PHYS, 0);
}

