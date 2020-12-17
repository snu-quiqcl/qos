.equ MODE_USR, 0x10
.equ MODE_FIQ, 0x11
.equ MODE_IRQ, 0x12
.equ MODE_SVC, 0x13
.equ MODE_MON, 0x16
.equ MODE_ABT, 0x17
.equ MODE_HYP, 0x1a
.equ MODE_UND, 0x1b
.equ MODE_SYS, 0x1f


.section .text.vector
.global _vector_table
_vector_table:
b _start /* Reset */ 
b _undefined /* Undefined Instruction */
b _svc /* Supervisor Call */
b _prefetch /* Prefetch Abort */
b _data /* Data Abort */
b . /* Not used */
b _irq /* IRQ */
b _fiq /* FIQ */

.section .text.init
.global _start
_start:
/* Switch to supervisor mode */
    msr cpsr_c, #MODE_IRQ
    ldr sp, =_irq_stack /* set IRQ stack*/
    msr cpsr_c, #MODE_SVC
    eor r0, r0
    eor r1, r1
    eor r2, r2
    eor r3, r3
    eor r4, r4
    eor r5, r5
    eor r6, r6
    eor r7, r7
    eor r8, r8
    eor r9, r9
    eor r10, r10
    eor r11, r11
    eor r12, r12
    eor r13, r13
    eor r14, r14
setup:
/* Disable interrupts */
//mrs r1, cpsr
//orr r1, r1, #0x80 /* disable irq */
//orr r1, r1, #0x40 /* disable fiq */
//msr cpsr_c, r1
cpsid if

/* Set TTBCR.N = 0 */
MRC p15, 0, r1, c2, c0, 2
mov r2, #-4
and r1, r1, r2
MCR p15, 0, r1, c2, c0, 2

ldr r1, =_kern_pgdir
/* Register page table */
mcr p15, 0, r1, c2, c0, 0


/* Set [1M, 2M) identity mapping */ 
movw r2, #0x0c02
movt r2, #0x0010
add r1, r1, #4
str r2, [r1]

/* Set [3G+1M, 3G+2M) -> [1M, 2M) offset mapping */
add r1, r1, #(3072 * 4)
str r2, [r1]


/* Map MMIO region [4G-1M, 4G) */
mov r0, #(1022 * 4)
add r1, r1, r0
ldr r2, =_mmio_pgtable
add r2, r2, #1
str r2, [r1]

/* Magic number for UART MMIO */
movw r1, #0x1416
movt r1, #0xe000
add r2, r2, #-1
str r1, [r2]


/* Make kernel domain 0 manager */
mov r0, #1
mcr p15, 0, r0, c3, c0, 0

mov r0, #0
/* Invalidate TLB */
mcr p15, 0, r0, c8, c7, 0
/* Invalidate I-Cache */
mcr p15, 0, r0, c7, c5, 0
/* Invalidate Branch Predictor Array */
mcr p15, 0, r0, c7, c5, 6
/* Invalidate D-cache */
MCR p15, 0, r0, c7, c14, 1

/* Read System Control Register */
mrc p15, 0, r0, c1, c0, 0
/* Enable MMU */
orr r0, r0, #1
/* Enable instruction cache*/
orr r0, r0, #(1<<12)
/* Enable branch prediction */
orr r0, r0, #(1<<11)
/* Enable data cache */
orr r0, r0, #(1<<2)
/* Write system control register */
mcr p15, 0, r0, c1, c0, 0

ldr r0, =_vector_table
add r0, r0, #0xc0000000
mcr p15, 0, r0, c12, c0, 0


ldr sp, =_bootstack

bl entry /* branch to rust */
b .


.section .text
/* Interrupt entry */     
_undefined:
b .

_svc:
stmfd sp!, {r0-r12, lr}
mrs r0, spsr
msr cpsr_c, #MODE_SYS
mov r1, lr
mov r2, sp
msr cpsr_c, #MODE_SVC
stmfd sp!, {r0-r2}
mov r0, sp
bl svc
add sp, #12
ldmfd sp!, {r0-r12, pc}^

_prefetch:
MRC p15,0,r0,c6,c0,2
msr cpsr_c, #MODE_SVC
mov r1, lr
b page_fault_handler

_data:
MRC p15,0,r0,c6,c0,0
msr cpsr_c, #MODE_SVC
mov r1, lr
b page_fault_handler

_irq:
/*
sub lr, lr, #4
stmfd sp!, {r0-r12, lr}
bl irq
ldmfd sp!, {r0-r12, pc}^    
*/

sub lr, lr, #4
stmfd sp!, {r0-r12, lr}

mov r4, #0x1f
mrs r5, spsr
and r6, r4, r5
cmp r6, #MODE_USR
bne enter_irq

mrs r3, cpsr
mrs r0, spsr
msr cpsr_c, #MODE_SYS
mov r1, lr
mov r2, sp
msr cpsr, r3
stmfd sp!, {r0-r2}
mov r0, sp
mov r1, #1
bl irq
add sp, #12
ldmfd sp!, {r0-r12, pc}^  

enter_irq:
    mov r1, #0
    bl irq
    ldmfd sp!, {r0-r12, pc}^


_fiq:
b .

.global context_switch
context_switch:
    msr cpsr_c, #MODE_SYS
    ldr r1, [r0]
    ldr lr, [r0, #4]
    ldr sp, [r0, #8]
    msr cpsr_c, #MODE_SVC
    msr spsr, r1
    bx lr

.global env_pop_tf
env_pop_tf:
    ldr sp, =_bootstack
    add r0, #12
    ldmfd r0, {r0-r12, pc}^
    b .
