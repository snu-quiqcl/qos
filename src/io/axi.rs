use volatile_register::{RO, RW};
//use super::gpio::delay;

use crate::{io::slcr, mem::Paddr, mem::alloc_frame};
use crate::paging::{KERN_BASE, PAGE_SIZE, L1PageTable};
//use crate::mem::{Vaddr, Paddr};

#[repr(C)]
pub struct AXI{
    pub data_write: RW<u32>,

}

pub const _AXI0_PHYS: usize = 0x43c0_0000; // Physical base address of Uart 1   
//pub const _AXI0_VIRT: usize = 0xffe0_0000;

pub const _AXI1_PHYS: usize = 0x43c1_0000; // Physical base address of Uart 1   
//pub const _AXI1_VIRT: usize = 0xffd0_0000;

//pub const PAGE_SIZE: usize = 4096;

pub static mut AXI0_BASE: usize = 0;
pub static mut AXI1_BASE: usize = 0;
pub static mut AXI0P_BASE: usize = 0;
pub static mut AXI1P_BASE: usize = 0;
pub static mut AXID1_BASE: usize = 0;
pub static mut AXID2_BASE: usize = 0;
pub static mut AXID3_BASE: usize = 0;
pub static mut AXID4_BASE: usize = 0;
pub static mut AXID5_BASE: usize = 0;
pub static mut AXID6_BASE: usize = 0;
pub static mut AXID7_BASE: usize = 0;
pub static mut AXID8_BASE: usize = 0;
pub static mut AXID9_BASE: usize = 0;
pub static mut AXID10_BASE: usize = 0;
pub static mut AXID11_BASE: usize = 0;
pub static mut AXID12_BASE: usize = 0;
pub static mut AXID13_BASE: usize = 0;
pub static mut AXID14_BASE: usize = 0;


/// Initialize MIO
/// Reference: Zynq-7000 SOC TRM
pub unsafe fn axi_init() {
    //AXI0_BASE= L1PageTable::get().map_device(Paddr::new(_AXI0_PHYS), 0).addr; 
    //AXI1_BASE= L1PageTable::get().map_device(Paddr::new(_AXI1_PHYS), 0).addr;

    AXI0_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS), 0).addr;
    AXI0P_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE), 0).addr;
    AXID1_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 2), 0).addr;
    AXID2_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 3), 0).addr;
    AXID3_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 4), 0).addr;
    AXID4_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 5), 0).addr;
    AXID5_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 6), 0).addr;
    AXID6_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 7), 0).addr;
    AXID7_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 8), 0).addr;
    AXID8_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 9), 0).addr;
    AXID9_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 10), 0).addr;
    AXID10_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 11), 0).addr;
    AXID11_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 12), 0).addr;
    AXID12_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 13), 0).addr;
    AXID13_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 14), 0).addr;
    AXID14_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 15), 0).addr;
    AXI1_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI1_PHYS), 0).addr;
    AXI1P_BASE= L1PageTable::get().map_axi0(Paddr::new(_AXI0_PHYS+PAGE_SIZE * 17), 0).addr;
/*
    let a1=&mut*(axi_seq(0));
    let a2=&mut*(axi_seq(1));

    a1.data_write.write(3);
    a2.data_write.write(3);
    a1.data_write.write(2);
    a2.data_write.write(2);
    a1.data_write.write(0x20000002);
    a2.data_write.write(0x20000002);
    a1.data_write.write(0x40000001);
    a2.data_write.write(0x40000001);
*/

   /*
    axi_out(0,3,0);
    axi_out(0,3,1);
    axi_out(0,0,0);
    axi_out(0,0,1);
    axi_out(0,2,0);
    axi_out(0,2,1);
    
    axi_out(0,0x2000002,0);
    axi_out(0,0x2000002,1);
    
    axi_out(0,0x4000001,0);
    axi_out(0,0x4000001,1);
    axi_out(0,0x6000003,0);
    axi_out(0,0x6000003,1);
    axi_out(0,0x8000002,0);
    axi_out(0,0x8000002,1);
    axi_out(0,0xa000002,0);
    axi_out(0,0xa000002,1);
    axi_out(0,0xc000001,0);
    axi_out(0,0xc000001,1);
    axi_out(0,0xe000003,0);
    axi_out(0,0xe000003,1);
    axi_out(0,0x10000002,0);
    axi_out(0,0x10000002,1);
    axi_out(0,0x12000002,0);
    axi_out(0,0x12000002,1);
    axi_out(0,0x14000001,0);
    axi_out(0,0x14000001,1);
    axi_out(0,0x16000003,0);
    axi_out(0,0x16000003,1);
    axi_out(0,0x18000002,0);
    axi_out(0,0x18000002,1);
    axi_out(0,0x1a000002,0);
    axi_out(0,0x1a000002,1);
    axi_out(0,0x1c000001,0);
    axi_out(0,0x1c000001,1);
    axi_out(0,0x1e000003,0);
    axi_out(0,0x1e000003,1);
    axi_out(0,0x20000002,0);
    axi_out(0,0x20000002,1);
   */ 
    //axi_out(0,2,0);
    //axi_out(0,2,1);



    /*
    let hello = "finish axi init";
    let axi0 = &mut *(AXI0_BASE as *mut AXI);
    let axi1 = &mut *(AXI1_BASE as *mut AXI);
        axi0.data_write.write(0x00000003);
        axi0.data_write.write(0x10000002);
        axi0.data_write.write(0x30000003);
        axi0.data_write.write(0x40000002);
        axi0.data_write.write(0x50000001);
        axi0.data_write.write(0x70000002);
        axi0.data_write.write(0x80000001);
        axi0.data_write.write(0x90000003);
        axi0.data_write.write(0x0);
        
        axi1.data_write.write(0x00000003);
        axi1.data_write.write(0x10000002);
        axi1.data_write.write(0x30000003);
        axi1.data_write.write(0x40000002);
        axi1.data_write.write(0x50000001);
        axi1.data_write.write(0x70000002);
        axi1.data_write.write(0x80000001);
        axi1.data_write.write(0x90000003);
        axi1.data_write.write(0x0);
*/

}
pub unsafe fn axi_out(tstamp:usize, channel:usize, port:usize){//tstamp :u32, channel:u32) {

    let axi0 = &mut *(AXI0_BASE as *mut AXI);
    let axi1 = &mut *(AXI1_BASE as *mut AXI);
    let wdata = (channel) as usize;
    if(port==0){
        axi0.data_write.write(wdata as u32);
    }
    else if(port==1){
        axi1.data_write.write(wdata as u32);
    }
}

pub unsafe fn axi_seq(port:usize) -> usize{
    let va0 = AXI0_BASE;
    let va1 = AXI1_BASE;
    let va2 = AXID1_BASE;
    if(port==0){
        va0 as usize
    }
    else if(port==1){
        va1 as usize
    }
    else{
        va2 as usize
    }
    
    
}

pub unsafe fn axi_in(port:usize) -> usize{
    let axi0 = &mut *(AXI0P_BASE as *mut AXI);
    let axi1 = &mut *(AXI1P_BASE as *mut AXI);
    
    let porta=axi0.data_write.read();
    let portb=axi1.data_write.read();
    let portc=0;
    if(port==0){
        porta as usize
    }
    else if(port==1){
        portb as usize
    }
    else{
        portc as usize
    }
}
