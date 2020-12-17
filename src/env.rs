use mem::Vaddr;
use paging::L1PageTable;
use crate::sched;

use crate::{mem::{self, Paddr, memcpy}, paging::{KERN_BASE, change_pgdir}};
use crate::paging::PAGE_SIZE;
use crate::{paging, util};
use crate::{println, print};

#[repr(C)]
pub struct Env {
    pub tf: TrapFrame,
    pub link: usize,
    pub id: usize,
    pub parent_id: usize,
    pub env_type: EnvType,
    pub status: EnvStatus,
    pub runs: usize,
    pub pgdir: Paddr
}

#[derive(PartialEq)]
pub enum EnvStatus {
    Free,
    Dying,
    Running,
    Runnable,
    NotRunnable,
}

#[derive(Debug, Copy, Clone)]
#[repr(C)]
pub struct TrapFrame {
    pub spsr: usize,
    pub lr: usize,
    pub sp: usize,
    pub reg: [usize;13],
    pub pc: usize,
}

extern "C" {
    fn env_pop_tf(tf :&TrapFrame);
    fn context_switch(tf: &TrapFrame);
}

pub enum EnvType{}

pub const NENV:usize = 1024;
pub struct UserEnv {
    pub envs: [Env; NENV]
}

pub static mut ENVS:Vaddr = Vaddr{addr:0};
pub static mut CURRENV:Option<usize> = None;

pub fn env_init() {
    let envs = get_envs();
    for env in envs.envs.iter_mut() {
        env.status = EnvStatus::Free;
    }
}

pub fn get_envs() -> &'static mut UserEnv{
    unsafe {
        &mut *(ENVS.addr as *mut UserEnv)
    }
}


/// Create first user env
pub fn env_create(binary: usize) {
    let new_env = env_alloc(0);
    println!("new env[{}]", new_env);
    
    unsafe {
        load_icode(new_env, binary);
    }
}



pub unsafe fn env_run(id: usize) {
    let envs = get_envs();
    if CURRENV != Some(id) {
        CURRENV = Some(id);
        context_switch(&envs.envs[id].tf);
        change_pgdir(envs.envs[id].pgdir);
    }
    env_pop_tf(&envs.envs[id].tf); 
}


pub fn get_env(offset: usize) -> &'static mut Env {
    unsafe {
        let envs_ptr = get_envs().envs.as_mut_ptr();
        &mut *envs_ptr.offset(offset as isize)
    }
}

fn get_free_env() -> usize {
    static mut NEXT_FREE:usize = 0;
    unsafe {
        let ret = NEXT_FREE;
        NEXT_FREE += 1;
        ret
    }
}

pub fn env_alloc(parent_id: usize) -> usize {
    let envs = get_envs();
    let new_id = get_free_env();
    let new_env = &mut envs.envs[new_id];

    new_env.tf.spsr = 0x10;
    new_env.id = new_id;
    new_env.parent_id = parent_id;
    new_env.status = EnvStatus::Runnable;


    env_setup_vm(new_env);
    new_id
}

pub fn env_destroy(env: usize) {
    let envs = get_envs();
    let current_env = get_current_env().unwrap();
    envs.envs[env].status = EnvStatus::Free;
    env_free(env);
    if (current_env == env) {
        sched::sched_yield();
    }
}

pub fn env_free(env: usize) {
    println!("Free env {}", env);
}

pub fn env_setup_vm(env: &mut Env) {
    let current = mem::alloc_frame(0, 0).addr;
    let padding = util::round_up(current, PAGE_SIZE * 4)-current;

    env.pgdir = mem::alloc_frame(padding + 4 *PAGE_SIZE, 0).to_paddr();
    env.pgdir.addr = util::round_up(env.pgdir.addr, PAGE_SIZE * 4);
    unsafe {
        let pgdir = (env.pgdir.addr ^ KERN_BASE) as *mut u8;
        let offset = (paging::UTOP/paging::SECTION_SIZE) as isize;
        let kern_pgdir = L1PageTable::get_kern_pgdir();
        memcpy(pgdir,
            kern_pgdir as *const _ as *const u8, 
            PAGE_SIZE * 4);
    }
}

unsafe fn load_icode(env: usize, binary: usize) {
    use crate::elf::{ElfHeader, ProgramHeader};

    let env = &mut get_envs().envs[env];
    let old_pgdir = Vaddr::new(L1PageTable::get() as *mut _ as usize).to_paddr();
    paging::change_pgdir(env.pgdir);
    let page_table = L1PageTable::get();
    let binary = binary as *mut u8;
    let elf_hdr = &*(binary as *const ElfHeader);
    if elf_hdr.e_ident[0] != 0x464c457f{
        panic!("Not a valid elf");
    }
    let prog_hdr = binary.offset(elf_hdr.e_phoff as isize) as *const ProgramHeader;
    
    for ph_num in 0..elf_hdr.e_phnum {
        let ph = &*prog_hdr.offset(ph_num as isize);
        if ph.p_type != 1 {
            continue;
        }
        let start = util::round_down(ph.p_paddr as usize, PAGE_SIZE);
        let end = util::round_up((ph.p_paddr + ph.p_memsz) as usize, PAGE_SIZE);
        let mut va = Vaddr::new(start);
        let num_frames = (end-start) / PAGE_SIZE;
        let mut pa = mem::alloc_frame(num_frames, 1).to_paddr();
        
        for i in 0..num_frames {
            page_table.map_va2pa(va,
                pa,
                paging::USER_FLAG);
            va.addr += PAGE_SIZE;
            pa.addr += PAGE_SIZE;
        }
        memcpy(ph.p_paddr as *mut u8, binary.offset(ph.p_offset as isize), ph.p_filesz as usize);
    }
    let user_stack = mem::alloc_frame(PAGE_SIZE, 0);
    page_table.map_va2pa(Vaddr::new(paging::USTACK - PAGE_SIZE), 
    user_stack.to_paddr(), paging::USER_FLAG);

    env.tf.pc = elf_hdr.e_entry as usize;
    env.tf.sp = paging::USTACK;
    env.tf.lr = 0;

    paging::change_pgdir(old_pgdir);
}

pub fn get_current_env() -> Option<usize>{
    unsafe {CURRENV}
}