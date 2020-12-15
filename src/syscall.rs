use crate::env::{self,TrapFrame, EnvStatus};
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
            let fd = tf.reg[1];
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
            println!("sched yield");
            let env = env::get_current_env().unwrap();
            let envs = env::get_envs();
            envs.envs[env].status = EnvStatus::Runnable;
            sched::sched_yield();
        },
        Syscall::Fork => {
            println!("Sys fork");
        },
        Syscall::Exec => {
            println!("Sys exec");
        }
        Syscall::Exit => {
            let env = env::get_current_env().unwrap();
            let envs = env::get_envs();
            envs.envs[env].status = EnvStatus::Dying;
            println!("env[{}] dead", envs.envs[env].id);
            sched::sched_yield();
        }
        _ => {
            println!("Worng syscall num");
            loop {}
        }
    }
}