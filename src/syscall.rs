use crate::env::TrapFrame;
use crate::{println, print};

#[repr(C)]
pub enum Syscall {
    SysWrite,
    SysRead,
    SysYield,
    SysFork,
    SysExec,
    SysUnkown,
}

impl Syscall {
    pub fn new(num: usize) -> Self{
        match num {
            0 => Self::SysWrite,
            1 => Self::SysRead,
            2 => Self::SysYield,
            3 => Self::SysFork,
            4 => Self::SysExec,
            _ => Self::SysUnkown,
        }
    }
}


pub fn dispatch_syscall(tf: &TrapFrame) {
    let syscall_num = Syscall::new(tf.reg[0]);
    match syscall_num {
        SYS_WRITE => {
            let fd = tf.reg[1];
            let s = tf.reg[2] as *const u8;
            let len = tf.reg[3];
            for i in 0..len {
                unsafe {
                    print!("{}", *s.offset(i as isize) as char);
                }
            }
        },
        SYS_READ => {
            println!("Sys read");
        }, 
        SYS_YIELD => {
            println!("Sys yield");
        },
        SYS_FORK => {
            println!("Sys fork");
        },
        SYS_EXEC => {
            println!("Sys exec");
        }
        _ => {
            println!("Worng syscall num");
        }
    }
}