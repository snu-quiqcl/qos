use mem::alloc_frame;
use paging::{USER_FLAG, change_pgdir};

use crate::{env::{self,TrapFrame, EnvStatus}, mem::{self, Vaddr}, paging::{self, L1PageTable, L1TableEntry, PAGE_SIZE, SECTION_SIZE}};
use crate::sched::{self};
use crate::{println, print};

#[repr(C)]
#[derive(Debug)]
pub enum Syscall {
    Write,
    Read,
    Yield,
    Fork,
    Exec,
    Exit,
    Unkown,
}

impl Syscall {
    pub fn new(num: usize) -> Self{
        match num {
            0 => Self::Write,
            1 => Self::Read,
            2 => Self::Yield,
            3 => Self::Fork,
            4 => Self::Exec,
            5 => Self::Exit,
            _ => Self::Unkown,
        }
    }
}


pub fn dispatch_syscall(tf: &TrapFrame) {
    let syscall_num = Syscall::new(tf.reg[0]);
    match syscall_num {
        Syscall::Write => {
            let _fd = tf.reg[1];
            let s = tf.reg[2] as *const u8;
            let len = tf.reg[3];
            for i in 0..len {
                unsafe {
                    print!("{}", *s.offset(i as isize) as char);
                }
            }
        },
        Syscall::Read => {
            println!("Sys read");
        }, 
        Syscall::Yield => {
            let env = env::get_current_env().unwrap();
            let envs = env::get_envs();
            envs.envs[env].status = EnvStatus::Runnable;
            sched::sched_yield();
        },
        Syscall::Fork => {
            let env = env::get_current_env().unwrap();
            fork(env);

        },
        Syscall::Exec => {
            println!("Sys exec");
        }
        Syscall::Exit => {
            env::env_destroy(env::get_current_env().unwrap());
        }
        Syscall::Unkown => {
        }
    }
}

pub fn fork(parent_env: usize) {
    let new_env = env::get_env(env::env_alloc(parent_env));
    let parent_env = env::get_env(parent_env);


    new_env.status = EnvStatus::Runnable;
    new_env.tf = parent_env.tf;
    new_env.tf.reg[0] = 0;
    parent_env.tf.reg[0] = new_env.id;

    // Copy Addrress space and memory
    unsafe {

        let dest_pgdir = &mut *(new_env.pgdir.to_vaddr().addr as *mut L1PageTable);
        let src_pgdir = &mut *(parent_env.pgdir.to_vaddr().addr as *mut L1PageTable);

        for (i, entry) in src_pgdir.entries.iter().enumerate() {
            if entry.is_present() && entry.is_table(){
                if i >= 2048 { break}
                let src_l2_table = entry.get_l2_table();
                for (j, l2_entry) in src_l2_table.entries.iter().enumerate() {
                    if l2_entry.is_present() {
                        let new_page = alloc_frame(PAGE_SIZE, 0);
                        let va = Vaddr::new(i * SECTION_SIZE + j * PAGE_SIZE);
                        dest_pgdir.map_va2pa(va, new_page.to_paddr(), USER_FLAG);
                        mem::memcpy(new_page.addr as *mut _,
                            va.addr as *const u8,
                            PAGE_SIZE);
                    }
                }
            }
        }
    }
}