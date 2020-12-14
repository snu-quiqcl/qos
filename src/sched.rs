use env::{CURRENV};

use crate::env;
pub fn sched_yield() {
    let envs = env::get_envs();
    let current_env;
    let mut idle = None;
    unsafe { current_env = CURRENV; }
    match current_env {
        Some(id) => {
            idle = Some(id);
        },
        None => {
        }
    }

    if let Some(id) = idle {
        unsafe {env::env_run(id)};
    }

    sched_halt();
}

fn sched_halt() -> ! {
    loop {}
}