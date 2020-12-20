use crate::env::{self, EnvStatus, NENV};
use crate::{print, println};

pub fn sched_yield() {
    let current_env = env::get_current_env();
    let mut idle = None;
    
    match current_env{
        Some(id) => {
            let mut i = (id + 1) % NENV;
            let envs = &mut env::get_envs().envs;
            while i != id {
                if envs[i].status == EnvStatus::Runnable {
                    idle = Some(i);
                    break;
                }
                i = (i + 1) % NENV;
            }

            // No runnable env found, try to run current env 
            if idle == None {
                if envs[id].status == EnvStatus::Runnable {
                    idle = Some(id);
                }
            }
        },
        None => {
            for (i, env) in env::get_envs().envs.iter_mut().enumerate() {
                if env.status == EnvStatus::Runnable {
                    idle = Some(i);
                    break;
                }
            }
        }
    }

    if let Some(id) = idle {
        //println!("Start running {}", id);
        unsafe {env::env_run(id)};
        panic!("env_run returned");
    }

    panic!("No envs");

    sched_halt();
}

fn sched_halt() -> ! {
    loop {}
}
