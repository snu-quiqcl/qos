//! MMIO virtual address
//!```
//! 4G -----------> +------------------------------+
//!                 |                              |
//!                 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//!                 :              .               :
//!                 :              .               :
//!                 +------------------------------+
//!                 |             slcr             |  4KB
//!                 +------------------------------+
//!                 |           mpcore (2)         |  4KB
//!                 +------------------------------+
//!                 |           mpcore (1)         |  4KB
//!                 +------------------------------+
//!                 |         uart1 + gpio         |  4KB
//! 4G - 1M ------> +------------------------------+
//!```