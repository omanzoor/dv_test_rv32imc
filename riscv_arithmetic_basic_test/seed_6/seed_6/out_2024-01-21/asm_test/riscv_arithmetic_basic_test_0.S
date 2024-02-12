.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x22, h0_start
jalr x0, x22, 0
h0_start:
                  li x17, 0x40001104
                  csrw 0x301, x17
kernel_sp:        
                  la x23, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 1
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  li x17, 0x0
                  csrw 0x304, x17 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x3b0bfd86
                  li x4, 0x0
                  li x5, 0xdff9eecf
                  li x6, 0x0
                  li x7, 0x2ceb8169
                  li x8, 0x1
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xf8e3f3d1
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x80000000
                  li x17, 0x9
                  li x18, 0x4d361daa
                  li x19, 0xf179d8a2
                  li x20, 0x7fef50f
                  li x21, 0x0
                  li x22, 0xe
                  li x24, 0x40675990
                  li x25, 0xf3e9d9a7
                  li x26, 0xd
                  li x27, 0xa3290056
                  li x28, 0xf33c36e6
                  li x29, 0xa00cc650
                  li x30, 0x80000000
                  li x31, 0x2
                  la x16, user_stack_end
main:             li           a3, 0x0 #start riscv_int_numeric_corner_stream_27
                  li           a1, 0x80000000
                  li           s0, 0xf2b0606f
                  li           gp, 0xffffffff
                  li           s4, 0xfb3ec5d9
                  li           tp, 0x0
                  li           a0, 0x80000000
                  li           t4, 0x1f65f21f
                  li           ra, 0xffffffff
                  li           a5, 0x80000000
                  mulh         s0, gp, a5
                  auipc        a3, 400053
                  lui          s4, 220435
                  mulh         tp, ra, a1
                  lui          a5, 315638
                  mulhsu       a1, a3, s0
                  add          s4, t4, s0
                  mulhsu       a5, t4, s0
                  nop
                  mulhsu       ra, gp, gp
                  mulh         s0, a0, s4
                  remu         tp, a5, s0
                  div          s4, gp, a0
                  lui          a5, 742667
                  mul          a1, s0, tp
                  remu         t4, ra, s0
                  nop
                  mulhu        tp, gp, tp
                  divu         a0, a5, a0
                  mulhsu       s4, tp, s4 #end riscv_int_numeric_corner_stream_27
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           s3, 0xffffffff
                  li           s1, 0x0
                  li           gp, 0xf6c97719
                  li           s5, 0x0
                  li           a0, 0x0
                  li           s2, 0xd9397c3d
                  li           a5, 0xffffffff
                  li           t1, 0xffffffff
                  li           s8, 0x9e631e20
                  div          a5, ra, s5
                  div          a0, s5, s3
                  auipc        s3, 730816
                  add          t1, a0, s1
                  rem          a5, s5, s3
                  mulhsu       gp, ra, s1
                  mulh         t1, a5, gp
                  mulhu        s8, a5, s1
                  nop
                  lui          gp, 335732
                  nop
                  add          t1, gp, a5
                  add          s3, a0, a0
                  rem          a5, a0, gp
                  mul          s1, a0, s1
                  add          a5, a5, s5
                  add          s2, s8, s8
                  addi         ra, a5, 503
                  rem          a5, ra, s5
                  remu         ra, s5, ra
                  mulhu        a5, s2, s1
                  remu         s5, a0, s5
                  remu         s8, a0, a5
                  rem          s5, s8, ra
                  addi         gp, a5, 690
                  lui          s8, 474707
                  add          a5, ra, gp
                  add          s1, s1, a5
                  mulh         s5, s1, ra
                  nop #end riscv_int_numeric_corner_stream_25
                  li           ra, 0x0 #start riscv_int_numeric_corner_stream_31
                  li           s10, 0xffffffff
                  li           a7, 0x0
                  li           s3, 0x80000000
                  li           s0, 0xb5ecc7e6
                  li           a1, 0x0
                  li           a3, 0x80000000
                  li           s5, 0xffffffff
                  li           t1, 0x80000000
                  li           tp, 0x80000000
                  remu         a3, s3, a1
                  mulhu        s3, a7, a7
                  div          s3, s0, tp
                  mul          s3, tp, t1
                  addi         tp, ra, -1693
                  mulh         s5, s5, ra
                  lui          s0, 416537
                  mulhu        s3, t1, s5
                  remu         a7, s0, s3
                  addi         s0, tp, 486
                  mulhu        s0, t1, a7
                  add          s5, t1, t1
                  mulhu        a1, s10, t1
                  rem          a1, ra, t1
                  lui          s3, 666399
                  remu         t1, s0, s0
                  mulh         a1, tp, a7
                  div          t1, t1, a7
                  add          s10, ra, s5
                  mulhu        tp, a1, s5
                  divu         s5, s5, a1
                  mulh         tp, tp, t1
                  addi         tp, ra, -1844
                  auipc        s10, 777455
                  sub          a1, ra, tp
                  mul          tp, s0, tp
                  div          t1, a7, a3
                  add          tp, ra, a7
                  sub          s5, a3, s3
                  divu         a3, s0, ra #end riscv_int_numeric_corner_stream_31
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           t6, 0x80000000
                  li           s8, 0xffffffff
                  li           t5, 0xffffffff
                  li           a1, 0x7297cfec
                  li           gp, 0xcfbe6134
                  li           ra, 0xffffffff
                  li           s9, 0x80000000
                  li           t4, 0x80000000
                  li           a7, 0xffffffff
                  nop
                  lui          a1, 549428
                  addi         t6, gp, 284
                  remu         t5, s8, s8
                  divu         a1, ra, s9
                  divu         a1, ra, t4
                  lui          ra, 605900
                  sub          gp, a7, s9
                  mulhu        t5, t4, a7
                  auipc        ra, 1006025
                  nop
                  divu         s8, a1, t4
                  sub          s9, t5, t4
                  remu         s5, t5, t6
                  rem          t4, s5, a7
                  mulh         gp, s8, a1
                  remu         t6, t4, a1
                  divu         ra, s5, t6
                  lui          s5, 995970
                  mulhsu       s9, t5, s8
                  mul          s5, s9, s9
                  mulh         s8, s8, s8 #end riscv_int_numeric_corner_stream_18
                  li           a0, 0x730637ff #start riscv_int_numeric_corner_stream_12
                  li           a4, 0xe7daf17b
                  li           t1, 0xffffffff
                  li           s4, 0xb1e967ea
                  li           t5, 0x55ce1f3b
                  li           t4, 0x80000000
                  li           sp, 0xffffffff
                  li           t2, 0x0
                  li           a2, 0x80000000
                  li           a5, 0x80000000
                  rem          a2, t5, t2
                  lui          a2, 285739
                  mulhu        t4, a5, sp
                  mulhsu       t2, a5, t1
                  addi         sp, a5, 1651
                  div          a0, sp, sp
                  addi         a2, sp, -1629
                  div          a2, t4, s4
                  rem          t2, sp, a4
                  sub          s4, a2, sp
                  mulhsu       t1, t4, t4
                  mul          a5, s4, t1
                  remu         t2, sp, t5
                  div          t2, t4, a5
                  div          s4, a4, t4
                  lui          a0, 898054
                  sub          a4, t1, t1
                  lui          t5, 92993
                  nop #end riscv_int_numeric_corner_stream_12
                  li           a5, 0x1e1667a0 #start riscv_int_numeric_corner_stream_35
                  li           t2, 0xe47fa47a
                  li           ra, 0xffffffff
                  li           a0, 0x0
                  li           a1, 0x80000000
                  li           a3, 0x80000000
                  li           s10, 0xffffffff
                  li           t3, 0x80000000
                  li           t6, 0x0
                  li           s4, 0x0
                  lui          a1, 574738
                  addi         t6, a0, -1381
                  remu         a1, ra, a3
                  auipc        s10, 414233
                  divu         s10, a5, t3
                  div          ra, a5, s4
                  nop
                  auipc        s4, 64159
                  mul          a3, s10, ra
                  auipc        t2, 228327
                  mulh         t3, ra, t3
                  nop
                  add          t2, ra, s4
                  mul          a3, t3, t6
                  rem          t2, a1, a3
                  mulh         t2, ra, t6
                  add          t2, s4, s10
                  mulh         a5, a5, s10
                  lui          s10, 847535
                  mulhsu       a0, a1, t2
                  rem          a0, a3, t3
                  addi         s4, ra, 1391
                  mulhu        t3, s4, t2
                  sub          t6, s10, a3
                  sub          a0, ra, t6
                  nop
                  mulhsu       ra, t2, t2 #end riscv_int_numeric_corner_stream_35
                  li           s1, 0x80000000 #start riscv_int_numeric_corner_stream_17
                  li           tp, 0x80000000
                  li           a1, 0x80000000
                  li           s11, 0xffffffff
                  li           a0, 0x80000000
                  li           ra, 0xffffffff
                  li           sp, 0x0
                  li           a5, 0xffffffff
                  li           t2, 0xffffffff
                  li           s3, 0x0
                  remu         tp, t2, tp
                  divu         s11, tp, s11
                  lui          a1, 701252
                  mulhu        a1, tp, s11
                  mulh         tp, tp, ra
                  addi         s11, a1, -364
                  mulhsu       a5, sp, sp
                  mulhu        ra, t2, s1
                  mulhsu       ra, a5, sp
                  sub          s11, a0, a1
                  mulh         t2, sp, s3
                  auipc        t2, 41110
                  divu         tp, s11, sp
                  rem          sp, a0, sp
                  rem          s1, tp, s1
                  mul          t2, ra, s11
                  div          s3, sp, t2
                  rem          t2, s11, a0
                  remu         t2, a5, s11 #end riscv_int_numeric_corner_stream_17
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_26
                  li           s9, 0xffffffff
                  li           t3, 0x0
                  li           a4, 0x80000000
                  li           ra, 0x80000000
                  li           t4, 0xed03230a
                  li           s1, 0xf58af6be
                  li           sp, 0x883cd098
                  li           a2, 0x80000000
                  li           s8, 0xffffffff
                  mulhsu       t3, s8, sp
                  mul          sp, sp, a7
                  mulh         sp, a7, t3
                  divu         a7, sp, ra
                  nop
                  div          t3, a4, sp
                  auipc        t4, 981363
                  rem          a2, a7, t4
                  nop
                  mulh         s8, sp, t3
                  mulhsu       s8, s1, s1
                  mulh         t3, a4, a4
                  nop
                  lui          a4, 417586
                  lui          s1, 210
                  mul          t4, sp, sp
                  mulhsu       sp, t4, sp
                  lui          s8, 372264
                  sub          sp, t3, s8
                  nop
                  rem          a4, ra, t3
                  lui          a4, 194747
                  mulhsu       s1, a4, t3
                  mulh         s1, s8, a2
                  divu         sp, s8, a7
                  rem          s9, t3, a4
                  rem          t3, ra, ra
                  divu         sp, s8, a2
                  mulh         s9, a4, t4
                  auipc        s1, 733210 #end riscv_int_numeric_corner_stream_26
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           t2, 0x5928a16b
                  li           tp, 0x2d8d3167
                  li           s11, 0xffffffff
                  li           a1, 0xffffffff
                  li           a7, 0x80000000
                  li           gp, 0x80000000
                  li           t0, 0x80000000
                  li           s4, 0xc5f33799
                  li           a3, 0xffffffff
                  add          gp, tp, s11
                  sub          a7, s11, a1
                  sub          a7, a7, s8
                  mulhsu       a7, s8, t0
                  div          t0, t2, t2
                  mulhu        s4, tp, s8
                  mulhsu       t0, a3, gp
                  rem          t2, gp, gp
                  remu         a7, s11, a7
                  mul          a1, t2, tp
                  divu         s4, s4, t0
                  mulhsu       s4, s11, s11
                  nop
                  nop
                  mulhsu       gp, a7, s4
                  addi         a1, a7, 1557
                  divu         t2, gp, a1
                  mul          tp, s11, t2
                  mulh         s8, t2, a1
                  mulhu        s8, a7, s8
                  mul          a3, a1, gp
                  auipc        a3, 664760
                  mul          tp, s4, t0
                  rem          s8, a3, t2
                  mulhsu       s8, t2, gp
                  addi         s8, gp, -925 #end riscv_int_numeric_corner_stream_36
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_5
                  li           a1, 0xffffffff
                  li           a3, 0xffffffff
                  li           tp, 0xffffffff
                  li           s1, 0xffffffff
                  li           t3, 0x80000000
                  li           t2, 0x9f5688c2
                  li           s5, 0xffffffff
                  li           s10, 0x0
                  li           s8, 0x8eb60f54
                  nop
                  addi         tp, s5, -264
                  divu         s8, a3, t2
                  remu         s10, a3, s1
                  mulh         s5, a1, s1
                  add          a3, t2, s8
                  div          s10, s5, t3
                  mulhu        s5, s5, a2
                  lui          tp, 640947
                  rem          s8, a2, s10
                  lui          tp, 361732
                  mul          a2, a1, s1
                  mulh         t2, t2, t3
                  mulhu        s10, a3, a2
                  addi         tp, s8, -830
                  lui          s1, 1028761
                  div          a3, s8, s10
                  remu         a2, tp, a3
                  lui          t2, 145471
                  mulhsu       s5, s5, a3
                  auipc        t2, 577378
                  remu         tp, s1, s8
                  sub          t2, s10, a3
                  addi         s5, s5, 1534
                  rem          t2, a2, s1
                  remu         t3, t2, s8
                  auipc        s1, 821732
                  lui          s10, 29440 #end riscv_int_numeric_corner_stream_5
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           t5, 0x0
                  li           gp, 0xffffffff
                  li           a1, 0x80000000
                  li           a0, 0x80000000
                  li           s4, 0xc3290fd0
                  li           t4, 0xffffffff
                  li           t0, 0x80000000
                  li           ra, 0x92c79a31
                  li           s2, 0x80000000
                  div          t5, ra, t5
                  mulhu        gp, t0, a1
                  addi         a0, t5, 1788
                  lui          t5, 497016
                  auipc        a0, 417261
                  nop
                  rem          t4, gp, gp
                  rem          a1, ra, s2
                  add          a1, t4, t5
                  rem          a0, t5, t0
                  mulhu        a1, s9, ra
                  mulhsu       t0, gp, s9
                  divu         s2, a1, t5
                  divu         t0, ra, a0
                  addi         t0, a1, 854 #end riscv_int_numeric_corner_stream_6
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_4
                  li           s1, 0xffffffff
                  li           tp, 0xffffffff
                  li           t2, 0x0
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           s9, 0x0
                  li           t0, 0x33d09fc7
                  li           s3, 0x0
                  li           s11, 0xf9ecd55c
                  nop
                  remu         s5, s3, s5
                  div          s11, s1, a5
                  mul          a5, tp, a5
                  addi         t0, tp, -1108
                  divu         gp, s1, s11
                  remu         t0, a5, s1
                  mul          s11, gp, s9
                  lui          s11, 179855
                  mulhsu       s3, gp, gp
                  addi         a5, s3, 1547
                  nop
                  divu         s9, s5, gp
                  div          s1, s3, s3
                  mul          s1, s1, t2
                  rem          t2, a5, s9
                  remu         s1, s11, s3
                  rem          s9, s11, s3
                  mul          s1, tp, s11
                  nop
                  lui          s9, 394231
                  mulh         t2, s9, gp
                  rem          s3, gp, s1
                  div          tp, a5, tp #end riscv_int_numeric_corner_stream_4
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           a0, 0xffffffff
                  li           a1, 0xcd6477ee
                  li           s11, 0xf220aa97
                  li           t0, 0x0
                  li           ra, 0xffffffff
                  li           tp, 0x0
                  li           t4, 0x0
                  li           t2, 0xecc6549e
                  li           s4, 0x0
                  mulhsu       t4, t2, t2
                  sub          s4, t0, a1
                  divu         tp, ra, tp
                  auipc        t0, 330335
                  remu         s11, t4, sp
                  mulh         t4, s11, ra
                  sub          sp, ra, t4
                  nop
                  addi         s4, a0, 582
                  rem          ra, tp, a0
                  remu         s11, a0, a0
                  sub          a1, t4, a1
                  mulhsu       ra, t0, t0
                  lui          s4, 114399
                  sub          ra, t0, s4
                  mul          a1, a0, tp
                  div          tp, t2, a0
                  sub          ra, s4, ra #end riscv_int_numeric_corner_stream_21
                  li           tp, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           t1, 0x97ea848d
                  li           a4, 0xffffffff
                  li           s11, 0xffffffff
                  li           t2, 0xffffffff
                  li           a0, 0x0
                  li           t0, 0xffffffff
                  li           a2, 0xffffffff
                  li           s9, 0xd7ffc574
                  li           t6, 0x0
                  mulhsu       t6, s9, s9
                  mulhsu       a2, s11, s9
                  mulhsu       t1, s9, a4
                  sub          a2, tp, s9
                  rem          a2, t0, t0
                  mulhu        t0, t6, t2
                  mulh         t6, tp, a4
                  nop
                  mulh         t0, s9, a0
                  auipc        a0, 991699
                  mulhsu       t2, t2, a4
                  mulh         tp, a0, t2
                  addi         a0, t1, 1311
                  mulhu        a4, s9, s11
                  div          a0, s11, a4
                  rem          a0, t2, a4
                  lui          a2, 269330
                  mul          a0, s9, a2
                  sub          a0, s9, a4
                  div          s11, a2, tp
                  mul          s9, s9, a2
                  divu         t6, a2, a4
                  add          s9, a4, tp
                  lui          a2, 960578
                  sub          a0, a2, s11
                  nop
                  divu         t6, a0, tp #end riscv_int_numeric_corner_stream_30
                  li           ra, 0x2c973231 #start riscv_int_numeric_corner_stream_23
                  li           s9, 0xffffffff
                  li           s2, 0x80000000
                  li           a0, 0xeee370ec
                  li           s5, 0x0
                  li           s4, 0x80000000
                  li           gp, 0x80000000
                  li           t5, 0x2a55b07b
                  li           a4, 0x80000000
                  li           a7, 0x0
                  mul          s5, s2, ra
                  div          t5, s2, s9
                  sub          a7, a0, t5
                  mul          s9, gp, ra
                  nop
                  nop
                  sub          t5, a4, a7
                  addi         a7, ra, -1781
                  mulhu        a0, s9, a7
                  lui          ra, 948818
                  lui          s4, 391731
                  addi         a0, ra, -378
                  mulhu        s2, a0, t5
                  mulhsu       s4, s5, a0
                  auipc        ra, 1015009
                  mul          s9, a0, a0
                  divu         s4, a4, s4
                  addi         s4, s9, 1250
                  sub          s9, t5, ra
                  remu         s4, s2, s9
                  mulh         s9, s9, t5
                  sub          a4, s5, s4
                  mulhu        ra, gp, s9
                  divu         t5, gp, s5
                  remu         s5, s2, ra
                  mulhu        a7, t5, s4 #end riscv_int_numeric_corner_stream_23
                  li           t0, 0x80000000 #start riscv_int_numeric_corner_stream_39
                  li           s3, 0x0
                  li           a3, 0x26bbcde3
                  li           s2, 0x80000000
                  li           s8, 0xffffffff
                  li           a7, 0x0
                  li           t1, 0xffffffff
                  li           a2, 0xffffffff
                  li           s0, 0x80000000
                  li           s10, 0x0
                  mul          t1, a7, s3
                  mulhsu       s10, s8, s10
                  mul          s2, s8, s10
                  mulhu        s8, a3, a2
                  divu         s0, a7, a3
                  rem          a2, s2, t0
                  div          a2, s2, a7
                  sub          s10, a7, a7
                  remu         t1, a2, s3
                  mulhsu       s10, t1, t1
                  mulhsu       t1, s3, a7
                  nop
                  add          s10, t1, s2
                  lui          s10, 838616
                  div          s10, s3, a7
                  nop
                  auipc        s0, 110068
                  mulh         s8, s10, a3 #end riscv_int_numeric_corner_stream_39
                  li           s1, 0x0 #start riscv_int_numeric_corner_stream_15
                  li           s9, 0x0
                  li           a3, 0x80000000
                  li           a1, 0x80000000
                  li           s5, 0xffffffff
                  li           s4, 0xffffffff
                  li           ra, 0x80000000
                  li           s8, 0x80000000
                  li           tp, 0x1fe4f02e
                  li           s3, 0xe61c62ff
                  remu         a3, s8, s9
                  lui          s1, 179601
                  div          ra, s3, s9
                  nop
                  div          s1, ra, s5
                  sub          s3, tp, s4
                  div          tp, s1, s9
                  remu         tp, s8, s1
                  mulhsu       a1, a3, s1
                  mulhu        ra, s3, tp
                  nop
                  mulh         a1, a1, s1
                  div          a1, a1, s1
                  add          s3, s8, tp
                  rem          a3, s5, tp
                  add          tp, s3, s8
                  mul          a3, s4, ra
                  mulh         a3, s1, s8
                  mulh         a1, a1, s3
                  nop
                  sub          tp, s4, ra
                  add          s4, s5, s9 #end riscv_int_numeric_corner_stream_15
                  srli         a3, a1, 25
                  lui          s11, 477003
                  c.addi16sp   sp, -16
                  and          zero, s0, a6
                  auipc        s0, 590269
                  c.lui        t4, 20
                  mulh         t1, a2, s5
                  or           s1, t3, s3
                  c.srai       a0, 8
                  mul          a1, t5, a4
                  srl          gp, a1, t6
                  c.addi4spn   a0, sp, 432
                  c.andi       a3, -1
                  c.add        s1, a7
                  c.sub        a5, s0
                  c.addi4spn   a3, sp, 960
                  mul          s1, s6, s4
                  ori          t5, t2, 1322
                  andi         t0, s2, 751
                  ori          ra, a6, 816
                  c.mv         s9, t2
                  c.or         a4, a2
                  sltiu        a1, t1, 230
                  c.sub        s1, a1
                  c.and        a2, s1
                  c.addi4spn   a4, sp, 304
                  c.addi4spn   a4, sp, 688
                  c.li         t3, 10
                  mulhsu       s10, zero, zero
                  c.and        a3, a4
                  srai         s2, t5, 31
                  div          s10, s9, a0
                  c.lui        t4, 15
                  nop
                  srli         t6, t1, 16
                  c.nop
                  c.addi       t3, 9
                  slti         t2, a1, -398
                  xori         t5, s7, 1707
                  sub          s1, t3, t3
                  xor          s8, s1, a7
                  sra          t2, s0, t2
                  c.addi16sp   sp, 384
                  srl          gp, a1, s8
                  slt          s3, a1, a3
                  c.or         a0, s1
                  sub          t2, s8, s10
                  c.andi       a5, -1
                  srli         a0, s3, 26
                  c.xor        a4, a3
                  c.add        s5, s3
                  sltiu        s1, tp, 1502
                  sltiu        s2, a0, 982
                  nop
                  srai         a3, s9, 12
                  nop
                  srai         s9, a6, 26
                  addi         s8, a2, 871
                  rem          s3, s6, a6
                  c.srai       a4, 26
                  lui          s8, 873940
                  add          t1, a5, s3
                  sll          s2, ra, gp
                  c.addi16sp   sp, -16
                  mulhu        t6, s2, a4
                  auipc        a4, 177284
                  c.xor        a4, a5
                  addi         s0, a5, -827
                  c.slli       t6, 30
                  c.srai       a2, 13
                  c.and        a3, a4
                  c.addi4spn   a1, sp, 896
                  xori         s10, a3, 603
                  c.add        t4, a7
                  c.srli       a0, 19
                  ori          s8, a3, -1954
                  c.addi       s11, 5
                  divu         t3, a3, a5
                  slti         t0, t5, 1894
                  ori          s5, gp, 1488
                  slli         s1, zero, 30
                  c.add        t0, s0
                  rem          t0, s6, s1
                  andi         s9, t1, 368
                  xor          t3, s4, sp
                  mulh         t5, a3, s0
                  sub          t0, a1, s2
                  c.and        a5, a1
                  add          a3, s11, t2
                  sra          a5, s6, t3
                  slt          s0, a4, zero
                  rem          t6, a6, a3
                  sra          t2, s3, s10
                  c.sub        a1, a1
                  xor          t0, s3, s2
                  mulhu        sp, a5, s3
                  slt          sp, a4, t6
                  sltu         a4, a3, s4
                  c.addi4spn   s0, sp, 592
                  c.add        sp, s8
                  c.li         a7, 5
                  c.and        s1, a2
                  slt          s5, s10, s7
                  rem          ra, gp, a0
                  srai         s3, s2, 2
                  c.add        t4, t4
                  auipc        s0, 589503
                  xori         ra, s10, -737
                  sltu         s1, a7, t4
                  mulhsu       s9, s10, gp
                  c.addi       t1, -1
                  c.nop
                  srli         t4, a6, 10
                  srl          gp, s7, s11
                  c.add        s1, t0
                  addi         a3, ra, 389
                  andi         sp, t0, 1429
                  c.slli       s10, 3
                  c.xor        a0, s0
                  srli         ra, s2, 6
                  sra          ra, s9, t5
                  slli         s2, s8, 13
                  c.nop
                  srai         s4, a6, 23
                  srl          a4, sp, t2
                  xor          a3, t4, sp
                  c.lui        s5, 6
                  add          t0, t2, a6
                  or           s4, t6, s1
                  srai         s5, a4, 26
                  slt          a7, gp, s4
                  c.addi4spn   s0, sp, 960
                  srai         t0, s11, 18
                  nop
                  andi         s11, a2, -189
                  sltiu        t5, s11, -1684
                  mulh         gp, a5, s5
                  andi         s5, a5, 1808
                  auipc        t5, 491709
                  mulh         s2, s10, t1
                  mulhsu       s11, sp, s0
                  and          sp, tp, s9
                  remu         s10, s9, s1
                  rem          t3, s9, s2
                  andi         s11, t3, -559
                  c.li         gp, -1
                  addi         a0, ra, 568
                  srai         s0, t5, 30
                  c.add        a5, a3
                  rem          gp, a6, s5
                  ori          t5, zero, 1130
                  srai         s3, t1, 4
                  c.addi16sp   sp, -16
                  xori         tp, t6, 277
                  mulh         s11, a6, s6
                  divu         s5, s11, s8
                  or           t6, a0, tp
                  c.add        tp, s5
                  nop
                  and          a7, s1, a7
                  add          ra, a7, a4
                  c.srai       a3, 3
                  or           s10, tp, t3
                  c.and        a3, s0
                  mulh         t3, a4, s0
                  c.srai       a2, 20
                  c.or         a0, a1
                  mulhu        t4, t1, s10
                  c.addi       a4, -1
                  nop
                  xori         a0, tp, 1387
                  slt          a1, t6, s3
                  divu         zero, zero, s10
                  slli         t1, s11, 20
                  div          s1, tp, s0
                  srai         t6, s10, 4
                  xor          s1, s0, a7
                  xori         a7, s5, 1655
                  or           t6, s0, a5
                  sub          sp, t6, s5
                  c.addi       a4, -1
                  c.li         s0, -1
                  c.nop
                  srl          t0, t1, a4
                  slli         s8, a1, 20
                  and          a2, a2, t0
                  ori          s8, t3, 1935
                  c.slli       s1, 2
                  c.addi16sp   sp, -16
                  mul          a2, s2, a5
                  sltiu        ra, s2, -1654
                  c.or         a3, a0
                  xori         s2, t1, 1888
                  remu         s4, s9, t5
                  sll          s4, s5, a2
                  divu         t4, t1, s0
                  sub          gp, s11, t4
                  c.andi       a0, 2
                  xor          sp, a4, s9
                  srl          t6, t3, s6
                  slti         a2, s7, -1910
                  c.mv         a7, t2
                  c.srai       a1, 18
                  or           s3, t6, gp
                  c.add        s3, sp
                  sub          t6, tp, t3
                  sub          s1, a0, t1
                  xori         t3, t3, 1216
                  c.mv         a3, s7
                  c.add        a4, a6
                  divu         t1, gp, a0
                  c.addi4spn   s1, sp, 160
                  c.addi4spn   s0, sp, 896
                  div          a7, t4, s8
                  sub          a3, t0, a6
                  slli         a0, t3, 2
                  add          sp, s2, tp
                  xor          t6, a3, s2
                  c.sub        a2, a0
                  xor          s5, a2, a4
                  divu         a1, s2, s7
                  slt          ra, s9, t2
                  c.andi       s1, 3
                  c.li         t6, -1
                  mul          sp, s6, ra
                  c.addi4spn   a1, sp, 368
                  divu         a3, s4, t3
                  lui          t2, 626671
                  c.xor        a3, s0
                  mul          t6, s0, gp
                  c.add        s3, a5
                  slt          s9, s0, s4
                  nop
                  slti         s2, a1, 942
                  c.slli       a5, 3
                  srl          a0, s8, t4
                  sll          s5, s6, s8
                  c.srai       a0, 5
                  mul          s5, s9, a4
                  and          s5, t0, s1
                  or           a0, s5, ra
                  and          tp, sp, s10
                  and          a7, t5, tp
                  or           a7, s4, s1
                  c.and        a0, s1
                  c.addi16sp   sp, -16
                  sltiu        a7, sp, -1293
                  mulhsu       a0, s11, a5
                  c.addi16sp   sp, -16
                  sltiu        ra, a3, -1968
                  c.and        a2, a5
                  xori         t6, t3, -939
                  sll          t4, a2, t2
                  or           a7, s11, s4
                  c.lui        a0, 21
                  c.srli       a5, 28
                  nop
                  srl          ra, s3, a6
                  srl          a7, s5, a3
                  andi         t6, zero, 1606
                  c.slli       s0, 16
                  sub          a7, s0, zero
                  c.li         a4, -1
                  ori          t4, t0, 1720
                  slti         s1, s6, 1226
                  c.srli       s1, 29
                  div          a0, t0, s3
                  c.srli       a2, 16
                  remu         zero, gp, t4
                  c.srli       s1, 6
                  srai         t1, a4, 27
                  c.srli       a4, 19
                  c.addi16sp   sp, -16
                  sltu         t5, a3, a6
                  c.srai       a1, 22
                  c.nop
                  lui          s5, 476757
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_13
                  li           s0, 0x90578a2a
                  li           s5, 0x50b8df03
                  li           a0, 0xffffffff
                  li           a3, 0xf0b56ea6
                  li           a4, 0xb4e66ccf
                  li           t1, 0x0
                  li           gp, 0x80000000
                  li           a7, 0x94f8571a
                  li           sp, 0xffffffff
                  rem          sp, a4, t1
                  lui          a0, 550157
                  rem          a4, a7, s0
                  lui          s0, 473030
                  lui          a7, 816727
                  div          s5, a4, gp
                  div          s0, t1, s5
                  add          s0, sp, a4
                  mulhsu       gp, a4, a3
                  sub          s8, a3, a3
                  mul          s5, t1, a3
                  lui          s8, 137523
                  lui          a3, 837656
                  rem          gp, a7, a7
                  divu         s8, gp, a4
                  divu         a0, a3, t1
                  add          a3, gp, sp #end riscv_int_numeric_corner_stream_13
                  lui          s1, 374673
                  or           s2, t6, a1
                  remu         a3, sp, gp
                  c.lui        s8, 19
                  c.addi4spn   a0, sp, 32
                  c.addi4spn   a3, sp, 368
                  remu         gp, a2, sp
                  c.andi       a1, -1
                  lui          s4, 632992
                  lui          gp, 331743
                  addi         t6, a1, 1408
                  xori         t6, a3, -1201
                  rem          t4, t1, zero
                  or           t5, sp, s2
                  srl          t1, gp, a7
                  c.sub        s0, a0
                  c.or         a5, s1
                  nop
                  and          a0, a7, t6
                  mulh         a1, t4, s1
                  c.srai       a4, 12
                  c.addi16sp   sp, 368
                  sra          s8, s6, zero
                  nop
                  sltiu        t1, t1, 724
                  sub          a3, s10, tp
                  c.addi16sp   sp, -16
                  nop
                  sub          t6, a7, a4
                  auipc        t2, 326182
                  auipc        t6, 706548
                  sra          t5, t2, s0
                  srai         t2, gp, 1
                  or           ra, t0, ra
                  mulhu        gp, t1, a6
                  div          s3, s0, t1
                  c.addi       s1, -1
                  mulh         s5, a1, s3
                  c.addi16sp   sp, -16
                  andi         s4, a2, -60
                  c.nop
                  c.andi       a5, -1
                  c.mv         s8, s7
                  c.li         gp, 13
                  lui          zero, 360017
                  xor          s1, s7, gp
                  or           a3, s1, t0
                  c.add        sp, a6
                  sltiu        t5, s0, -1009
                  c.addi4spn   a4, sp, 480
                  mulh         a7, sp, s1
                  c.add        a5, a6
                  andi         s11, gp, 1600
                  mul          a1, a0, t5
                  add          ra, t2, tp
                  c.nop
                  mulh         tp, s9, s9
                  c.slli       a1, 16
                  add          t5, zero, s8
                  lui          s10, 67823
                  add          a4, a6, s10
                  nop
                  c.and        a0, s1
                  rem          sp, a1, t3
                  c.li         s2, -1
                  andi         a4, a3, 901
                  slti         s5, t2, 1637
                  c.li         a0, 22
                  c.and        a1, a4
                  rem          a3, a3, s8
                  mulhu        t5, s9, s10
                  remu         s5, zero, s2
                  c.xor        a2, a4
                  sll          a2, a6, s5
                  mulh         t6, ra, a7
                  andi         s9, s9, 971
                  auipc        s10, 932444
                  c.or         a2, a4
                  c.andi       a3, 7
                  srli         zero, t0, 14
                  sltiu        s4, t6, 1550
                  c.li         a2, -1
                  sub          s3, a2, s4
                  nop
                  divu         t3, a6, a2
                  c.addi       a1, -1
                  andi         t1, a5, 1216
                  mulhsu       s8, s1, s11
                  sub          s1, s1, tp
                  c.srai       a1, 15
                  c.mv         a2, s6
                  mulhsu       t1, a1, tp
                  xor          t0, s2, s11
                  add          a5, t4, t3
                  xor          a0, s3, t4
                  add          t6, s3, t1
                  c.mv         t3, s3
                  c.slli       t5, 5
                  c.addi       t1, 14
                  slti         s3, t4, -1463
                  mulhu        zero, s3, s10
                  c.or         s1, s0
                  divu         s2, s9, t3
                  rem          t3, a1, s2
                  mulhsu       s1, gp, a7
                  c.nop
                  c.mv         sp, tp
                  c.srli       a4, 14
                  c.andi       a0, -1
                  c.addi4spn   a0, sp, 784
                  ori          s4, a7, 1694
                  c.addi       tp, -1
                  c.or         a4, a4
                  c.nop
                  auipc        ra, 796908
                  c.slli       a4, 3
                  andi         t5, t6, -210
                  slti         t2, s11, -1923
                  xor          sp, a3, tp
                  c.andi       a0, 22
                  ori          tp, t4, 331
                  sltiu        sp, gp, -1948
                  nop
                  c.and        a4, a1
                  slli         ra, ra, 23
                  remu         t2, s3, a4
                  add          s5, a6, tp
                  xori         s10, s6, -1035
                  sltiu        s2, sp, -1924
                  rem          ra, t6, s9
                  remu         t3, ra, s5
                  c.xor        s0, s0
                  c.add        s9, ra
                  xori         t6, t5, 725
                  sll          t6, tp, s7
                  c.nop
                  srl          a4, s5, s4
                  c.andi       a3, 28
                  slli         s11, a6, 12
                  remu         t2, a0, t3
                  xori         a3, s0, -395
                  c.li         a4, -1
                  div          a4, t0, t4
                  lui          a0, 745040
                  divu         s2, t1, s2
                  c.and        a4, s1
                  c.li         s9, -1
                  c.lui        s5, 14
                  slti         s2, a3, -1551
                  divu         s1, a7, a3
                  remu         s9, t0, s6
                  auipc        s4, 810886
                  and          t0, a0, t3
                  c.addi4spn   s1, sp, 784
                  c.srai       s0, 8
                  andi         ra, s6, -1767
                  c.lui        s2, 16
                  sltiu        sp, s6, -1516
                  mulhu        a4, s10, a7
                  c.srli       a1, 18
                  c.add        t4, s6
                  xor          sp, a5, a2
                  xor          a5, ra, a7
                  c.srli       a4, 31
                  c.srai       a1, 2
                  srl          ra, t6, a3
                  andi         s1, s0, -1628
                  c.or         s0, a3
                  sltiu        s10, t2, -1722
                  c.and        a0, s1
                  c.slli       s2, 13
                  c.addi4spn   a5, sp, 480
                  c.andi       a4, -1
                  remu         s8, s7, t5
                  div          a0, s8, a2
                  addi         zero, s1, -523
                  c.or         a5, a5
                  sltu         s1, gp, a0
                  mul          gp, a5, s5
                  add          a0, a0, a6
                  c.srai       a5, 22
                  slt          s8, s8, t1
                  srai         t3, t5, 3
                  nop
                  andi         a7, t4, 1809
                  auipc        a3, 879512
                  addi         s8, s10, 1396
                  or           s0, s11, s8
                  divu         t5, s1, t4
                  srl          gp, s3, ra
                  c.sub        a3, a0
                  srl          s4, zero, a3
                  c.sub        a4, a3
                  srli         zero, s8, 9
                  sra          a7, s5, s4
                  slt          a7, a0, s6
                  auipc        s10, 247008
                  auipc        s8, 759397
                  and          s9, a3, a2
                  divu         zero, a4, s2
                  slti         s0, t3, -1841
                  c.sub        a5, s0
                  sra          s3, a6, ra
                  or           s4, s11, sp
                  c.lui        s8, 22
                  mul          sp, s8, t0
                  c.add        t1, s4
                  srli         t1, s8, 3
                  srai         s1, s2, 12
                  c.li         tp, 18
                  rem          t6, t4, t6
                  mulhsu       t3, tp, t2
                  remu         s8, a6, s4
                  remu         a4, a6, s7
                  c.addi16sp   sp, 272
                  c.addi16sp   sp, 128
                  c.or         a5, a4
                  c.nop
                  sltiu        zero, s0, -84
                  c.and        s0, s1
                  c.and        a5, a5
                  slli         t6, t4, 31
                  c.andi       a3, -1
                  sub          sp, a3, ra
                  auipc        t5, 519386
                  sltu         t3, s11, a3
                  sltu         a1, s9, a5
                  sltiu        a1, tp, -99
                  sra          s9, t5, a6
                  mulh         t5, s6, s7
                  c.add        s8, t2
                  div          gp, a7, tp
                  c.slli       tp, 31
                  slli         s8, s10, 31
                  srai         s10, t1, 22
                  c.xor        a5, a1
                  andi         a0, s6, 866
                  c.add        t5, tp
                  c.addi16sp   sp, -16
                  sll          t1, s0, s9
                  divu         s4, a6, s0
                  slli         t4, a0, 21
                  rem          s11, a6, t4
                  rem          s9, a4, tp
                  xor          s5, t3, s8
                  slli         t6, a1, 30
                  c.slli       s4, 9
                  c.srai       s1, 13
                  c.nop
                  xor          t6, a2, t6
                  or           t5, a1, t1
                  or           a5, s11, a5
                  c.lui        t6, 16
                  addi         ra, s8, -659
                  remu         a0, s2, s7
                  c.addi16sp   sp, -16
                  c.li         s11, 16
                  c.slli       a5, 14
                  c.li         s0, -1
                  sra          t0, s8, a1
                  c.xor        a2, a3
                  andi         tp, t0, -220
                  c.add        ra, a7
                  c.li         t0, 3
                  sltu         s4, s7, s11
                  mul          s2, s1, gp
                  mulhsu       t4, a2, a6
                  lui          ra, 896156
                  mul          t5, t5, sp
                  c.addi16sp   sp, -16
                  sll          s5, t6, s4
                  srl          a7, a1, t6
                  c.slli       s0, 26
                  c.addi       s11, 25
                  c.add        t3, gp
                  c.li         s0, -1
                  or           s8, s8, s0
                  c.addi16sp   sp, 320
                  sltu         s1, s11, sp
                  c.and        a0, a4
                  c.add        sp, s2
                  ori          a0, s9, -1385
                  c.sub        a1, s1
                  sra          a1, a5, s11
                  c.addi16sp   sp, 448
                  slt          t6, gp, a1
                  c.addi4spn   a2, sp, 480
                  srli         t3, s6, 6
                  lui          t4, 931467
                  sltu         t5, t2, s5
                  ori          s5, t5, -852
                  sltiu        a4, s11, 789
                  mulhsu       t2, t2, a5
                  ori          t5, s1, 1055
                  c.srli       a3, 6
                  lui          a1, 18132
                  c.nop
                  addi         a7, s11, -1576
                  xor          t1, a6, s1
                  c.srai       a1, 14
                  c.or         a3, a1
                  ori          t3, ra, 679
                  c.li         a2, -1
                  sltu         t6, s9, t6
                  slti         t4, t1, 1249
                  srl          s2, s1, t6
                  sll          gp, gp, tp
                  srai         t6, s6, 29
                  sra          zero, a6, t3
                  sub          s9, a0, s8
                  srai         s0, t1, 19
                  addi         gp, s7, -1523
                  c.addi       s2, 21
                  srli         t0, s1, 10
                  div          t6, a5, s6
                  remu         t2, a6, t0
                  c.slli       t2, 5
                  and          s4, s11, s2
                  add          s10, t2, t3
                  c.andi       a3, -1
                  rem          s8, a3, t5
                  c.addi4spn   s0, sp, 928
                  c.slli       t0, 8
                  sub          s1, s2, s3
                  remu         gp, s0, t2
                  xori         s0, ra, 1456
                  mulhu        tp, a1, tp
                  c.addi4spn   s0, sp, 608
                  andi         t2, s9, 1653
                  c.sub        a5, a2
                  c.srai       s1, 22
                  srli         s3, s9, 15
                  sra          s9, a2, s4
                  nop
                  c.and        a2, a1
                  or           s5, s3, a0
                  slli         t5, s5, 28
                  c.addi       a7, 28
                  c.addi4spn   a3, sp, 288
                  and          zero, a0, s4
                  addi         a4, ra, 1337
                  mul          s4, s6, ra
                  rem          s5, s0, a2
                  mulhsu       t4, a7, s11
                  srai         zero, t4, 7
                  c.addi4spn   a4, sp, 368
                  remu         s9, s8, t1
                  mulhu        a0, t2, s6
                  lui          tp, 941414
                  srai         s10, s5, 20
                  c.mv         s2, t2
                  div          s11, a4, a4
                  lui          t2, 862366
                  xori         s2, t3, -1527
                  nop
                  remu         t0, t3, t2
                  or           gp, s2, s1
                  srl          s4, a5, t1
                  and          s2, a3, t2
                  c.srai       a5, 17
                  xor          t5, a0, ra
                  c.add        s1, t5
                  c.add        s5, gp
                  srai         a1, s6, 12
                  sub          a2, a5, a4
                  srl          s8, ra, a1
                  remu         a2, t3, sp
                  andi         a7, s1, -2015
                  mulh         ra, s10, s11
                  mulhu        t0, ra, s11
                  rem          t0, a4, a3
                  sll          a7, t0, a1
                  rem          sp, ra, a5
                  c.and        a4, a3
                  add          s11, s5, a1
                  c.srli       s1, 12
                  srl          s10, a6, t6
                  lui          t6, 857107
                  mulh         sp, s11, s5
                  sub          t2, a7, zero
                  ori          a2, a0, 1278
                  div          s3, s6, s9
                  slli         s10, s7, 11
                  nop
                  c.xor        a3, s0
                  sub          tp, a7, t6
                  addi         a2, t4, 1856
                  auipc        tp, 744011
                  c.andi       s1, -1
                  mulh         a4, zero, a4
                  c.sub        s1, a3
                  c.lui        s4, 11
                  div          s9, tp, zero
                  c.or         a5, s0
                  c.mv         t2, ra
                  mulhsu       t3, t5, a7
                  c.or         s1, a3
                  mulhsu       tp, s3, zero
                  c.slli       s5, 8
                  auipc        s5, 1021675
                  rem          a7, s4, t4
                  sll          zero, tp, gp
                  c.slli       s10, 27
                  c.li         a2, -1
                  slli         a5, t0, 31
                  auipc        s1, 365721
                  c.addi4spn   a3, sp, 816
                  slli         s11, s5, 29
                  c.add        s0, s11
                  c.addi16sp   sp, -16
                  xori         s9, ra, -101
                  c.addi       s1, 14
                  lui          t1, 181644
                  add          t2, s10, ra
                  lui          t6, 1008784
                  addi         s3, t0, 1886
                  c.li         s0, 16
                  and          s10, t2, s8
                  and          t3, s0, a5
                  c.nop
                  slt          tp, a5, s0
                  slli         s10, ra, 14
                  c.srli       a0, 19
                  slti         t4, s10, 68
                  c.addi4spn   a1, sp, 704
                  slli         s0, s3, 18
                  ori          ra, s7, -907
                  srli         gp, s7, 3
                  or           tp, t5, s8
                  sltu         s3, a6, zero
                  sub          a5, s7, t2
                  c.andi       a1, -1
                  remu         a2, gp, t6
                  ori          sp, a6, -550
                  c.sub        a2, a0
                  mul          a5, a7, ra
                  c.xor        a3, a0
                  c.lui        ra, 12
                  c.slli       ra, 30
                  c.srai       a2, 31
                  c.andi       a4, -1
                  addi         s4, t2, -885
                  c.li         t0, -1
                  mul          s8, t6, zero
                  rem          a0, t3, a4
                  rem          t6, t2, a7
                  c.li         s2, -1
                  c.srai       a1, 22
                  slt          s0, a2, s4
                  c.lui        s8, 12
                  c.add        a0, s7
                  mulhu        a3, tp, a4
                  mulhsu       a0, tp, a1
                  c.mv         a5, a3
                  c.lui        s4, 16
                  c.xor        a1, s0
                  sltiu        a1, s1, -1748
                  lui          zero, 619166
                  ori          t2, t1, -1996
                  srli         a2, a3, 6
                  add          t0, s9, s10
                  nop
                  c.nop
                  add          s11, s4, tp
                  lui          s10, 939289
                  mulhsu       s5, a7, s4
                  c.addi4spn   s1, sp, 688
                  sltiu        a3, t6, -1029
                  slt          s0, t6, gp
                  mul          s4, s1, s10
                  mul          s0, s6, a0
                  remu         a7, t0, a2
                  c.or         a1, a4
                  add          s2, a5, sp
                  srl          t5, t6, s9
                  slt          t3, t2, t1
                  c.nop
                  mulhu        zero, a0, s11
                  c.or         a5, a2
                  srl          t4, t0, a3
                  mulhsu       s0, a7, t0
                  andi         a7, t6, 799
                  srai         t5, a1, 5
                  mulhsu       t4, s3, zero
                  c.slli       s9, 17
                  c.xor        s0, a0
                  add          t6, a4, s11
                  c.or         s0, a1
                  andi         s9, sp, -1376
                  and          t5, t4, s8
                  andi         a2, a5, 1294
                  sub          a2, s10, s8
                  sltiu        t2, s6, 720
                  nop
                  c.sub        a5, a2
                  remu         s0, t6, t6
                  slti         s2, s10, 365
                  andi         s10, s0, -1587
                  sub          s2, t3, a3
                  mulh         s5, t4, t0
                  sll          t5, a2, t4
                  c.or         a1, a3
                  sltiu        s8, s3, 1353
                  divu         s4, t5, t2
                  sll          t1, s10, s3
                  c.or         s1, a4
                  xor          t4, zero, t3
                  c.addi4spn   a1, sp, 224
                  mulhsu       s1, a3, s3
                  srai         sp, s7, 1
                  rem          a0, t3, t6
                  nop
                  andi         s2, a2, -1598
                  lui          s4, 394949
                  srl          a0, s4, s1
                  slli         a1, t4, 23
                  mul          s1, s8, a0
                  sub          a4, t1, a4
                  mulhsu       s1, s6, a7
                  sll          s1, a2, t5
                  srli         a4, zero, 13
                  c.addi       gp, 22
                  srl          t5, s6, a3
                  c.lui        t6, 4
                  andi         s9, a4, 79
                  rem          a0, s8, s5
                  slti         a3, a0, -774
                  c.li         s2, 12
                  c.mv         a7, s8
                  div          s2, s4, s10
                  c.srli       a0, 12
                  slti         t3, a4, 1362
                  or           s5, t4, s7
                  c.mv         s8, s3
                  slt          s0, sp, a2
                  add          a3, t3, a7
                  c.xor        s1, s1
                  c.add        s4, s1
                  add          t5, t5, s3
                  slli         s1, a3, 19
                  remu         s10, s5, t6
                  slti         s8, s6, -1414
                  c.srli       s1, 25
                  addi         t0, t3, -829
                  c.li         a1, -1
                  c.add        s11, t2
                  c.lui        s3, 6
                  c.srai       s1, 21
                  c.lui        a7, 30
                  xori         gp, t4, -1209
                  c.srai       s0, 22
                  lui          a7, 773260
                  srai         s8, a0, 1
                  mul          s4, a1, s2
                  sub          s11, s2, s2
                  andi         t1, t0, 1720
                  srai         s11, zero, 8
                  or           a3, s6, s11
                  c.xor        a4, a4
                  xori         s0, t4, 1267
                  slti         s11, t3, -100
                  xor          t1, s6, ra
                  sltu         t4, s8, s4
                  div          t3, a2, t6
                  c.lui        t5, 19
                  sll          gp, t6, tp
                  mulhsu       t4, ra, t3
                  or           t6, a4, s6
                  xor          zero, zero, s11
                  c.addi4spn   a2, sp, 448
                  rem          t6, s2, t0
                  divu         s2, a2, t6
                  addi         t6, a1, 987
                  srai         t3, s5, 6
                  sra          t4, s8, s7
                  remu         t2, s0, t3
                  sltiu        tp, a1, 51
                  c.add        t2, ra
                  srai         t3, t1, 17
                  sll          t3, s10, t0
                  c.mv         ra, s3
                  or           t3, s2, a5
                  or           s3, s7, s5
                  ori          t1, a3, 1600
                  sra          s1, t1, a1
                  c.addi4spn   s1, sp, 176
                  c.srli       s1, 10
                  mulhsu       s4, s7, s6
                  c.addi4spn   a2, sp, 192
                  c.xor        a0, a2
                  c.srai       a4, 6
                  div          t0, s7, a6
                  sltiu        a3, s11, 918
                  sltiu        t5, s0, -337
                  rem          t1, t1, s1
                  sra          s4, a4, a3
                  c.xor        a0, a4
                  andi         zero, s3, -1254
                  sra          s9, a5, a2
                  c.addi16sp   sp, -16
                  rem          a5, s0, ra
                  c.lui        s11, 7
                  c.li         gp, -1
                  c.add        t6, s4
                  add          s1, a6, t2
                  sll          ra, t5, gp
                  c.slli       s8, 3
                  xor          t1, gp, s2
                  c.add        t3, t4
                  remu         t1, tp, t1
                  ori          t4, ra, 1630
                  mulhu        gp, a2, a1
                  slli         t5, gp, 6
                  mulhu        a5, t4, a1
                  rem          s3, zero, t2
                  xor          s5, s7, tp
                  ori          a7, s8, 1066
                  c.lui        s9, 30
                  c.mv         a4, s2
                  sra          s1, s8, a3
                  c.slli       a3, 8
                  and          t1, a1, a7
                  c.srli       a5, 5
                  addi         a4, s2, -1644
                  c.addi       t0, -1
                  slti         a5, a7, 1296
                  slt          t6, ra, t4
                  c.lui        gp, 9
                  xor          s5, gp, s1
                  lui          t3, 836489
                  c.srli       a0, 25
                  or           s5, s7, zero
                  xori         s4, a1, 870
                  mulhsu       a1, gp, t6
                  c.xor        a4, s1
                  remu         s3, a6, a6
                  c.addi       t0, -1
                  srl          s11, s4, a4
                  c.addi16sp   sp, -16
                  srai         s3, a3, 16
                  srli         a5, s10, 10
                  add          sp, s7, s11
                  c.add        a0, t1
                  add          t6, a7, a2
                  srai         s11, zero, 15
                  mul          t4, a0, s2
                  mulhsu       a3, t5, s1
                  sra          zero, a5, s9
                  div          tp, t4, s10
                  remu         s10, t4, a5
                  srli         t3, tp, 6
                  rem          s9, s9, sp
                  remu         tp, t0, t5
                  mul          s1, t2, t3
                  rem          t3, tp, t2
                  sltu         s5, tp, zero
                  srai         t5, t5, 2
                  rem          a4, a2, t4
                  c.lui        s5, 11
                  slt          s9, s4, s7
                  mulh         s4, s6, s10
                  srl          sp, t0, a1
                  sub          zero, zero, s4
                  mulh         a4, ra, s3
                  mulhsu       t1, t2, t6
                  c.mv         t3, s5
                  srai         s4, a7, 9
                  c.add        tp, a2
                  mulhsu       zero, s5, s3
                  c.xor        a1, s0
                  sltu         sp, t1, a4
                  rem          a3, a0, ra
                  srai         s0, a7, 1
                  c.and        a1, s1
                  c.addi16sp   sp, 432
                  lui          a4, 505064
                  srli         s11, s10, 1
                  c.addi       s9, 3
                  c.mv         a3, s7
                  addi         a4, a0, -517
                  c.or         a1, a2
                  mulh         a2, t5, s5
                  or           t6, t4, a4
                  c.andi       a1, -1
                  c.srai       a2, 15
                  c.sub        a2, s1
                  mulh         t4, s9, s7
                  c.lui        s1, 19
                  c.addi       s10, -1
                  sll          s5, a2, a7
                  auipc        s4, 124096
                  c.add        a4, t2
                  c.addi16sp   sp, 352
                  srai         t3, t2, 17
                  c.li         t2, 25
                  or           s8, sp, s8
                  div          s4, s11, s3
                  divu         sp, gp, s7
                  sltiu        zero, zero, 1335
                  c.andi       a2, 4
                  c.addi4spn   s1, sp, 160
                  c.lui        s2, 15
                  c.mv         a7, s2
                  addi         t6, a0, 942
                  add          a7, s0, t3
                  sll          s4, a7, a4
                  c.and        a4, s0
                  sra          zero, s8, s7
                  srli         t2, a6, 27
                  slti         s1, s0, -910
                  div          tp, t6, a4
                  sub          a5, a7, a2
                  c.or         s1, a5
                  c.mv         s1, s2
                  c.add        a1, ra
                  c.mv         s4, t2
                  mul          t3, t4, a4
                  divu         s0, t1, a2
                  c.li         a5, -1
                  c.srai       s0, 6
                  c.sub        a1, a5
                  c.srai       a5, 25
                  div          s3, s8, gp
                  c.sub        s1, a0
                  c.slli       gp, 18
                  and          t6, a3, t5
                  ori          s5, a7, 249
                  mul          a7, s8, s5
                  sltiu        t2, t1, -768
                  c.srli       a5, 15
                  c.sub        a3, s0
                  c.li         a7, 28
                  slt          a0, s0, gp
                  srai         s10, sp, 2
                  addi         a1, s9, -1134
                  c.or         s0, s0
                  c.xor        s1, a5
                  nop
                  c.and        a1, a5
                  div          ra, gp, t5
                  sltu         s0, a6, tp
                  rem          s11, a1, t5
                  c.andi       s0, 3
                  srli         t1, s10, 27
                  nop
                  sra          t6, a4, s3
                  c.addi16sp   sp, -16
                  sra          zero, s7, s9
                  c.addi4spn   a1, sp, 272
                  sra          a5, tp, t1
                  c.slli       s8, 20
                  sltu         ra, a0, a5
                  c.addi4spn   s0, sp, 544
                  c.andi       a4, -1
                  c.addi       ra, -1
                  c.srli       s0, 30
                  and          t6, s11, gp
                  c.srli       s1, 22
                  andi         a5, t0, 1021
                  c.or         a5, a2
                  sra          tp, s1, t4
                  mulhu        t0, t1, s8
                  mulhu        s10, s11, s5
                  nop
                  c.srai       a2, 18
                  c.sub        a1, a1
                  sltiu        t2, a7, 1104
                  sltu         a5, s7, ra
                  c.lui        a2, 5
                  c.and        s0, a3
                  rem          s2, ra, sp
                  c.xor        a0, s1
                  andi         s9, a2, 1921
                  auipc        tp, 519634
                  sltu         a2, s7, a1
                  slt          ra, t6, a6
                  c.slli       s3, 12
                  c.xor        s0, s1
                  ori          t2, s10, -46
                  c.addi4spn   s0, sp, 432
                  c.addi4spn   a1, sp, 80
                  c.addi4spn   a1, sp, 192
                  slt          t1, tp, tp
                  c.addi4spn   a5, sp, 288
                  srai         s10, s0, 14
                  srai         t5, a7, 3
                  c.addi16sp   sp, 336
                  slli         s11, s0, 25
                  slt          s5, t0, s1
                  c.andi       a2, -1
                  mulhu        sp, t2, s1
                  sltu         a0, a6, s5
                  nop
                  c.srai       a4, 18
                  c.xor        a0, a4
                  c.li         t2, -1
                  c.or         s0, a5
                  c.srai       s0, 17
                  mulhu        a2, a7, a1
                  mul          t2, a4, t5
                  slti         t0, s9, 593
                  c.and        a2, a2
                  sub          s5, a4, s4
                  c.mv         s9, a4
                  sltu         s9, s4, s10
                  sub          s9, ra, tp
                  slt          a5, a2, t3
                  add          s5, a3, a6
                  c.sub        a3, s0
                  c.slli       s8, 6
                  c.addi4spn   a2, sp, 384
                  c.and        a0, a5
                  c.addi16sp   sp, 208
                  slli         a2, a4, 30
                  slli         s3, t0, 31
                  mulhu        tp, t1, s1
                  xori         a4, t5, -1387
                  c.li         a7, 2
                  mulhsu       a7, a2, s11
                  mulh         t0, s8, s5
                  slli         t1, s9, 19
                  andi         s3, s10, 2047
                  c.addi16sp   sp, -16
                  c.or         a1, a1
                  c.or         a3, a2
                  c.nop
                  andi         t3, gp, -1490
                  c.lui        t6, 4
                  addi         t1, s0, -1154
                  sll          ra, s5, s10
                  or           a2, s11, s9
                  slti         s9, zero, 1708
                  or           a5, ra, zero
                  addi         sp, a0, -1751
                  xor          a7, s5, s9
                  mulhu        t3, gp, a4
                  auipc        a3, 622681
                  xor          a2, t5, t1
                  c.or         s1, a1
                  ori          a7, s11, 1925
                  and          t1, t0, t2
                  xor          t4, t3, a4
                  c.sub        a2, a1
                  mulhsu       t0, a2, s10
                  lui          s8, 912460
                  c.addi16sp   sp, 176
                  slt          s11, s11, s8
                  divu         s11, t0, ra
                  c.li         t5, 16
                  c.or         a4, a4
                  divu         s5, s2, tp
                  or           t1, t0, t3
                  c.srli       s1, 17
                  or           s4, s9, t0
                  sll          s4, a2, a2
                  remu         t6, t4, t5
                  mulh         a4, s2, a2
                  c.addi4spn   s0, sp, 448
                  srl          s8, s6, t5
                  xori         a0, gp, 606
                  andi         t1, ra, 1925
                  mulhsu       s2, ra, gp
                  xori         a7, a4, 1225
                  c.or         a0, a5
                  c.andi       a2, 24
                  c.lui        t6, 13
                  sll          s1, a0, sp
                  auipc        ra, 139202
                  c.xor        a2, a3
                  c.andi       a3, -1
                  andi         s1, s3, 372
                  c.xor        a1, s1
                  srl          t6, s6, s8
                  c.li         ra, -1
                  c.and        a5, a1
                  c.or         a2, a2
                  mulhsu       s1, gp, a1
                  xori         gp, gp, -928
                  sltiu        t5, gp, 247
                  c.sub        a4, a5
                  lui          a4, 72362
                  mulh         ra, t0, tp
                  srli         t4, s8, 20
                  nop
                  div          a5, s11, s6
                  slti         zero, t1, -542
                  c.nop
                  mulhu        a3, a1, a7
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_22
                  li           s1, 0x8949bc0e
                  li           s8, 0xffffffff
                  li           s2, 0x0
                  li           a7, 0x80000000
                  li           t3, 0x0
                  li           a5, 0x80000000
                  li           gp, 0x80000000
                  li           sp, 0xc882d6ae
                  li           a1, 0xffffffff
                  remu         s2, s8, sp
                  rem          s8, s1, gp
                  div          s8, gp, a1
                  mulh         gp, s1, a1
                  sub          s2, t1, sp
                  add          a5, a5, t1
                  mulh         a1, s8, t3
                  lui          t3, 406247
                  mulhsu       a7, a5, a1
                  rem          t1, s2, s8
                  addi         a7, a7, -1881
                  addi         s8, a1, 388
                  div          a7, a7, sp
                  mul          t1, a7, a1
                  nop
                  mul          a1, a5, t1
                  lui          t1, 560627
                  mulhu        sp, gp, a7
                  mulh         s8, a5, a7
                  div          s2, t1, s8
                  divu         a5, a5, a1 #end riscv_int_numeric_corner_stream_22
                  div          zero, zero, a6
                  c.addi4spn   s0, sp, 288
                  c.slli       s9, 21
                  srai         s2, a2, 28
                  addi         s1, a7, -1864
                  c.lui        t1, 10
                  add          s3, a6, sp
                  c.addi       a2, -1
                  sub          t4, s2, s7
                  divu         ra, s6, s0
                  srai         a7, s1, 5
                  c.li         sp, -1
                  c.srli       a2, 27
                  ori          a5, a7, 1620
                  c.mv         s11, a4
                  and          a2, a0, s8
                  slti         a3, s0, 1370
                  xor          gp, s3, s10
                  remu         a3, t0, sp
                  nop
                  mulh         s11, a3, a1
                  rem          s5, s9, s11
                  c.addi16sp   sp, -16
                  srai         a7, t6, 20
                  slli         s11, a0, 7
                  sra          t5, a7, a6
                  c.srli       a4, 14
                  mulhsu       tp, s9, zero
                  and          a7, gp, a7
                  sra          a4, ra, a3
                  lui          s4, 341734
                  c.andi       a3, 30
                  xor          t3, zero, t5
                  and          zero, a3, s7
                  rem          s0, t5, s2
                  andi         s5, t5, -1198
                  sltiu        s5, t4, -1669
                  xor          a3, a7, t2
                  sll          t3, t1, s7
                  mul          tp, t4, a4
                  slt          s0, s11, t5
                  sll          t3, t0, gp
                  nop
                  add          s11, a0, t6
                  c.slli       t0, 9
                  xori         zero, a7, 1488
                  c.lui        a5, 24
                  divu         a1, s7, s7
                  c.xor        s0, a4
                  slt          a3, s8, s8
                  andi         t5, ra, 1833
                  remu         t4, s9, a1
                  xor          s1, t4, a2
                  divu         s2, s1, a6
                  sltiu        a1, a4, 1838
                  srl          a4, s5, t4
                  or           t5, a7, a3
                  srl          s0, s10, ra
                  remu         s3, t3, gp
                  and          a4, s0, a0
                  sra          sp, a4, t2
                  divu         t6, t6, t1
                  div          a1, sp, a6
                  andi         a3, s0, 1316
                  addi         s0, s7, 148
                  c.xor        s0, a4
                  c.nop
                  and          sp, t0, zero
                  mulhu        s11, t5, a1
                  c.addi       t2, -1
                  lui          t3, 460783
                  sltiu        s5, s6, 312
                  mul          s10, a0, a2
                  c.li         t1, -1
                  lui          ra, 863004
                  ori          tp, gp, -882
                  slt          a0, ra, s9
                  srl          s8, a2, t0
                  c.lui        t6, 21
                  addi         s3, s0, 221
                  c.addi4spn   s0, sp, 832
                  sltu         t0, t1, s4
                  addi         t6, s6, 5
                  c.srai       s1, 10
                  c.sub        a5, a1
                  xor          sp, s4, t0
                  c.lui        s8, 14
                  auipc        a2, 715865
                  srl          a0, t0, s4
                  sltu         s8, t1, t5
                  c.addi       a5, 27
                  slti         t6, a2, 689
                  sltiu        tp, s7, 637
                  slt          a5, t4, ra
                  srai         a2, t4, 21
                  ori          t4, a0, 1927
                  c.or         s1, a2
                  mulhsu       t6, a7, s10
                  or           s0, t5, a6
                  lui          t6, 705557
                  c.addi16sp   sp, 496
                  srai         gp, a1, 7
                  auipc        a4, 125854
                  auipc        t1, 330689
                  divu         a3, s6, zero
                  andi         s9, s8, -681
                  and          a2, s1, a7
                  c.mv         s10, s7
                  nop
                  addi         t2, s2, 641
                  c.add        s3, s8
                  div          t6, s0, s0
                  c.nop
                  sltu         s8, tp, s8
                  c.xor        a4, a5
                  sltiu        s4, s4, 742
                  add          sp, a7, a5
                  sra          a3, ra, a5
                  c.lui        t6, 18
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           t2, 0xde7c38c2
                  li           s4, 0x80000000
                  li           a1, 0xffffffff
                  li           s0, 0xab1306de
                  li           a5, 0xcba7ecc8
                  li           t0, 0xffffffff
                  li           gp, 0xcb5e9a1
                  li           s2, 0x80000000
                  li           s3, 0x80000000
                  remu         t0, a5, s9
                  mulhsu       gp, s2, s0
                  mulh         s3, t2, a1
                  mul          gp, s9, t0
                  addi         t0, t2, 325
                  div          a5, t2, s4
                  lui          s9, 146701
                  lui          s0, 943176
                  mulh         a5, s9, s4
                  remu         t0, s3, s9
                  sub          a5, t0, a1
                  add          s2, t0, s2
                  addi         s3, t2, 306
                  add          s0, t0, a1
                  sub          s3, t2, s4
                  rem          s4, a5, s3
                  divu         s2, s0, gp
                  nop
                  mulhu        s3, t2, a1
                  auipc        a5, 832763
                  mul          s4, s0, gp
                  mul          s4, s0, s3 #end riscv_int_numeric_corner_stream_14
                  sra          t4, s7, s1
                  slli         a4, s3, 3
                  mulh         s8, a2, a5
                  remu         t0, t3, t4
                  mulhu        t3, t4, s1
                  c.andi       a1, 31
                  and          a4, ra, a3
                  c.or         s0, a3
                  srli         tp, a1, 20
                  c.add        a7, a6
                  mulhu        a0, s7, s4
                  sltu         t1, t3, s7
                  xor          s0, t0, t5
                  andi         s4, s11, 1464
                  srli         s4, a1, 4
                  lui          a0, 368593
                  c.srli       a4, 19
                  sltiu        t5, a0, 345
                  mul          t4, t6, sp
                  sltiu        s10, a6, -1022
                  c.slli       t4, 22
                  sltiu        s10, t3, 1022
                  c.lui        s8, 14
                  xor          sp, s9, t0
                  and          a2, s0, a6
                  addi         tp, a4, 451
                  mulh         s9, zero, t4
                  c.addi16sp   sp, 208
                  rem          a3, t3, s4
                  divu         s8, t3, a0
                  xor          a7, a0, a2
                  remu         s4, s0, gp
                  c.addi16sp   sp, 256
                  addi         ra, t3, 273
                  c.addi4spn   a5, sp, 240
                  sub          zero, s4, s4
                  mulhsu       s10, s2, a3
                  c.srli       a5, 2
                  lui          s0, 1023273
                  c.sub        s0, a4
                  c.sub        a5, a5
                  c.andi       a2, 25
                  add          t5, a5, t4
                  c.nop
                  nop
                  c.addi       t2, -1
                  andi         a3, s11, -1281
                  c.mv         s5, gp
                  c.xor        s1, a5
                  srl          a1, tp, s0
                  xor          t6, t5, ra
                  c.srai       a0, 24
                  sltiu        s11, a6, 365
                  mulh         t4, t3, sp
                  c.addi16sp   sp, -16
                  c.or         a3, s0
                  slt          a1, zero, s3
                  c.slli       t3, 30
                  c.andi       a3, 23
                  andi         s10, tp, 328
                  c.slli       t3, 3
                  lui          s4, 783622
                  divu         s9, s3, zero
                  nop
                  c.mv         a2, s7
                  c.srli       s1, 6
                  c.li         s2, -1
                  c.addi16sp   sp, -16
                  mulhsu       a7, zero, a7
                  sra          a1, a4, s9
                  mulh         a0, a5, s10
                  slt          t4, t0, ra
                  srl          s2, s2, s6
                  c.add        s0, s11
                  c.lui        ra, 9
                  c.li         tp, -1
                  c.li         s9, -1
                  sltu         s8, a0, s9
                  slt          a3, ra, a5
                  c.addi16sp   sp, -16
                  andi         t6, t1, -1817
                  and          t1, sp, ra
                  mulh         a0, s6, ra
                  ori          a1, s0, 1625
                  c.and        s0, a2
                  slli         sp, sp, 1
                  c.nop
                  slt          t4, a4, a3
                  srai         t3, t3, 14
                  c.lui        s11, 8
                  rem          s0, s10, a6
                  c.or         a5, s1
                  c.li         a2, -1
                  srli         ra, s10, 8
                  c.addi       tp, -1
                  c.addi16sp   sp, 160
                  rem          s0, s3, zero
                  c.sub        a4, s1
                  mulhsu       t2, s3, a6
                  andi         a7, s5, -910
                  mulhsu       a3, s6, s2
                  c.andi       a3, -1
                  c.li         s3, -1
                  c.sub        a2, a2
                  ori          s11, zero, -100
                  c.li         s11, -1
                  mul          s4, s4, t0
                  remu         s3, s11, s6
                  srl          s5, t6, a5
                  divu         zero, s2, t2
                  sll          t0, sp, t5
                  c.addi4spn   a4, sp, 608
                  nop
                  c.li         t3, 30
                  srl          a1, ra, a5
                  c.mv         s9, t5
                  c.addi4spn   a5, sp, 128
                  c.srli       a2, 18
                  remu         s11, a1, gp
                  sltiu        s9, a3, -856
                  sltiu        t5, a5, -1490
                  c.nop
                  c.addi16sp   sp, 48
                  andi         s4, s10, -56
                  c.and        a1, a1
                  c.add        s0, a1
                  c.xor        a0, a3
                  add          t5, sp, s1
                  mulhu        s1, t2, s11
                  auipc        s9, 509941
                  andi         a0, t0, -1330
                  slt          t6, a6, s4
                  xor          s9, s9, gp
                  add          t1, t5, s6
                  srl          s11, t3, sp
                  addi         s4, a4, -1371
                  c.addi4spn   a1, sp, 704
                  slli         t6, t1, 27
                  c.add        s4, t3
                  c.lui        s1, 8
                  c.addi       s8, 10
                  c.mv         a7, s7
                  sltiu        a7, t2, 881
                  div          a4, zero, s0
                  addi         s11, s4, 1048
                  div          s2, t6, s5
                  c.and        a5, a0
                  xori         t0, t3, -1878
                  c.lui        s4, 6
                  c.or         a5, a1
                  c.lui        s4, 31
                  andi         gp, s4, -954
                  lui          s8, 907906
                  andi         s5, s9, -1469
                  andi         sp, a1, 1476
                  nop
                  c.addi4spn   a2, sp, 816
                  sub          s2, a2, zero
                  c.xor        s0, a5
                  c.xor        s1, a3
                  sltu         a3, sp, s9
                  c.srli       a4, 8
                  sra          s2, t6, t5
                  sll          t2, s10, s1
                  mulh         a5, tp, s11
                  c.slli       s5, 17
                  mulhsu       s4, a1, t4
                  c.addi       gp, 8
                  srli         t0, s11, 0
                  c.mv         s3, tp
                  c.srli       a4, 31
                  sub          s2, s10, s6
                  nop
                  c.add        s0, s6
                  srai         s2, s10, 13
                  xor          a2, s0, s7
                  mulhu        s4, tp, t2
                  c.srli       a4, 21
                  mulhu        t3, s9, s0
                  mulh         s0, a2, tp
                  divu         tp, t5, s11
                  auipc        s5, 131637
                  c.sub        a5, a4
                  sub          sp, zero, t2
                  srli         s11, t3, 6
                  auipc        s11, 295759
                  slti         a7, s4, -340
                  c.xor        a4, a1
                  c.li         t6, -1
                  mulhu        sp, t0, t3
                  c.addi       s10, 10
                  mul          t6, s4, s6
                  slti         ra, zero, 1456
                  srl          s3, a3, zero
                  and          s3, s9, t6
                  c.nop
                  mulh         s0, s4, s9
                  add          a1, sp, t6
                  or           t5, a3, t0
                  sra          a0, s9, s10
                  c.lui        a2, 25
                  c.slli       ra, 15
                  c.li         t5, -1
                  sra          gp, t0, a0
                  c.xor        a2, a1
                  slt          tp, t3, ra
                  mulhsu       s0, gp, t4
                  c.li         a7, -1
                  or           t2, sp, a2
                  slli         s8, t3, 25
                  srai         s2, a2, 1
                  c.xor        s0, a4
                  andi         t3, gp, 1007
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_28
                  li           s10, 0x0
                  li           s9, 0xd24584d0
                  li           a3, 0xffffffff
                  li           t5, 0x80000000
                  li           tp, 0x80000000
                  li           t0, 0x29d5b44
                  li           s2, 0x152d7eb2
                  li           t6, 0x80000000
                  li           a0, 0xad48061a
                  add          a1, s9, a0
                  add          a3, t0, a1
                  lui          a1, 11467
                  mulh         a1, tp, s10
                  lui          t6, 147965
                  mul          t5, s10, s2
                  mulhu        a0, s2, s2
                  div          a3, a0, s9
                  addi         a3, s10, -1551
                  mulhu        t0, t0, s2
                  lui          t0, 186586
                  divu         t5, tp, a0
                  addi         s2, t6, -1338
                  divu         t0, s2, a0
                  remu         t0, a1, t0
                  divu         s9, t0, t0
                  rem          s2, s2, a0
                  sub          s9, tp, a1
                  nop
                  mulhu        t0, a1, tp
                  add          s2, s9, s9
                  rem          s9, t6, s2
                  mulhu        s10, s2, s2
                  div          a1, tp, s10
                  mulhu        s10, tp, tp
                  mul          t6, a1, s10 #end riscv_int_numeric_corner_stream_28
                  srli         s4, a4, 12
                  add          s2, a2, zero
                  div          a3, gp, zero
                  mul          t3, t1, t0
                  c.add        t5, t6
                  nop
                  or           t2, gp, a4
                  c.srli       a4, 17
                  c.and        a5, a4
                  mulh         t5, s1, tp
                  sra          s0, s0, a4
                  sll          s2, t3, s11
                  rem          s11, t6, s6
                  sltiu        zero, a3, -1578
                  c.srli       a0, 4
                  rem          zero, s7, s8
                  sll          a0, s10, t0
                  c.andi       a0, 9
                  c.mv         a5, t5
                  lui          s1, 179487
                  c.addi4spn   a2, sp, 304
                  srli         s1, s5, 3
                  sltiu        s4, gp, 445
                  remu         s2, t1, t1
                  nop
                  divu         a5, s1, a2
                  c.slli       s3, 1
                  c.add        a0, s6
                  slt          t1, t4, a7
                  sll          s11, t0, s8
                  sra          s3, zero, s6
                  c.sub        a5, a0
                  slli         a1, a0, 31
                  sub          s3, s6, s3
                  srai         s11, a1, 2
                  c.sub        a2, s0
                  c.nop
                  divu         a5, a1, s10
                  c.xor        a2, a3
                  nop
                  srli         t5, ra, 2
                  mulhu        t2, t1, s0
                  c.srai       a0, 9
                  divu         t0, t2, a1
                  addi         a1, t4, -527
                  mulhsu       gp, s4, t4
                  remu         a7, a7, s6
                  xori         t5, s3, 1990
                  sltiu        t5, a1, 917
                  slli         a0, tp, 31
                  c.nop
                  remu         s1, t2, ra
                  c.addi4spn   a1, sp, 320
                  slt          s2, s9, zero
                  c.andi       a1, -1
                  div          tp, a7, ra
                  slti         s3, sp, -678
                  mulh         t3, tp, a6
                  c.addi16sp   sp, -16
                  mul          zero, a6, t1
                  c.addi16sp   sp, 112
                  c.li         t1, 3
                  c.xor        a4, a2
                  c.lui        gp, 22
                  xori         s3, a6, 925
                  rem          t4, a4, a2
                  srli         s5, s8, 11
                  c.slli       s9, 12
                  srli         t5, t3, 24
                  srl          s4, t2, tp
                  sltu         a1, gp, s2
                  srli         s11, sp, 25
                  mul          s3, zero, a1
                  sub          s1, s2, s11
                  c.xor        a0, a0
                  add          a4, s8, s9
                  srli         a1, t2, 8
                  c.andi       s1, -1
                  c.li         t1, -1
                  c.sub        a3, a0
                  c.srli       a4, 4
                  c.xor        a2, a0
                  c.and        a5, a0
                  andi         t0, s1, -1931
                  add          gp, a6, t0
                  srai         s11, s6, 22
                  sll          a7, t6, t2
                  c.andi       s1, -1
                  sub          s10, s9, s3
                  ori          s10, t2, -1526
                  c.srli       a2, 24
                  mulhsu       s4, t0, a1
                  slti         zero, t4, -1207
                  mul          t0, zero, s5
                  remu         t2, s1, t3
                  c.sub        a5, a4
                  c.addi       s8, 29
                  c.sub        a0, a1
                  lui          s9, 306266
                  c.xor        s0, a2
                  c.addi16sp   sp, -16
                  mulhsu       s0, a6, s1
                  nop
                  c.srli       a1, 15
                  and          t3, s7, s3
                  c.slli       s5, 23
                  sra          a4, s3, a7
                  sltiu        sp, s9, 1040
                  slli         t0, t2, 13
                  xor          s4, t6, a2
                  c.or         a4, s0
                  sll          t0, t2, a0
                  or           s4, s10, ra
                  sltu         s5, s5, a3
                  and          s2, a6, a5
                  slt          t5, t4, tp
                  sltiu        s0, s6, -687
                  mul          t6, a4, s4
                  lui          a1, 697363
                  c.andi       s1, 22
                  sub          zero, zero, t3
                  xor          s11, a7, s2
                  or           t5, tp, t0
                  c.addi       s5, 10
                  and          ra, s7, s8
                  slli         s0, t6, 3
                  c.srai       s0, 6
                  srl          a7, t2, s6
                  and          s2, t4, s2
                  c.sub        s0, s0
                  mulhsu       t2, a7, a0
                  add          s4, a6, s10
                  nop
                  c.nop
                  add          a0, s11, s2
                  remu         t1, s7, t0
                  andi         gp, t5, -1869
                  xor          t5, sp, s8
                  mulh         zero, a0, a5
                  slli         a3, s10, 16
                  sltu         s5, s4, t5
                  c.addi       a0, -1
                  ori          a4, a0, 1036
                  rem          zero, a6, a1
                  c.andi       a0, 31
                  sll          t0, ra, s3
                  srai         t1, s11, 31
                  c.andi       a0, -1
                  c.andi       a4, -1
                  sll          a5, ra, s1
                  sltu         s4, s11, t1
                  div          s3, a0, t5
                  c.slli       s1, 15
                  c.slli       t1, 17
                  c.and        s1, a5
                  c.mv         t3, s5
                  c.lui        s0, 23
                  srai         a1, t3, 14
                  xor          t0, s9, t0
                  and          s5, s7, zero
                  c.add        t1, t1
                  div          t0, a5, s3
                  mulhsu       sp, a5, s3
                  c.mv         s5, s1
                  add          s0, ra, t3
                  ori          t5, s0, -1539
                  remu         zero, s9, a3
                  andi         a4, t6, -1742
                  c.andi       a1, 17
                  sub          a2, s3, a0
                  mulhu        s10, a2, t0
                  c.slli       s5, 21
                  mulhu        a2, s1, s1
                  c.srli       s0, 24
                  sra          gp, gp, t2
                  c.addi       t3, 24
                  srl          s11, a6, s9
                  or           a3, s1, a0
                  sra          zero, sp, a0
                  c.add        s5, a3
                  sub          t6, s1, ra
                  c.and        a0, a1
                  divu         s4, t2, a0
                  c.addi4spn   a1, sp, 304
                  c.addi16sp   sp, 480
                  addi         a2, a4, -2039
                  mul          sp, s1, ra
                  and          sp, zero, t2
                  addi         s1, s1, 163
                  c.nop
                  sltiu        s9, a3, -1375
                  sltu         a4, a1, a4
                  srl          s9, s5, t1
                  slt          t5, sp, a3
                  slli         s10, s11, 15
                  c.and        a4, a4
                  c.nop
                  c.addi4spn   a0, sp, 896
                  c.xor        s1, a4
                  c.lui        a4, 15
                  srl          a7, t4, a5
                  c.addi16sp   sp, 432
                  c.sub        a2, a1
                  mulh         s0, a5, a3
                  add          t4, t4, s8
                  c.addi4spn   a3, sp, 96
                  xor          s0, s8, a6
                  rem          a5, s8, zero
                  add          s3, s7, s5
                  c.and        a4, a3
                  c.lui        t4, 13
                  rem          a3, a3, gp
                  and          a4, zero, t2
                  c.add        tp, a5
                  and          ra, s0, tp
                  sltiu        t0, t2, 246
                  mulhsu       t5, s5, a3
                  or           a1, tp, s9
                  div          a2, ra, s9
                  addi         ra, t5, 582
                  mul          tp, s2, t5
                  sltiu        tp, s6, 411
                  srai         a2, a4, 13
                  sub          t6, a3, a2
                  sltu         sp, t3, s7
                  nop
                  srai         s9, ra, 25
                  c.sub        a1, a2
                  c.andi       a3, 12
                  sub          s0, a1, s10
                  divu         s3, s4, a5
                  c.addi16sp   sp, 448
                  slti         a4, t4, -929
                  sltiu        a0, s6, -196
                  c.xor        a0, a3
                  c.sub        a3, a3
                  auipc        t1, 1018806
                  nop
                  c.slli       t3, 20
                  c.xor        s1, s0
                  c.or         a2, a4
                  lui          t6, 548882
                  slt          a7, ra, zero
                  c.and        a0, s1
                  srli         s3, s0, 7
                  c.lui        t4, 27
                  c.li         s5, -1
                  c.addi       t5, -1
                  sltu         s10, s8, zero
                  c.srai       a5, 15
                  sltu         gp, t3, s10
                  mulhsu       t0, a1, t1
                  sll          s11, s9, s0
                  c.mv         t4, tp
                  c.slli       t0, 16
                  xor          s3, a2, s3
                  srai         s10, s2, 14
                  remu         a3, a0, s6
                  addi         s3, t1, 1650
                  sll          s8, sp, t5
                  c.srli       a5, 11
                  c.nop
                  c.sub        s0, a3
                  c.srai       a4, 11
                  srli         s2, zero, 2
                  add          t2, s9, t2
                  divu         a5, a6, s8
                  auipc        s2, 285381
                  c.addi       t0, 24
                  srli         s11, a6, 5
                  c.li         s8, -1
                  andi         t1, t6, 1792
                  mulh         s10, a5, s2
                  c.addi4spn   a5, sp, 944
                  xor          t4, a4, gp
                  mul          zero, t1, s5
                  c.mv         s10, sp
                  c.srli       a3, 14
                  mulhu        s3, s6, ra
                  slt          s9, a1, t2
                  slli         s4, a6, 21
                  sub          t2, a6, zero
                  mulhsu       s5, sp, s10
                  andi         a1, s11, 1721
                  addi         s0, a1, 480
                  mulhu        s9, a3, a7
                  c.srli       a1, 23
                  c.and        s1, a1
                  c.andi       a0, 9
                  c.sub        a0, a5
                  mulh         t0, sp, t3
                  lui          s9, 416537
                  srl          a4, t2, a6
                  c.addi16sp   sp, 144
                  slti         a3, gp, -539
                  or           t4, s10, s11
                  c.lui        s10, 13
                  srli         a3, a0, 13
                  c.srai       a1, 26
                  c.li         gp, 2
                  srai         a1, t4, 5
                  slti         a1, s0, 1078
                  c.xor        a4, s1
                  c.lui        s5, 22
                  sltiu        tp, a0, 996
                  ori          a4, t6, 1734
                  rem          t5, s10, t1
                  xor          a2, gp, t3
                  divu         a0, s11, s10
                  sra          a7, a6, s5
                  addi         s3, a3, 4
                  c.andi       a1, -1
                  c.addi       t5, 4
                  c.mv         t5, gp
                  mulh         s5, a4, a7
                  c.srli       a4, 14
                  sub          a3, s3, t1
                  c.add        t6, a3
                  c.addi       a3, 1
                  c.sub        s0, a5
                  c.andi       a5, -1
                  c.or         a5, a2
                  sra          s10, s7, zero
                  c.lui        a5, 22
                  mul          a1, a0, a0
                  sra          s8, s7, t0
                  auipc        gp, 501375
                  xor          s0, s7, t4
                  srli         s4, s10, 0
                  c.slli       t4, 16
                  mul          t2, s8, s11
                  c.slli       t3, 9
                  lui          s5, 663526
                  sll          zero, a2, s9
                  ori          t5, t2, 246
                  addi         t1, a0, -219
                  xor          a2, t3, a5
                  or           s4, t5, s4
                  c.li         s0, 8
                  c.and        a0, a0
                  mulhu        s10, t4, t0
                  c.lui        t5, 15
                  nop
                  xori         ra, s5, -390
                  sltiu        s3, a4, 1016
                  lui          s3, 817366
                  auipc        s0, 523986
                  rem          zero, a7, t2
                  lui          s10, 942936
                  c.sub        a2, a3
                  c.sub        a3, a5
                  addi         t6, a7, -53
                  nop
                  rem          s10, s11, gp
                  auipc        tp, 566479
                  c.addi       t1, -1
                  c.sub        a1, a2
                  c.andi       a0, 15
                  c.addi4spn   a5, sp, 48
                  mulh         s3, a1, t4
                  c.slli       s5, 17
                  add          zero, ra, a0
                  ori          t4, t6, -197
                  slti         s8, a2, 1082
                  sra          t5, s0, a1
                  mul          t4, t0, s3
                  c.sub        s1, s0
                  srli         a3, a2, 13
                  or           s1, a5, a1
                  c.nop
                  remu         s5, zero, t3
                  srl          s10, tp, a5
                  c.li         s0, 9
                  sltiu        a4, s1, -266
                  slli         s0, sp, 29
                  srli         s2, s9, 7
                  sltu         s4, zero, s3
                  c.li         s9, 18
                  xor          t2, s10, s5
                  or           t4, zero, tp
                  c.mv         s2, t3
                  nop
                  divu         s11, sp, tp
                  c.li         gp, 26
                  rem          ra, a6, t1
                  c.mv         s5, tp
                  div          t2, a6, t3
                  slt          s0, t6, a4
                  andi         t5, tp, -2032
                  rem          tp, t4, s11
                  srl          t5, s0, s7
                  andi         a1, sp, 1572
                  auipc        s5, 1003845
                  mulhsu       t1, s2, s10
                  c.addi16sp   sp, 464
                  c.add        t4, a7
                  rem          zero, t5, sp
                  mulh         ra, a5, s4
                  c.add        tp, s2
                  c.sub        a5, a1
                  c.or         a0, a0
                  div          t3, s6, a7
                  xori         s5, a1, -502
                  mulhsu       s0, s0, a7
                  slli         t1, tp, 13
                  c.xor        a4, a2
                  sltiu        s3, s6, 1984
                  lui          tp, 476928
                  or           s3, s4, t6
                  or           t5, a3, s3
                  auipc        gp, 158651
                  div          s8, a6, t3
                  or           s4, gp, ra
                  c.addi4spn   s0, sp, 432
                  xor          s4, a2, sp
                  xori         s3, s8, 1192
                  li           s9, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li           a4, 0x80000000
                  li           t3, 0x80000000
                  li           s8, 0x80000000
                  li           a7, 0xffffffff
                  li           t4, 0xffffffff
                  li           t1, 0x458c64d4
                  li           sp, 0xffffffff
                  li           a2, 0xffffffff
                  li           a3, 0xffffffff
                  nop
                  divu         sp, s8, a2
                  sub          a2, a3, t1
                  sub          s8, s8, a7
                  div          a4, t1, t1
                  add          t4, s8, a2
                  mulhu        sp, sp, t4
                  auipc        a4, 1006486
                  addi         s9, s8, 1819
                  mulhsu       s9, t4, s9
                  remu         s9, a4, a3
                  addi         t3, t4, -1848
                  lui          t3, 9350
                  lui          s8, 406201
                  add          a7, sp, s9
                  rem          s9, t3, a2
                  auipc        a7, 329532
                  sub          sp, a3, s9
                  div          sp, a2, s9
                  divu         t1, t3, t3
                  remu         a7, a4, sp
                  nop
                  divu         sp, a4, t3
                  lui          t3, 92696
                  auipc        t4, 890008
                  mulhsu       t4, s8, s9
                  div          a3, s8, s9
                  divu         a3, t1, a2
                  nop #end riscv_int_numeric_corner_stream_32
                  add          a2, s6, t3
                  c.nop
                  mulhsu       s0, s11, t2
                  remu         s9, s3, a3
                  ori          s11, t4, -572
                  srl          t3, s10, s6
                  rem          s2, s9, a6
                  sltu         s3, s6, a4
                  andi         t3, s9, 249
                  sra          s4, a6, a2
                  c.mv         a4, s1
                  remu         s9, gp, a1
                  c.addi       gp, -1
                  c.sub        a1, a4
                  andi         s3, s1, -915
                  c.slli       tp, 10
                  ori          s5, a2, -1051
                  sll          a4, t0, t1
                  c.mv         a2, a6
                  rem          t5, t2, s3
                  srl          s3, t6, s6
                  add          a7, s3, s3
                  srli         ra, a2, 9
                  c.addi4spn   a5, sp, 848
                  and          a5, a6, s10
                  c.addi       t6, -1
                  nop
                  xor          s0, a0, a2
                  c.addi16sp   sp, 496
                  c.or         a4, s0
                  srl          a2, gp, s2
                  sub          s8, a5, t3
                  c.sub        a1, a2
                  sltiu        t0, s2, 771
                  ori          s3, s1, 1927
                  divu         t5, s0, zero
                  c.addi16sp   sp, 336
                  srl          sp, s6, sp
                  mulhsu       s4, s5, s8
                  c.srli       a0, 11
                  c.lui        s1, 11
                  c.add        t3, ra
                  c.srai       s0, 14
                  xori         a2, t6, -1365
                  lui          s3, 364632
                  mulhsu       t0, s7, t2
                  c.addi4spn   a4, sp, 352
                  add          s1, t6, sp
                  c.or         a1, s0
                  or           t4, t5, s8
                  xori         s8, s11, 1419
                  ori          s2, t4, 127
                  sra          t2, a6, s2
                  remu         s2, s1, t5
                  mulhsu       t5, s9, t0
                  lui          a7, 956182
                  slti         s11, t4, -143
                  slli         t3, a4, 4
                  sub          ra, tp, s2
                  divu         a5, t0, t4
                  mulhu        tp, ra, a7
                  xor          s0, s7, zero
                  c.nop
                  mulh         a7, a0, s0
                  add          s1, a2, t0
                  c.xor        s0, a2
                  c.slli       s5, 30
                  xor          t5, s0, s9
                  remu         ra, s2, s4
                  sra          t2, a0, s7
                  and          s1, t0, s1
                  sra          t3, s6, gp
                  srl          t0, a0, s1
                  ori          s10, s8, 1806
                  c.andi       a4, -1
                  xor          a3, s9, s4
                  srli         s1, gp, 28
                  c.nop
                  addi         t2, a1, -1867
                  c.or         a5, a2
                  andi         a3, t6, 1314
                  xori         t0, t5, -524
                  sub          s11, s3, a4
                  auipc        t4, 73244
                  c.lui        t6, 24
                  srai         s1, ra, 2
                  nop
                  mulhu        tp, s1, t6
                  sub          s8, t0, s3
                  slt          t1, gp, a2
                  c.andi       a3, -1
                  auipc        t4, 632941
                  mul          a4, s7, s10
                  mulhu        a3, t1, s5
                  rem          s4, s5, a2
                  nop
                  or           ra, a7, sp
                  and          s5, sp, s8
                  mul          s4, gp, s4
                  sll          s3, s7, a7
                  andi         t5, s2, 1334
                  c.srai       a4, 20
                  slli         t3, a1, 6
                  or           s8, a3, t6
                  and          t0, a5, zero
                  c.addi16sp   sp, 272
                  c.or         a4, a3
                  addi         t0, a6, -1121
                  sra          a1, s10, a1
                  mulhsu       s4, ra, s11
                  srl          a0, t5, s1
                  mulhsu       s9, a1, t3
                  c.mv         s2, s7
                  srai         t6, s7, 28
                  xor          s8, gp, t3
                  c.add        s9, s10
                  srl          ra, ra, a1
                  and          t5, s7, a7
                  divu         s1, s2, a0
                  lui          s2, 975285
                  rem          a3, s7, t5
                  c.add        t6, t3
                  c.srli       s0, 20
                  srl          a0, s4, t0
                  srl          a5, t4, a7
                  xor          s8, t6, s3
                  c.slli       sp, 17
                  srai         s8, s6, 3
                  c.add        s4, sp
                  mul          sp, tp, t5
                  c.xor        a2, s0
                  ori          s11, t2, -778
                  andi         ra, a5, -142
                  divu         t5, s0, t4
                  mulhsu       s0, tp, s0
                  slti         t3, a0, 1472
                  xor          s8, sp, a6
                  srai         t1, s5, 5
                  slt          t2, s6, a3
                  slt          t4, s3, ra
                  lui          s9, 612918
                  srl          a2, t4, t4
                  c.or         a2, s1
                  c.mv         s5, s5
                  c.add        t3, s2
                  srl          tp, a7, a6
                  c.addi       t1, 3
                  rem          a1, a7, gp
                  nop
                  slt          t6, s11, s10
                  c.addi16sp   sp, 464
                  c.lui        a3, 11
                  mulhsu       a3, t5, zero
                  sltiu        sp, s8, 89
                  c.or         s0, a2
                  c.srli       s1, 20
                  slti         s3, s5, -773
                  c.nop
                  addi         t2, ra, -1996
                  c.xor        a4, a3
                  c.slli       ra, 22
                  sltiu        gp, s6, 309
                  nop
                  c.mv         s5, s7
                  sltu         t4, s10, gp
                  c.addi       a0, 27
                  c.sub        a5, s0
                  addi         t6, s0, -1609
                  nop
                  remu         s4, t1, zero
                  add          t5, s6, zero
                  c.or         s0, a2
                  c.sub        a0, s1
                  nop
                  sra          t6, s8, t3
                  c.or         s0, a4
                  and          t1, s7, t6
                  c.srli       a4, 4
                  slti         s3, s7, -727
                  c.add        a0, t0
                  srai         t5, t4, 24
                  sltiu        t4, t5, -1128
                  andi         a2, a0, -1980
                  remu         a2, a3, t0
                  nop
                  auipc        zero, 461361
                  auipc        t1, 372865
                  c.add        s11, t5
                  andi         t2, t1, -88
                  ori          t0, a0, -388
                  c.andi       a0, -1
                  mulhu        a0, a1, s0
                  c.addi       tp, 20
                  lui          sp, 866267
                  sub          s4, ra, tp
                  c.addi4spn   a3, sp, 960
                  sll          a0, s10, a2
                  sub          t3, t1, s9
                  c.add        s11, a3
                  mulhsu       t4, s10, s2
                  sra          t2, a4, t0
                  xor          s5, gp, s8
                  mulhu        a5, s7, s7
                  sra          s2, s4, s4
                  nop
                  addi         a2, sp, -1821
                  sra          a5, s9, a6
                  andi         s11, s8, -1092
                  slt          t5, s3, s6
                  c.addi       s0, 20
                  add          s1, s7, s11
                  slli         a7, t4, 10
                  add          s5, t3, s11
                  c.addi4spn   a1, sp, 144
                  sub          s9, a0, t0
                  xori         zero, s7, -159
                  c.xor        a0, s1
                  mulhsu       a4, gp, t2
                  and          s1, tp, t0
                  c.srli       a1, 16
                  srai         s5, s0, 6
                  sub          a2, t3, a1
                  c.andi       a2, 30
                  c.xor        a3, a4
                  xor          s2, ra, a0
                  or           t2, a2, a1
                  div          t4, t3, s6
                  c.add        s8, s0
                  andi         t3, s2, -448
                  c.or         s1, s1
                  c.mv         ra, s11
                  c.or         a5, s0
                  add          s10, t1, gp
                  mulhu        s1, a3, s5
                  c.li         s11, -1
                  slt          gp, s3, t2
                  c.xor        a0, s0
                  sltiu        s8, t0, 288
                  c.and        a1, a0
                  mulhsu       a2, a4, t2
                  c.andi       a0, -1
                  c.add        s2, a7
                  c.or         s1, s1
                  c.and        a5, s1
                  sltiu        a7, s4, 1446
                  c.nop
                  c.add        t6, t4
                  srli         a4, s2, 1
                  srai         gp, s3, 18
                  sltiu        s0, ra, -399
                  xor          t6, s3, s2
                  li           a2, 0xffffffff #start riscv_int_numeric_corner_stream_10
                  li           a7, 0x80000000
                  li           ra, 0x80000000
                  li           t0, 0xffffffff
                  li           s8, 0x80000000
                  li           a4, 0x80000000
                  li           t2, 0xa89cff01
                  li           gp, 0xffffffff
                  li           a0, 0xffffffff
                  li           sp, 0x0
                  div          s8, a0, a7
                  add          t2, t2, a2
                  mulhu        s8, a2, s8
                  remu         s8, a7, a4
                  mul          a4, s8, a7
                  divu         a7, a0, a0
                  mulhsu       a2, a4, sp
                  rem          gp, a7, a7
                  rem          a2, gp, a0
                  mulhu        s8, t0, s8
                  mulhsu       a2, gp, t0
                  lui          gp, 640240
                  div          a4, t0, gp
                  mul          s8, sp, t2
                  mulhsu       s8, ra, ra
                  auipc        gp, 989181
                  div          sp, ra, sp
                  mul          a4, s8, t2 #end riscv_int_numeric_corner_stream_10
                  lui          zero, 555585
                  slt          s2, ra, a6
                  c.li         s5, -1
                  slti         s8, s4, 93
                  xor          a5, s6, t4
                  andi         a5, a7, -799
                  mul          s4, a1, s10
                  lui          t2, 667221
                  srai         zero, s9, 3
                  and          t0, s10, s0
                  ori          s0, t6, 1912
                  slt          s4, s10, t2
                  c.slli       ra, 9
                  c.slli       sp, 24
                  mulh         s4, t4, a6
                  nop
                  slti         sp, a5, 469
                  div          s9, s1, sp
                  addi         s11, s11, -1081
                  auipc        a5, 855619
                  add          a3, sp, a0
                  sltu         t6, a5, s11
                  srli         s1, s0, 28
                  srl          zero, a1, sp
                  divu         s0, s9, a3
                  lui          a0, 552419
                  c.xor        a1, s0
                  c.add        t5, s10
                  c.srli       a1, 4
                  lui          a3, 911361
                  c.or         a5, a5
                  xori         zero, zero, -1005
                  c.nop
                  auipc        a4, 442623
                  c.addi4spn   a3, sp, 672
                  rem          s8, s6, s4
                  sll          t0, s11, t4
                  addi         s5, a6, 110
                  c.lui        s2, 8
                  auipc        a0, 421868
                  mulhu        a4, s2, a5
                  lui          a5, 969742
                  c.addi16sp   sp, -16
                  auipc        s8, 151872
                  xori         a5, t2, -796
                  c.sub        a2, s0
                  c.slli       s11, 4
                  or           t0, ra, tp
                  c.sub        s0, a0
                  xor          a4, s7, t6
                  xor          t5, s3, s2
                  c.lui        s2, 16
                  mulh         gp, a2, sp
                  c.andi       a2, 9
                  sll          s3, a2, t0
                  c.srai       a5, 7
                  mulhsu       ra, a6, a6
                  mul          a2, s6, s1
                  c.mv         s5, t1
                  add          zero, s6, tp
                  c.mv         s4, s8
                  sll          s2, t5, s10
                  and          s1, t6, t4
                  xori         s5, a1, 1045
                  c.addi       t3, 3
                  sra          t2, a3, s4
                  slti         t3, zero, 1598
                  c.addi16sp   sp, 176
                  auipc        a7, 292780
                  c.or         s0, a2
                  nop
                  slli         s4, s2, 29
                  sltu         a4, zero, s10
                  sltu         t4, a7, s4
                  remu         t3, zero, t2
                  nop
                  andi         s5, gp, 992
                  andi         t3, a0, 855
                  slt          s4, ra, s7
                  c.addi16sp   sp, -16
                  c.and        a5, a3
                  nop
                  sltiu        s2, s7, 1767
                  auipc        t4, 503230
                  slt          a1, s3, t0
                  c.nop
                  mulhsu       s0, s0, a5
                  mulh         s8, a6, a0
                  sra          gp, a3, a4
                  c.add        tp, gp
                  slt          t1, s1, a1
                  xori         zero, s10, -173
                  srli         s10, s9, 10
                  c.nop
                  c.andi       a5, 12
                  mulhsu       t1, a6, t4
                  sltiu        a2, s6, -790
                  c.mv         a0, a7
                  mulhsu       t5, s5, s1
                  sll          s0, s5, zero
                  sltu         s3, ra, a7
                  srl          ra, tp, t0
                  nop
                  srai         tp, s2, 26
                  c.or         a0, s1
                  mul          t4, a7, t4
                  or           s11, s7, a0
                  sub          t2, s4, s1
                  c.addi16sp   sp, -16
                  srai         sp, s11, 31
                  mulh         t3, s3, t1
                  andi         s5, a4, -1163
                  ori          t0, s1, 1820
                  srli         t6, t3, 28
                  sltu         tp, s9, t1
                  sll          s5, a3, s1
                  slti         t5, s9, 875
                  xori         s4, s6, -1091
                  c.addi       tp, 11
                  slt          a7, s1, a4
                  xor          t3, t6, a7
                  c.add        s9, s1
                  srl          a0, a6, s5
                  mulhu        gp, s2, s8
                  xor          gp, gp, t1
                  remu         t2, a5, s10
                  c.sub        a0, a4
                  xor          zero, t3, a4
                  lui          t1, 442133
                  nop
                  addi         s3, a0, 1106
                  c.li         a3, 26
                  c.mv         a2, s5
                  addi         s2, t2, 1320
                  rem          t5, s5, a0
                  c.xor        a2, a5
                  ori          t5, t5, 1672
                  rem          a5, zero, s4
                  srl          t6, s8, s8
                  c.addi4spn   s1, sp, 432
                  nop
                  mulhu        t5, a4, s6
                  c.addi       s3, 27
                  c.xor        a0, a1
                  sub          s9, a3, t0
                  c.addi       gp, 15
                  sltiu        t6, s7, 1764
                  c.xor        a3, a2
                  mulhu        s9, t2, a2
                  c.and        a2, a0
                  c.srli       a3, 26
                  lui          t3, 853680
                  sra          a0, sp, t4
                  c.and        a4, a1
                  c.li         s8, 17
                  srl          t6, ra, s2
                  addi         tp, s7, -278
                  add          s9, a2, s6
                  mulh         a5, s7, a3
                  divu         s4, t2, zero
                  c.xor        a2, a4
                  sub          t1, zero, t5
                  xori         s2, s8, 83
                  mul          a0, t6, s6
                  c.andi       a5, -1
                  c.addi       a5, 2
                  c.add        t4, s2
                  slti         s0, t5, -872
                  c.or         s1, a0
                  and          s3, sp, t2
                  mulhsu       ra, t1, s1
                  c.addi4spn   a0, sp, 656
                  srai         s3, s7, 3
                  slli         s4, a7, 3
                  addi         t3, t3, -1883
                  sltiu        t4, s6, -869
                  c.and        s1, a2
                  srli         s2, t6, 0
                  c.sub        a2, a3
                  sltu         s3, a0, sp
                  srli         a0, zero, 22
                  c.srli       a2, 15
                  c.and        s1, a0
                  sub          t2, a4, t4
                  c.addi16sp   sp, 288
                  srai         t2, s8, 25
                  c.srai       s0, 6
                  c.nop
                  ori          s8, a0, 595
                  c.slli       s2, 1
                  and          t6, a3, s1
                  div          zero, a2, a4
                  c.addi       t0, 9
                  mulhsu       s5, s2, a6
                  xori         sp, a7, 1018
                  divu         a3, t4, s1
                  c.mv         a0, tp
                  sltu         a3, s11, a2
                  c.and        a4, a2
                  xori         a3, t1, 97
                  mulhu        tp, t0, s7
                  and          t1, s7, a2
                  c.andi       s0, -1
                  sll          t2, a3, t0
                  or           a3, t4, a0
                  divu         s1, t3, s10
                  xor          zero, t5, a5
                  c.addi       t3, -1
                  sll          a3, s1, gp
                  mulhsu       a1, s8, s9
                  c.sub        s0, a0
                  c.mv         t1, t4
                  c.xor        s1, a0
                  c.srli       a5, 10
                  c.li         s8, 28
                  rem          t2, tp, t5
                  add          a5, tp, s6
                  slti         s0, s2, -561
                  sll          gp, ra, s9
                  mul          s4, t3, a3
                  div          s2, s5, a0
                  andi         t2, a0, 1235
                  nop
                  auipc        a7, 54709
                  srl          t3, s11, s1
                  slti         s4, a5, -1032
                  srli         s1, t2, 2
                  xori         sp, a0, 1635
                  c.li         t0, 9
                  c.addi       a0, -1
                  c.srli       a4, 28
                  c.add        t5, t5
                  sltiu        s5, t6, -1257
                  srl          a2, s9, gp
                  sltu         s3, gp, sp
                  addi         t5, a1, -776
                  divu         gp, s6, a7
                  c.add        s3, s7
                  slti         zero, zero, 540
                  c.sub        s0, s1
                  c.addi4spn   a4, sp, 400
                  slt          s5, s6, a5
                  mulhsu       zero, t3, tp
                  xori         ra, a1, 375
                  mul          ra, t5, s2
                  remu         s4, s5, t6
                  c.or         a3, a5
                  c.and        a2, a1
                  sltu         a5, s8, s8
                  mulhsu       a4, s5, a0
                  c.add        t0, t2
                  rem          t6, s5, t0
                  rem          s9, t5, s5
                  or           zero, gp, s7
                  xori         t1, gp, -1967
                  c.andi       a1, 5
                  c.li         t5, -1
                  slti         a0, s7, -111
                  auipc        s11, 423425
                  c.addi16sp   sp, -16
                  c.addi       t4, 22
                  slti         s5, t2, 1989
                  rem          gp, a6, s6
                  auipc        s10, 988741
                  c.and        a2, a1
                  mulh         gp, s10, a1
                  c.nop
                  sub          a3, s6, a5
                  c.or         a2, a3
                  sltiu        a2, s5, 1261
                  srl          a1, s3, s3
                  andi         t4, t6, 104
                  slli         t1, s8, 19
                  c.or         a4, a5
                  sll          t0, s11, t2
                  and          a2, t5, t6
                  mulh         zero, tp, s0
                  c.add        s11, a7
                  c.nop
                  or           tp, sp, s1
                  c.slli       s0, 8
                  rem          s8, s3, s8
                  xori         s4, s8, 823
                  c.add        s8, a1
                  sltiu        t4, t5, 1730
                  c.li         t2, -1
                  mulh         sp, t3, ra
                  or           s10, a0, s0
                  srl          t0, s5, ra
                  slli         a0, a4, 25
                  c.add        sp, a7
                  mulh         a5, s4, s6
                  c.and        a2, a5
                  or           t1, s8, t3
                  sltiu        gp, tp, 1944
                  and          a0, t6, s6
                  nop
                  mulhu        a3, s0, a7
                  srli         a3, a2, 15
                  ori          s9, s10, 35
                  c.xor        a4, a2
                  sltiu        t5, s9, 415
                  c.slli       a5, 8
                  c.andi       a3, 8
                  c.mv         a1, t5
                  xor          t3, s6, zero
                  andi         a2, s5, -347
                  mulh         a7, gp, s7
                  auipc        ra, 718091
                  sltiu        a0, a2, 70
                  c.andi       a4, 20
                  add          a0, zero, ra
                  slt          sp, a4, gp
                  sub          s10, s11, sp
                  c.slli       s3, 8
                  and          t1, s0, s9
                  and          s3, s5, ra
                  c.mv         s1, sp
                  addi         t1, t5, 2031
                  slli         gp, s1, 7
                  srl          t3, s10, s5
                  mul          gp, s4, t1
                  remu         a0, s5, s9
                  slli         t1, t6, 21
                  divu         s3, a5, a0
                  c.sub        a4, a3
                  ori          a1, a2, -57
                  c.andi       a1, 9
                  c.and        s0, a1
                  c.srai       a3, 15
                  divu         s8, a1, s1
                  auipc        s8, 271678
                  srai         t6, a4, 26
                  xori         s2, a3, 1418
                  xori         t1, t4, -589
                  mulhu        a3, a2, a1
                  c.lui        a1, 21
                  c.xor        a5, a4
                  c.srai       s1, 28
                  mulhu        s8, t3, s3
                  xori         a2, a2, 1261
                  c.addi4spn   a4, sp, 176
                  sub          a7, t2, t5
                  c.addi       a4, -1
                  c.srai       a2, 18
                  srl          a1, a5, t6
                  div          a3, s4, zero
                  slli         s0, s7, 0
                  slt          a4, s1, s4
                  sltu         s5, tp, a4
                  c.xor        a3, a2
                  slt          t0, a5, t1
                  srai         s10, sp, 7
                  xor          zero, ra, s9
                  c.add        s4, a2
                  add          s3, s2, s7
                  mulh         t0, a4, s0
                  xor          t2, zero, t3
                  srli         a1, s1, 2
                  c.add        a4, t1
                  srai         a0, ra, 14
                  c.add        ra, a7
                  c.mv         s2, t2
                  or           s1, t1, s10
                  sll          t2, t0, s11
                  c.addi16sp   sp, -16
                  c.sub        a3, a4
                  mulh         s3, a6, a4
                  auipc        a3, 863303
                  sll          s9, a5, t1
                  slt          s5, a0, gp
                  and          a3, s11, s9
                  slti         t4, s3, 48
                  mulhu        s5, s1, t1
                  slt          s11, t6, s1
                  c.mv         s10, s0
                  auipc        s0, 969385
                  c.slli       t5, 12
                  srai         a1, t0, 23
                  c.lui        tp, 11
                  auipc        sp, 84591
                  c.and        a3, a4
                  lui          t1, 912717
                  c.sub        s0, a3
                  c.nop
                  xori         a4, s11, -779
                  c.and        a4, a4
                  c.addi16sp   sp, -16
                  auipc        ra, 284521
                  divu         t1, t3, s6
                  sll          t1, t2, s5
                  xori         a0, a2, 857
                  or           t1, t4, s5
                  srai         sp, ra, 15
                  c.sub        a1, s0
                  c.mv         t5, t5
                  remu         s9, ra, a4
                  add          s5, t4, a4
                  c.addi       a3, -1
                  c.srli       s1, 26
                  srai         s5, sp, 8
                  c.andi       a4, 23
                  c.addi       s11, -1
                  c.srli       a1, 26
                  divu         s1, a0, s4
                  rem          t1, a5, a4
                  slti         s0, s3, -299
                  xor          s4, s3, t2
                  nop
                  srli         sp, t1, 10
                  sltiu        s5, s10, 613
                  c.srli       s1, 9
                  mul          a4, a2, gp
                  srli         sp, a5, 3
                  c.and        a5, a0
                  mulhsu       t2, s11, a5
                  c.or         a3, a5
                  c.slli       s0, 28
                  xor          t6, t6, t0
                  srl          t3, sp, t2
                  sra          t2, t2, t5
                  ori          a0, t4, 309
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           s4, 0xba2e6c02
                  li           t2, 0x80000000
                  li           t4, 0x744b0cbd
                  li           ra, 0x0
                  li           t0, 0x80000000
                  li           t1, 0x80000000
                  li           s8, 0xffffffff
                  li           s5, 0xe9231478
                  li           a1, 0xa8f5d500
                  divu         a5, t4, a5
                  mulhu        a1, t0, t2
                  mulhu        s5, s5, a5
                  sub          s4, ra, s5
                  rem          t2, ra, t2
                  auipc        s5, 785867
                  sub          a5, s8, t1
                  mulh         t1, t0, t1
                  addi         ra, s4, 1480
                  addi         s8, t4, -1667
                  nop
                  auipc        t1, 1035120
                  remu         t4, a1, s5
                  rem          t4, a1, ra
                  remu         s8, a5, t2
                  mul          t2, s8, s5
                  addi         a5, t4, 1583
                  rem          a1, t4, t1
                  divu         t0, t4, a1
                  mulh         s8, t2, t0
                  lui          s8, 166235
                  divu         t4, t1, a1
                  rem          a5, a1, s8
                  add          s5, t4, t4
                  nop
                  divu         ra, t1, ra
                  mulhu        s8, s8, a1
                  mulhu        s4, s4, t1
                  sub          t1, s8, ra #end riscv_int_numeric_corner_stream_1
                  c.srai       a3, 17
                  sub          ra, s7, t5
                  c.or         a0, s0
                  c.lui        a5, 30
                  xori         s11, t1, 803
                  c.srai       a5, 30
                  xori         tp, ra, -1038
                  slti         s10, sp, -1366
                  c.addi       s4, -1
                  c.nop
                  and          s2, s2, t4
                  sub          a0, t5, s1
                  srli         ra, s4, 17
                  xori         a2, s0, 12
                  sub          a4, t0, t6
                  c.addi4spn   a2, sp, 480
                  c.srai       a2, 19
                  slli         gp, a0, 14
                  auipc        tp, 1023125
                  c.slli       s2, 30
                  nop
                  div          t2, s4, t4
                  slt          s9, ra, t1
                  div          s0, s1, t0
                  srl          t2, s6, a0
                  c.srli       a5, 28
                  c.add        a3, t1
                  c.or         a0, a0
                  c.mv         a1, a0
                  or           s4, s7, t2
                  remu         a7, sp, s7
                  remu         s1, s2, sp
                  c.lui        s3, 25
                  xor          zero, s0, s0
                  ori          t4, zero, -597
                  c.sub        s0, a4
                  remu         sp, a2, a1
                  srai         t1, t3, 27
                  sra          a4, s5, t6
                  sltu         a1, s11, s5
                  sub          s2, a1, s5
                  mulh         s10, a3, tp
                  mulhu        a2, s6, s4
                  sra          gp, tp, s10
                  remu         s8, tp, s8
                  c.li         s2, -1
                  c.xor        a4, a1
                  sll          s2, sp, t5
                  c.andi       a1, 23
                  div          t0, s3, s1
                  rem          a7, s7, a0
                  nop
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_29
                  li           t3, 0x0
                  li           s4, 0x0
                  li           s1, 0xffffffff
                  li           a5, 0xffffffff
                  li           s3, 0x8e017f74
                  li           ra, 0x0
                  li           s10, 0x80000000
                  li           s8, 0x0
                  li           s5, 0x0
                  div          t3, s3, s3
                  addi         s8, s2, 1112
                  add          s1, a5, s3
                  addi         s10, s5, -1123
                  auipc        ra, 252819
                  divu         s5, s3, s5
                  add          a5, s5, s10
                  mulhsu       s3, s5, ra
                  add          s4, s10, ra
                  rem          s8, a5, ra
                  mulh         s1, a5, s2
                  div          a5, s8, ra
                  mulhu        s3, s2, s4
                  addi         s5, s2, -690
                  div          ra, s1, a5
                  addi         a5, a5, 1196
                  rem          s5, a5, s5
                  add          s1, a5, a5
                  nop
                  mulhsu       ra, ra, a5 #end riscv_int_numeric_corner_stream_29
                  c.nop
                  c.addi4spn   a0, sp, 208
                  ori          s10, ra, -233
                  div          a5, a7, s7
                  div          sp, ra, a7
                  nop
                  addi         s10, s5, -1225
                  slli         tp, s8, 13
                  c.lui        s3, 7
                  nop
                  lui          s8, 339526
                  c.addi16sp   sp, -16
                  xor          gp, zero, a4
                  remu         t4, zero, s5
                  mulhsu       s0, s0, s1
                  c.sub        a0, a2
                  c.xor        s1, s0
                  auipc        t2, 369483
                  srli         a2, t3, 25
                  auipc        s10, 64205
                  sltu         s10, s11, a0
                  srl          s8, s1, a1
                  c.andi       a3, 7
                  c.mv         s4, s0
                  c.add        s8, a2
                  div          t2, s3, t0
                  slli         s9, t6, 4
                  c.add        s8, s6
                  srl          t1, s0, a4
                  srl          s1, a7, s8
                  c.slli       a5, 15
                  c.slli       a0, 28
                  c.xor        a5, a3
                  c.mv         a1, s11
                  sll          t6, gp, s1
                  and          a4, t4, s4
                  c.srli       s1, 15
                  xor          t0, a2, a0
                  srai         s0, a1, 15
                  rem          a2, t5, zero
                  c.sub        a2, a3
                  srli         t0, s4, 11
                  c.addi16sp   sp, 416
                  c.lui        t5, 22
                  srl          ra, ra, a0
                  ori          zero, a4, -651
                  c.lui        s4, 16
                  c.slli       s8, 9
                  srli         a5, s0, 5
                  or           s10, a3, s8
                  c.add        a1, a4
                  c.or         a0, a4
                  mulhsu       sp, t6, s5
                  auipc        a4, 177632
                  mulh         a4, gp, a2
                  andi         tp, a6, 474
                  c.srai       a2, 14
                  c.or         s1, a0
                  slli         tp, gp, 29
                  c.addi16sp   sp, 224
                  srl          t5, s7, s10
                  sll          t0, a7, ra
                  auipc        s4, 244886
                  c.nop
                  c.or         a5, a3
                  nop
                  remu         a7, a4, zero
                  c.nop
                  slli         s1, a1, 7
                  c.or         a0, a0
                  c.sub        a1, a0
                  ori          a4, s5, -1227
                  div          a0, s11, t1
                  srl          t3, t2, t3
                  nop
                  srai         s1, s3, 25
                  sll          a3, t0, t4
                  or           t6, t2, t2
                  or           sp, zero, s7
                  slt          t1, gp, s11
                  c.addi4spn   s0, sp, 160
                  c.srli       a1, 9
                  c.srai       a0, 11
                  div          s9, tp, ra
                  xor          t6, t3, a5
                  c.lui        t3, 29
                  mulh         t1, s6, zero
                  slli         s3, zero, 0
                  mulh         s11, a7, a5
                  srl          a5, s11, ra
                  c.addi4spn   a5, sp, 528
                  srli         t3, s1, 25
                  c.srli       s0, 19
                  mulhsu       tp, t4, a2
                  sll          t2, t4, a3
                  and          a4, s1, s1
                  lui          a1, 807466
                  nop
                  sub          a3, a1, a4
                  li           t3, 0x969bb0a0 #start riscv_int_numeric_corner_stream_3
                  li           t0, 0x0
                  li           t5, 0x80000000
                  li           s8, 0x119a75d8
                  li           a3, 0x0
                  li           s3, 0x0
                  li           s11, 0x80000000
                  li           s4, 0x9a551eb0
                  li           s1, 0x80000000
                  li           t6, 0x0
                  divu         t0, s3, t0
                  rem          s3, s3, t5
                  auipc        t0, 596578
                  div          s8, s4, s4
                  nop
                  auipc        t5, 436427
                  remu         s8, s3, t0
                  sub          s1, s4, s11
                  nop
                  lui          a3, 1040758
                  add          t6, s1, a3
                  remu         t3, s8, s3
                  mulhu        s8, s11, s3
                  divu         s4, s11, t6
                  lui          s3, 266075
                  divu         s4, s8, a3
                  mulhu        t5, s4, s3
                  add          s3, a3, s8
                  remu         t6, s3, s3
                  sub          a3, t5, s4
                  sub          s1, s4, t6
                  sub          s8, t6, a3
                  remu         t0, s8, t0 #end riscv_int_numeric_corner_stream_3
                  rem          s8, s11, s6
                  mulh         s11, s6, s0
                  rem          s3, ra, t3
                  c.nop
                  c.xor        s0, a5
                  c.addi       t2, -1
                  mul          s3, s0, ra
                  c.addi16sp   sp, 192
                  mul          s2, t4, s7
                  lui          s2, 699539
                  slt          a1, a0, s5
                  srai         s3, a7, 10
                  and          s3, ra, t5
                  srai         s8, a4, 7
                  c.or         a0, a3
                  c.addi16sp   sp, -16
                  xor          t4, t6, t6
                  slli         s4, sp, 14
                  c.lui        gp, 11
                  div          a2, sp, a0
                  c.addi4spn   a0, sp, 416
                  divu         s2, a5, t5
                  sra          t6, s1, s5
                  c.mv         s3, s9
                  srli         s2, t1, 28
                  remu         t5, a6, gp
                  sll          s3, a5, s1
                  c.and        a1, a5
                  c.nop
                  remu         s2, a5, s1
                  c.addi16sp   sp, 48
                  xor          t4, t0, a5
                  srli         a4, s3, 0
                  srai         s5, s4, 30
                  c.and        a1, a0
                  c.srli       a2, 23
                  c.addi       t5, 14
                  add          t5, s5, s7
                  mulhsu       a3, a4, s4
                  sltiu        a0, t2, -1312
                  c.mv         gp, t0
                  srai         s2, s1, 5
                  c.addi4spn   a4, sp, 176
                  c.srli       a1, 25
                  c.addi16sp   sp, -16
                  or           tp, t0, gp
                  and          s1, a4, t1
                  c.or         a1, a1
                  c.srai       s0, 19
                  remu         s10, a5, s8
                  slli         t3, tp, 25
                  add          t4, s6, ra
                  srai         s4, gp, 20
                  mulh         a5, s8, gp
                  c.lui        s2, 21
                  sltiu        t6, sp, -1409
                  c.addi4spn   a4, sp, 304
                  rem          s4, s2, a6
                  c.srli       s0, 26
                  c.addi16sp   sp, 80
                  rem          a2, a0, a4
                  ori          t2, a4, -1299
                  mul          t6, t2, a1
                  sra          s11, a4, s5
                  c.addi4spn   a2, sp, 896
                  c.addi4spn   a3, sp, 336
                  slt          s3, s6, t0
                  srl          s1, ra, t1
                  srl          s4, s3, s3
                  xor          s5, t5, t6
                  c.addi       t3, 30
                  mulhsu       a4, t6, a2
                  srai         t1, s7, 2
                  addi         a2, a3, -150
                  c.nop
                  remu         s8, s10, t3
                  mul          a1, a5, s11
                  sll          zero, t2, s10
                  sll          a5, sp, s11
                  slli         t3, s0, 24
                  lui          a2, 870222
                  sra          a2, s1, s3
                  c.srli       a4, 25
                  c.andi       s0, -1
                  slt          t2, t3, s2
                  c.and        a1, a2
                  srli         a2, a3, 15
                  mul          s0, gp, t4
                  lui          s1, 1000678
                  c.addi4spn   s0, sp, 624
                  c.addi16sp   sp, 192
                  c.lui        t2, 11
                  c.addi       ra, 17
                  c.slli       a1, 18
                  slli         a0, sp, 3
                  rem          t2, s2, ra
                  rem          a7, ra, s7
                  c.nop
                  slt          s4, a4, a6
                  xor          s9, a0, t5
                  divu         a4, a7, a1
                  slt          t3, gp, s7
                  c.or         a2, a3
                  sub          t5, s3, s6
                  c.addi       a7, -1
                  divu         s9, t0, t0
                  xori         s2, s4, -631
                  lui          t2, 210080
                  c.srai       s1, 27
                  c.addi16sp   sp, 272
                  slti         t1, s2, -807
                  or           s11, s8, s0
                  c.or         a3, a2
                  div          s5, a3, t4
                  or           zero, zero, s8
                  lui          a2, 505326
                  lui          t4, 424689
                  c.mv         s2, t0
                  c.addi16sp   sp, 32
                  lui          s8, 621379
                  andi         a0, s9, 1498
                  slli         a2, a6, 22
                  mul          a7, a1, zero
                  c.slli       a3, 22
                  sub          t6, s3, zero
                  rem          s4, s9, s7
                  add          s5, s4, t3
                  and          a7, zero, ra
                  or           s8, s8, a7
                  sll          s4, s7, t3
                  c.nop
                  c.lui        a7, 20
                  srl          s0, s8, t4
                  c.li         s4, 8
                  c.slli       s8, 25
                  c.li         a4, -1
                  c.xor        a3, a2
                  mulh         a2, tp, t6
                  and          s8, a3, s8
                  srai         t5, t6, 24
                  nop
                  nop
                  sltiu        s1, a4, 773
                  sltiu        gp, s6, 980
                  c.addi       s8, -1
                  mulhu        tp, t0, a5
                  addi         s4, a0, -1656
                  c.sub        a0, s1
                  mulhsu       s4, gp, s6
                  slti         a1, s1, -1947
                  c.srli       a0, 26
                  mulh         s4, sp, s0
                  c.sub        a3, a4
                  rem          s5, sp, t3
                  div          zero, zero, s11
                  c.srai       a0, 27
                  add          t3, a7, gp
                  divu         s3, t2, s9
                  srai         a0, t2, 4
                  c.slli       a7, 19
                  andi         t5, a3, -1391
                  andi         s9, a2, 1796
                  mulhu        t1, a2, s8
                  c.srai       a0, 11
                  c.slli       t5, 18
                  srai         s3, a7, 9
                  slli         t2, s10, 23
                  mulhsu       t5, s6, s10
                  xori         t0, a5, 2016
                  xori         t1, s0, 690
                  c.slli       s1, 27
                  c.addi4spn   a5, sp, 144
                  c.srli       a2, 6
                  c.li         t2, -1
                  c.or         a0, a0
                  c.slli       t2, 30
                  or           s1, s6, s4
                  c.add        tp, t4
                  addi         a3, s0, -1164
                  c.addi4spn   a2, sp, 464
                  c.add        s0, s0
                  slti         zero, a2, -65
                  mulhsu       ra, s9, t6
                  slli         s2, t2, 12
                  c.srai       a1, 22
                  mulhu        tp, a6, s10
                  ori          s3, a3, -619
                  sll          s5, a7, s6
                  c.srli       a4, 28
                  sub          s4, s8, a5
                  c.addi4spn   s1, sp, 96
                  div          t6, gp, t4
                  sltiu        t3, s9, 582
                  nop
                  c.xor        a3, a0
                  addi         s3, t3, 1510
                  div          t3, a6, gp
                  andi         s3, s6, -843
                  c.lui        t4, 26
                  rem          ra, s5, s4
                  c.addi16sp   sp, 288
                  nop
                  slli         s10, a0, 24
                  c.nop
                  srl          s9, s11, a7
                  c.andi       s0, 0
                  andi         t5, sp, -459
                  srl          t6, t3, s7
                  xor          s4, s2, t6
                  sub          zero, t1, t2
                  sll          s4, tp, tp
                  rem          s1, s10, tp
                  and          a2, a6, s9
                  c.lui        t0, 31
                  c.add        s9, s5
                  xor          s1, a4, s7
                  c.li         t4, 21
                  mulhsu       s1, a6, tp
                  lui          s9, 627244
                  c.srli       s0, 14
                  c.add        s3, t3
                  rem          t1, t3, s11
                  slt          gp, s3, s2
                  nop
                  mulhsu       s5, a5, a4
                  slti         a5, a7, 683
                  sub          t6, t1, a3
                  xor          s5, zero, s7
                  lui          t3, 73413
                  and          a4, s4, sp
                  slt          s11, s8, a5
                  c.and        s0, a0
                  c.or         a2, a4
                  srai         s3, s8, 4
                  remu         ra, a3, s0
                  mul          zero, a2, a1
                  ori          a4, t0, -667
                  sll          s4, a5, ra
                  and          t0, s2, a2
                  c.srai       s1, 9
                  and          a5, t0, tp
                  sltu         t3, a4, s11
                  mulhu        t2, a0, a5
                  sub          t3, a1, s10
                  sub          a1, t2, s5
                  xori         s11, s9, -1330
                  c.srli       a0, 15
                  ori          s2, ra, 1033
                  c.or         a5, a1
                  srli         zero, s8, 24
                  or           s3, s5, t2
                  addi         s2, s7, 83
                  xori         gp, s6, 1246
                  andi         t2, a7, -1312
                  srl          t5, s1, s4
                  c.mv         s4, t2
                  mulh         tp, t0, sp
                  addi         s4, s9, -1294
                  divu         s1, s5, gp
                  c.xor        a4, a2
                  rem          t2, t5, s8
                  srl          s8, t4, ra
                  c.xor        a5, a5
                  lui          s0, 754459
                  and          t4, s8, t6
                  xor          s3, s3, a2
                  ori          t3, s10, -290
                  slt          s5, a4, t1
                  andi         zero, gp, -1891
                  mulhu        t5, tp, t0
                  c.li         t6, -1
                  c.xor        a4, a3
                  andi         s0, a1, 991
                  slt          s8, s9, a5
                  remu         t6, a0, tp
                  slti         t4, s9, 494
                  sll          t5, s8, t2
                  or           s5, t6, a2
                  c.mv         s8, s8
                  mulh         t3, a3, t2
                  srai         a2, t3, 10
                  srli         t4, gp, 20
                  mul          sp, s7, a3
                  slti         t5, s5, 811
                  lui          s3, 614352
                  lui          s4, 666978
                  ori          ra, zero, -1224
                  srli         a1, a4, 13
                  c.lui        t0, 20
                  c.addi       s3, -1
                  remu         zero, a2, gp
                  xor          s8, gp, t3
                  xor          t5, t3, a3
                  sub          gp, s2, s5
                  ori          tp, a2, 652
                  mul          a3, s9, t1
                  c.addi4spn   a2, sp, 848
                  divu         a3, a2, t0
                  c.and        s1, a3
                  xori         a4, t6, 942
                  c.and        a0, a5
                  sub          s2, zero, a6
                  c.nop
                  c.addi       t1, -1
                  c.mv         t3, sp
                  sltu         zero, s11, a1
                  slli         s10, s8, 26
                  rem          tp, s5, a5
                  or           zero, s9, sp
                  auipc        ra, 404831
                  xor          a2, a1, a3
                  c.addi       s2, -1
                  c.andi       a5, 23
                  srl          s2, t1, t0
                  andi         s0, a1, 884
                  mulhsu       s8, zero, s10
                  nop
                  c.slli       a4, 3
                  slti         t5, t2, 1754
                  srli         s10, t1, 25
                  sra          a1, s4, a7
                  c.addi16sp   sp, -16
                  sra          zero, a4, s11
                  slt          t2, s6, t4
                  nop
                  sltiu        a3, a6, 935
                  xor          s5, t4, sp
                  c.mv         s4, gp
                  c.and        a5, s0
                  srai         a4, t2, 7
                  sra          tp, zero, zero
                  mulh         s9, ra, a5
                  sll          ra, sp, ra
                  remu         zero, s0, t5
                  c.srli       a4, 21
                  rem          ra, s7, tp
                  slli         s10, s9, 30
                  mulhsu       t1, a1, a2
                  c.srai       a2, 9
                  lui          t6, 558667
                  c.nop
                  c.srli       a2, 5
                  c.andi       a1, -1
                  c.mv         s8, s11
                  c.or         a5, a1
                  slt          t4, s5, zero
                  c.and        s0, s1
                  c.li         ra, 0
                  c.slli       a3, 19
                  mulh         t2, t0, a1
                  slli         s5, a3, 9
                  c.srai       a1, 18
                  mulhsu       s8, ra, a6
                  ori          s3, t1, -389
                  c.li         s0, 20
                  sll          ra, t6, a2
                  c.xor        s0, a5
                  mul          ra, a4, a7
                  sltiu        s2, t4, 1849
                  slti         a2, a2, -356
                  or           a5, s9, s0
                  c.sub        s1, a0
                  c.addi4spn   s0, sp, 464
                  mulhu        ra, a2, t1
                  nop
                  sll          t5, t6, t5
                  srl          s0, a1, a0
                  c.xor        a5, a4
                  xori         s0, s6, -1886
                  slt          s0, t4, s7
                  c.lui        t1, 18
                  c.lui        s5, 4
                  c.lui        s11, 2
                  rem          gp, s6, a4
                  c.or         s1, a1
                  mulh         ra, a5, t4
                  c.nop
                  rem          t1, s3, t5
                  c.mv         s4, s1
                  slt          s10, ra, s8
                  c.srli       a4, 5
                  c.nop
                  c.addi16sp   sp, -16
                  and          t4, a2, a6
                  c.srli       s1, 31
                  c.xor        a5, a0
                  mulhsu       s4, a1, s9
                  c.and        s1, s0
                  and          s11, s8, s5
                  c.addi       a3, -1
                  slti         a2, a6, 554
                  mulhsu       zero, s5, s3
                  c.and        a3, s1
                  addi         gp, gp, 598
                  c.srli       a1, 12
                  sltu         s3, s6, a5
                  xori         gp, tp, 1238
                  li           a0, 0xffffffff #start riscv_int_numeric_corner_stream_37
                  li           s1, 0x80000000
                  li           t1, 0x9f035f99
                  li           a2, 0x80000000
                  li           t5, 0x795a7707
                  li           a1, 0x0
                  li           t2, 0x80000000
                  li           t4, 0xa9307680
                  li           s5, 0xffffffff
                  li           tp, 0x0
                  sub          t1, t4, a1
                  divu         a2, tp, a1
                  mulh         tp, a1, a0
                  mulh         a0, s5, t1
                  lui          t5, 320168
                  sub          t1, t2, s5
                  auipc        t2, 21070
                  mulhsu       t4, a0, s1
                  mul          t4, s1, tp
                  auipc        tp, 607096
                  nop
                  addi         t2, t5, 260
                  remu         tp, a1, s5
                  div          t1, a1, s1
                  rem          tp, tp, t2
                  auipc        t5, 995506
                  addi         t5, t5, 992
                  nop
                  mulh         s5, s1, tp
                  mulh         a2, t2, t5
                  lui          s5, 885693
                  divu         t1, s1, t2
                  add          a1, s5, s1
                  addi         a0, s5, 1100
                  nop
                  mulh         t2, a1, a0
                  div          s5, t5, a0 #end riscv_int_numeric_corner_stream_37
                  mulhu        t0, a5, s0
                  slli         gp, t0, 18
                  c.xor        a1, a5
                  c.and        a4, a0
                  c.slli       t4, 26
                  remu         a7, s8, t4
                  sub          t0, s10, a4
                  sltiu        a2, t4, 1799
                  slt          a2, t6, gp
                  xori         zero, sp, 313
                  slti         t0, s11, -723
                  c.addi16sp   sp, 432
                  rem          t4, s3, zero
                  xor          t6, t2, t5
                  c.or         s1, a0
                  c.lui        ra, 12
                  mulhu        a2, a6, t6
                  mul          t6, t6, a2
                  mulh         t5, s10, sp
                  c.addi4spn   a5, sp, 560
                  mulhsu       s4, s2, s11
                  and          a2, t2, s6
                  mulhsu       s11, a0, s8
                  lui          s3, 717603
                  div          a3, t2, a2
                  sll          s8, ra, t6
                  c.sub        a1, a0
                  andi         t4, a7, -1128
                  srli         s5, t0, 5
                  sll          t0, t3, zero
                  slti         s11, t6, 1129
                  divu         t5, a7, a7
                  sra          t5, t3, s6
                  c.addi4spn   s1, sp, 240
                  rem          a4, a0, s11
                  c.srai       s0, 15
                  sltu         s3, a6, ra
                  divu         t3, gp, s5
                  srl          s1, t1, sp
                  c.andi       a2, -1
                  c.slli       s1, 10
                  c.andi       s1, 21
                  c.xor        a0, a4
                  or           s2, sp, ra
                  c.andi       a0, -1
                  c.srli       a4, 3
                  lui          ra, 1020361
                  sll          s9, s6, t6
                  srai         gp, s3, 16
                  mulhsu       gp, s8, a1
                  srli         s4, s11, 15
                  slli         s5, s3, 13
                  nop
                  div          s11, zero, s0
                  xori         tp, t2, 350
                  c.lui        a0, 31
                  ori          a3, t2, 1142
                  c.lui        a1, 14
                  andi         t6, a5, 179
                  xori         s4, a1, -141
                  lui          a3, 90136
                  div          t6, sp, t4
                  ori          a3, a1, 2039
                  c.and        a3, a4
                  c.srai       a5, 3
                  remu         ra, zero, t2
                  xori         s11, s0, 851
                  divu         t4, t4, tp
                  c.or         a4, a1
                  c.lui        a0, 31
                  slt          a0, a3, s9
                  slti         a0, s0, 1633
                  mulhu        t6, t1, s7
                  c.addi       t4, -1
                  auipc        s4, 875438
                  mulhu        t1, s1, a6
                  c.li         a0, -1
                  c.li         a0, 12
                  c.addi4spn   a4, sp, 336
                  lui          s3, 156663
                  c.addi4spn   a1, sp, 896
                  slti         ra, tp, -1513
                  srli         s11, gp, 20
                  rem          a1, t6, a3
                  sra          t0, t4, s3
                  mulh         t6, s5, a5
                  c.srli       s1, 28
                  addi         s9, s3, -1123
                  c.and        a5, a3
                  nop
                  c.slli       s4, 11
                  srai         s4, t2, 18
                  slti         s2, s0, 1830
                  lui          t3, 893252
                  c.addi16sp   sp, -16
                  remu         s10, tp, s1
                  xor          a0, t6, s9
                  sll          s9, a3, a7
                  divu         t3, t3, a6
                  sltu         gp, s11, a2
                  c.or         s0, a0
                  c.li         a4, 8
                  srai         a3, t0, 26
                  rem          a7, a0, s2
                  and          s5, a7, a2
                  or           a7, s2, ra
                  divu         t5, s6, s2
                  mul          t4, ra, s6
                  c.addi16sp   sp, 224
                  or           a7, a7, a0
                  srai         s9, a2, 4
                  andi         s11, a7, 214
                  c.or         a3, a1
                  rem          t0, s0, tp
                  div          t6, tp, s10
                  srl          a0, s7, s4
                  slti         s10, a5, -1682
                  lui          t0, 466050
                  c.slli       sp, 20
                  slli         s0, s6, 16
                  addi         a3, t0, -1864
                  c.or         a5, a1
                  c.xor        s0, s0
                  c.or         a4, a5
                  c.addi4spn   a2, sp, 720
                  div          s0, a5, a3
                  add          s8, s7, s11
                  xor          s2, s6, t6
                  c.addi4spn   a5, sp, 928
                  c.lui        s2, 22
                  remu         s2, a5, t3
                  divu         t6, a4, s10
                  c.lui        gp, 27
                  mulhu        t1, t4, a5
                  c.nop
                  mulh         t2, zero, t6
                  nop
                  mul          s1, s1, s8
                  mulhsu       a4, t3, a0
                  mulhu        zero, ra, t5
                  slli         a4, a7, 26
                  c.sub        a5, a0
                  andi         ra, t5, -378
                  c.addi       t2, 25
                  c.mv         t6, s2
                  ori          s1, tp, 370
                  add          t5, s0, sp
                  remu         s0, t5, zero
                  mul          a3, ra, a7
                  srli         s2, t6, 17
                  remu         s8, s3, ra
                  sub          t5, t6, a3
                  and          a7, a6, s0
                  c.sub        a0, a4
                  srl          t1, tp, s2
                  c.srai       a2, 23
                  addi         s10, a4, 873
                  c.srli       a1, 31
                  mul          t2, s6, t5
                  mulhu        s10, a6, a7
                  c.slli       t3, 10
                  c.nop
                  c.lui        t5, 3
                  c.andi       a3, 26
                  c.slli       s10, 22
                  xori         s11, s2, -1313
                  mul          t5, s11, a6
                  sra          s4, s3, t1
                  c.mv         t6, s8
                  c.sub        a1, a0
                  sub          t3, sp, a3
                  auipc        s0, 1035528
                  c.or         a0, s0
                  and          s2, a5, s9
                  auipc        a0, 916682
                  c.addi       s8, 12
                  c.addi4spn   s0, sp, 752
                  c.add        sp, t5
                  c.addi4spn   a4, sp, 432
                  c.li         s9, 11
                  remu         t4, s10, a3
                  div          a4, a6, s8
                  c.or         a4, a0
                  c.srli       a2, 14
                  remu         t6, a4, s9
                  c.lui        s2, 28
                  c.lui        s5, 15
                  andi         s10, tp, -473
                  c.addi4spn   s1, sp, 544
                  mul          t0, s3, s8
                  sltu         t1, a7, s7
                  c.srai       a2, 15
                  slt          t5, t4, s8
                  sra          t6, sp, s4
                  mulhu        a4, s6, a4
                  c.addi4spn   a5, sp, 816
                  nop
                  c.addi       gp, -1
                  xori         t3, tp, -857
                  c.andi       s0, 13
                  sub          s5, t2, s1
                  c.xor        a5, a2
                  c.and        a2, s1
                  mul          s2, s8, s7
                  mulh         t4, s3, t1
                  srl          zero, gp, s10
                  xori         s10, a6, -1050
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           s2, 0x90350b10
                  li           t1, 0xffffffff
                  li           s10, 0xe9208696
                  li           s8, 0x80000000
                  li           s1, 0x80000000
                  li           a7, 0x80000000
                  li           a4, 0x80000000
                  li           s0, 0x0
                  li           t0, 0xffffffff
                  mulh         t4, t0, s8
                  lui          s1, 94310
                  div          s2, s2, s1
                  rem          s8, s2, s10
                  add          s10, t0, s10
                  mulhsu       a7, a7, t0
                  sub          t1, s2, t0
                  addi         s2, a7, -601
                  mul          s0, s8, a4
                  divu         s0, s2, s2
                  mulhsu       s1, t4, t1
                  remu         s2, s8, a7
                  mul          s2, t1, s1
                  sub          a4, a7, s10
                  add          a4, a4, s1
                  sub          s1, a7, s2
                  nop
                  lui          s2, 158775
                  mulh         a4, s2, t0
                  div          a4, t0, a7
                  add          t0, a7, t0
                  div          s2, s8, t1
                  nop
                  lui          a4, 802318
                  add          a7, t0, s1 #end riscv_int_numeric_corner_stream_34
                  c.andi       a0, -1
                  c.addi       t4, 18
                  remu         a1, gp, t1
                  sltu         ra, a5, a2
                  c.lui        s2, 12
                  sra          a2, tp, t3
                  div          a1, a4, t1
                  mulhsu       t1, a5, s1
                  addi         s3, s1, -1569
                  slti         a5, a6, 251
                  c.mv         s1, s8
                  c.addi       t6, 30
                  mul          s0, sp, t5
                  ori          t0, a7, -79
                  slt          s0, a4, s4
                  srli         a7, s2, 28
                  c.or         a0, a0
                  add          s8, zero, a6
                  slli         s8, s2, 17
                  remu         a0, s4, ra
                  c.srai       a4, 8
                  auipc        sp, 241384
                  div          s4, s8, t3
                  c.lui        a2, 27
                  addi         t0, a7, -488
                  c.sub        a1, s0
                  sltiu        a5, a4, -234
                  nop
                  sra          a0, a6, s10
                  c.sub        a3, a2
                  c.slli       s0, 11
                  c.slli       t2, 2
                  c.lui        tp, 3
                  slli         a7, s1, 29
                  c.lui        s2, 19
                  c.addi       s8, -1
                  addi         s4, t6, 1900
                  remu         ra, s5, t2
                  c.li         a5, 19
                  c.srli       a5, 28
                  c.or         a4, a3
                  c.sub        a4, a5
                  sub          s0, s11, t6
                  c.addi4spn   a2, sp, 784
                  divu         t1, a2, gp
                  mul          a7, s7, t1
                  srli         sp, t6, 17
                  srli         s1, s2, 30
                  c.lui        t1, 3
                  and          s2, zero, s1
                  c.lui        t4, 18
                  mulh         a5, s5, a7
                  c.and        s0, s0
                  xori         sp, t6, 1872
                  mulhsu       s8, s1, gp
                  slli         a4, s2, 18
                  c.add        s5, t6
                  ori          s2, a2, 297
                  c.addi16sp   sp, 224
                  sll          s4, t1, s9
                  andi         t6, a5, -1576
                  c.and        a2, s1
                  and          s3, t0, t4
                  auipc        a1, 784971
                  sra          a7, t5, gp
                  c.lui        s1, 14
                  c.add        t6, s4
                  c.andi       a0, 10
                  c.addi       t2, -1
                  mulhsu       s8, s4, a3
                  c.andi       a4, -1
                  remu         a4, sp, s3
                  c.and        a2, s1
                  and          s4, gp, a0
                  c.xor        a5, a0
                  c.addi       s3, -1
                  remu         tp, t3, a3
                  c.andi       a3, 12
                  remu         ra, s10, a5
                  c.srai       a1, 24
                  mulhsu       a2, s6, s10
                  c.mv         t5, s3
                  rem          ra, a3, s6
                  divu         s11, sp, s11
                  c.srli       a4, 8
                  sll          t1, t6, a4
                  slt          a0, a0, s0
                  c.srai       a1, 29
                  slli         t1, ra, 4
                  c.addi4spn   a5, sp, 880
                  c.srai       a4, 12
                  c.srai       a0, 6
                  mulhsu       t2, a4, s8
                  remu         t0, s10, a1
                  c.add        t0, s10
                  c.srli       a2, 28
                  or           t1, sp, s5
                  lui          t6, 602041
                  c.addi16sp   sp, 208
                  c.addi4spn   s1, sp, 16
                  or           s4, a3, t2
                  c.srli       s1, 8
                  xor          a7, t2, s4
                  slt          t4, a4, tp
                  or           ra, t2, a1
                  c.addi16sp   sp, -16
                  nop
                  sltu         t6, t5, s6
                  xor          t4, a2, s2
                  xor          s11, a5, t6
                  addi         a4, s0, -641
                  nop
                  div          s1, s7, s5
                  srai         t3, t4, 11
                  nop
                  srl          s2, gp, s3
                  xori         s0, a6, 161
                  lui          a2, 96822
                  sra          ra, s7, s5
                  mulh         zero, a3, sp
                  c.andi       s1, 5
                  c.nop
                  or           a2, a6, t6
                  sltiu        s0, s6, 797
                  slti         ra, a6, -1567
                  c.nop
                  mulhu        s3, a4, s11
                  c.or         a3, a5
                  c.srai       a1, 19
                  srai         t6, s11, 22
                  remu         t5, s5, a3
                  c.srli       a1, 2
                  andi         sp, s9, 701
                  xori         s1, s5, -337
                  mulhsu       s3, s6, s0
                  add          t1, s6, t3
                  c.nop
                  xor          a5, s8, a0
                  divu         a1, a4, a6
                  xor          a0, a7, a2
                  mulhsu       s4, s1, s8
                  xor          t0, s6, zero
                  addi         zero, s3, 149
                  slli         s4, s0, 29
                  sll          t3, s11, s5
                  c.nop
                  lui          t2, 663444
                  c.li         a1, 26
                  ori          t6, a2, -1430
                  c.addi       t2, -1
                  mulh         t1, a0, sp
                  c.srai       a2, 30
                  nop
                  xor          gp, t5, a6
                  mulhsu       s1, s1, a1
                  addi         tp, s8, 1476
                  lui          gp, 418032
                  c.xor        a2, a5
                  ori          t0, s11, -1923
                  srai         a7, t5, 5
                  or           s3, gp, s10
                  c.add        a2, t1
                  ori          a7, s3, 1477
                  lui          s0, 650597
                  c.addi       a5, 24
                  c.addi4spn   a4, sp, 112
                  sll          sp, a1, s9
                  lui          t5, 258830
                  add          a4, t5, sp
                  srai         t0, sp, 23
                  ori          t1, a6, 73
                  c.srli       a5, 8
                  mul          a2, a5, s7
                  rem          s3, t5, t4
                  mulhsu       s1, a4, t4
                  rem          t6, s6, s6
                  ori          s8, t4, -248
                  rem          t4, s0, gp
                  nop
                  srli         t0, a3, 10
                  xori         s5, s0, -653
                  slli         t5, s9, 18
                  c.sub        a3, a2
                  addi         s0, a2, -731
                  c.slli       t4, 25
                  srai         t3, t2, 18
                  remu         s4, a4, zero
                  sub          a3, s7, a7
                  c.or         a5, a2
                  divu         zero, a0, s8
                  addi         zero, t6, -1306
                  sltu         gp, ra, tp
                  divu         s11, s3, s8
                  c.xor        a5, a4
                  slti         s10, s2, -1109
                  srl          a3, a1, a4
                  c.li         a5, -1
                  c.addi4spn   a4, sp, 64
                  c.xor        a2, s1
                  c.xor        a5, a5
                  c.or         a0, a3
                  c.xor        s1, a4
                  mulh         tp, s0, a4
                  xor          t1, gp, zero
                  rem          gp, a4, a7
                  c.addi       t3, 15
                  c.li         ra, -1
                  c.lui        ra, 14
                  sltiu        a2, s5, 1985
                  c.addi16sp   sp, -16
                  c.srli       s0, 9
                  c.sub        a5, a5
                  c.li         sp, -1
                  c.srai       a2, 18
                  mulhsu       s11, a4, a6
                  remu         tp, zero, t6
                  c.andi       a1, 15
                  c.mv         s4, a1
                  rem          t1, a5, gp
                  andi         s3, sp, -1918
                  rem          s2, s8, s11
                  c.and        a3, a5
                  c.lui        ra, 6
                  c.mv         s2, gp
                  slt          t0, s1, s7
                  andi         a3, s3, -605
                  c.and        a1, a0
                  sra          t3, a3, a2
                  c.mv         t6, s4
                  sub          a3, t0, s1
                  c.srai       a5, 30
                  mulhu        s11, s6, a3
                  div          a4, a6, a6
                  div          t5, ra, s7
                  nop
                  or           a1, a1, s0
                  rem          a0, a4, s11
                  ori          t4, gp, -1026
                  c.sub        s1, a0
                  slti         ra, t3, -572
                  mul          s1, a3, s7
                  c.li         sp, 3
                  mulhsu       t1, t3, s3
                  mulhsu       s2, s5, s3
                  remu         tp, t1, s10
                  srai         a1, s1, 6
                  c.addi       s2, 24
                  c.and        a4, a5
                  auipc        s10, 16273
                  divu         s4, t2, a5
                  div          t3, t6, a6
                  c.nop
                  mulhsu       s0, s0, a5
                  andi         t5, t4, -1869
                  div          s1, s3, gp
                  c.add        s5, sp
                  add          s4, s8, sp
                  ori          t3, a1, -1861
                  ori          t4, a6, 1962
                  c.li         t1, -1
                  slti         a0, tp, -415
                  slti         s5, s4, -574
                  c.and        a3, a4
                  auipc        a3, 305727
                  div          a3, s10, a0
                  c.andi       a1, 3
                  add          t6, s1, s1
                  ori          a0, t0, 1626
                  slti         s9, t5, -467
                  c.andi       a1, 12
                  div          t4, a0, tp
                  c.nop
                  c.add        s1, a7
                  c.slli       t5, 29
                  sltiu        a3, s6, -1355
                  auipc        a2, 697836
                  sra          s3, t3, t6
                  add          t0, a0, s5
                  c.addi       s11, 7
                  ori          tp, sp, 137
                  sltu         s4, t1, a4
                  c.srli       a0, 12
                  srl          a1, s7, s9
                  c.lui        a2, 26
                  c.xor        a2, a5
                  c.addi       a0, -1
                  nop
                  mulh         s3, t3, a7
                  divu         t2, s9, t5
                  c.addi4spn   a2, sp, 464
                  c.nop
                  c.addi4spn   a0, sp, 400
                  sltiu        a1, a1, 2035
                  slli         s3, t1, 12
                  remu         tp, s2, s9
                  c.xor        a2, a2
                  sll          a2, a7, a0
                  c.and        a0, a3
                  c.add        t2, t3
                  c.li         a1, 14
                  add          t3, a1, s0
                  c.add        tp, s5
                  c.xor        a3, s0
                  or           s9, a2, t0
                  and          tp, t3, gp
                  c.lui        t1, 18
                  srli         ra, a3, 30
                  sll          sp, t5, ra
                  mulh         a0, a1, s11
                  slli         s9, t3, 20
                  add          tp, a3, s4
                  nop
                  sub          gp, t0, a0
                  lui          s5, 365165
                  sll          zero, s4, t5
                  mulhu        s5, t6, s10
                  sltu         t3, s9, sp
                  c.xor        a1, a5
                  c.andi       a2, -1
                  ori          t6, a2, 1953
                  c.mv         t2, s5
                  srl          t1, a0, s10
                  nop
                  c.srli       a5, 26
                  c.lui        t1, 15
                  xor          sp, t0, s4
                  or           gp, ra, tp
                  srli         s3, t2, 20
                  sll          s9, s10, a2
                  add          s3, t6, s9
                  c.mv         ra, s6
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_11
                  li           a5, 0x3575e2ef
                  li           s4, 0x0
                  li           s10, 0x80000000
                  li           ra, 0xffffffff
                  li           s3, 0xffffffff
                  li           s11, 0x80000000
                  li           t6, 0x8a9130c0
                  li           a7, 0x0
                  li           a3, 0x0
                  divu         s10, t6, s9
                  rem          s9, a3, s4
                  auipc        t6, 731024
                  auipc        t6, 478015
                  rem          t6, ra, a5
                  div          s4, s4, s11
                  addi         s3, t6, 1620
                  lui          a3, 369551
                  mulhsu       s4, ra, t6
                  sub          s4, t6, ra
                  mulhsu       a3, s4, a3
                  mulh         s3, s4, s3
                  mulhu        s9, a7, t6
                  rem          s4, s10, ra
                  mul          s10, s10, s11
                  auipc        a7, 716325
                  rem          s10, s4, s11
                  lui          a5, 394836 #end riscv_int_numeric_corner_stream_11
                  c.mv         s5, ra
                  xor          s8, s0, s10
                  sra          t4, t5, s10
                  ori          s9, s2, 1834
                  and          zero, s6, s6
                  xori         tp, tp, -1375
                  c.srai       a0, 28
                  slli         s1, gp, 12
                  c.nop
                  c.li         t1, -1
                  sltiu        t4, a5, -1768
                  sra          a1, a1, a7
                  addi         gp, a7, 77
                  slt          t2, s2, s8
                  slt          s5, a4, a1
                  c.sub        a3, a4
                  div          a5, t0, sp
                  andi         a3, t5, -375
                  mulhu        s8, t1, a0
                  c.addi16sp   sp, -16
                  divu         a4, a2, t2
                  sra          s11, a5, a6
                  or           zero, t5, a1
                  div          s4, a2, s1
                  mulhu        s9, t6, a0
                  srl          s2, t0, s2
                  slti         t2, s5, -747
                  auipc        a4, 861636
                  c.mv         s3, t5
                  c.andi       a5, -1
                  mulhu        t0, t3, a7
                  srl          s9, s8, a2
                  xor          t4, t4, a4
                  c.addi16sp   sp, -16
                  c.srli       s1, 20
                  and          zero, ra, s8
                  sltu         s1, a5, t6
                  rem          gp, a0, s0
                  c.lui        s4, 16
                  c.li         s11, -1
                  and          s0, a0, t2
                  mulh         s4, a6, a4
                  mul          s5, tp, a1
                  sltiu        a2, s10, -870
                  addi         s9, gp, -1573
                  mulhu        s10, a4, zero
                  rem          t5, s3, a1
                  andi         a5, sp, 1563
                  rem          a0, s3, t0
                  sltiu        zero, a3, -1766
                  c.andi       a2, -1
                  sll          s2, a0, a7
                  or           t0, s8, s11
                  sub          a3, s9, t2
                  c.slli       a2, 9
                  slt          s5, s4, a2
                  addi         t5, a4, -1566
                  sll          a7, a1, a0
                  ori          t4, t2, 1051
                  c.mv         s5, t1
                  ori          s4, s11, 680
                  nop
                  remu         a2, a6, t5
                  c.add        s2, t4
                  lui          s9, 232609
                  xori         s0, t4, 191
                  c.mv         t6, a0
                  sltiu        s3, s4, -1856
                  addi         s4, a4, 261
                  add          s1, s11, sp
                  c.or         s1, a5
                  c.addi       s8, -1
                  sll          s10, s4, a1
                  c.andi       a5, 20
                  sltu         t3, zero, a6
                  sra          s10, sp, s10
                  lui          s5, 5951
                  c.mv         s8, s8
                  c.sub        a5, a2
                  c.slli       s9, 8
                  c.nop
                  sub          s10, a4, a6
                  slti         a7, s5, -1444
                  c.or         a1, a5
                  and          s11, t2, s4
                  c.mv         sp, a2
                  c.srai       a2, 29
                  lui          t5, 314174
                  c.addi       s5, 18
                  rem          sp, t3, t5
                  slli         a7, s0, 9
                  mulhu        a7, s5, t2
                  c.addi       s11, -1
                  srl          t1, a7, a0
                  c.addi16sp   sp, 144
                  c.nop
                  c.addi16sp   sp, -16
                  sltu         t3, t0, s6
                  xori         s2, tp, -1229
                  c.and        s1, s0
                  c.srai       a1, 18
                  div          zero, t0, s1
                  nop
                  slli         a2, s3, 27
                  srli         a5, s9, 16
                  mul          a1, a1, t0
                  auipc        gp, 228829
                  remu         ra, s5, gp
                  c.slli       s5, 7
                  mul          s0, s1, a1
                  sll          s3, s1, a7
                  mulhu        t5, a4, a1
                  c.nop
                  sub          t5, s1, s5
                  div          t2, a5, gp
                  c.addi4spn   s1, sp, 416
                  c.slli       s4, 15
                  xor          s8, s10, a1
                  sltiu        t3, s6, 1815
                  c.mv         s11, a5
                  srli         t6, t6, 5
                  c.lui        tp, 15
                  c.srai       a4, 12
                  sub          s10, ra, s10
                  rem          ra, a1, t5
                  mulh         ra, t0, t3
                  remu         a4, s4, t1
                  add          s4, a5, t0
                  sltiu        t3, ra, 1322
                  c.slli       t4, 21
                  mulh         s3, gp, s0
                  div          zero, a7, t1
                  slli         t4, s3, 28
                  sub          t3, s7, s0
                  c.addi4spn   a3, sp, 336
                  mulhsu       a4, t2, tp
                  lui          t4, 816679
                  c.sub        a3, a5
                  slt          zero, a3, a2
                  mul          s8, t3, tp
                  divu         a4, t5, a4
                  ori          gp, a6, 1903
                  mul          s0, tp, s2
                  c.mv         t5, tp
                  remu         gp, s11, s8
                  mulhu        t1, a7, tp
                  auipc        t4, 686299
                  rem          s10, a7, s2
                  lui          a7, 196336
                  mulhsu       s0, s2, s6
                  slt          a0, t4, s0
                  slti         a2, s6, 1135
                  divu         a0, s11, t6
                  c.srai       s0, 4
                  srai         a1, s11, 12
                  c.add        a3, s3
                  srl          s1, s0, t5
                  sltiu        t5, s5, -1055
                  c.xor        s0, s1
                  auipc        t5, 402530
                  or           s11, t5, a4
                  c.andi       a0, 8
                  andi         ra, t0, 1173
                  add          s11, s8, gp
                  ori          a4, a1, 360
                  divu         s11, a3, a0
                  nop
                  c.slli       t4, 11
                  slt          s9, a3, sp
                  or           s1, t0, a7
                  c.sub        a3, a0
                  c.addi4spn   a5, sp, 96
                  mulhsu       s9, a6, a3
                  c.nop
                  c.mv         s5, a7
                  c.andi       a1, -1
                  c.addi16sp   sp, 272
                  c.andi       a5, -1
                  c.slli       a0, 13
                  addi         s2, a5, 598
                  slt          s1, a6, a7
                  nop
                  srai         t0, t0, 15
                  srli         a4, a2, 21
                  mulh         zero, t4, tp
                  c.slli       s9, 25
                  c.srai       s1, 20
                  sub          tp, t4, t3
                  c.slli       s2, 18
                  lui          t4, 989674
                  srl          a7, t2, s6
                  c.srli       a4, 29
                  srli         s11, sp, 25
                  div          s5, a2, t6
                  sltu         t6, s5, t5
                  lui          s5, 813679
                  c.and        a0, a1
                  remu         a1, t4, t4
                  slti         s3, a6, -874
                  auipc        s0, 486017
                  c.mv         s2, t3
                  mul          s11, a7, s5
                  c.srai       s1, 18
                  sub          a7, t6, s0
                  c.addi16sp   sp, 272
                  c.mv         a5, ra
                  srl          s8, a2, a7
                  c.mv         s11, t4
                  and          sp, gp, t1
                  ori          s0, s2, 460
                  addi         s9, t0, -2005
                  nop
                  srl          ra, zero, a4
                  remu         s0, a3, s0
                  add          t6, s8, sp
                  c.srli       a2, 22
                  mul          s1, sp, a4
                  srai         t4, a3, 0
                  c.addi       s2, -1
                  remu         a3, a5, a7
                  c.add        s2, t0
                  lui          s5, 228699
                  div          s3, t6, s9
                  nop
                  srli         tp, t3, 22
                  auipc        s3, 244047
                  mul          a0, s0, t5
                  c.and        a4, a1
                  and          ra, t5, t1
                  c.srai       a5, 21
                  or           s9, a5, t5
                  c.addi16sp   sp, -16
                  c.addi4spn   a3, sp, 896
                  sll          s1, s6, tp
                  c.srai       a2, 17
                  divu         s9, a6, a1
                  or           a7, a0, t6
                  c.nop
                  c.addi       a4, 17
                  c.addi4spn   a1, sp, 128
                  rem          a3, t3, tp
                  srai         t4, s4, 14
                  mulhu        sp, a1, t6
                  c.srai       s0, 19
                  sltu         t1, s1, a0
                  sltiu        s0, a4, 903
                  sltu         a1, s7, gp
                  c.mv         s11, a5
                  c.xor        a5, a5
                  c.li         ra, -1
                  c.add        a2, a6
                  slli         t3, a5, 29
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 256
                  c.xor        a1, a1
                  andi         a5, tp, -783
                  c.addi4spn   a0, sp, 912
                  mulhu        t6, s2, a5
                  slli         a4, t0, 0
                  sll          t3, t1, sp
                  mulhu        s2, s1, s3
                  sub          t2, s9, tp
                  andi         t6, t6, -1109
                  remu         s2, a0, ra
                  ori          t2, s0, 301
                  lui          a7, 100450
                  c.nop
                  auipc        a7, 821506
                  slt          s0, s3, s9
                  c.addi4spn   a2, sp, 672
                  c.sub        s1, a0
                  c.li         s11, 29
                  add          s5, a2, s9
                  c.add        t1, a5
                  c.mv         a0, tp
                  lui          ra, 642356
                  c.add        s3, ra
                  c.xor        s0, s1
                  c.and        a3, s1
                  lui          zero, 698512
                  add          zero, s10, s4
                  xor          t0, a1, tp
                  c.nop
                  srl          t1, s11, ra
                  addi         s2, tp, -1419
                  c.addi       tp, -1
                  lui          s0, 264894
                  addi         ra, s10, -424
                  c.mv         t6, s2
                  slt          s9, t4, t6
                  nop
                  div          a7, sp, t4
                  nop
                  c.xor        a2, a2
                  c.andi       a3, 3
                  c.addi4spn   a4, sp, 608
                  mulhu        a4, zero, s10
                  addi         s2, s0, 1668
                  mulh         t4, t6, s4
                  mulhu        a7, t0, t0
                  c.slli       s0, 8
                  div          a7, sp, a0
                  c.andi       s0, -1
                  xori         t5, t4, -1844
                  mulh         zero, a0, a6
                  add          t1, s7, t5
                  sll          s10, t3, a0
                  c.xor        a1, s1
                  c.xor        a3, s1
                  divu         t0, a1, s2
                  slt          tp, t1, t6
                  c.nop
                  slti         t3, s8, -1124
                  lui          a1, 642700
                  addi         a0, s10, -1838
                  c.addi4spn   a2, sp, 416
                  sll          t3, a1, s0
                  sltiu        t6, s0, -330
                  sll          sp, a5, s2
                  add          s5, s9, sp
                  srai         t1, t5, 14
                  and          s0, s3, t1
                  c.sub        a5, a3
                  c.sub        a1, s1
                  and          a0, a4, a6
                  slti         s8, a4, -660
                  mulhu        t1, a6, a0
                  mulh         s0, t6, a6
                  c.addi       t4, 31
                  c.srli       a3, 12
                  mul          a1, s9, t4
                  c.slli       tp, 22
                  andi         s2, s8, -994
                  sub          a7, gp, a0
                  div          s5, zero, gp
                  c.addi       a5, 16
                  sub          a5, s6, t2
                  mulhu        a4, t0, ra
                  and          t2, a4, s0
                  c.addi16sp   sp, 304
                  c.and        a4, a5
                  srl          s11, s5, sp
                  divu         t1, s4, t4
                  auipc        s8, 196314
                  sltu         t3, a5, a2
                  xori         t4, a4, 589
                  c.addi       s11, 2
                  divu         s9, t3, t6
                  c.nop
                  add          t4, s8, t0
                  c.or         a1, a1
                  srl          s11, s6, a3
                  andi         a3, s8, -1422
                  c.nop
                  sub          s5, gp, s9
                  sub          a4, s7, a1
                  c.and        a4, a1
                  c.mv         t3, t6
                  c.srai       s1, 27
                  slli         t4, s10, 10
                  sll          t1, gp, a5
                  sra          t1, a0, a1
                  mul          zero, t5, gp
                  sub          s4, s5, s10
                  sll          s3, a6, t5
                  c.add        s3, a1
                  divu         a1, a4, s9
                  div          s3, a7, s3
                  sll          zero, sp, s6
                  remu         t6, a0, sp
                  srli         a2, t0, 0
                  ori          s10, t1, -777
                  c.or         a5, a1
                  sub          t4, a3, zero
                  slti         t4, a1, -206
                  c.srli       s0, 6
                  c.add        ra, s10
                  div          s3, t5, zero
                  sub          s9, a1, s2
                  c.sub        a0, a2
                  c.andi       a4, -1
                  c.addi16sp   sp, 496
                  or           s3, s5, a2
                  c.add        sp, a4
                  c.srai       a5, 13
                  c.srli       s0, 10
                  and          gp, s7, s4
                  srl          a7, s10, t5
                  c.slli       s11, 22
                  sub          s11, a5, t4
                  srli         s8, zero, 8
                  c.nop
                  c.or         a0, a3
                  and          s1, s7, s6
                  c.mv         s4, sp
                  slti         zero, s5, 1233
                  xor          s0, t5, a0
                  c.add        s5, s2
                  ori          gp, s10, 734
                  div          s5, a4, tp
                  sll          zero, a6, zero
                  or           t2, a3, t0
                  slti         t1, t0, 1997
                  c.nop
                  remu         ra, s11, s4
                  c.sub        a4, s1
                  auipc        t0, 756097
                  srai         t5, s2, 14
                  slli         s8, s1, 16
                  sltiu        a3, a0, 703
                  c.andi       a4, 30
                  auipc        tp, 191671
                  c.addi4spn   s0, sp, 496
                  c.addi4spn   a4, sp, 736
                  c.andi       s1, -1
                  c.add        t0, s1
                  c.srai       a0, 30
                  c.nop
                  c.sub        a4, s1
                  c.add        a5, a1
                  slt          s1, a0, a1
                  nop
                  sub          a4, sp, tp
                  c.xor        a0, a1
                  xori         sp, s2, -1375
                  auipc        a1, 459751
                  sll          s1, s1, ra
                  xor          t3, s5, t2
                  c.add        s9, s9
                  sltu         ra, t6, t1
                  sltiu        s2, t0, -719
                  mulhu        s0, a7, t4
                  sra          t6, s8, t6
                  remu         s10, t3, zero
                  andi         a7, s11, -828
                  c.andi       s0, -1
                  c.srai       s0, 19
                  xor          s4, t1, s2
                  c.li         t0, 12
                  ori          s9, zero, 1876
                  slli         t4, t2, 8
                  c.srai       a2, 4
                  slt          t5, s9, a3
                  slti         s4, s7, 1019
                  and          t3, tp, a0
                  mulhu        s4, a0, s3
                  or           t3, t4, t0
                  c.addi16sp   sp, -16
                  srai         t3, s2, 10
                  c.lui        s0, 31
                  sub          s2, t2, t4
                  c.addi16sp   sp, 208
                  auipc        tp, 280421
                  c.srai       a2, 12
                  c.addi4spn   a0, sp, 208
                  c.slli       s2, 12
                  nop
                  c.nop
                  slt          t1, s1, a0
                  sltu         a2, zero, s1
                  c.nop
                  sltu         s2, zero, s8
                  c.addi       a0, 31
                  c.or         a0, a0
                  remu         zero, t4, zero
                  c.addi       s5, -1
                  c.xor        s0, a4
                  c.addi       s2, -1
                  slti         s11, a7, 189
                  c.li         a4, 1
                  mul          t6, s3, s2
                  add          s0, t6, a1
                  c.addi16sp   sp, -16
                  mulhsu       s4, zero, a1
                  sll          a1, a6, a5
                  c.and        a2, a2
                  srai         zero, s2, 4
                  sra          a5, t3, a3
                  add          s9, t4, s8
                  c.li         s8, 23
                  c.addi       a3, 23
                  srl          s5, t2, s9
                  mulhsu       a4, s9, a7
                  rem          zero, t5, t5
                  c.mv         s9, t1
                  divu         t6, t3, s0
                  c.addi4spn   a2, sp, 560
                  c.addi16sp   sp, 208
                  add          t3, s6, t4
                  c.or         s0, a0
                  addi         t2, t0, -460
                  auipc        zero, 387461
                  slt          zero, a4, a3
                  c.mv         a0, t6
                  xori         t2, a6, 1113
                  c.srai       a5, 14
                  and          t5, s10, gp
                  or           a7, s7, s2
                  c.addi16sp   sp, 448
                  srl          s5, a4, t5
                  c.addi       a4, 3
                  c.and        a5, s0
                  mul          ra, t3, s9
                  slti         t3, a1, 1946
                  c.li         sp, 7
                  c.slli       t6, 5
                  srl          t6, a5, a1
                  xor          s0, s10, a2
                  xori         t1, a7, -1053
                  c.slli       tp, 14
                  c.mv         t1, a3
                  remu         s8, s5, t5
                  xori         s9, a6, 780
                  c.srai       a4, 19
                  c.addi       a0, 21
                  c.or         a1, a4
                  c.addi       tp, -1
                  slti         tp, t4, 2022
                  rem          s2, s11, tp
                  auipc        s2, 226302
                  c.srai       a3, 9
                  c.and        a5, s1
                  mulh         a0, s0, s7
                  c.sub        a0, a1
                  c.andi       s1, -1
                  remu         ra, t3, a0
                  c.li         s4, 18
                  add          s8, t5, a1
                  auipc        a1, 841541
                  sltu         t2, t5, s10
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_19
                  li           s4, 0xffffffff
                  li           s8, 0x3a9fb84e
                  li           t2, 0x0
                  li           t5, 0xffffffff
                  li           a5, 0x3edfcbe7
                  li           s5, 0x80000000
                  li           gp, 0x0
                  li           a1, 0xffffffff
                  li           t0, 0xffffffff
                  lui          s5, 959638
                  mulhsu       t0, gp, gp
                  mulhu        t2, a1, t2
                  nop
                  mulhu        s4, gp, t2
                  remu         s8, t5, t5
                  mulhu        t5, t2, t5
                  divu         a1, s8, a5
                  sub          a1, a3, t5
                  sub          s8, s5, s5
                  lui          a5, 129887
                  sub          s8, a1, s8
                  add          t2, t5, t5
                  add          t5, a1, s5
                  add          s5, a1, s5
                  lui          t0, 728076
                  sub          a5, gp, s4
                  divu         gp, t2, s4
                  lui          t2, 569066
                  nop
                  auipc        gp, 44685
                  div          gp, gp, s8
                  mulhu        a5, t5, t5
                  add          s4, s4, a1
                  div          s4, t5, s8
                  lui          gp, 543842
                  add          t5, a5, s5
                  lui          s5, 290733
                  mul          a3, s5, t0
                  mulhu        s4, a1, s4 #end riscv_int_numeric_corner_stream_19
                  sub          s2, sp, zero
                  c.xor        a5, a0
                  mulhu        ra, s7, sp
                  and          a3, a1, a3
                  c.lui        a5, 9
                  addi         s3, a1, -404
                  c.nop
                  c.sub        a2, a3
                  remu         s3, s7, s9
                  c.nop
                  mulh         t6, s0, s0
                  xori         s10, a1, 322
                  sra          s2, s6, t4
                  srai         t0, a0, 3
                  c.srai       a5, 11
                  ori          a4, tp, -1682
                  mulhu        t3, s6, gp
                  mulhu        s0, s9, a7
                  c.xor        a2, a1
                  mulhu        a1, t1, tp
                  c.andi       a5, -1
                  remu         t1, zero, gp
                  rem          tp, gp, s8
                  c.srai       a2, 28
                  sub          t4, s2, sp
                  or           s8, s9, tp
                  ori          ra, s0, 1161
                  xori         s8, a3, -320
                  c.xor        s1, a2
                  slt          a0, t4, a3
                  lui          s11, 281651
                  xori         ra, a1, 1723
                  remu         s5, t4, s3
                  srl          a3, t6, ra
                  c.lui        s8, 24
                  div          s11, a4, s4
                  divu         s9, a5, sp
                  slt          t5, a4, a4
                  c.nop
                  sltu         s2, s0, s9
                  nop
                  addi         t1, a5, 838
                  c.or         a3, s1
                  mulhu        s5, tp, a2
                  c.mv         s9, a2
                  c.lui        a2, 4
                  c.xor        a2, s0
                  c.addi       sp, 9
                  andi         s0, a7, -1404
                  c.li         s2, -1
                  nop
                  and          s10, s5, a3
                  mul          s0, s5, s2
                  sltu         s8, s10, s1
                  c.addi       s11, 28
                  divu         s10, gp, t0
                  c.lui        t2, 13
                  c.andi       a4, 1
                  mul          a2, t0, t2
                  sll          a5, a4, t6
                  add          t2, tp, s3
                  andi         sp, sp, 929
                  c.nop
                  mulh         sp, gp, s1
                  c.sub        a0, s1
                  sra          t3, s2, t2
                  c.xor        a1, a5
                  sltu         gp, gp, a5
                  c.addi16sp   sp, -16
                  sll          s3, s11, t3
                  c.srli       a5, 12
                  srai         a2, t0, 24
                  sra          t5, t5, t6
                  c.li         s4, -1
                  auipc        s9, 794461
                  c.sub        a3, a5
                  slli         t5, ra, 25
                  addi         s11, s0, 23
                  lui          s2, 798393
                  c.slli       t2, 10
                  nop
                  c.xor        a1, a1
                  addi         s8, ra, -153
                  lui          t6, 924434
                  slli         s11, t1, 13
                  c.lui        t4, 19
                  xori         ra, t4, -1818
                  c.or         a0, a3
                  mulhu        sp, t2, s11
                  mulh         t2, t0, s9
                  divu         a1, tp, a0
                  slt          tp, a6, a7
                  auipc        s4, 917845
                  and          t3, ra, zero
                  srli         t1, t1, 2
                  auipc        t5, 679872
                  sub          s8, s11, s1
                  lui          s10, 73698
                  c.add        a4, gp
                  c.xor        s1, s0
                  c.or         a0, a2
                  or           a1, gp, t5
                  c.li         t5, 1
                  c.andi       a2, -1
                  srli         s2, s1, 8
                  c.srai       a4, 10
                  c.addi16sp   sp, 176
                  sub          ra, s0, s7
                  and          gp, a2, ra
                  c.andi       a1, 17
                  sltu         s10, a2, s4
                  c.srai       a1, 30
                  slti         s4, ra, 1134
                  c.xor        s0, a1
                  c.mv         t6, s6
                  andi         t3, t1, 1677
                  auipc        a1, 407171
                  mulhu        s10, a5, a5
                  lui          s3, 610918
                  slt          sp, s0, t6
                  sub          s5, s2, a2
                  divu         t5, t4, zero
                  srai         t6, t4, 13
                  mulhu        s11, s10, tp
                  sltiu        t2, t0, -448
                  c.srai       s1, 22
                  srai         a3, t2, 0
                  remu         s4, a0, s11
                  srli         a3, a1, 25
                  c.lui        a7, 3
                  srai         tp, gp, 2
                  remu         a4, s11, s1
                  c.lui        a0, 18
                  c.addi16sp   sp, -16
                  mulhu        t6, a2, s1
                  or           s9, s3, tp
                  c.nop
                  c.srai       s1, 27
                  auipc        zero, 117816
                  slt          t2, t6, a1
                  div          t3, t5, s7
                  sltiu        s10, t0, -1227
                  rem          sp, s0, s10
                  and          tp, zero, s5
                  div          a4, s9, s0
                  srai         a4, a1, 2
                  lui          s8, 458420
                  ori          s4, s5, 1187
                  c.addi16sp   sp, -16
                  xori         a2, s5, -364
                  lui          a5, 746394
                  c.addi16sp   sp, 256
                  remu         gp, t0, a6
                  c.sub        s0, a1
                  mulh         s1, a2, a6
                  slt          t5, a0, t1
                  div          t0, a5, t1
                  divu         t2, a5, t3
                  c.and        a1, s0
                  c.srai       a3, 26
                  c.addi4spn   a5, sp, 288
                  c.addi       s5, 26
                  c.andi       s1, 21
                  rem          a7, gp, gp
                  sub          s8, a0, zero
                  c.srli       a5, 17
                  srli         s0, a4, 24
                  xori         sp, gp, 685
                  mul          s4, t6, s5
                  sra          s0, t0, s10
                  xori         s0, ra, 652
                  and          t2, s4, t4
                  sltu         a2, a2, ra
                  c.or         a2, a4
                  nop
                  nop
                  xor          s1, s9, s10
                  c.and        a2, a1
                  add          sp, t1, s7
                  rem          t0, t3, a2
                  srli         t2, tp, 22
                  srl          t1, s6, s0
                  xor          tp, s6, s1
                  slti         s10, t2, 1098
                  ori          t2, s1, -1643
                  slti         s3, t5, 1125
                  c.mv         a7, s3
                  c.or         a2, a1
                  c.addi       a3, 30
                  c.srli       a0, 2
                  lui          a1, 308162
                  srl          s1, t3, t6
                  mulhu        t6, s2, t4
                  addi         t6, s8, 1960
                  div          t5, t4, s9
                  rem          s0, s10, zero
                  xor          s3, s5, a0
                  mulhu        s0, t4, a3
                  andi         s2, t6, -1630
                  xori         gp, s8, 2037
                  xori         zero, s4, 196
                  srli         a3, s2, 23
                  c.add        a2, t6
                  c.sub        a3, a3
                  remu         s3, t3, s6
                  xori         s4, t6, 242
                  c.lui        t5, 21
                  xori         t4, a3, -1769
                  c.xor        s0, a0
                  c.or         a2, s1
                  c.or         a5, a5
                  c.addi4spn   a1, sp, 896
                  or           s11, tp, s5
                  mulh         t2, ra, zero
                  c.and        s1, a4
                  c.addi16sp   sp, -16
                  sub          s10, a6, sp
                  c.and        a2, s0
                  divu         s9, sp, s5
                  sltu         zero, ra, sp
                  c.andi       s1, 10
                  mulhu        t5, zero, t0
                  srai         s11, s2, 18
                  slli         a0, s10, 18
                  div          a2, a3, s10
                  slt          s9, t1, t5
                  sltiu        a7, s5, -1671
                  add          tp, a1, s8
                  c.srai       s0, 30
                  c.addi4spn   a3, sp, 688
                  xor          s5, t4, s1
                  mul          zero, s11, t6
                  sra          s9, a2, s10
                  div          s1, a1, s3
                  sltiu        t6, s1, 382
                  ori          t4, s11, 476
                  c.nop
                  c.slli       a0, 20
                  and          a1, s10, a6
                  c.and        a2, a2
                  andi         s11, a1, 314
                  divu         sp, a1, s5
                  ori          a0, zero, -1009
                  mulhu        s3, a2, t0
                  mulhu        t6, sp, a0
                  remu         t6, s8, zero
                  c.li         t2, 18
                  rem          s3, s2, s9
                  sltu         s0, a2, s1
                  c.addi16sp   sp, 448
                  div          sp, a6, s3
                  xori         a4, s1, -987
                  or           zero, s4, a3
                  srl          zero, t0, a0
                  c.xor        s1, a4
                  c.addi       t4, -1
                  mulhsu       t5, gp, s7
                  c.andi       s0, 16
                  c.slli       a2, 7
                  or           tp, s4, t6
                  c.and        a1, s0
                  c.xor        a4, a1
                  lui          ra, 1013672
                  divu         t0, a0, s9
                  div          sp, s10, sp
                  nop
                  c.li         t4, -1
                  c.srai       a5, 15
                  c.srli       a0, 8
                  c.xor        s1, s1
                  c.and        a1, a3
                  c.nop
                  divu         s1, a0, t3
                  srli         a1, t6, 11
                  c.slli       a7, 14
                  c.or         a2, a2
                  c.add        t4, s7
                  and          s2, t0, t0
                  c.addi       s10, 8
                  slti         s3, t6, 1803
                  lui          s10, 334726
                  div          tp, s11, t3
                  divu         t1, s6, s4
                  sll          a2, t0, a0
                  c.addi16sp   sp, 400
                  c.or         a0, a3
                  c.addi       t1, 30
                  sll          s1, s11, a3
                  srl          s0, t6, s6
                  srl          s3, a6, a2
                  c.addi16sp   sp, -16
                  srli         s8, t1, 6
                  xori         gp, s5, -527
                  srl          s8, a6, s3
                  sra          s1, a4, s9
                  addi         a0, t3, 233
                  slli         gp, t6, 31
                  c.slli       s9, 28
                  xori         zero, a5, -1644
                  remu         ra, a4, a3
                  auipc        s1, 15971
                  slt          s10, a2, s11
                  lui          a5, 86478
                  c.add        t4, a0
                  srl          s2, a5, t4
                  sll          a4, t5, a5
                  sub          t0, s3, ra
                  andi         a2, s5, 236
                  ori          t4, s9, 191
                  xor          t5, s4, t3
                  c.lui        s4, 29
                  c.addi16sp   sp, -16
                  c.or         a1, s1
                  mulhu        s11, s7, tp
                  c.addi       a4, 11
                  xor          t3, gp, t2
                  c.slli       t0, 12
                  sra          s2, s10, s5
                  mulhsu       tp, s7, gp
                  slt          t5, s10, s11
                  div          t5, s1, a2
                  c.xor        s0, s0
                  sub          s11, a4, gp
                  sra          s8, s9, a3
                  c.lui        s2, 26
                  srai         s2, sp, 17
                  c.addi4spn   a3, sp, 992
                  mul          s2, s0, tp
                  c.andi       a1, -1
                  slli         s2, a4, 27
                  andi         a4, s0, -386
                  sltiu        zero, t4, 242
                  sll          s2, s5, zero
                  rem          ra, a2, s3
                  c.addi4spn   a1, sp, 384
                  mul          s1, a1, s1
                  or           t0, ra, s2
                  sltiu        s0, t6, 729
                  andi         s4, t2, 1747
                  sltiu        s0, zero, 1293
                  slt          s9, a1, gp
                  sra          a1, s1, a7
                  remu         s9, a0, tp
                  divu         tp, gp, s2
                  divu         s11, s7, sp
                  slli         s8, t3, 29
                  c.or         a3, a5
                  srai         s3, ra, 3
                  rem          s9, t1, s10
                  slti         s2, gp, 1522
                  c.srai       a4, 16
                  mulh         s8, a6, a3
                  add          t1, a0, sp
                  add          ra, a7, s8
                  sll          a0, gp, s6
                  addi         gp, a1, -1747
                  c.xor        a2, a0
                  c.xor        s1, a0
                  addi         s1, a6, -504
                  c.add        tp, s1
                  mulhsu       t0, a0, zero
                  auipc        gp, 274671
                  lui          s11, 938231
                  mulh         s3, a6, s8
                  c.mv         s5, s7
                  sra          t2, s5, s10
                  slli         tp, a1, 7
                  sll          a0, a1, t2
                  xor          t1, s10, t4
                  srai         tp, s4, 0
                  slt          t1, gp, s5
                  remu         t2, s2, t4
                  c.srli       s1, 11
                  and          s9, t0, t2
                  xor          s2, a0, s10
                  c.and        s1, a0
                  sltiu        s0, t1, 1427
                  c.slli       tp, 18
                  c.xor        a0, s0
                  xor          gp, s1, gp
                  sltu         a5, t3, a7
                  c.srli       s1, 11
                  slt          s10, t2, s2
                  nop
                  c.sub        s0, a5
                  c.addi4spn   s1, sp, 736
                  divu         ra, s9, s7
                  and          s11, s5, a6
                  c.srli       a4, 4
                  c.xor        a3, a3
                  c.slli       s2, 7
                  c.addi       ra, 4
                  xori         t3, s5, -1273
                  and          gp, tp, t3
                  or           gp, a2, gp
                  sra          t3, a7, s6
                  c.add        t2, ra
                  mulh         s8, s3, s4
                  add          s0, t0, s11
                  srli         t2, s11, 5
                  auipc        s8, 825787
                  xor          a2, t5, t6
                  sltu         t4, s8, s9
                  c.addi4spn   a0, sp, 272
                  auipc        a0, 485071
                  sll          t5, sp, gp
                  sltu         ra, s11, t0
                  c.nop
                  sltiu        t0, s10, 1812
                  mulh         a5, t2, a2
                  sltu         s2, t2, s5
                  div          a0, a0, s7
                  c.srli       a0, 30
                  sub          s5, a3, a6
                  divu         s3, s11, s10
                  c.add        gp, s9
                  remu         t2, s8, t0
                  c.mv         t1, t6
                  c.addi       s10, -1
                  lui          a5, 437095
                  mul          t3, tp, s10
                  c.addi16sp   sp, -16
                  srli         s11, s11, 18
                  c.lui        a7, 17
                  mulh         s3, a6, s5
                  c.srli       a3, 27
                  mulhsu       tp, t6, zero
                  add          s1, t3, t3
                  ori          a2, zero, 210
                  mulhsu       s1, s0, a6
                  mulhu        s8, a0, t3
                  mul          a3, a7, s3
                  remu         t1, s8, t4
                  divu         a4, s11, s9
                  c.li         a7, -1
                  add          s4, s11, s5
                  c.addi       s2, -1
                  sub          a4, t2, sp
                  c.lui        a7, 6
                  c.or         a1, a3
                  c.addi       t2, -1
                  divu         t4, sp, t2
                  sltu         t5, s9, s8
                  srl          t4, s8, a1
                  c.srli       s0, 18
                  ori          a7, a0, 1748
                  c.addi       s5, 7
                  lui          s4, 238629
                  sltiu        t5, gp, 662
                  and          t3, t3, s9
                  c.srli       a5, 4
                  slli         t2, s1, 13
                  c.mv         t1, tp
                  c.andi       a4, 6
                  rem          s5, s6, a7
                  c.or         s0, a1
                  c.addi4spn   a2, sp, 752
                  c.srai       s0, 27
                  sltu         a5, s3, a5
                  remu         t3, s8, s4
                  c.srli       s1, 12
                  sll          s8, tp, t5
                  or           a2, s6, t6
                  c.xor        a5, s0
                  c.xor        a4, a0
                  divu         a7, t6, t6
                  srai         t3, s11, 11
                  sra          a2, s4, s11
                  c.nop
                  c.slli       tp, 31
                  sltu         a1, t1, a3
                  slt          s2, t5, t6
                  mulhsu       t6, s1, s1
                  c.andi       s0, 5
                  andi         s3, t4, 967
                  c.addi4spn   a1, sp, 32
                  slt          t4, tp, s11
                  remu         sp, t0, a0
                  c.nop
                  c.addi4spn   a4, sp, 112
                  srai         s8, s1, 11
                  sll          a4, a0, a4
                  xor          a5, a4, s6
                  c.and        s1, a2
                  c.addi16sp   sp, 32
                  c.add        s0, s2
                  srl          tp, a5, tp
                  or           t3, s7, a4
                  c.andi       a5, 20
                  addi         a5, t1, -1024
                  c.xor        a3, a4
                  slli         s2, s2, 12
                  srai         a2, a0, 18
                  c.srli       a3, 26
                  mulhsu       s10, s8, t1
                  mulhu        a3, t5, s11
                  ori          t5, a6, 1368
                  sll          tp, s10, s11
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 496
                  c.mv         sp, s7
                  div          t6, a3, a5
                  ori          t0, s0, 1517
                  c.nop
                  div          s11, t0, t4
                  nop
                  sltiu        a3, t6, 497
                  div          t2, t6, a5
                  nop
                  ori          sp, a4, 991
                  sll          t6, s8, s11
                  slli         a7, s6, 4
                  remu         s10, a0, s2
                  c.addi16sp   sp, -16
                  c.mv         a5, a4
                  slti         s4, t5, 245
                  mulh         s4, s10, a3
                  mulhsu       s4, s10, s7
                  srai         a7, gp, 4
                  c.addi       a0, 1
                  sub          gp, s11, s3
                  mulhsu       sp, zero, gp
                  c.nop
                  mulhsu       s3, a6, s3
                  slt          s8, t2, zero
                  div          s8, ra, s6
                  c.mv         s1, a6
                  c.addi4spn   a1, sp, 320
                  c.add        t5, s7
                  c.andi       s0, -1
                  c.srai       a5, 15
                  mulhsu       t6, t0, t5
                  xor          a4, s3, s4
                  c.srai       a1, 16
                  mul          s5, t4, s1
                  lui          s11, 38569
                  c.lui        s4, 29
                  c.and        a4, a3
                  mul          s1, s3, s9
                  srai         s11, gp, 2
                  ori          a0, t2, 245
                  slti         t5, a1, -592
                  c.slli       t1, 24
                  sltu         t3, t1, zero
                  c.srli       a0, 21
                  mulhsu       s5, t1, s8
                  srl          t6, s6, s4
                  or           a0, s4, ra
                  mulhsu       t2, s7, s8
                  and          t1, s10, a1
                  andi         s4, a1, -705
                  mulhu        a0, t1, a3
                  c.mv         s9, a2
                  sra          t6, s3, zero
                  srli         zero, a2, 4
                  c.or         a5, a5
                  c.add        s2, gp
                  c.add        a7, sp
                  srli         a3, s6, 12
                  xori         gp, sp, -608
                  remu         s10, s9, s0
                  sub          gp, a4, sp
                  c.lui        a4, 3
                  c.sub        s0, a0
                  sltu         a2, t3, s10
                  mul          s3, s4, zero
                  mul          s8, t5, s6
                  auipc        t2, 728706
                  c.slli       s4, 22
                  slti         s0, s5, -1009
                  auipc        s8, 555444
                  add          t1, s5, zero
                  sltu         t1, s0, t1
                  slt          s8, a6, s10
                  srai         t5, s5, 20
                  auipc        t0, 528050
                  srai         s4, gp, 3
                  xori         a2, s3, -1887
                  sub          t0, a3, a5
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 704
                  xori         t0, t5, -1989
                  mulh         s5, zero, sp
                  andi         ra, t2, 603
                  c.srai       a0, 21
                  or           s10, a3, s5
                  sll          s5, s0, a5
                  sll          tp, s4, s5
                  sll          a4, tp, t1
                  addi         zero, sp, -1089
                  li           t2, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t4, 0x0
                  li           s11, 0x31ca2a0a
                  li           a5, 0x80000000
                  li           s0, 0x3ad7ce58
                  li           gp, 0x0
                  li           a2, 0xffffffff
                  li           t6, 0x0
                  li           s8, 0x80000000
                  li           t1, 0xffffffff
                  mul          s8, t6, s11
                  mulhsu       t1, t1, s0
                  divu         s11, a5, t6
                  remu         s8, s11, gp
                  sub          s11, s8, t1
                  lui          a5, 644123
                  mulh         s0, t6, gp
                  add          t4, a2, s8
                  mulhsu       s0, t6, t4
                  remu         t4, a5, s11
                  mulhu        t4, t4, s0
                  auipc        s0, 2040
                  mulhu        s0, s8, s8
                  mulhu        a2, s0, s8
                  mulh         t6, a2, t6
                  nop
                  lui          t4, 483228
                  addi         a2, gp, 1916
                  mulhsu       s8, t2, a5
                  mulh         s0, s11, s0
                  addi         t4, s8, -873
                  mulhu        t1, t6, t2
                  nop
                  mulh         a5, t4, t4 #end riscv_int_numeric_corner_stream_16
                  slt          t1, ra, s0
                  and          a2, a7, a7
                  c.andi       s1, 7
                  sltu         t6, t1, t6
                  c.add        a5, s7
                  sll          a2, sp, gp
                  c.xor        a4, a4
                  sltu         a3, zero, a7
                  c.sub        s1, s0
                  c.addi16sp   sp, 32
                  c.addi       t2, 5
                  sltiu        s0, s6, 1022
                  ori          zero, a6, 1997
                  addi         zero, t6, 647
                  sll          s4, s8, s1
                  slt          s1, a5, s8
                  c.nop
                  srai         zero, t1, 29
                  addi         gp, s3, 460
                  xori         s11, t3, 692
                  li           gp, 0xc257688c #start riscv_int_numeric_corner_stream_33
                  li           a0, 0x80000000
                  li           t0, 0xc052ac32
                  li           s3, 0x5be753c7
                  li           a4, 0x0
                  li           tp, 0x80000000
                  li           t4, 0x0
                  li           t6, 0x2cb5fa8
                  li           s1, 0x80000000
                  li           ra, 0xffffffff
                  mul          t6, a4, a4
                  mulhsu       tp, a0, tp
                  addi         s1, tp, -1397
                  addi         s3, s3, -988
                  add          a0, tp, ra
                  remu         t0, s3, s1
                  auipc        a0, 303836
                  remu         a0, tp, s1
                  sub          s3, a0, a0
                  addi         s3, tp, -1104
                  rem          s3, tp, a0
                  auipc        ra, 507968
                  nop
                  rem          s1, a0, gp
                  lui          a0, 946850
                  remu         t0, t0, t4
                  lui          t4, 838880
                  remu         a0, s1, tp
                  remu         t6, t6, gp
                  mulhsu       s1, s1, gp
                  lui          tp, 1026594
                  mulhu        s3, a0, a0
                  sub          tp, a4, a0
                  mul          tp, tp, t4 #end riscv_int_numeric_corner_stream_33
                  nop
                  sltiu        s1, t5, 1197
                  xori         s9, s1, 141
                  mul          s4, s11, a5
                  xori         zero, s9, -1059
                  divu         t3, s5, a5
                  c.srai       a3, 7
                  mul          t3, t0, a5
                  c.li         s4, 1
                  sub          t4, a1, a3
                  and          s9, t4, gp
                  andi         a4, a6, 258
                  c.mv         s1, a5
                  mulhu        a4, t1, s1
                  slt          gp, zero, tp
                  ori          t2, t6, -465
                  add          s8, t0, tp
                  c.andi       a3, 20
                  addi         t5, s4, 892
                  sra          a3, a4, s1
                  div          a1, a0, t5
                  c.nop
                  remu         zero, t5, s6
                  ori          s3, t1, 1506
                  c.lui        s4, 21
                  sltiu        s10, a7, -483
                  c.add        sp, t3
                  divu         s5, t1, s2
                  srli         s0, a1, 20
                  xor          t2, t2, tp
                  ori          s1, t4, 1905
                  addi         s3, s1, -222
                  mulhsu       a0, t4, s3
                  c.and        s1, a0
                  c.srai       a3, 28
                  c.and        a3, s0
                  slt          s2, s1, s8
                  slti         t6, s10, 951
                  divu         s10, s11, s0
                  xor          a2, a0, a6
                  andi         s0, gp, -1178
                  c.add        a4, a0
                  auipc        t6, 272834
                  c.srli       s1, 31
                  c.slli       t5, 24
                  sll          s3, t5, s10
                  c.srli       a5, 3
                  slti         a5, s4, -1892
                  rem          ra, a0, s0
                  sub          t1, s7, s6
                  auipc        t2, 265622
                  c.sub        a5, s0
                  mulh         s3, a6, a5
                  remu         gp, a7, sp
                  nop
                  c.srli       s0, 25
                  c.slli       a7, 30
                  c.srai       s1, 25
                  auipc        s5, 174971
                  mul          s1, s4, tp
                  c.andi       s1, -1
                  or           a2, a7, sp
                  remu         a4, t1, a7
                  c.andi       a5, -1
                  or           s4, tp, a2
                  ori          a1, ra, -667
                  mul          a1, t0, a4
                  c.addi       s4, -1
                  c.add        s3, t0
                  sra          s0, a0, s4
                  mulh         s2, s11, s5
                  mulhu        s2, a0, gp
                  c.addi16sp   sp, 80
                  sll          a4, a4, ra
                  mulh         t1, s5, t0
                  c.xor        s0, s0
                  remu         a5, a5, zero
                  c.addi4spn   a2, sp, 928
                  c.addi16sp   sp, 496
                  c.add        s11, t4
                  mul          t2, ra, a5
                  sra          a0, a3, s2
                  srl          s4, zero, a4
                  mulh         gp, s11, s8
                  mulhu        a7, a2, t4
                  div          a4, s1, s1
                  and          a7, s6, s1
                  sub          t6, t0, a1
                  rem          s0, s11, s10
                  divu         s5, s4, a2
                  slt          t2, t3, zero
                  srli         s4, s2, 3
                  xori         t0, s7, 1896
                  c.li         a0, -1
                  remu         t3, zero, t1
                  c.add        t6, s3
                  srli         sp, s0, 5
                  slli         s4, s4, 28
                  c.or         a4, a3
                  add          s2, t0, t5
                  ori          t2, t3, 847
                  c.addi       ra, 7
                  c.mv         t1, s11
                  c.mv         t1, t2
                  c.addi16sp   sp, -16
                  sub          t3, s4, t3
                  sltu         ra, gp, s2
                  xori         a2, s8, -1102
                  mulhsu       s3, t1, s3
                  div          a0, t3, s7
                  remu         t2, s1, s7
                  andi         t3, s0, 1284
                  c.srli       a3, 23
                  add          t6, a3, t5
                  div          sp, sp, t1
                  srai         s10, a6, 15
                  c.xor        s1, a1
                  c.addi16sp   sp, -16
                  sub          a7, s4, t4
                  divu         a5, s9, a7
                  srli         gp, s6, 13
                  c.srai       a3, 11
                  andi         s1, s1, -2022
                  nop
                  sra          a7, a3, a1
                  c.addi4spn   a3, sp, 688
                  ori          t4, s8, 81
                  c.lui        s3, 21
                  c.addi16sp   sp, 80
                  c.sub        a1, a5
                  andi         t5, s9, 1122
                  srai         s3, a4, 25
                  mulhsu       s0, a0, a7
                  addi         t1, s8, -822
                  c.lui        a5, 17
                  srai         a4, a5, 4
                  c.andi       s1, 5
                  xor          t6, a2, t1
                  c.nop
                  sltiu        t1, t0, -1848
                  c.addi4spn   a1, sp, 704
                  c.addi       t6, -1
                  srl          s3, s11, s11
                  c.sub        a1, a4
                  lui          ra, 274069
                  sll          s10, s10, s0
                  sltiu        s8, t4, 419
                  mulhsu       t0, tp, s11
                  divu         t6, a1, a0
                  remu         a1, tp, s2
                  remu         s11, t4, t5
                  srli         a3, s9, 22
                  srai         gp, ra, 24
                  remu         s0, t6, zero
                  addi         a7, s10, -1151
                  mulhu        a0, a7, t5
                  divu         t4, s11, a4
                  lui          t2, 8268
                  srl          s0, s7, s2
                  c.srai       a3, 29
                  c.srli       s0, 6
                  xori         a2, a4, -1262
                  srai         s9, a5, 10
                  or           a5, t1, a5
                  addi         t0, a3, 1623
                  c.or         a3, s0
                  sltiu        zero, a0, 1585
                  div          t1, t0, s11
                  c.srli       s0, 29
                  c.or         a0, a5
                  c.nop
                  add          sp, t0, t6
                  mulhu        a7, s0, a5
                  c.add        s10, t2
                  c.lui        t6, 12
                  mulhu        zero, s5, t6
                  slli         s8, s2, 19
                  srai         a4, t2, 18
                  ori          s10, t3, -273
                  sltiu        s8, a5, -1654
                  lui          s4, 1019839
                  sub          s0, t4, s2
                  c.mv         gp, t5
                  c.mv         ra, s0
                  nop
                  mulh         t0, a3, a2
                  c.andi       s1, -1
                  sltiu        ra, zero, 418
                  c.andi       a5, -1
                  lui          t1, 857959
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  div          zero, a0, t5
                  xor          t5, a1, s4
                  c.slli       t0, 3
                  sub          s4, t5, t2
                  mul          a5, s4, a1
                  c.addi4spn   a3, sp, 352
                  sltiu        sp, a6, -1315
                  c.nop
                  and          t1, a6, s10
                  xori         gp, s4, -2009
                  slli         a5, a4, 30
                  xor          a3, sp, s7
                  divu         zero, a4, gp
                  c.nop
                  sra          a0, t2, s0
                  c.or         s0, a5
                  srl          s2, tp, a4
                  sra          a2, s2, s9
                  slt          ra, t4, t6
                  addi         s4, s6, 282
                  c.addi       t4, 14
                  c.nop
                  c.addi4spn   a1, sp, 800
                  srai         s4, a0, 7
                  auipc        s10, 545954
                  c.li         t2, 0
                  c.add        t1, gp
                  slli         t4, a0, 8
                  mulhu        gp, sp, a5
                  c.srli       s1, 26
                  srai         gp, ra, 2
                  xori         t5, a4, -1063
                  mul          t5, s10, t0
                  c.addi16sp   sp, 16
                  andi         s0, s1, 227
                  addi         a4, s7, 1791
                  sltiu        s4, zero, -442
                  c.and        a2, s1
                  sub          t4, a2, s11
                  sltiu        a7, s1, 776
                  and          a0, s7, t5
                  sra          s2, s8, tp
                  mulhsu       s1, s8, s7
                  slt          zero, t3, t1
                  c.andi       a5, -1
                  divu         t0, s10, a7
                  c.andi       a3, -1
                  c.addi       s1, 6
                  c.srai       a0, 5
                  div          t2, s1, t0
                  c.srai       a3, 31
                  andi         s9, s0, 1827
                  lui          a7, 667030
                  c.xor        a0, a3
                  add          t0, tp, s0
                  lui          a4, 425291
                  and          t0, s0, a1
                  c.sub        a2, a0
                  c.addi       s3, 10
                  srai         t6, a6, 24
                  srli         t2, s0, 12
                  c.nop
                  div          zero, sp, s6
                  srl          a7, gp, a6
                  c.andi       a3, 26
                  c.slli       t6, 27
                  c.lui        t1, 9
                  mulh         s3, s2, t3
                  or           t4, zero, a2
                  add          tp, gp, s7
                  auipc        s8, 287925
                  rem          s9, t6, s1
                  ori          s2, s9, -1965
                  c.or         a3, a2
                  addi         t6, t6, -834
                  or           t0, s5, t2
                  ori          s8, t5, -651
                  c.and        a0, a0
                  slti         s4, t5, -1635
                  rem          t5, tp, t3
                  slt          t5, a0, a3
                  mulhu        s3, sp, a7
                  srli         t6, a1, 17
                  and          s8, a5, a2
                  nop
                  c.addi16sp   sp, -16
                  c.mv         tp, tp
                  lui          a5, 893275
                  c.add        gp, s5
                  c.and        a3, a2
                  sll          s1, s8, s10
                  sltu         zero, a0, s5
                  c.addi4spn   a2, sp, 560
                  c.addi       s0, -1
                  c.li         s0, -1
                  slli         s5, a2, 4
                  slli         s1, sp, 6
                  slt          t5, a5, s5
                  and          t1, gp, s1
                  c.srli       a1, 7
                  c.and        a1, a3
                  mulhu        t0, s0, s3
                  div          a5, zero, t3
                  andi         a2, zero, 38
                  xori         s0, sp, 1826
                  divu         t3, s7, sp
                  c.xor        a3, a4
                  c.sub        s0, a4
                  srli         s3, t6, 11
                  srai         ra, a1, 18
                  divu         t5, s3, s9
                  c.addi4spn   a4, sp, 784
                  div          ra, ra, t5
                  c.andi       a0, -1
                  c.addi       t2, -1
                  c.nop
                  mulhsu       s2, s0, tp
                  c.srai       a2, 8
                  or           ra, t0, s8
                  mulh         t5, s9, a3
                  srai         s4, t5, 13
                  c.addi       ra, 31
                  c.lui        s2, 11
                  sra          t3, s1, a3
                  divu         s1, s3, a0
                  rem          zero, gp, t4
                  mulh         a2, t0, s10
                  sub          s4, t5, s0
                  srai         s4, t6, 12
                  c.li         s5, -1
                  ori          tp, s6, 2040
                  c.srli       a1, 15
                  ori          t1, tp, 982
                  c.mv         a0, a4
                  srai         a4, a0, 6
                  mulhsu       a3, t6, s7
                  c.li         a7, 17
                  sra          t5, s7, a7
                  c.srli       s1, 23
                  addi         s5, a7, 241
                  c.lui        s5, 7
                  slti         s1, a6, -1373
                  c.li         s1, 3
                  c.srli       a0, 9
                  c.addi4spn   a2, sp, 416
                  or           t1, a4, a3
                  c.andi       s1, -1
                  c.lui        s2, 19
                  addi         gp, s9, 1121
                  remu         sp, t6, a7
                  mulhu        s5, zero, sp
                  c.srli       a0, 11
                  and          t3, s10, a6
                  remu         t5, t4, a6
                  c.srli       a3, 11
                  addi         s8, s3, -1892
                  mulhsu       s5, a1, t5
                  add          t2, a7, ra
                  c.mv         a5, a3
                  c.addi       a1, -1
                  sub          zero, a4, a5
                  slti         t1, gp, 1830
                  c.or         a2, a5
                  ori          tp, s4, 106
                  slli         gp, t1, 22
                  c.xor        a4, a1
                  xor          ra, s9, s10
                  c.srli       s1, 21
                  c.add        a7, t4
                  sltu         a3, t3, sp
                  andi         a5, t4, -560
                  c.xor        a3, a5
                  sll          gp, s7, a3
                  c.sub        a5, s0
                  nop
                  c.addi4spn   a1, sp, 560
                  mul          a5, s1, gp
                  c.sub        a2, a2
                  mulh         s1, s6, tp
                  c.nop
                  srl          zero, a5, s3
                  slti         zero, t6, -1114
                  c.sub        a5, a0
                  c.srli       a1, 24
                  mulhsu       t2, a2, s8
                  remu         t4, a1, t2
                  c.addi4spn   s1, sp, 480
                  remu         s5, a0, gp
                  c.mv         t6, s0
                  c.andi       a3, -1
                  addi         sp, s3, -1076
                  sltiu        zero, s6, -1305
                  c.srli       a3, 1
                  mul          t4, t6, a7
                  srli         a5, a2, 13
                  add          s4, sp, t6
                  c.and        a2, s1
                  remu         s10, sp, ra
                  ori          a1, s1, 186
                  srai         sp, a4, 1
                  srli         t4, s7, 6
                  slt          ra, s3, s11
                  srl          t0, s4, ra
                  sra          s2, s2, t2
                  slli         a2, s8, 24
                  auipc        a5, 551877
                  and          t3, t5, a1
                  divu         a1, a3, a0
                  c.srai       a2, 12
                  sltiu        a7, sp, -1566
                  xor          t4, t1, a5
                  slt          tp, t6, t2
                  remu         a3, s7, s4
                  rem          s9, t5, gp
                  sll          sp, t6, s4
                  c.slli       s1, 2
                  and          s2, s1, s6
                  sll          a5, s4, a2
                  lui          t6, 692409
                  rem          t2, s1, s3
                  divu         a4, s2, s10
                  srli         s0, t4, 7
                  sltu         s8, a7, t2
                  remu         s2, zero, s5
                  srl          s5, a5, t6
                  nop
                  addi         a3, s3, -73
                  slli         s3, a2, 10
                  c.or         s1, a5
                  c.addi4spn   a5, sp, 208
                  c.li         s5, -1
                  lui          a7, 546434
                  sub          s11, t0, t2
                  xori         s10, s4, 1810
                  nop
                  srli         zero, t0, 3
                  and          zero, t1, t0
                  slt          sp, ra, sp
                  sra          s9, s1, s5
                  divu         t6, a3, s3
                  add          s4, s6, s10
                  andi         s11, s4, -1082
                  sltiu        s2, s5, -40
                  div          a2, zero, ra
                  mulh         s1, s5, t4
                  c.addi16sp   sp, -16
                  c.or         s0, a5
                  addi         s4, a1, -416
                  or           t1, a7, tp
                  c.addi16sp   sp, -16
                  c.addi       s8, -1
                  c.srai       a0, 24
                  c.or         s0, s1
                  c.andi       a1, 16
                  xori         s9, s2, 240
                  c.nop
                  and          t2, ra, sp
                  xori         a0, s6, -1051
                  xor          t5, a2, t0
                  c.srli       a2, 13
                  and          a2, tp, t3
                  rem          ra, ra, t2
                  mulh         t3, sp, sp
                  sltiu        a1, a5, -1866
                  c.add        ra, t4
                  xori         sp, s7, -964
                  nop
                  srl          t3, zero, a4
                  xori         s4, s3, 308
                  srai         a4, s7, 24
                  add          a7, s2, s7
                  c.mv         a3, s2
                  sra          s3, ra, s5
                  add          a7, s5, s6
                  sltu         ra, s7, a3
                  slt          t0, t3, s9
                  sltu         a4, s3, gp
                  mul          a7, t5, t5
                  c.add        t2, s3
                  remu         t4, a7, s0
                  c.lui        s1, 24
                  sra          a2, a2, s0
                  div          a2, s11, a5
                  srai         a1, zero, 16
                  c.xor        a4, a2
                  lui          t1, 80328
                  c.srai       a0, 17
                  c.andi       s1, 16
                  srai         a3, s0, 21
                  c.nop
                  srai         t3, a0, 0
                  andi         t2, a4, 542
                  c.and        a0, a0
                  mulhsu       t6, a3, a5
                  ori          s8, s4, -315
                  ori          t3, tp, 1482
                  slt          sp, sp, a0
                  add          s8, zero, s10
                  c.add        a7, ra
                  auipc        t1, 192054
                  and          s10, s6, s0
                  ori          ra, sp, 1142
                  sub          s5, tp, a0
                  slti         t1, sp, -841
                  add          a0, a4, t0
                  srli         s3, t2, 14
                  nop
                  mulhsu       ra, s1, gp
                  slli         t1, t0, 31
                  nop
                  c.addi4spn   a1, sp, 544
                  lui          a3, 568626
                  sra          a5, zero, t0
                  c.mv         a7, s7
                  c.add        s2, t0
                  sltiu        t5, s4, -1966
                  c.slli       s1, 5
                  auipc        t6, 877905
                  sra          s2, a0, s0
                  c.andi       a2, 6
                  c.sub        s0, a0
                  c.add        s9, t2
                  c.xor        a4, a1
                  c.or         a2, a2
                  xori         t4, s7, 252
                  slti         s9, s4, 1843
                  xor          a1, s6, t2
                  auipc        a3, 451390
                  c.add        t2, s3
                  div          s4, t5, s2
                  ori          t4, s10, -1460
                  xori         s2, a1, 518
                  sra          s5, t3, tp
                  nop
                  auipc        s0, 29956
                  xor          s8, s7, t2
                  mulh         t4, s6, a3
                  c.or         a2, a3
                  divu         s4, t2, a4
                  div          a2, sp, gp
                  divu         s11, a3, s7
                  c.add        t2, a3
                  slt          t5, s1, a6
                  c.and        a4, a3
                  c.andi       s1, -1
                  c.or         a1, a3
                  c.nop
                  c.srai       s1, 8
                  c.addi4spn   a2, sp, 208
                  slt          a4, gp, a3
                  mul          s5, s9, s10
                  sub          s2, s1, a2
                  c.addi       t5, -1
                  mulhsu       s5, s1, s5
                  c.srli       a5, 15
                  divu         t3, s10, s11
                  c.srai       a0, 6
                  auipc        zero, 724584
                  slli         s2, s11, 15
                  addi         s8, ra, -1200
                  xor          zero, a4, a3
                  sll          s0, a1, t2
                  c.lui        a7, 5
                  sub          s9, t4, a6
                  divu         s2, a5, sp
                  lui          t6, 890621
                  srli         t4, a1, 18
                  mulh         a7, s1, s10
                  c.slli       ra, 31
                  sltiu        sp, s1, -366
                  addi         t2, t1, 556
                  ori          t3, gp, 868
                  c.sub        s0, a0
                  srai         s4, a1, 8
                  sra          t4, a7, sp
                  auipc        s4, 1046235
                  c.xor        a0, a3
                  mul          ra, t3, s0
                  c.nop
                  mulhu        s3, gp, t6
                  mulh         s4, a5, t2
                  c.addi16sp   sp, 272
                  c.li         sp, -1
                  rem          t5, t3, s8
                  and          s5, tp, a4
                  c.or         a0, a2
                  sll          t0, s0, s3
                  mulh         t1, s3, a1
                  c.addi16sp   sp, -16
                  sltu         t2, a4, t4
                  c.addi       tp, -1
                  and          a7, a6, ra
                  sltu         zero, s11, s11
                  c.or         a0, a5
                  srai         a2, zero, 30
                  c.srai       a1, 3
                  rem          s8, t6, s5
                  xor          zero, zero, s4
                  xori         t2, s9, -495
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  c.add        a7, s10
                  xor          t3, s4, ra
                  c.and        s0, a4
                  add          a1, a0, t1
                  andi         zero, a4, 1855
                  remu         t1, t0, t5
                  srai         a7, s7, 28
                  slti         s10, a5, -427
                  mul          s2, sp, s0
                  c.addi16sp   sp, -16
                  andi         a5, a7, 1615
                  srai         s3, a1, 9
                  lui          zero, 672116
                  c.addi       s2, -1
                  nop
                  c.add        s0, s1
                  rem          gp, t5, s10
                  srl          a1, a1, a1
                  mulhsu       t2, s5, s2
                  c.addi16sp   sp, -16
                  c.addi4spn   a5, sp, 560
                  c.xor        s1, a0
                  srl          tp, t5, s10
                  c.addi16sp   sp, -16
                  nop
                  c.add        s2, s11
                  c.xor        a2, a1
                  xor          s2, s3, t1
                  c.addi4spn   s1, sp, 1008
                  auipc        s5, 299411
                  slti         t4, t6, -1590
                  c.li         a4, 28
                  xor          s4, s10, a4
                  sub          t2, t0, sp
                  div          a0, s0, s4
                  rem          ra, gp, s0
                  c.addi4spn   s1, sp, 640
                  srl          t5, s9, a7
                  mul          s11, a1, a5
                  mulh         t1, s7, s4
                  sltu         a3, t4, t6
                  srai         t5, a7, 19
                  xor          s9, a4, a2
                  c.or         s0, s0
                  sra          s2, s1, t0
                  sltiu        t2, t6, -742
                  div          sp, zero, a7
                  mulhsu       t0, a3, t6
                  and          s9, zero, a1
                  c.xor        s1, a1
                  addi         s1, sp, -775
                  c.slli       s1, 17
                  c.addi16sp   sp, 496
                  sltu         t1, s1, a6
                  div          tp, s4, s8
                  div          ra, s10, s8
                  c.mv         s2, s4
                  xori         t5, a0, -785
                  div          ra, a1, t2
                  ori          a0, zero, 3
                  c.or         a1, s0
                  c.addi       s9, -1
                  c.sub        a1, a3
                  lui          s2, 991326
                  add          s0, s7, tp
                  mulhsu       a0, s1, s10
                  ori          s3, a0, 474
                  c.mv         t4, a7
                  c.add        t3, a3
                  remu         a0, s6, a0
                  nop
                  sll          t4, t4, sp
                  auipc        a2, 984346
                  c.addi4spn   s0, sp, 608
                  divu         a1, a7, a2
                  slti         a5, a1, 1155
                  c.addi16sp   sp, 496
                  remu         a0, a7, t3
                  sra          t1, t3, ra
                  mulh         s2, s4, s1
                  or           t4, s9, s4
                  add          s5, tp, t5
                  c.li         a3, 21
                  andi         s1, t2, 994
                  c.addi       a0, 24
                  rem          ra, s4, sp
                  nop
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_38
                  li           sp, 0x80000000
                  li           a4, 0xffffffff
                  li           t3, 0xffffffff
                  li           s8, 0x84ccf4b2
                  li           a7, 0x80000000
                  li           s11, 0xffffffff
                  li           gp, 0x9e36adb
                  li           a0, 0x1702c1f0
                  li           t5, 0x0
                  lui          t5, 240187
                  auipc        gp, 251865
                  sub          a7, a4, gp
                  addi         t3, s11, -875
                  sub          gp, t3, t6
                  mulhsu       a7, t3, t3
                  rem          a4, a7, a0
                  nop
                  nop
                  lui          t6, 414
                  mulh         a7, sp, sp
                  mulh         a0, gp, t5
                  sub          sp, sp, t3
                  div          s8, sp, a0
                  mulhu        a7, s11, a0
                  sub          s8, a7, s8
                  auipc        a7, 470661
                  div          s11, s8, gp
                  mulh         t5, gp, t3
                  lui          t6, 542639 #end riscv_int_numeric_corner_stream_38
                  sltu         t2, t5, t4
                  slti         s1, s1, -1301
                  lui          t0, 364522
                  addi         a0, s0, -1927
                  c.mv         t1, s4
                  remu         sp, ra, a3
                  c.addi16sp   sp, 128
                  remu         a5, s6, t2
                  ori          t2, t3, -677
                  c.addi       a3, 3
                  andi         s9, s9, 1635
                  c.srai       a0, 6
                  c.sub        s1, a5
                  srl          t0, s6, s8
                  c.sub        a5, s0
                  add          t6, s7, s1
                  c.sub        a5, a0
                  ori          s0, s5, -1264
                  sll          sp, t6, t5
                  li           a1, 0x0 #start riscv_int_numeric_corner_stream_24
                  li           s1, 0x5d20012a
                  li           s0, 0x82ee7dd
                  li           t0, 0x0
                  li           sp, 0x928db51a
                  li           a5, 0x80000000
                  li           a3, 0xcacbbf38
                  li           t1, 0xc8da7165
                  li           tp, 0x80000000
                  li           a4, 0x80000000
                  mul          a5, a4, s1
                  nop
                  divu         t0, sp, a3
                  nop
                  sub          a4, a3, a5
                  remu         t1, t0, s0
                  remu         tp, tp, a1
                  mul          t0, a3, t1
                  auipc        a1, 709367
                  sub          a5, sp, t1
                  mul          t1, t1, a1
                  auipc        a3, 883571
                  div          tp, a1, sp
                  div          s0, s1, a4
                  divu         sp, a4, t0
                  mulh         tp, s1, t0
                  nop
                  mulh         t0, t0, s0
                  rem          t0, a1, t0
                  divu         a1, a3, sp
                  add          tp, a3, tp
                  mulhu        s1, a5, a1 #end riscv_int_numeric_corner_stream_24
                  sra          s2, zero, gp
                  srl          a5, a6, s10
                  slti         t2, s1, -811
                  c.andi       s0, 26
                  nop
                  sra          tp, a5, s1
                  c.add        sp, s10
                  rem          s2, s3, t4
                  c.and        a4, s0
                  sltu         s3, gp, s3
                  add          zero, s1, sp
                  auipc        t5, 523673
                  rem          sp, sp, s9
                  mulhu        s5, t0, s11
                  slli         gp, s9, 31
                  c.and        s1, a4
                  auipc        a4, 866657
                  c.mv         s4, t4
                  c.or         s1, a2
                  add          a3, a7, tp
                  c.srli       s0, 25
                  rem          a0, a5, a6
                  sra          s5, gp, s4
                  div          s3, s9, a7
                  sltu         s1, t2, s5
                  c.addi       s2, 11
                  auipc        s5, 771241
                  sltu         a3, a5, a6
                  xor          sp, a2, tp
                  c.srai       a0, 16
                  srli         a2, s9, 21
                  c.sub        a3, s1
                  c.add        s5, s4
                  auipc        t2, 704582
                  c.addi4spn   a5, sp, 144
                  c.nop
                  c.add        tp, t6
                  addi         s8, s8, 226
                  sltiu        tp, s6, -1938
                  xor          s5, t0, t0
                  ori          a4, zero, -108
                  srli         a2, t6, 7
                  addi         s3, zero, -1133
                  or           a1, a4, s3
                  ori          s4, s2, -136
                  mulh         s9, s5, t2
                  c.li         a3, -1
                  add          gp, s11, t4
                  c.lui        s1, 20
                  c.add        t5, a2
                  ori          zero, s2, -914
                  c.addi4spn   a0, sp, 864
                  ori          s1, s1, -1974
                  or           a5, s10, gp
                  slt          s10, s2, s0
                  c.sub        a1, a4
                  mulhu        a7, gp, t0
                  c.or         a4, a4
                  srli         a7, s9, 18
                  c.li         s9, 27
                  c.addi4spn   a3, sp, 32
                  divu         s4, a1, gp
                  mulhu        t4, t5, t5
                  andi         sp, s6, -408
                  addi         s11, a7, -308
                  slt          a1, s1, t6
                  xor          s2, s6, a2
                  c.mv         t4, s7
                  divu         zero, a1, a7
                  c.addi4spn   s1, sp, 368
                  div          t3, s5, s9
                  c.andi       a3, 16
                  divu         a5, s0, a1
                  sub          a0, t1, t4
                  divu         t5, s7, gp
                  sll          s8, tp, t6
                  sra          t6, tp, a4
                  c.slli       a4, 31
                  slli         s9, sp, 3
                  c.addi16sp   sp, -16
                  srai         s4, t4, 22
                  c.sub        a2, a0
                  xori         t5, a5, -1012
                  c.slli       a0, 8
                  c.slli       s2, 31
                  add          s2, a2, t0
                  nop
                  and          s3, a5, s11
                  remu         s0, a3, gp
                  c.addi16sp   sp, 144
                  slli         zero, zero, 24
                  or           zero, t3, t6
                  mul          sp, s9, s10
                  c.or         a4, a0
                  slt          t4, a1, a2
                  xor          a7, s9, t2
                  c.addi16sp   sp, -16
                  c.or         a0, a2
                  c.srli       s0, 29
                  mulh         a2, s6, a0
                  c.add        s4, t1
                  ori          s1, a5, -161
                  lui          s3, 433520
                  divu         s2, sp, s6
                  mulhu        s0, a4, a4
                  c.addi16sp   sp, 320
                  div          ra, a6, t0
                  c.li         a4, -1
                  c.xor        s0, a5
                  or           s9, a7, a5
                  c.mv         s4, a6
                  xori         t1, t6, 1394
                  xori         s11, s4, 964
                  c.slli       t2, 27
                  c.addi16sp   sp, 16
                  c.slli       s3, 4
                  srli         s4, a3, 31
                  c.li         t4, 23
                  c.mv         a2, ra
                  ori          s10, s9, 1324
                  nop
                  c.andi       a2, -1
                  auipc        s1, 407981
                  c.addi16sp   sp, -16
                  nop
                  mulhu        ra, a7, s0
                  c.sub        s0, a4
                  or           s10, s3, s6
                  c.nop
                  mul          zero, a2, sp
                  c.srai       s1, 30
                  divu         s0, t4, t4
                  slti         ra, t2, -1840
                  c.andi       a3, -1
                  andi         tp, t0, -469
                  xori         a3, a2, -802
                  or           t6, s9, a6
                  srai         a7, a4, 21
                  add          tp, s3, t3
                  sra          s2, t1, s0
                  nop
                  ori          s8, a5, -1299
                  rem          s11, a4, s5
                  mulhu        gp, t5, t3
                  sra          s1, a0, t5
                  slti         t1, t4, 1323
                  sra          t4, tp, a3
                  mulh         s4, a2, s10
                  c.addi4spn   a5, sp, 192
                  mulhsu       sp, s8, s8
                  xor          s8, s2, s1
                  addi         s10, s11, 2010
                  and          zero, s1, s5
                  addi         t4, a7, 1456
                  sub          s3, ra, s0
                  mulhsu       a7, s9, tp
                  c.sub        a4, s0
                  c.mv         s8, t2
                  srai         t1, t3, 2
                  c.lui        s11, 7
                  srl          a5, gp, s4
                  c.li         t5, 4
                  mulhsu       s8, t3, s9
                  c.addi4spn   a4, sp, 320
                  c.addi16sp   sp, 352
                  slti         a1, t4, 739
                  xori         s2, s1, -1497
                  c.or         a4, a0
                  c.andi       a0, -1
                  auipc        t1, 250652
                  c.addi16sp   sp, 368
                  lui          s2, 526868
                  srli         s1, a4, 16
                  c.srli       a5, 2
                  mul          zero, tp, s8
                  srai         s10, a7, 17
                  auipc        s9, 526171
                  addi         gp, a6, -183
                  c.srli       a1, 31
                  c.li         t1, 11
                  c.addi       s9, -1
                  c.lui        t2, 31
                  or           a7, sp, ra
                  c.addi16sp   sp, 128
                  c.xor        s0, s1
                  xor          a7, s5, zero
                  mulhsu       t5, s10, t5
                  srai         s2, a7, 28
                  c.mv         sp, t2
                  xor          a4, t5, t0
                  andi         a4, t6, -1070
                  andi         a5, s0, 494
                  ori          t4, a1, -1773
                  c.nop
                  mulhu        t4, a1, t1
                  sra          a0, t5, s10
                  c.addi16sp   sp, 288
                  sra          zero, t1, a3
                  srl          gp, s1, t0
                  c.addi       s4, 18
                  c.addi16sp   sp, 240
                  slli         s2, s11, 22
                  c.addi16sp   sp, 384
                  xori         t2, t5, 1477
                  andi         a7, a7, 321
                  or           a0, t0, t6
                  c.and        a3, s1
                  c.andi       s0, -1
                  div          s2, zero, s5
                  remu         s8, s7, a6
                  c.li         s2, -1
                  c.addi16sp   sp, 464
                  c.add        s4, a4
                  c.slli       t3, 25
                  sra          a5, s11, s0
                  srl          s4, a5, a7
                  add          a5, a7, t5
                  ori          t0, t1, -1164
                  c.slli       sp, 15
                  srli         a0, s5, 28
                  slt          a0, s7, a4
                  c.lui        t1, 20
                  slli         gp, s10, 13
                  remu         a7, s1, s1
                  c.and        a5, s0
                  c.mv         tp, a2
                  c.and        s1, a5
                  c.xor        a0, s1
                  c.sub        a0, a0
                  ori          a4, s4, -272
                  addi         a5, t0, 1807
                  divu         a3, s0, s7
                  srli         gp, s5, 24
                  c.mv         t3, t1
                  slt          sp, s6, s6
                  slt          a5, a6, a7
                  nop
                  srli         a7, a4, 24
                  c.addi16sp   sp, -16
                  c.mv         ra, a5
                  c.addi4spn   a3, sp, 32
                  andi         ra, s1, -1545
                  add          ra, a2, t5
                  add          t0, a0, t2
                  c.srli       a5, 27
                  auipc        a5, 653050
                  div          s0, t1, s5
                  rem          t1, t3, sp
                  andi         a7, a6, -269
                  xor          t4, s7, zero
                  sltiu        a3, s2, -1805
                  c.srai       a2, 27
                  sub          t3, a4, s4
                  c.addi16sp   sp, 320
                  c.and        a5, s0
                  c.andi       s0, 13
                  mulhu        a0, s9, s11
                  sub          s11, t6, zero
                  c.addi       s5, 15
                  sub          s10, s4, s8
                  sltu         s3, s9, t2
                  srl          a5, a7, a7
                  xori         t2, zero, 355
                  c.addi16sp   sp, 192
                  c.srli       a3, 10
                  xori         a3, t5, -171
                  slli         s2, sp, 19
                  c.or         a2, a1
                  c.andi       a2, 14
                  c.andi       a4, 8
                  c.sub        a0, s1
                  sll          s2, a6, tp
                  c.nop
                  srai         a3, s9, 4
                  addi         gp, t1, 1291
                  mulhu        t0, t6, s0
                  c.and        a3, a5
                  slti         s0, s4, 1348
                  andi         a3, a2, 1673
                  c.addi       s8, 30
                  slti         s10, a3, -1253
                  slti         s2, t6, -721
                  divu         t2, t4, ra
                  or           s3, s3, ra
                  c.addi4spn   s1, sp, 64
                  xori         t4, s4, 651
                  nop
                  c.li         tp, -1
                  mulhu        a1, s11, a5
                  sub          tp, s3, s5
                  srl          a0, s9, a4
                  slti         t1, a3, -52
                  andi         a3, s10, -1044
                  xor          a3, t5, t2
                  mulhu        t4, t2, s6
                  lui          t6, 1033276
                  xor          a4, a7, sp
                  c.srai       a0, 10
                  c.li         s2, 30
                  xor          s8, a7, s3
                  c.addi4spn   a1, sp, 192
                  or           a3, s4, a3
                  srai         s9, a1, 7
                  c.addi       a0, -1
                  c.sub        a0, s0
                  addi         s8, s1, 1902
                  c.addi       t0, -1
                  xor          s5, tp, ra
                  c.addi       t0, 31
                  c.li         a1, -1
                  mul          tp, s10, t0
                  div          s3, a5, a0
                  mulhu        s3, s11, a5
                  c.sub        a0, s1
                  sll          s5, s11, a0
                  andi         t4, s4, -1064
                  xori         s5, a4, -592
                  c.mv         a1, sp
                  sltiu        a7, tp, -2039
                  srl          s10, a6, s9
                  c.addi4spn   s0, sp, 112
                  lui          t4, 781817
                  mul          zero, s5, a7
                  nop
                  c.addi4spn   s0, sp, 896
                  nop
                  c.addi4spn   a2, sp, 896
                  or           s3, gp, s3
                  c.add        tp, a2
                  mul          s4, a1, s11
                  sltiu        a2, t4, 1125
                  remu         t5, s8, t0
                  andi         s3, ra, 1823
                  srl          a0, gp, a7
                  xori         t1, a5, -1263
                  srai         t2, s2, 16
                  mulhsu       s4, gp, s9
                  srai         t6, t4, 31
                  c.srai       a5, 29
                  c.srli       s1, 9
                  add          s11, a6, t2
                  c.addi       s8, -1
                  or           s8, a1, s7
                  rem          gp, s1, s2
                  c.sub        a1, s0
                  c.li         t1, 28
                  c.nop
                  mulhu        a0, tp, s6
                  srl          a1, t1, a1
                  c.sub        a5, s0
                  auipc        a5, 975581
                  c.nop
                  andi         a4, a5, -1092
                  div          a7, s7, s8
                  sra          t5, s10, a3
                  slti         t2, s9, 1076
                  c.add        s0, s8
                  divu         ra, s9, s8
                  c.addi       t6, -1
                  srli         s5, a1, 18
                  c.addi       s0, -1
                  slti         a3, a0, -31
                  srl          s10, sp, t2
                  mulh         s1, s9, a6
                  c.srli       a4, 3
                  c.li         gp, 31
                  c.srai       a5, 1
                  c.addi       a4, -1
                  divu         t4, t1, t3
                  sll          s8, t1, s3
                  add          s5, t2, s3
                  auipc        t6, 978879
                  srai         a2, s9, 15
                  mulh         s1, s3, a0
                  slli         s10, sp, 9
                  addi         a3, s1, 85
                  slli         t4, s9, 8
                  c.or         s0, a3
                  ori          s4, a2, -1706
                  c.addi4spn   s1, sp, 160
                  c.srli       s1, 16
                  remu         zero, t2, ra
                  rem          t5, a5, s1
                  add          t6, s5, gp
                  c.addi16sp   sp, -16
                  lui          s0, 707166
                  nop
                  sub          t3, s7, a4
                  auipc        zero, 765333
                  sltu         a5, t1, a4
                  auipc        s3, 936472
                  c.and        a0, s0
                  slli         s9, t1, 18
                  sltiu        tp, s6, -478
                  remu         s1, s6, s10
                  c.srli       a3, 6
                  div          t3, a4, tp
                  c.li         a2, -1
                  c.and        a5, s0
                  remu         s3, s0, s7
                  ori          a7, t2, -1694
                  andi         a0, s5, 402
                  srli         tp, s11, 6
                  and          t4, a1, a7
                  c.addi4spn   a1, sp, 944
                  xori         t2, a7, 1718
                  c.slli       s9, 8
                  c.addi16sp   sp, -16
                  c.and        a0, a4
                  srli         zero, a7, 1
                  lui          s2, 720832
                  mulhu        ra, tp, s11
                  mulhu        s4, t5, s2
                  ori          a7, a5, -1466
                  xori         t5, a7, 202
                  c.addi4spn   s0, sp, 592
                  c.or         a4, a2
                  c.nop
                  c.or         a1, a5
                  c.xor        a5, s1
                  c.xor        a5, a0
                  c.or         a1, a0
                  c.nop
                  c.addi       tp, 28
                  c.sub        a4, s1
                  or           a7, sp, s4
                  c.srli       a2, 25
                  c.srli       a1, 26
                  c.li         a4, 10
                  c.srai       a4, 7
                  srl          t4, a6, s1
                  auipc        a4, 967300
                  c.li         s4, -1
                  mulh         s3, t0, s0
                  c.sub        a0, s1
                  c.lui        s8, 11
                  c.and        a1, s0
                  add          a3, a4, a0
                  andi         t2, a3, 1917
                  remu         a1, a1, s7
                  c.li         s2, 23
                  c.xor        a4, a1
                  c.sub        s1, s1
                  and          zero, s2, s11
                  c.sub        a4, s1
                  div          s4, a3, s2
                  c.andi       a1, -1
                  c.xor        a4, a0
                  slti         s8, a3, 368
                  and          s4, s6, t2
                  xor          s11, a2, s7
                  srl          a1, tp, s11
                  slt          t1, s5, zero
                  c.srai       a1, 26
                  add          s2, t6, t4
                  mulhsu       s10, a6, s0
                  and          s8, t2, t3
                  auipc        ra, 278652
                  c.li         a3, -1
                  c.srli       a3, 22
                  c.addi16sp   sp, -16
                  slt          s10, a0, s2
                  or           s8, a7, tp
                  or           s2, s11, t4
                  xori         s10, a3, -550
                  sll          s8, a7, t6
                  sub          a3, a0, a0
                  addi         sp, s1, 11
                  c.slli       a2, 20
                  c.and        a4, s0
                  c.addi4spn   a5, sp, 928
                  addi         s8, s11, 384
                  sra          ra, s9, s7
                  c.li         t0, 19
                  srai         tp, t2, 16
                  srli         a0, a2, 6
                  ori          s3, s11, 721
                  addi         zero, t0, -713
                  remu         a5, a7, s5
                  div          s8, a7, gp
                  div          s4, ra, s8
                  divu         ra, t0, a4
                  srli         s1, sp, 4
                  rem          a2, t0, a4
                  c.addi       s4, 9
                  sltu         t5, tp, a4
                  c.nop
                  srli         a1, s0, 10
                  sltu         t0, s0, a7
                  mulhsu       t1, s5, s4
                  c.or         a2, a4
                  mulhsu       s10, s0, s8
                  xor          t4, t6, s9
                  lui          s3, 905225
                  xor          s4, sp, s4
                  slti         t1, t3, 1391
                  mul          t2, t3, a0
                  c.and        a5, a1
                  mulhsu       t5, s1, s2
                  c.addi4spn   a2, sp, 480
                  sltiu        s10, t0, -245
                  c.li         s0, 18
                  c.li         s2, -1
                  mulhsu       t2, t1, s2
                  xori         t3, t3, 1805
                  c.mv         t5, s3
                  c.srli       a0, 5
                  and          a0, s3, t5
                  c.andi       a2, 7
                  remu         t4, s2, tp
                  c.srai       a4, 30
                  srl          s5, a7, t6
                  c.li         a0, 16
                  sub          t5, s1, t5
                  andi         a0, a2, 1361
                  mulh         s10, t6, t6
                  nop
                  c.lui        tp, 10
                  c.and        a1, a3
                  divu         ra, t5, s0
                  divu         t3, s3, a1
                  ori          t2, a2, 1915
                  andi         s5, s10, -357
                  c.lui        s8, 15
                  c.addi16sp   sp, -16
                  xor          ra, s8, gp
                  c.mv         s9, a5
                  c.srai       s0, 15
                  srai         t5, s8, 20
                  andi         s11, t0, 439
                  lui          s10, 571237
                  slli         s9, s8, 28
                  c.addi       s10, 2
                  nop
                  lui          t3, 556362
                  c.add        ra, t4
                  nop
                  srli         s10, s5, 1
                  srai         s9, t0, 24
                  mulh         a7, s3, a6
                  auipc        t2, 6586
                  sll          a0, sp, zero
                  srl          sp, ra, ra
                  c.addi       a4, 20
                  c.andi       a3, -1
                  slti         sp, zero, 4
                  slli         tp, zero, 15
                  auipc        s3, 56392
                  c.mv         ra, s2
                  mulhsu       t1, a6, zero
                  c.srli       s0, 25
                  c.add        sp, t3
                  div          t5, a3, s6
                  srl          a1, s6, t4
                  mulh         a7, t6, s3
                  sltu         a0, s2, gp
                  c.sub        a4, a0
                  sll          s5, s4, s5
                  c.andi       a5, -1
                  xori         t5, t2, 1434
                  c.or         a0, a0
                  mul          s3, s6, t0
                  c.srai       a2, 9
                  div          t5, ra, s5
                  c.xor        a1, s1
                  mul          t3, zero, t6
                  c.srai       s1, 6
                  slli         t6, t4, 25
                  slti         s4, s6, 1751
                  slli         a3, s3, 17
                  c.addi4spn   a5, sp, 320
                  mulhu        s4, t1, t3
                  nop
                  remu         s11, a5, a5
                  nop
                  srli         t4, sp, 15
                  add          s4, s3, s3
                  xori         t6, t0, -127
                  slli         zero, s3, 13
                  div          a2, s3, t1
                  c.lui        tp, 22
                  and          s0, t6, s4
                  srli         s2, a1, 23
                  sll          s5, s8, s3
                  sll          gp, a3, a3
                  c.nop
                  divu         s4, t1, s7
                  nop
                  c.add        s8, s5
                  auipc        t1, 359365
                  c.addi       t0, 31
                  c.addi       a4, 27
                  addi         sp, t4, 1789
                  addi         t1, tp, 1410
                  ori          s9, a2, 435
                  mulh         t5, t3, s0
                  c.lui        s8, 15
                  c.and        a4, s0
                  mulhsu       s4, gp, zero
                  xori         t0, a7, -356
                  mul          a7, a7, t0
                  c.slli       t1, 23
                  xor          a7, s11, sp
                  sra          s8, t6, a6
                  andi         a5, s11, -729
                  c.xor        a2, s1
                  xori         t6, zero, -1238
                  ori          a5, s11, -1262
                  add          t3, t4, a4
                  sltiu        s5, tp, 100
                  sltiu        s1, t6, 1381
                  mulhsu       a1, t1, s5
                  c.and        a5, a3
                  rem          s2, a4, a7
                  mulhsu       s4, a3, a2
                  auipc        s4, 54857
                  divu         t1, a5, t4
                  srli         t0, t2, 29
                  sub          a1, s6, s10
                  xori         t2, a7, 34
                  c.mv         s0, sp
                  c.or         a2, a3
                  andi         s11, t6, -729
                  mulhsu       s3, a0, t5
                  srli         t3, s0, 31
                  sltiu        a1, t2, 536
                  mul          s1, s7, a3
                  remu         t1, a6, s1
                  srli         sp, a2, 0
                  div          s9, s2, a0
                  c.srli       a2, 3
                  c.srai       a0, 12
                  mulhsu       a0, zero, s2
                  c.addi       gp, 30
                  c.mv         s3, gp
                  auipc        s3, 195670
                  nop
                  sltiu        s3, s10, -1878
                  c.and        a4, a2
                  mulhu        t3, s3, tp
                  c.sub        a3, a1
                  or           gp, t3, s5
                  srl          t1, t2, zero
                  div          a1, a2, a0
                  sltiu        s3, a5, -360
                  srai         s9, t3, 1
                  mulhsu       s2, ra, s5
                  sltu         s5, s7, s11
                  c.li         a7, 18
                  srai         zero, s3, 23
                  andi         t1, s7, -405
                  c.or         a1, s1
                  ori          s5, t6, 862
                  nop
                  add          s5, a1, t1
                  c.mv         a0, t1
                  c.addi4spn   s0, sp, 752
                  xor          a2, s10, s6
                  c.li         s1, 15
                  mulhu        s2, a1, s9
                  c.srli       s0, 21
                  mulhsu       t5, s6, a7
                  sltiu        t5, a4, 1976
                  srai         s8, t3, 13
                  andi         t2, a6, -24
                  mulhu        s5, s2, t5
                  c.addi4spn   a5, sp, 944
                  c.xor        s0, a4
                  sltiu        s2, t0, 42
                  srai         s11, a1, 15
                  mulh         a0, s0, a4
                  c.sub        a4, s1
                  c.sub        a5, s1
                  auipc        t2, 636980
                  andi         t0, s1, -1671
                  slti         tp, sp, -532
                  xor          t1, zero, t3
                  mulhsu       s5, s6, t5
                  rem          t4, s8, s8
                  mulh         t0, t3, s6
                  sub          zero, tp, a4
                  srai         ra, t1, 11
                  lui          a0, 199120
                  sltu         s0, tp, a6
                  c.srai       a1, 2
                  div          s2, a2, a0
                  c.add        t4, a1
                  remu         s8, t2, a0
                  mulhu        s11, a7, gp
                  c.or         a3, a4
                  slt          t2, a7, a6
                  c.add        a0, a6
                  c.lui        s8, 22
                  mulhsu       s1, a3, s9
                  xori         a7, a4, 1399
                  mul          a1, t4, sp
                  srai         sp, ra, 23
                  c.addi4spn   a3, sp, 208
                  addi         zero, t6, 561
                  c.nop
                  or           tp, s4, a4
                  c.srai       s0, 16
                  sub          t5, s8, t5
                  xori         s10, t1, 904
                  c.and        a3, a4
                  sra          s1, a1, t4
                  add          gp, s6, s7
                  lui          t1, 926039
                  c.srli       a3, 12
                  mul          s1, s1, t0
                  mulhsu       s5, s10, a2
                  c.add        s11, a0
                  c.addi4spn   s1, sp, 672
                  c.mv         t1, s0
                  c.addi16sp   sp, -16
                  c.add        s2, t4
                  divu         s0, a3, s4
                  andi         t6, t6, 943
                  mulh         t3, a1, gp
                  c.or         a0, a4
                  and          s11, s0, a7
                  nop
                  c.slli       s4, 8
                  c.or         a0, a2
                  xori         s8, gp, -1786
                  c.srai       a0, 24
                  c.li         s11, 13
                  c.srli       a1, 10
                  c.xor        a4, a0
                  slti         s1, a3, -1302
                  mul          a7, a0, t4
                  and          zero, a1, zero
                  c.srli       s0, 11
                  and          s3, s4, s10
                  andi         a4, t0, -959
                  c.mv         t0, sp
                  c.addi16sp   sp, 352
                  c.srai       a2, 8
                  sll          ra, t5, s2
                  c.lui        s3, 12
                  rem          s5, s10, a6
                  sltu         s11, zero, s3
                  lui          a0, 374568
                  mulhu        s0, t4, a2
                  slt          sp, s11, t1
                  and          s10, s7, a5
                  mulh         t1, s7, tp
                  srli         t1, a5, 21
                  auipc        ra, 624590
                  mulhsu       tp, a7, t1
                  c.addi4spn   a3, sp, 880
                  mulhu        s10, t2, s4
                  mul          a2, s8, a4
                  sltiu        s4, t0, 1746
                  c.and        a1, s1
                  c.lui        s2, 20
                  rem          s3, s6, tp
                  c.addi       s10, 31
                  slti         s2, s9, 1555
                  c.xor        s1, s1
                  c.sub        a3, a2
                  srli         s9, a1, 4
                  xor          tp, a5, t5
                  c.and        s1, a4
                  c.addi4spn   a4, sp, 16
                  c.slli       s4, 21
                  c.li         t5, -1
                  c.slli       s3, 17
                  c.srli       s1, 16
                  slti         s4, t1, -351
                  c.lui        s4, 19
                  mulhsu       t4, s3, t1
                  and          s4, s6, s0
                  div          s3, t3, gp
                  sub          s5, t2, a4
                  mul          s1, s10, a1
                  mulh         s3, s4, s8
                  c.and        a1, a4
                  c.addi       t2, -1
                  xori         s1, t5, 1503
                  sub          gp, ra, a3
                  srli         tp, s11, 15
                  sra          a4, a6, a5
                  divu         s2, t4, t3
                  c.and        s1, s1
                  c.li         s5, -1
                  and          s9, s3, a7
                  mulhsu       a0, ra, s0
                  c.li         s9, 9
                  rem          t3, s0, tp
                  c.li         t5, -1
                  srl          a4, tp, t3
                  ori          s3, t4, -748
                  c.mv         ra, ra
                  sll          t1, a7, t4
                  srli         s11, s1, 13
                  remu         s5, a7, t5
                  srai         s3, s3, 18
                  mulhsu       t6, t0, a4
                  c.xor        a1, a0
                  c.addi       s8, -1
                  c.xor        a2, a5
                  mul          s2, zero, a5
                  c.or         s1, a1
                  sltiu        s2, s0, -1229
                  sltiu        s4, zero, -911
                  auipc        zero, 29908
                  divu         zero, zero, s10
                  add          t6, t4, t4
                  c.mv         a5, a2
                  ori          a7, ra, 1130
                  xor          s11, a5, a3
                  c.mv         a7, s0
                  srai         t5, tp, 18
                  slt          a3, tp, s1
                  c.srli       a2, 30
                  sltiu        t0, s11, -272
                  andi         a1, s3, -1
                  ori          a2, a2, 1011
                  andi         s0, t1, -1756
                  nop
                  sltu         a2, t5, tp
                  c.addi       s9, -1
                  ori          t1, s11, 669
                  c.addi       t6, -1
                  c.or         a1, a1
                  mulhsu       t4, a2, zero
                  or           s2, sp, a7
                  sltiu        t6, s10, 57
                  or           a1, tp, a1
                  c.lui        a4, 10
                  c.or         a5, a5
                  sra          s4, ra, s6
                  add          t5, tp, tp
                  c.xor        s0, a5
                  mul          s2, s10, s0
                  add          s2, s5, s10
                  c.xor        a5, a0
                  slli         gp, a6, 6
                  slt          t6, a1, a0
                  auipc        a5, 194792
                  srl          s8, s2, tp
                  slli         s4, a6, 16
                  c.andi       s0, -1
                  mulhu        s4, t6, t2
                  mulhsu       a5, t4, t3
                  c.sub        a0, a0
                  nop
                  addi         a4, a7, -1925
                  sltu         a5, s9, s7
                  divu         s3, t6, t2
                  lui          zero, 301091
                  ori          s0, s6, 514
                  addi         t6, s6, -885
                  c.srli       a2, 17
                  c.andi       a2, 26
                  auipc        t6, 678070
                  addi         t4, s9, 74
                  sub          gp, a2, a5
                  add          s5, s3, a2
                  c.andi       a5, -1
                  divu         t2, ra, tp
                  remu         gp, t3, t5
                  c.slli       s8, 15
                  c.nop
                  add          sp, t3, s1
                  xori         a4, ra, -1536
                  slli         t6, s4, 0
                  c.and        a2, s1
                  c.sub        a4, a2
                  c.andi       a4, 7
                  mulh         s11, s11, tp
                  c.add        a7, ra
                  xori         t4, t4, -1409
                  sll          s4, s5, s3
                  slt          a1, t2, t1
                  sltiu        a5, s5, 1124
                  c.addi16sp   sp, -16
                  divu         s2, t4, s3
                  c.li         s0, 15
                  srai         a1, a0, 18
                  c.sub        a1, a0
                  and          s3, gp, a5
                  add          zero, a1, s8
                  remu         s8, t0, t3
                  c.addi       s1, 24
                  srli         s11, t2, 15
                  andi         tp, t6, 1114
                  sltu         sp, t5, a5
                  c.sub        s1, s0
                  slli         s3, s0, 13
                  slli         s1, a5, 29
                  mulh         t1, ra, s0
                  c.addi16sp   sp, -16
                  srli         t3, a1, 2
                  c.addi4spn   s0, sp, 144
                  mulhu        s11, s1, t0
                  slti         a3, s8, -743
                  c.li         gp, -1
                  c.srai       a3, 21
                  c.sub        a5, a2
                  c.andi       a4, -1
                  add          t6, a1, s8
                  add          s3, a1, a1
                  slt          s9, s3, s10
                  addi         s2, s7, -1790
                  sra          s2, ra, t1
                  c.nop
                  andi         s8, a0, -703
                  xor          a1, gp, tp
                  c.sub        a1, a4
                  c.srli       a0, 30
                  srai         s11, t4, 7
                  and          s1, s8, a3
                  xor          t5, s11, s3
                  mulhu        s8, t5, t0
                  slt          t5, s7, s6
                  lui          t4, 82599
                  c.srai       s0, 6
                  srli         t1, s1, 18
                  c.or         a5, a4
                  lui          s4, 654784
                  add          t3, a6, t5
                  sll          s3, t6, a0
                  and          s1, sp, ra
                  mulhu        s0, t3, a4
                  srai         t6, s5, 21
                  addi         s10, t3, 1912
                  c.and        a1, s0
                  srli         s9, t3, 9
                  srai         s1, t6, 7
                  sltu         t1, a5, s2
                  c.andi       a1, 7
                  c.slli       gp, 5
                  sra          t6, t4, a3
                  xori         t3, a7, 1161
                  div          s10, ra, s9
                  c.xor        a0, a1
                  c.or         a1, a5
                  srli         s9, t2, 6
                  rem          a7, t2, s6
                  or           sp, t6, a3
                  sra          t5, a0, a1
                  c.slli       t5, 25
                  nop
                  c.mv         t0, s8
                  addi         zero, gp, 1755
                  sll          t4, t0, a3
                  c.slli       a1, 8
                  andi         t5, gp, 990
                  ori          s9, s1, -692
                  rem          a5, s4, t0
                  slti         s3, s6, -826
                  c.addi16sp   sp, 96
                  mulh         a0, s1, t5
                  sltiu        t3, ra, -1955
                  andi         s4, s11, -1617
                  xor          s10, s2, a7
                  c.slli       t0, 16
                  c.lui        a1, 24
                  addi         sp, s8, -510
                  mulhu        s2, sp, t5
                  slt          t4, t3, s9
                  ori          a2, s4, 44
                  c.nop
                  divu         s0, sp, s11
                  c.addi4spn   a1, sp, 368
                  andi         a1, s5, 1287
                  addi         s11, a3, -33
                  srai         zero, a2, 28
                  ori          sp, t0, -1070
                  c.addi       a1, -1
                  slt          a1, t2, s5
                  slt          s4, s2, s1
                  c.nop
                  mulhu        s10, a4, a0
                  mul          tp, a3, a6
                  slli         a7, s10, 18
                  add          a7, s0, s4
                  andi         t1, gp, -1578
                  c.andi       a3, 24
                  xor          a2, s10, a0
                  add          s4, a2, a6
                  sll          zero, s1, a5
                  srli         t5, s9, 2
                  c.add        gp, a6
                  sra          a7, a4, a3
                  c.nop
                  or           s0, t2, a5
                  srl          t3, t6, s9
                  and          t3, s2, a2
                  divu         s9, a5, a7
                  c.and        a3, a2
                  c.li         t5, -1
                  sll          a7, gp, tp
                  c.li         a4, 21
                  sltiu        s5, t2, 208
                  c.addi4spn   a2, sp, 32
                  c.or         a0, a4
                  c.andi       s1, 24
                  c.addi16sp   sp, 80
                  xori         t6, a7, 1476
                  divu         s5, a5, a6
                  lui          s8, 311641
                  addi         a1, s9, -422
                  nop
                  c.and        a3, a0
                  mulh         a3, t1, tp
                  srli         t3, a0, 13
                  c.nop
                  c.xor        a2, a1
                  c.or         a1, s0
                  add          s4, a5, a4
                  sltu         a7, t4, a6
                  c.sub        a2, a5
                  c.srli       a0, 14
                  srli         sp, s8, 3
                  xor          a2, s3, s0
                  c.or         s0, a4
                  ori          s4, s4, 922
                  c.andi       s0, 17
                  divu         s9, tp, tp
                  c.srai       a2, 5
                  mulhu        s3, s3, s6
                  ori          s0, zero, 446
                  sltu         t6, t4, t1
                  c.srai       s0, 6
                  c.add        t4, s9
                  srai         t0, t1, 19
                  mulhu        t1, s1, gp
                  sltiu        ra, s8, -1871
                  c.lui        ra, 19
                  divu         t0, t6, t1
                  srli         s10, t5, 5
                  rem          t6, t1, a4
                  c.addi4spn   a4, sp, 544
                  c.addi4spn   s1, sp, 592
                  div          a4, s1, tp
                  sra          ra, gp, a6
                  add          tp, t4, a3
                  or           a1, zero, t5
                  sub          a7, t5, s0
                  c.srai       s1, 4
                  c.andi       a3, -1
                  c.addi16sp   sp, -16
                  c.slli       a7, 18
                  c.or         a1, a2
                  c.srai       a1, 7
                  ori          gp, s10, 668
                  c.li         a7, -1
                  c.lui        s0, 16
                  sra          a2, a1, s6
                  c.or         a3, a2
                  rem          t1, s6, s4
                  addi         t5, s10, -809
                  c.xor        a1, s0
                  srai         t0, a7, 1
                  sltu         s1, s5, s8
                  c.srli       a1, 29
                  c.slli       a5, 16
                  c.slli       t1, 26
                  auipc        a0, 248534
                  ori          t1, a6, 1339
                  c.and        s1, a1
                  c.xor        a5, a3
                  c.mv         t6, t1
                  ori          t3, s4, 1696
                  div          a0, a3, t5
                  sra          t6, s4, s7
                  remu         a7, a0, s6
                  remu         t1, a5, s6
                  c.srli       a2, 9
                  mulh         s2, s3, s0
                  nop
                  add          s1, s2, t3
                  sll          tp, gp, s5
                  div          t0, s4, s8
                  sub          a7, a1, t1
                  rem          t1, s1, s4
                  c.andi       a1, -1
                  or           a0, t1, t4
                  srai         s2, s10, 20
                  andi         s4, t6, -424
                  add          t5, a4, s0
                  sra          a0, s5, tp
                  mulhu        s10, s11, a5
                  c.xor        a4, a4
                  slti         zero, t2, -37
                  c.sub        a3, a1
                  xori         t4, gp, 1664
                  slti         s9, s5, -1910
                  nop
                  sll          t1, t0, s5
                  auipc        t6, 143881
                  c.addi       t1, -1
                  and          t0, s7, s2
                  c.nop
                  divu         a0, s8, s1
                  ori          t6, s7, 1535
                  mulhu        a3, t1, s6
                  c.addi16sp   sp, 256
                  mulh         s8, s10, s0
                  slt          s5, s1, tp
                  c.nop
                  c.and        a4, s1
                  srl          tp, s9, tp
                  mulhu        s3, a7, sp
                  slt          s10, zero, s3
                  auipc        s10, 760154
                  mulh         a5, a0, a2
                  sra          zero, a3, s7
                  c.srai       s0, 29
                  c.andi       s1, -1
                  c.lui        s8, 30
                  mul          t2, s2, s9
                  c.srai       a4, 2
                  sltiu        t0, s3, 118
                  c.srli       s1, 17
                  c.sub        s1, a4
                  div          s8, s1, s8
                  c.li         s8, -1
                  lui          s1, 383212
                  divu         s5, a5, gp
                  c.srli       a4, 7
                  addi         tp, s10, -64
                  ori          s5, t4, 1027
                  slt          s1, tp, a1
                  c.nop
                  xor          t6, s1, a5
                  xor          t1, s6, ra
                  remu         s11, a0, a0
                  mulhu        s10, t2, tp
                  c.lui        s9, 3
                  divu         gp, s8, t1
                  sub          s11, sp, t6
                  mulh         s11, s3, sp
                  srl          t6, a3, s10
                  c.or         a1, a3
                  or           a3, s0, s0
                  c.xor        a2, s1
                  slli         t5, t5, 29
                  c.addi4spn   a4, sp, 32
                  and          a1, sp, ra
                  mul          s1, t3, t5
                  mulhsu       zero, s9, s7
                  slt          s11, a7, a4
                  c.and        s1, a0
                  auipc        t2, 153557
                  c.xor        a1, a5
                  c.slli       a0, 21
                  c.or         s0, a5
                  c.and        a5, a5
                  divu         t4, s5, s4
                  mulh         s8, s9, a5
                  andi         s0, s0, -1515
                  or           s3, s1, s5
                  c.andi       a3, 6
                  c.slli       a3, 11
                  sltiu        a5, s8, -1329
                  srl          t6, s8, s10
                  c.xor        a3, a0
                  add          sp, a0, a6
                  c.sub        a4, a0
                  c.andi       a2, -1
                  sll          a3, s4, t3
                  or           t0, s1, s0
                  srli         s10, t4, 31
                  mulh         t2, s6, s7
                  slti         a7, a3, -915
                  c.nop
                  ori          s9, t2, 885
                  c.srli       s0, 9
                  c.li         s3, 28
                  sltu         a3, s10, a3
                  c.xor        a4, a5
                  xor          a4, s9, t1
                  c.or         a3, a0
                  lui          sp, 317859
                  c.addi16sp   sp, -16
                  mul          t6, t6, a2
                  c.lui        a3, 17
                  c.addi16sp   sp, -16
                  c.xor        a1, a4
                  xori         t4, s4, 138
                  sub          a4, a6, t2
                  c.and        a4, a4
                  c.or         s0, a0
                  mulhsu       t6, t4, s10
                  c.mv         a4, t6
                  c.srli       a0, 27
                  c.nop
                  c.andi       a1, 0
                  c.lui        s4, 5
                  sltu         a2, t4, s3
                  auipc        a2, 401124
                  c.lui        a4, 31
                  slli         s2, a2, 31
                  srli         ra, t5, 29
                  remu         s0, t3, s10
                  c.addi16sp   sp, -16
                  c.xor        s1, a0
                  rem          t5, s8, s10
                  c.li         s1, -1
                  c.srai       a1, 31
                  lui          t1, 814876
                  c.slli       ra, 2
                  c.or         a1, a0
                  c.srai       a3, 18
                  ori          a4, s2, -128
                  and          sp, ra, a6
                  srli         sp, t4, 0
                  sltiu        s0, a4, 1364
                  srai         t2, tp, 23
                  sll          gp, s7, a6
                  c.addi16sp   sp, -16
                  c.or         a1, s1
                  c.addi4spn   a1, sp, 800
                  rem          s8, a6, s0
                  sltiu        s8, s1, 1926
                  sltu         sp, s11, a7
                  c.srli       a4, 24
                  sub          t3, s0, t1
                  c.nop
                  slti         zero, s9, -1135
                  c.lui        s2, 8
                  add          t6, tp, t1
                  slli         s4, t4, 17
                  sra          s3, s8, a5
                  c.nop
                  div          a7, a3, ra
                  c.andi       a3, 29
                  xori         t3, a1, 883
                  or           a2, gp, s9
                  sltu         a3, a0, s5
                  c.sub        a2, a3
                  lui          t3, 473445
                  srl          s11, s1, t4
                  c.addi16sp   sp, 320
                  xor          s5, s10, a2
                  mulhsu       s4, a6, t0
                  lui          a7, 651279
                  c.addi16sp   sp, 112
                  divu         t5, gp, a2
                  slti         s4, t0, -863
                  auipc        a1, 526375
                  sltiu        t5, s2, 1261
                  xor          t6, sp, s7
                  c.srai       s0, 18
                  slt          ra, ra, a4
                  rem          s11, t6, s5
                  sll          s3, a4, s1
                  c.nop
                  c.addi       a3, -1
                  mulhsu       s5, a0, s7
                  ori          t6, s10, -1150
                  c.add        s0, a6
                  mul          s4, s4, s1
                  c.or         a3, a1
                  lui          t1, 750258
                  auipc        t2, 633970
                  div          a4, zero, s10
                  c.andi       s1, -1
                  slli         s9, a2, 17
                  sra          a2, s7, s10
                  srli         s1, t0, 19
                  slti         s4, s9, 909
                  mulh         t1, s3, s3
                  c.mv         a2, t0
                  slti         s11, s7, 402
                  c.nop
                  ori          s10, s9, -651
                  c.lui        a7, 4
                  c.li         gp, -1
                  c.add        s3, t2
                  c.li         ra, -1
                  c.sub        s0, a0
                  mulhu        a2, a1, s6
                  sra          a7, s0, ra
                  srli         s9, a2, 30
                  sll          s9, s7, a3
                  c.or         a5, a1
                  add          t5, a5, s2
                  c.addi4spn   a0, sp, 352
                  remu         s5, t1, a7
                  c.sub        s0, a2
                  nop
                  slti         sp, s6, 475
                  c.addi       s4, 30
                  add          t6, t4, a6
                  slti         gp, a5, -1609
                  c.addi16sp   sp, 496
                  nop
                  c.andi       s0, 5
                  andi         t2, s6, -387
                  xori         t5, a4, -254
                  slti         t4, gp, -747
                  add          s9, a2, a4
                  andi         s4, s8, -1011
                  add          a5, gp, t4
                  xori         t0, s4, 1762
                  sra          a0, s6, a2
                  add          a3, s2, t6
                  auipc        s4, 1032862
                  c.srai       a4, 14
                  c.or         a5, a2
                  c.sub        a2, a2
                  xori         t3, s3, 2011
                  slti         s8, s0, 656
                  sltiu        s11, a0, 290
                  sra          t0, a2, tp
                  xor          gp, a1, s0
                  c.xor        a5, a2
                  sltiu        t3, a0, -149
                  srai         t3, s5, 31
                  remu         a4, s11, a6
                  remu         tp, gp, a1
                  slti         a1, t3, -1432
                  sll          s1, t5, s8
                  c.add        s1, a1
                  sub          a0, a6, a0
                  andi         s0, ra, -1228
                  c.xor        a2, a5
                  div          s2, t5, a5
                  addi         a7, a0, -543
                  c.sub        a2, s1
                  addi         s8, t1, 492
                  remu         t0, s6, s0
                  srli         s3, tp, 10
                  c.nop
                  c.andi       a3, 12
                  c.andi       a0, -1
                  ori          s5, s6, 872
                  xor          t6, a3, tp
                  sll          s8, a4, a6
                  sll          s4, s9, s0
                  xori         a4, a4, 718
                  add          s1, t5, gp
                  mul          a1, s8, s2
                  xori         a3, s10, 610
                  c.srli       s0, 28
                  divu         s8, s0, s11
                  srl          a1, a2, s2
                  c.srai       a0, 8
                  remu         tp, a3, a4
                  sub          a7, a3, t4
                  c.xor        a0, a3
                  add          s2, t1, t0
                  c.nop
                  c.lui        s1, 7
                  andi         a3, s11, -2019
                  c.mv         t0, s8
                  c.and        a4, a3
                  srli         a3, t0, 15
                  c.addi4spn   a1, sp, 912
                  c.sub        a5, s0
                  nop
                  xori         t5, a6, -805
                  slli         s4, a3, 23
                  c.nop
                  sltu         a5, t1, t6
                  and          a7, a2, s7
                  mulhu        s0, t5, s5
                  c.add        sp, t1
                  sltiu        sp, s10, -74
                  c.mv         a7, s7
                  srli         s3, sp, 18
                  mulhsu       a4, t1, zero
                  srli         s4, tp, 17
                  ori          a5, tp, -196
                  srli         s8, ra, 10
                  sltiu        s8, a2, -165
                  srl          gp, zero, s10
                  c.sub        a4, a4
                  and          ra, s7, a0
                  c.srli       a3, 28
                  xori         s8, s2, -1789
                  divu         t6, s5, s0
                  c.addi16sp   sp, -16
                  addi         s3, s1, 1728
                  sll          s8, a3, s11
                  remu         s3, ra, a1
                  c.addi16sp   sp, 368
                  and          ra, s0, a2
                  c.addi16sp   sp, 352
                  mul          s9, a4, t2
                  srli         s8, tp, 19
                  c.sub        a2, a2
                  mulh         s3, s5, t4
                  c.srai       s0, 27
                  mul          t0, ra, a4
                  mulhu        t4, s2, gp
                  c.srli       s0, 27
                  c.add        s8, a0
                  c.addi       s11, 1
                  nop
                  c.lui        t1, 29
                  c.srai       s0, 22
                  c.srai       a2, 19
                  remu         a1, t5, t3
                  auipc        a0, 238697
                  sra          t0, t2, a3
                  mulh         a5, s5, a6
                  mulhsu       s4, s0, ra
                  c.srli       s0, 4
                  mulhsu       sp, t0, s10
                  c.lui        s10, 6
                  c.addi       s2, -1
                  c.and        a5, a3
                  mul          a4, s7, s1
                  slt          a5, t2, s2
                  andi         s4, t5, 1097
                  c.add        a1, t2
                  c.srli       a3, 22
                  c.or         s1, a3
                  c.addi4spn   a5, sp, 960
                  ori          gp, s11, 1455
                  andi         s3, s0, -1247
                  sltu         gp, a7, t5
                  mul          t3, s9, a3
                  c.mv         s2, s10
                  addi         s1, t5, -729
                  c.srli       a1, 24
                  c.li         t3, 24
                  c.li         a1, -1
                  c.add        s4, t3
                  c.slli       t2, 25
                  c.addi4spn   a2, sp, 160
                  sltiu        t1, t5, -639
                  divu         t4, s6, a1
                  c.addi16sp   sp, -16
                  sra          gp, a4, t0
                  c.sub        s1, s0
                  nop
                  add          a1, a7, t5
                  remu         a0, s9, a0
                  slli         t6, a7, 7
                  c.andi       a3, -1
                  div          t1, t1, s4
                  c.xor        a1, a1
                  nop
                  mul          s2, s9, s9
                  c.add        a5, a7
                  addi         a1, s4, -51
                  div          t6, a3, tp
                  ori          ra, t6, 360
                  sll          t2, t6, t1
                  add          t2, a3, t4
                  sll          t5, s0, a6
                  mulh         sp, tp, s9
                  add          a2, a6, t5
                  sub          a5, a7, a0
                  slli         a7, t6, 24
                  mulhsu       a4, zero, t2
                  slt          s11, t2, s0
                  c.or         a4, a3
                  slli         sp, gp, 17
                  c.sub        a1, a3
                  c.srli       a5, 25
                  c.and        s0, s1
                  lui          a4, 891962
                  add          sp, t5, s9
                  c.addi       a7, 4
                  auipc        zero, 933939
                  andi         sp, a0, 1340
                  srli         s3, s4, 20
                  sll          gp, t6, t0
                  sub          s10, zero, a7
                  sltu         ra, a4, a0
                  addi         a1, t6, -389
                  c.or         a3, a3
                  c.addi       a4, -1
                  and          tp, s4, a4
                  add          s2, s0, t2
                  sra          a2, a6, t2
                  lui          s8, 777010
                  nop
                  srl          s5, s0, t2
                  xori         s3, a6, -1613
                  slli         a3, a3, 28
                  c.addi4spn   s0, sp, 928
                  sll          s9, s8, a2
                  sra          s3, s2, t5
                  c.li         a5, -1
                  c.nop
                  c.srli       s1, 27
                  sltiu        a2, s5, -1981
                  c.or         a5, a3
                  sll          a2, s7, s0
                  or           t0, s2, a5
                  srai         t0, zero, 15
                  sub          s11, s7, s8
                  c.li         s11, -1
                  srai         sp, s10, 21
                  mul          s0, sp, ra
                  sll          s4, gp, tp
                  mulhsu       t0, gp, s0
                  slt          a1, s0, a7
                  remu         s8, s1, a6
                  mulh         sp, t3, ra
                  c.or         a0, a3
                  srli         gp, gp, 20
                  sra          s1, t2, zero
                  c.add        t4, s3
                  sll          a0, s10, zero
                  mul          t0, s4, t1
                  ori          a0, zero, -55
                  c.slli       t4, 23
                  add          s4, a5, t6
                  and          a0, s9, gp
                  div          s1, s0, t5
                  c.xor        a0, s1
                  c.slli       ra, 20
                  c.andi       a4, 3
                  c.slli       s5, 8
                  xori         a4, s4, 624
                  div          t1, a7, a6
                  sub          s3, t4, s7
                  xor          t1, t6, s2
                  c.xor        a0, s1
                  sltu         t3, t4, s5
                  c.xor        s1, a3
                  rem          s11, gp, a4
                  divu         s3, zero, s9
                  c.slli       tp, 11
                  slt          ra, t5, a0
                  remu         s0, s4, a4
                  add          s4, a7, s7
                  c.addi4spn   a4, sp, 816
                  c.nop
                  c.addi       t0, 12
                  c.xor        a4, a5
                  c.or         a3, s1
                  xor          t5, a6, sp
                  sltu         gp, t0, t1
                  addi         s11, tp, -1645
                  remu         s1, a7, a5
                  c.srli       s0, 24
                  c.mv         gp, s7
                  xori         a5, ra, -363
                  auipc        s5, 581031
                  sll          s0, s0, a0
                  sltu         t1, t4, s5
                  nop
                  rem          zero, s9, s11
                  mulhu        sp, ra, a4
                  mulhu        a5, gp, t0
                  slti         t3, a0, -992
                  rem          a0, s8, sp
                  or           a1, s9, s3
                  c.andi       a1, -1
                  sltiu        a4, s7, -1433
                  andi         a0, s2, 832
                  c.and        a1, s0
                  andi         a3, s8, -448
                  auipc        s10, 73737
                  add          a5, t1, t5
                  andi         s5, a5, 384
                  c.addi       a2, -1
                  c.add        t5, s7
                  div          a7, ra, s5
                  ori          s11, s8, -1222
                  c.sub        s0, s1
                  div          s1, sp, zero
                  andi         t4, s10, 1164
                  addi         s3, tp, 1576
                  c.andi       s0, 18
                  slli         a2, sp, 0
                  c.srli       a4, 26
                  or           s0, gp, a3
                  slti         s4, zero, -15
                  div          t3, s11, s3
                  srl          s10, a1, s11
                  ori          t1, s6, -282
                  add          s8, t4, s3
                  c.srli       a5, 2
                  slt          s4, a5, a6
                  c.addi4spn   s1, sp, 112
                  c.srai       a3, 31
                  c.xor        a4, a4
                  c.li         s8, 6
                  ori          sp, s8, 332
                  srl          tp, s8, s7
                  slli         s10, s0, 6
                  srl          t5, t2, a2
                  remu         tp, s8, a2
                  sra          sp, a6, t3
                  c.addi4spn   a3, sp, 16
                  sltu         s9, s7, s4
                  c.and        s0, a5
                  c.srli       a1, 18
                  mulhu        t1, a2, s8
                  c.lui        t4, 13
                  c.li         s4, 9
                  c.addi       tp, 28
                  sub          ra, t2, s7
                  xori         a7, sp, 1928
                  div          s3, tp, t4
                  xori         tp, tp, -1486
                  c.li         s3, -1
                  c.and        a2, a2
                  andi         s3, a5, -1845
                  c.addi4spn   a4, sp, 832
                  sltu         a4, a0, s5
                  xor          s5, s9, s1
                  mulhsu       t2, t4, tp
                  addi         t2, s10, -2008
                  mulhu        sp, t3, sp
                  c.li         sp, -1
                  and          s5, gp, s2
                  srl          a2, tp, tp
                  or           t6, a0, t0
                  c.or         a0, s0
                  mulhsu       a2, a6, s6
                  srl          s8, tp, t4
                  or           a0, t1, t2
                  c.addi4spn   a1, sp, 704
                  c.addi       t3, 27
                  xori         a2, a3, -79
                  add          s3, a4, gp
                  divu         a3, ra, s11
                  c.li         a4, -1
                  srl          gp, t4, s5
                  sltu         sp, s7, s7
                  ori          s5, t1, -175
                  rem          s4, s10, s0
                  mulhsu       ra, zero, a4
                  lui          s2, 359205
                  mulhu        s3, a0, s6
                  mulhu        t2, gp, s8
                  auipc        a4, 296145
                  c.srai       a1, 5
                  mulh         s9, s6, t4
                  slti         ra, a7, 918
                  c.srai       a3, 28
                  c.srli       a1, 4
                  c.srli       a4, 2
                  lui          s2, 857425
                  slli         t5, a5, 15
                  rem          a1, s5, a2
                  sub          a0, s11, t5
                  c.and        a3, a1
                  nop
                  c.addi4spn   a5, sp, 704
                  sra          zero, s7, sp
                  auipc        s10, 334655
                  srli         t6, s9, 3
                  xor          a7, sp, a4
                  c.slli       s10, 27
                  mulhsu       a5, s1, t1
                  div          t5, tp, a7
                  rem          s9, tp, gp
                  or           t6, t3, t4
                  remu         t6, s3, t4
                  nop
                  c.srai       a3, 25
                  andi         t1, sp, -1443
                  or           s4, s7, a2
                  c.mv         s4, tp
                  c.addi4spn   a2, sp, 928
                  sll          s4, s11, s6
                  remu         t6, s0, a0
                  c.sub        a1, a1
                  srai         a4, t1, 17
                  and          s2, zero, t4
                  c.mv         s5, a7
                  c.addi4spn   a3, sp, 912
                  c.mv         t6, t6
                  sll          a7, s3, s1
                  srl          zero, s4, s10
                  andi         a3, s9, -747
                  sltu         a0, a3, a3
                  c.addi4spn   s0, sp, 784
                  addi         s8, s10, -1369
                  c.slli       s9, 28
                  mul          tp, zero, a3
                  divu         s3, s10, a2
                  c.xor        s0, a0
                  c.nop
                  addi         tp, s3, 1280
                  srai         sp, s5, 5
                  c.andi       a1, 12
                  c.srli       s0, 16
                  c.srai       a3, 17
                  sra          t6, ra, tp
                  auipc        a5, 343981
                  andi         s10, s1, 524
                  sltu         t0, t6, s3
                  c.or         a4, a3
                  ori          a5, s7, -1615
                  c.srai       a1, 25
                  srli         s9, a5, 1
                  mulh         s5, a0, s2
                  sra          t6, a3, s11
                  ori          s0, s0, 208
                  sra          tp, s4, s1
                  mulh         a1, s11, t6
                  c.sub        a0, a4
                  sll          t0, t0, s11
                  addi         a1, s9, 1505
                  mulhu        s1, a7, t6
                  c.add        a4, t2
                  xor          sp, s7, a7
                  slti         t0, s5, 1685
                  xor          zero, t5, s2
                  add          gp, t1, t6
                  c.addi4spn   s0, sp, 848
                  c.srli       a5, 23
                  c.li         gp, 20
                  srl          gp, ra, t0
                  divu         s5, t0, gp
                  nop
                  or           a2, t2, t1
                  sra          a5, gp, a6
                  remu         s0, a2, s10
                  mulhu        t4, s4, s4
                  c.addi4spn   a4, sp, 464
                  c.or         s0, s0
                  c.li         t2, 24
                  or           t2, a0, s3
                  c.addi       t2, 17
                  mulhu        a0, ra, s7
                  c.srai       a0, 2
                  lui          tp, 91416
                  mulhu        a3, a4, ra
                  slti         tp, t3, -1106
                  sltu         sp, s0, s5
                  srl          t1, s3, s4
                  xor          s2, s0, s9
                  sll          a3, zero, s3
                  lui          s3, 941791
                  c.or         a2, s1
                  sltu         t2, a5, a0
                  srl          ra, a1, t5
                  remu         zero, s8, s10
                  c.addi4spn   a2, sp, 816
                  and          a1, s8, t4
                  sub          t1, zero, s6
                  mulhu        t6, a0, s4
                  mulhsu       t4, a2, a3
                  c.li         a2, 19
                  c.and        s1, a1
                  nop
                  c.andi       a5, -1
                  and          a4, s7, a3
                  c.xor        a3, s1
                  srli         s4, s3, 17
                  mulh         s3, s3, gp
                  sll          s2, a2, s6
                  sub          a2, a0, s10
                  slti         ra, t6, -1239
                  add          s3, a3, a1
                  mulh         s5, sp, a2
                  c.andi       s1, -1
                  c.slli       ra, 24
                  slt          s1, a1, gp
                  c.xor        a4, a0
                  ori          t1, s11, -1409
                  remu         t1, zero, s3
                  c.addi16sp   sp, -16
                  c.li         a0, -1
                  c.li         s0, -1
                  srl          t4, a7, s11
                  mulhu        s0, s7, s11
                  c.sub        a0, a5
                  mul          gp, t1, a7
                  divu         t0, s6, tp
                  sub          zero, s0, s1
                  xori         s8, a5, 371
                  c.sub        a4, a1
                  mulhsu       zero, t0, t3
                  slli         t5, t4, 12
                  srl          a0, s9, s11
                  div          a3, s4, gp
                  slti         t3, a6, 843
                  c.addi       t3, -1
                  add          t0, a4, t0
                  sll          a4, a6, a6
                  c.srai       a3, 13
                  c.srai       s1, 6
                  c.andi       a5, -1
                  slt          t1, gp, s9
                  c.slli       t6, 17
                  mul          a3, t6, s1
                  auipc        a1, 1046106
                  srli         zero, s10, 11
                  c.srai       a0, 26
                  c.andi       a2, -1
                  c.andi       a4, 21
                  remu         s0, t2, tp
                  c.xor        a3, a2
                  c.andi       s0, 26
                  slt          t6, a1, t5
                  sra          s3, t5, s2
                  c.xor        a1, a1
                  or           t5, s2, s7
                  c.srli       a0, 26
                  sltiu        ra, a3, -1667
                  addi         s9, s1, 1695
                  c.srai       a1, 29
                  c.nop
                  mulhsu       t1, t3, t2
                  add          s8, s1, gp
                  c.addi16sp   sp, 464
                  addi         t6, s6, -622
                  sltiu        a2, tp, 1633
                  c.addi4spn   a1, sp, 496
                  c.or         a5, a3
                  slli         t4, t4, 20
                  add          t3, gp, t2
                  srl          t0, s2, a0
                  sll          a3, a4, s0
                  c.or         a2, a4
                  srai         s4, t4, 6
                  and          t4, t6, a6
                  auipc        a5, 414596
                  add          s5, ra, s8
                  c.xor        a0, a1
                  mulhsu       zero, s0, s9
                  c.andi       a3, 17
                  sltiu        zero, s9, 1777
                  mulh         s1, s8, s11
                  div          s1, a7, s0
                  srli         a7, a0, 20
                  srli         s5, s2, 6
                  c.srli       s0, 5
                  mulhsu       t5, a2, tp
                  slli         s5, s5, 29
                  sub          t2, s7, s6
                  c.slli       sp, 18
                  c.add        ra, s1
                  lui          s5, 1024192
                  addi         s11, t0, -105
                  xori         a5, t3, -707
                  nop
                  c.srli       a1, 7
                  c.add        s5, a1
                  slt          a7, s3, t1
                  c.xor        a1, a2
                  c.srli       a4, 9
                  c.add        s5, a1
                  mul          ra, s3, s3
                  sltu         s5, t5, t2
                  mulh         tp, s8, sp
                  lui          s3, 524823
                  mulhu        s0, s9, s9
                  nop
                  c.addi4spn   s1, sp, 704
                  c.xor        a3, s1
                  c.srli       a1, 14
                  rem          sp, zero, s8
                  c.li         s9, 0
                  add          t5, ra, tp
                  c.nop
                  srli         s0, a7, 1
                  srl          t3, a3, t4
                  divu         t3, zero, t2
                  c.addi       s8, -1
                  rem          a1, a2, s0
                  c.srli       a1, 2
                  c.or         a1, a3
                  sltu         s11, a1, s2
                  c.addi       s1, 2
                  c.and        a5, a2
                  srl          s1, s3, s1
                  c.lui        t2, 30
                  srli         a2, tp, 23
                  sub          s0, a3, ra
                  mulhu        a2, s2, t2
                  c.srai       s0, 10
                  rem          t2, s1, t6
                  mulhu        a7, a7, zero
                  c.addi16sp   sp, -16
                  c.lui        a2, 29
                  or           tp, t0, a3
                  sub          s9, s3, t5
                  and          a3, s8, a3
                  c.addi4spn   a5, sp, 496
                  mulhsu       a7, t1, zero
                  srli         s11, a7, 7
                  c.li         s10, -1
                  c.sub        s1, s0
                  mulhu        s3, zero, a4
                  c.srai       a3, 2
                  mulhsu       s3, sp, s3
                  c.and        s1, s1
                  auipc        s4, 364639
                  ori          s0, t4, -55
                  xori         a7, t0, -1854
                  c.li         ra, -1
                  or           s11, a4, a5
                  auipc        a1, 596995
                  c.mv         gp, s0
                  slti         s8, t2, -268
                  and          s10, a3, s1
                  sltu         a4, a2, a2
                  lui          t2, 465795
                  srli         s1, s10, 24
                  mulhu        s1, a6, a3
                  addi         a3, s3, -1403
                  slli         t4, sp, 23
                  nop
                  mul          s4, gp, s1
                  c.addi       s8, 31
                  or           s1, s0, s11
                  xor          s3, s8, s9
                  mulh         a1, s3, t1
                  sub          gp, s7, s9
                  andi         t5, t2, -1785
                  c.addi16sp   sp, 384
                  xor          t6, a5, s3
                  c.or         a4, s0
                  lui          tp, 741308
                  sltiu        t5, s7, 683
                  c.lui        gp, 7
                  mul          s0, a1, s10
                  mul          s3, a1, t0
                  ori          t5, t1, -864
                  sll          zero, s4, a4
                  remu         a5, s6, s6
                  slt          a0, s10, s9
                  c.and        s0, s1
                  c.xor        a5, s1
                  divu         s0, sp, t2
                  nop
                  sub          t1, s1, t0
                  c.lui        t2, 17
                  rem          s10, t4, a1
                  andi         s9, t0, -928
                  c.xor        a0, a3
                  c.nop
                  c.add        sp, s1
                  c.li         s0, 18
                  rem          a2, tp, s10
                  c.slli       ra, 25
                  c.slli       s10, 25
                  c.slli       t3, 23
                  srli         t0, s0, 19
                  mulh         s1, zero, t3
                  andi         t3, s9, 1399
                  slt          s10, s5, ra
                  divu         s2, a5, s0
                  mul          ra, s5, s3
                  c.addi       s11, 26
                  c.xor        a5, a4
                  xori         s1, s5, -843
                  ori          s3, a6, -644
                  nop
                  xori         gp, s11, 240
                  slt          gp, a3, s10
                  sub          s4, s11, t3
                  c.add        t0, s8
                  c.slli       s0, 29
                  c.nop
                  slli         s0, t1, 15
                  sltiu        gp, s7, -1572
                  c.mv         s11, s11
                  slli         tp, s6, 19
                  srli         a7, t3, 31
                  c.nop
                  c.slli       s5, 12
                  c.or         a3, a3
                  c.addi       s11, -1
                  c.andi       s1, -1
                  c.li         a4, -1
                  xor          ra, a1, s7
                  auipc        s10, 284772
                  c.or         a1, a0
                  addi         gp, s8, -298
                  slt          t5, t1, a6
                  mul          a1, sp, t5
                  srl          s4, t3, t0
                  divu         ra, gp, s11
                  c.mv         ra, s1
                  sll          s4, s0, s11
                  xori         a4, s6, -1704
                  c.andi       a0, -1
                  mulhsu       t2, ra, t2
                  c.or         a5, s0
                  c.xor        a0, a3
                  rem          t3, s11, s8
                  c.sub        a1, a2
                  auipc        sp, 410204
                  mulhsu       s3, a4, a2
                  slli         s5, t2, 9
                  remu         t2, a7, zero
                  c.addi4spn   a5, sp, 208
                  sltu         t4, t6, s4
                  mul          a5, gp, t4
                  xori         a1, t1, 577
                  divu         s4, s5, a3
                  addi         s11, t3, -1515
                  c.srai       a5, 11
                  or           a0, t5, s11
                  sltiu        s4, s5, -1785
                  c.li         a4, -1
                  srai         zero, a3, 19
                  c.li         a7, 12
                  mulhsu       t6, a1, t4
                  c.andi       s0, 16
                  add          a1, zero, gp
                  c.addi16sp   sp, 208
                  ori          s1, a5, 217
                  c.xor        a3, s1
                  sra          a5, zero, s7
                  mulhsu       s3, a3, s8
                  srl          s11, gp, s7
                  mulhu        a2, t6, a6
                  c.sub        a3, a3
                  mulhu        a0, s4, a6
                  c.addi4spn   a2, sp, 928
                  nop
                  c.srai       s0, 29
                  c.and        a4, s1
                  and          t0, sp, s1
                  c.li         a3, -1
                  c.xor        a1, s0
                  auipc        s0, 996576
                  divu         a3, t6, ra
                  c.xor        a5, s1
                  sll          a4, s11, a7
                  c.add        s4, a2
                  auipc        s10, 508871
                  c.srli       s0, 12
                  c.li         s8, -1
                  addi         a5, t0, -1799
                  nop
                  c.slli       a1, 24
                  c.addi       t3, 10
                  mulh         a2, a0, a6
                  sra          s4, s11, a2
                  sra          t0, t4, s5
                  nop
                  add          t1, s2, t2
                  xor          s9, s2, a1
                  c.lui        s8, 23
                  slti         s8, zero, 558
                  c.addi4spn   a2, sp, 528
                  c.lui        a0, 27
                  slt          s4, t4, ra
                  slli         s3, a5, 14
                  c.srli       s0, 13
                  mulhu        a7, s7, s3
                  c.li         sp, 16
                  xor          a5, ra, s5
                  c.srli       a2, 29
                  c.addi16sp   sp, -16
                  c.or         a0, a4
                  c.andi       a2, -1
                  nop
                  andi         a5, s0, -1717
                  c.andi       a1, 20
                  c.li         s11, 9
                  c.andi       s1, -1
                  c.or         a5, a1
                  c.addi4spn   a3, sp, 432
                  c.addi4spn   a4, sp, 480
                  or           s10, sp, s4
                  mulh         t5, t4, t5
                  c.sub        s0, s0
                  sltu         sp, t3, s4
                  c.or         a3, a4
                  c.li         t0, 21
                  c.lui        s4, 13
                  sll          t4, t5, gp
                  slti         s5, s8, -1427
                  c.sub        a0, a3
                  c.and        a1, a0
                  and          s9, s10, s3
                  c.addi16sp   sp, 432
                  c.and        s1, a2
                  srli         s1, a7, 3
                  sltu         sp, s5, s11
                  and          zero, t4, a4
                  xori         t0, a1, -1426
                  sltu         s8, a7, a5
                  or           s8, s1, t4
                  c.andi       a0, 16
                  c.nop
                  c.or         a4, a0
                  c.andi       a0, 14
                  c.addi16sp   sp, 496
                  auipc        sp, 1013881
                  mul          t3, t3, s8
                  mulhu        s2, a5, s1
                  c.andi       a5, -1
                  srli         a7, t0, 18
                  slti         a0, a3, 1514
                  mulhu        s2, t2, a0
                  c.or         a4, s1
                  c.srli       a0, 19
                  add          s3, s5, a6
                  c.and        a4, a5
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_20
                  li           a2, 0x22e3e41d
                  li           a4, 0x781892ba
                  li           s0, 0x80000000
                  li           s8, 0x80000000
                  li           s10, 0x0
                  li           s4, 0x80000000
                  li           t6, 0x3824d971
                  li           s2, 0x80000000
                  li           a7, 0x80000000
                  mulhsu       t6, t1, s8
                  nop
                  sub          t1, t6, s0
                  divu         a4, t1, s0
                  mulh         s10, a4, a7
                  auipc        s2, 947302
                  auipc        a4, 224278
                  nop
                  sub          a4, s2, a2
                  nop
                  lui          s0, 597374
                  mulh         t6, a7, s4
                  mulhu        a7, s10, s4
                  sub          t1, a4, a4
                  div          a7, a2, t1 #end riscv_int_numeric_corner_stream_20
                  slti         t0, a3, 1969
                  mulhsu       ra, s11, a1
                  c.and        a1, a3
                  srai         t0, s4, 12
                  or           a5, s5, tp
                  add          ra, s11, t5
                  mulhu        t2, t4, s4
                  c.add        s9, ra
                  and          a3, s4, s11
                  div          a3, t4, a4
                  rem          s5, s11, t3
                  xor          a5, a2, a1
                  c.add        s10, t1
                  slti         tp, s11, 23
                  c.lui        t3, 9
                  c.srai       a4, 18
                  ori          a0, t5, 184
                  c.and        a2, a1
                  c.xor        s1, a4
                  rem          a3, s5, t0
                  lui          zero, 638681
                  c.addi16sp   sp, -16
                  andi         s8, tp, -1304
                  nop
                  sltu         s1, t4, s9
                  mulhsu       ra, s1, a2
                  c.slli       t6, 1
                  and          s3, a3, a1
                  sltiu        a3, t1, -328
                  c.srli       a1, 23
                  c.slli       s3, 21
                  lui          a4, 884168
                  c.addi16sp   sp, -16
                  c.and        a4, a2
                  c.addi       a5, 29
                  remu         a1, a4, sp
                  c.lui        a4, 7
                  c.addi       s4, 12
                  and          zero, gp, zero
                  mulh         a0, s4, s4
                  srl          tp, sp, s3
                  c.nop
                  c.addi       s9, -1
                  c.xor        a5, a2
                  andi         a7, s0, 1225
                  slt          s1, s2, t2
                  c.and        s1, s1
                  mul          s3, t3, a7
                  c.add        t4, s9
                  c.lui        gp, 14
                  c.and        a3, a1
                  srli         s5, s1, 29
                  c.and        a4, a2
                  sub          s0, s3, t4
                  c.li         t2, 28
                  c.or         a5, a4
                  addi         t1, t5, -1539
                  and          ra, t5, a0
                  mulhu        t5, a1, t5
                  c.addi16sp   sp, 48
                  nop
                  sra          a1, t5, a4
                  c.xor        a1, a2
                  mulh         tp, t2, s3
                  slli         ra, s0, 31
                  srl          s4, a7, t3
                  c.nop
                  nop
                  mulhu        t6, t3, t2
                  c.srli       a0, 7
                  c.xor        a3, s0
                  or           s10, s4, s11
                  slt          a7, s0, ra
                  mul          a3, t1, s11
                  xori         t5, a6, -1720
                  c.and        a5, a3
                  c.srli       s0, 2
                  srai         s2, s11, 0
                  sltiu        t0, s9, -387
                  add          ra, ra, t2
                  c.add        gp, s7
                  andi         s2, s1, 86
                  c.and        a3, a3
                  c.mv         s8, gp
                  xori         a5, s9, -1782
                  xor          s11, zero, gp
                  addi         s5, s0, -1627
                  ori          a3, s0, -723
                  addi         ra, s3, 2013
                  auipc        s4, 250216
                  slt          t6, a7, s2
                  xor          t1, t1, zero
                  lui          tp, 997618
                  sub          a1, sp, t3
                  mulhu        s8, s6, a3
                  addi         zero, s9, -683
                  c.sub        a0, s1
                  rem          a0, tp, s6
                  divu         s9, t5, s0
                  auipc        t4, 148014
                  or           s4, ra, ra
                  c.mv         tp, a3
                  nop
                  and          s0, s10, a4
                  c.add        a3, a5
                  c.srli       s1, 7
                  c.andi       s1, -1
                  c.or         a4, a2
                  or           s4, t0, s9
                  xor          t5, a6, a1
                  mulh         s0, s4, s5
                  mulh         s9, t1, a2
                  slt          t6, zero, s9
                  slt          s4, a7, a5
                  c.addi16sp   sp, 368
                  sll          s3, s4, a2
                  sra          t4, s7, a4
                  addi         gp, s10, -1153
                  mulhu        tp, a4, tp
                  rem          t4, a1, s2
                  mul          s2, s1, a5
                  xori         s9, s7, 90
                  c.sub        s0, a1
                  c.nop
                  xor          a2, sp, s2
                  c.srli       a4, 19
                  divu         t1, a2, t5
                  mul          a2, t5, s3
                  slti         s3, zero, -1033
                  c.srli       s0, 11
                  c.sub        a1, s1
                  c.add        a7, s7
                  c.nop
                  remu         s9, s7, s2
                  srai         a3, a5, 8
                  add          sp, a6, tp
                  srl          s9, s4, a1
                  sltiu        t1, t6, -1844
                  slt          t6, s1, s3
                  slt          s5, s11, t1
                  c.li         t0, 27
                  sll          tp, s0, s3
                  sub          t0, s2, a2
                  c.addi4spn   s1, sp, 784
                  slti         t0, s0, 697
                  div          a7, zero, s0
                  mulhu        s8, s3, zero
                  c.xor        a0, a3
                  srai         s4, s0, 11
                  c.xor        a3, s1
                  c.sub        a5, a1
                  c.nop
                  remu         s2, a3, s11
                  div          gp, t1, s5
                  mul          ra, a5, t4
                  c.andi       a0, -1
                  c.srli       a4, 27
                  c.li         s1, 23
                  c.srai       a1, 2
                  remu         tp, s9, s5
                  c.add        s1, gp
                  slti         gp, tp, -1602
                  c.or         a3, a0
                  andi         s5, s9, 972
                  remu         a1, s5, a3
                  sltiu        gp, ra, 1032
                  c.and        a5, s1
                  slt          s8, s11, t1
                  c.andi       a5, 23
                  xori         a2, ra, 2047
                  c.li         s0, -1
                  c.addi4spn   a3, sp, 928
                  addi         zero, s10, 1871
                  add          t1, s5, a0
                  divu         t4, a4, a2
                  srl          t4, s11, t1
                  sra          s4, ra, sp
                  sltiu        s2, s4, 0
                  c.add        s3, tp
                  nop
                  c.or         a0, a3
                  c.li         t6, 18
                  c.li         s4, -1
                  sltiu        a0, a4, -1012
                  mulh         tp, s2, s3
                  c.sub        s1, a4
                  div          t3, t6, s11
                  srai         s5, t4, 17
                  sub          s8, t3, s7
                  or           t0, s2, s2
                  add          zero, gp, s4
                  srl          t3, s10, s11
                  xori         a1, t3, 1966
                  c.srli       a0, 2
                  c.mv         s3, a4
                  mulhsu       sp, a6, s9
                  sltu         sp, t3, t5
                  c.srai       s0, 23
                  and          s9, s5, s10
                  andi         t6, t4, -1677
                  c.srli       a5, 3
                  c.li         a1, -1
                  addi         a5, a5, 338
                  lui          s5, 502100
                  c.addi16sp   sp, -16
                  srli         t1, t5, 23
                  sll          t5, s3, s7
                  slli         t6, s11, 20
                  addi         a0, s2, -937
                  sltiu        gp, s7, 1530
                  divu         zero, s9, s8
                  li           a2, 0x0 #start riscv_int_numeric_corner_stream_8
                  li           s8, 0x7cb903d3
                  li           s1, 0x80000000
                  li           t2, 0x80000000
                  li           a7, 0x80000000
                  li           s2, 0x80000000
                  li           s10, 0x80000000
                  li           t3, 0x0
                  li           t0, 0x80000000
                  li           s11, 0x80000000
                  sub          s10, a7, s11
                  divu         s11, s11, s1
                  sub          s10, t3, a7
                  mul          t0, t3, a2
                  mulh         t0, s11, a2
                  addi         t2, s11, 1507
                  rem          s1, t0, s8
                  addi         t0, t2, -823
                  addi         a2, s8, 1814
                  sub          s10, s2, t0
                  rem          t3, s11, s1
                  rem          t3, s11, t2
                  div          a2, s1, t3
                  remu         t2, s1, a7
                  remu         a7, a7, s8
                  lui          t3, 535204
                  lui          t3, 902948
                  addi         s1, s2, -1736
                  div          a2, a7, s10
                  addi         a7, s8, 406
                  mulhsu       a7, t2, s1 #end riscv_int_numeric_corner_stream_8
                  mulhu        a5, s9, t6
                  mulh         t0, a0, t1
                  c.srli       a1, 5
                  slti         t6, s8, -1982
                  xor          t0, s9, t5
                  add          a0, s3, tp
                  ori          tp, s3, -945
                  rem          t1, ra, s1
                  add          t2, s11, s8
                  c.slli       tp, 31
                  divu         t6, s1, t6
                  sll          t3, a7, a3
                  slli         t6, a7, 0
                  c.srli       a0, 15
                  xor          s3, t1, s2
                  c.srli       s1, 23
                  lui          s1, 966901
                  div          t2, a7, t3
                  c.srli       a5, 26
                  andi         s8, a4, -1002
                  mulhu        s8, s11, gp
                  c.and        s1, a2
                  c.sub        a2, a5
                  sll          t2, t5, s10
                  c.or         a5, a4
                  c.slli       s0, 2
                  mulhu        a0, t3, t1
                  slt          t6, t6, s5
                  c.lui        a1, 19
                  addi         sp, t2, -816
                  divu         gp, s10, s8
                  c.mv         ra, ra
                  c.and        a2, a5
                  c.mv         a1, gp
                  nop
                  div          s0, tp, s5
                  andi         s10, ra, 1135
                  addi         ra, a1, 1862
                  lui          t3, 818382
                  mulh         t3, a3, a6
                  or           a5, s8, a6
                  c.sub        a1, a4
                  rem          t4, s11, a7
                  mulh         t6, s4, t2
                  c.li         a3, -1
                  c.srai       a2, 18
                  div          sp, t5, a0
                  mulhu        t5, ra, t1
                  c.addi16sp   sp, -16
                  div          t5, t5, s8
                  ori          a2, zero, 821
                  andi         s0, t3, 306
                  c.nop
                  xori         s9, s2, -1213
                  auipc        zero, 259693
                  mul          a7, t1, s7
                  c.nop
                  c.mv         sp, t5
                  xor          a1, a2, tp
                  rem          s8, s7, tp
                  c.nop
                  c.srai       a1, 22
                  sra          s9, t0, a6
                  c.and        a4, a4
                  addi         s0, s0, 1475
                  mul          t0, s7, a0
                  c.sub        a5, a5
                  c.and        a2, a0
                  mulhsu       a0, gp, s8
                  sltiu        t2, a0, -1577
                  c.add        s8, t2
                  nop
                  srli         s2, a5, 29
                  div          s11, s8, a3
                  lui          s2, 14207
                  c.addi4spn   s0, sp, 112
                  c.lui        s0, 9
                  auipc        t2, 486892
                  add          s4, s3, s1
                  addi         s10, s5, 1432
                  c.addi16sp   sp, 304
                  sll          s4, a7, s2
                  c.nop
                  c.or         s0, a1
                  mulhsu       t4, a7, a4
                  c.andi       s0, -1
                  and          a1, a4, a2
                  c.addi16sp   sp, -16
                  slti         zero, gp, 1107
                  div          zero, s7, a4
                  c.xor        a4, a0
                  rem          a0, s6, a6
                  c.lui        a4, 11
                  auipc        t0, 863169
                  c.slli       sp, 9
                  ori          s5, s9, 1939
                  xori         a0, s5, -1255
                  c.addi4spn   s1, sp, 384
                  divu         s11, sp, a3
                  c.srai       a5, 27
                  c.slli       a5, 8
                  xori         s8, a5, 1041
                  and          a2, s5, a2
                  and          s10, sp, s5
                  andi         t0, s2, 1933
                  add          s9, s6, a0
                  sub          a5, a4, a4
                  divu         s11, zero, sp
                  divu         t6, a6, a3
                  c.or         a0, a4
                  srl          s9, s2, s8
                  mul          s10, gp, zero
                  srai         s10, zero, 27
                  c.xor        a1, s1
                  c.addi16sp   sp, -16
                  auipc        s1, 896253
                  auipc        s8, 91946
                  auipc        s8, 255375
                  c.andi       a1, 8
                  xori         s5, s6, 1707
                  c.srai       s1, 24
                  slt          ra, s3, sp
                  and          s5, t2, a3
                  mulhu        sp, s7, t2
                  c.srai       a0, 23
                  c.xor        a2, a5
                  remu         ra, s8, a0
                  mulhsu       a5, a1, zero
                  c.srai       a3, 31
                  c.lui        s4, 2
                  sll          s10, a2, s7
                  srl          s2, t6, t5
                  c.sub        a2, a4
                  c.addi16sp   sp, -16
                  rem          a0, s10, s1
                  c.lui        s5, 28
                  c.xor        a1, a3
                  or           a4, t5, s2
                  and          s9, s8, s7
                  c.sub        a3, a2
                  c.or         a2, a2
                  c.or         s1, s0
                  mulh         s10, t1, zero
                  srai         s2, ra, 5
                  c.addi       a2, -1
                  c.add        ra, s3
                  and          zero, t4, s2
                  slt          t6, t1, s6
                  slt          a0, a3, zero
                  rem          t4, a3, s10
                  slt          t3, a3, s0
                  slti         s0, a1, -1558
                  addi         t1, a0, 1723
                  c.li         sp, -1
                  srl          t3, a2, a1
                  add          a5, t5, ra
                  c.mv         a2, t4
                  c.add        t6, s4
                  c.addi       t3, 28
                  slti         t6, s7, 211
                  mulh         a0, t4, t5
                  divu         a1, ra, t1
                  c.sub        a1, a5
                  c.add        gp, a2
                  c.slli       a2, 4
                  lui          t6, 396351
                  c.lui        t0, 24
                  and          a7, s7, s6
                  c.addi       s4, -1
                  c.addi4spn   a0, sp, 928
                  c.srli       a3, 8
                  srli         gp, s8, 20
                  lui          sp, 63692
                  c.srli       a0, 31
                  srli         gp, a4, 18
                  c.sub        a3, a4
                  mulh         ra, t1, t5
                  c.xor        a5, a4
                  andi         t1, s2, -859
                  nop
                  nop
                  c.andi       s1, -1
                  slti         s2, s5, 94
                  c.nop
                  auipc        ra, 850306
                  rem          t6, a3, s0
                  c.addi4spn   a4, sp, 944
                  c.lui        tp, 12
                  c.andi       a1, -1
                  mulhsu       t3, s6, gp
                  mulh         s2, s1, a4
                  addi         a3, s8, 139
                  c.add        s9, s10
                  mulhsu       s3, a2, s4
                  srai         s1, t3, 2
                  and          s3, s10, s4
                  mul          s1, zero, s11
                  slli         s4, gp, 30
                  c.slli       t5, 25
                  or           t6, s0, s8
                  c.slli       t2, 24
                  c.and        s1, a5
                  srli         s5, a3, 24
                  addi         t3, a5, 1554
                  c.slli       s10, 4
                  andi         s8, s9, -694
                  xor          a1, t5, s7
                  srai         tp, ra, 9
                  c.addi       a3, 17
                  c.slli       a1, 10
                  remu         a3, a7, zero
                  c.addi4spn   a3, sp, 432
                  slt          a5, t4, s8
                  add          s2, s7, gp
                  c.li         s9, 5
                  andi         gp, t5, -601
                  mul          gp, s7, gp
                  c.or         s1, a3
                  addi         a2, a6, -1892
                  divu         s3, a6, s3
                  slli         t0, s11, 19
                  slti         s0, a6, 826
                  c.add        s5, s2
                  slt          s5, t6, t6
                  addi         tp, s3, -626
                  srl          a2, s3, gp
                  auipc        t3, 173439
                  c.lui        t2, 6
                  c.addi4spn   a0, sp, 912
                  sltu         zero, a6, t4
                  divu         a3, s9, s4
                  lui          a5, 433383
                  rem          s2, t3, s6
                  mul          t4, s8, a7
                  c.sub        s1, a5
                  mulh         s4, ra, a0
                  srai         a3, t1, 29
                  sltu         t1, a1, t5
                  and          s3, t0, s3
                  c.srai       s0, 25
                  c.andi       s1, -1
                  or           s0, s1, s6
                  srl          a1, a1, s6
                  c.xor        a5, s0
                  c.sub        s1, s1
                  div          s3, s0, t2
                  and          s3, ra, t4
                  auipc        gp, 734774
                  sra          s8, s8, s0
                  c.or         a4, s0
                  c.or         s0, a1
                  rem          a1, t4, s11
                  c.or         s0, a5
                  div          t6, gp, s11
                  andi         a0, s3, 276
                  c.lui        a7, 12
                  slt          ra, t6, s10
                  andi         a2, t0, -1097
                  c.andi       a3, -1
                  sll          t5, a5, s6
                  c.srli       a1, 26
                  c.andi       s0, -1
                  c.addi16sp   sp, -16
                  srai         a0, t3, 4
                  add          t2, s11, s7
                  sra          t2, zero, a4
                  mulhsu       s9, t5, a4
                  srli         a3, t5, 11
                  c.addi16sp   sp, -16
                  sub          a7, a7, t4
                  srli         s11, sp, 5
                  c.addi16sp   sp, 400
                  andi         t4, t2, 35
                  mul          s2, a1, t0
                  div          a0, tp, s7
                  xori         a2, t6, 29
                  sltiu        t4, t4, 432
                  c.li         t2, -1
                  xor          t6, a1, s10
                  remu         s0, t1, a4
                  sub          gp, a4, s1
                  remu         a1, t4, s6
                  sub          s4, s1, a5
                  and          s10, a0, zero
                  c.nop
                  c.srli       a2, 2
                  c.addi       s0, -1
                  mulh         s9, s3, s5
                  remu         t2, s1, s1
                  c.or         a2, a4
                  div          t1, s0, t0
                  mulhsu       t3, s4, s3
                  c.mv         t5, a5
                  slt          s9, a2, s6
                  sltu         s4, s9, zero
                  c.addi16sp   sp, -16
                  c.nop
                  remu         s3, a2, sp
                  sra          tp, s7, gp
                  divu         s9, t6, a2
                  slt          t3, a6, s1
                  addi         a5, t2, -462
                  c.andi       a0, -1
                  c.add        s8, tp
                  c.addi       a2, -1
                  or           a1, ra, t1
                  auipc        s10, 91420
                  rem          t5, a4, a0
                  c.addi16sp   sp, -16
                  c.mv         s5, a6
                  c.lui        s2, 9
                  c.srai       a3, 2
                  c.or         a1, s0
                  c.mv         a4, t5
                  xor          s2, a3, a0
                  lui          s9, 345847
                  c.srai       a3, 2
                  c.addi       t1, 1
                  remu         t6, a3, zero
                  sub          s5, t0, t0
                  sra          a5, a1, a5
                  remu         s10, a4, tp
                  div          a4, t1, gp
                  c.add        a4, s1
                  div          s9, sp, s3
                  mulhu        s4, a7, zero
                  c.srli       a3, 1
                  mulh         gp, s11, s2
                  sll          a2, s8, t6
                  c.lui        t4, 20
                  srai         zero, t5, 23
                  mulh         gp, s4, zero
                  c.and        a3, a3
                  c.add        s3, t5
                  nop
                  c.mv         t3, t6
                  c.srli       a3, 17
                  c.sub        a5, a1
                  srl          a2, t0, a0
                  c.li         t2, 20
                  c.srai       a3, 20
                  mul          t4, s10, sp
                  c.addi16sp   sp, 352
                  auipc        a2, 462980
                  srai         t5, s11, 4
                  lui          s1, 278163
                  c.and        a0, a0
                  slti         a1, s6, -72
                  rem          a0, a3, s11
                  c.slli       t4, 27
                  xor          s0, t0, t4
                  sub          t2, s6, t5
                  slt          a4, s3, s5
                  slt          a5, t5, t6
                  srl          a2, t5, t3
                  c.srli       a0, 11
                  c.andi       s0, -1
                  c.or         a0, s1
                  c.sub        s0, s1
                  addi         tp, s10, 1212
                  slli         t4, gp, 17
                  c.addi4spn   a3, sp, 560
                  ori          a5, s7, 1636
                  srai         t5, a4, 21
                  c.sub        s1, s1
                  rem          s1, a1, tp
                  c.srai       a3, 27
                  c.addi       s0, 1
                  sub          t5, t2, t1
                  c.add        s11, ra
                  rem          t6, s9, a2
                  rem          a1, t6, t5
                  mulh         s11, a3, a1
                  slti         a0, a2, 1414
                  sll          s8, a1, a7
                  sltiu        s8, s8, -370
                  nop
                  sltiu        s1, t2, -1241
                  xori         t1, a2, -196
                  andi         s3, s11, 644
                  mul          t6, s7, s11
                  c.and        s1, a0
                  srl          zero, sp, ra
                  slt          s0, a3, s9
                  c.xor        a3, a5
                  c.srli       a1, 7
                  c.sub        s0, a4
                  srl          a4, t6, t2
                  sub          t3, a6, a6
                  or           zero, a5, t1
                  c.srli       s0, 31
                  div          a7, a5, a5
                  mul          s8, s3, a0
                  auipc        zero, 239153
                  sll          t6, s0, s11
                  mulh         gp, s9, t4
                  andi         s11, t5, 1890
                  and          t4, tp, zero
                  c.mv         t6, t3
                  sll          zero, t1, a6
                  mulhu        s2, s11, sp
                  auipc        zero, 993694
                  c.nop
                  ori          t4, zero, 1504
                  ori          s11, t0, 1047
                  mulhsu       sp, t2, t5
                  c.mv         t6, a7
                  c.or         s0, s1
                  sub          s4, s9, t2
                  c.li         t6, 8
                  c.addi4spn   a5, sp, 864
                  sll          gp, a7, t3
                  c.or         a0, s0
                  c.mv         s3, gp
                  or           s10, t5, t5
                  xor          zero, t2, t2
                  mul          s8, s3, a0
                  add          t4, ra, t6
                  slti         a2, a3, 1986
                  and          a2, t1, t6
                  sll          s9, s8, s11
                  c.slli       s4, 29
                  remu         t6, t0, s2
                  nop
                  srai         s8, s5, 8
                  c.mv         ra, s10
                  mulh         s5, a7, gp
                  c.mv         a4, a7
                  rem          t6, zero, s0
                  slt          t5, zero, s4
                  c.nop
                  slti         s8, t5, -1999
                  c.add        s3, t4
                  srli         s1, t1, 25
                  slti         a4, s1, 756
                  slt          tp, t5, a3
                  c.or         a0, a3
                  mulhsu       s11, s5, a7
                  c.xor        s0, a2
                  c.or         a0, a0
                  sltiu        a5, t6, 1346
                  xori         s5, a2, 2043
                  srli         sp, sp, 18
                  or           tp, gp, a3
                  or           a5, zero, s8
                  c.li         a1, -1
                  c.xor        a2, a0
                  sltiu        s3, s1, 626
                  c.nop
                  sltu         a5, s11, s7
                  slti         s9, a5, 1098
                  c.add        t1, s4
                  c.lui        a0, 23
                  c.andi       s0, -1
                  c.lui        a1, 7
                  c.nop
                  remu         s4, a1, a4
                  c.sub        a1, a2
                  lui          s9, 139731
                  c.or         a1, s0
                  div          a2, s3, s11
                  div          t1, s9, t6
                  andi         tp, sp, -1806
                  div          tp, a1, zero
                  slt          t6, s11, a7
                  lui          t3, 356515
                  lui          s0, 621467
                  andi         s0, s7, -892
                  mulhu        s1, ra, t0
                  auipc        s4, 182716
                  divu         a5, s3, s4
                  srl          t0, s5, s10
                  mulhu        tp, s5, ra
                  slti         t4, s6, -1596
                  sub          s5, tp, t3
                  mulh         a1, ra, s7
                  c.slli       s10, 19
                  slti         a1, sp, 575
                  and          a2, s1, s1
                  c.li         a5, -1
                  sltiu        s2, a5, -1315
                  div          a1, tp, s11
                  nop
                  srli         a3, s2, 28
                  srl          sp, s5, a7
                  srl          t6, sp, s6
                  rem          a5, ra, ra
                  c.addi16sp   sp, 288
                  c.srai       s1, 9
                  c.and        a0, a3
                  c.sub        a4, a3
                  c.addi4spn   a2, sp, 192
                  andi         s5, a4, 1814
                  or           t1, s3, s5
                  slt          s10, t5, a5
                  xor          s0, t3, s7
                  sltiu        a5, s0, 773
                  add          a1, t0, s1
                  div          a1, s9, t1
                  or           s2, sp, zero
                  c.andi       a3, -1
                  slti         s11, a7, 1632
                  addi         a4, s2, -679
                  sltu         s9, s2, zero
                  srai         s3, tp, 4
                  c.add        a4, s1
                  xor          t3, s2, s9
                  or           a2, s5, zero
                  c.nop
                  lui          s5, 311606
                  c.andi       a3, 28
                  mulhsu       s2, s1, s6
                  c.xor        a0, a1
                  srl          sp, a4, s4
                  c.mv         s8, t3
                  mulhu        s3, t4, a7
                  sltiu        s1, a1, -1983
                  srl          s5, t6, t4
                  addi         a7, s7, -373
                  mul          a3, ra, t6
                  and          t3, t3, ra
                  c.srai       a0, 29
                  sltiu        s2, s6, -888
                  c.li         sp, 30
                  srai         s1, zero, 30
                  c.and        a4, s1
                  sll          t1, t2, s10
                  slt          t6, tp, tp
                  slli         s2, a0, 10
                  lui          s5, 862728
                  mul          s1, s8, t6
                  and          ra, a0, a6
                  andi         tp, a5, 554
                  c.srli       a5, 8
                  c.slli       s1, 28
                  add          a0, s0, s6
                  c.addi       a7, 26
                  mul          t3, s2, a5
                  lui          gp, 169133
                  c.lui        gp, 30
                  mulhsu       s5, t0, s6
                  srl          a7, s4, a3
                  xori         t1, s2, 1287
                  srl          a3, s7, zero
                  sltiu        gp, sp, -743
                  c.and        s1, a4
                  mulhsu       s4, s2, s7
                  auipc        s8, 976052
                  mulhu        s2, t1, tp
                  c.addi16sp   sp, 48
                  lui          t0, 594248
                  c.sub        a5, a1
                  div          s11, a6, t4
                  srli         t0, s3, 17
                  c.or         a1, a5
                  c.sub        a4, s0
                  mulhu        t2, t3, ra
                  ori          s4, s6, -1365
                  mulhu        s8, ra, s3
                  xor          sp, t1, a2
                  addi         tp, t6, 776
                  divu         ra, s8, s9
                  c.li         t1, 29
                  c.addi16sp   sp, -16
                  c.add        s0, ra
                  lui          a3, 998621
                  nop
                  slli         t4, s5, 9
                  c.nop
                  addi         a1, ra, -1272
                  andi         tp, t1, -1721
                  c.and        s1, a0
                  c.and        a1, s1
                  mulhu        tp, s4, a4
                  c.andi       a5, -1
                  srl          s5, t5, a3
                  mulhu        a5, s4, s6
                  lui          sp, 477093
                  or           zero, a3, s9
                  sll          ra, a5, a1
                  ori          s1, sp, 327
                  slt          s4, s10, zero
                  c.mv         t2, s2
                  mulh         t3, a1, a6
                  addi         ra, t3, -695
                  slli         ra, s3, 30
                  remu         gp, a4, s1
                  or           t2, a1, t4
                  div          a0, t3, s9
                  divu         a4, s8, s3
                  c.and        s0, a2
                  xor          s11, a6, t3
                  c.addi4spn   a1, sp, 208
                  andi         t5, s3, -10
                  c.li         s4, -1
                  c.or         a5, a1
                  sll          s4, s1, t5
                  c.srli       a1, 1
                  or           a4, s5, t2
                  c.addi       s0, 29
                  c.sub        a2, s0
                  c.sub        s0, s0
                  c.and        a4, a3
                  nop
                  add          t4, t4, s8
                  sll          s4, a0, a4
                  c.slli       t5, 29
                  c.mv         sp, ra
                  c.slli       tp, 27
                  and          ra, a5, s0
                  srai         s2, s6, 14
                  c.li         ra, 5
                  lui          a7, 15436
                  mul          s3, s9, a1
                  sll          s5, s9, t2
                  or           ra, t3, s7
                  xori         a4, a6, 1025
                  c.addi16sp   sp, 448
                  addi         s10, t5, 281
                  ori          s0, ra, -181
                  c.srai       a1, 17
                  mulh         zero, s3, s9
                  srl          a7, s1, t6
                  nop
                  mulh         t1, t0, t0
                  div          s1, a0, a4
                  c.add        t4, a5
                  c.sub        a4, s1
                  c.addi4spn   a2, sp, 160
                  c.sub        a3, a4
                  c.or         a4, a3
                  remu         a0, t6, s2
                  c.sub        s1, a3
                  c.mv         s3, s2
                  c.addi       t2, 28
                  srai         t0, s10, 12
                  sll          t1, a2, tp
                  nop
                  mulh         a2, t0, a0
                  ori          tp, s1, 1128
                  srli         s5, s0, 10
                  c.and        a3, a5
                  c.srai       s1, 8
                  addi         a3, a3, -1357
                  srai         s4, s9, 18
                  remu         a5, s7, s1
                  srli         s3, gp, 17
                  rem          a7, s5, t4
                  c.addi4spn   s1, sp, 240
                  srai         t4, s7, 2
                  c.and        a1, a2
                  c.nop
                  c.srli       a3, 30
                  sltu         gp, zero, a5
                  c.slli       a5, 30
                  c.sub        a2, s0
                  c.srli       s0, 25
                  sll          t6, s2, a0
                  sll          a0, ra, tp
                  c.nop
                  div          s11, s1, s1
                  sltu         t2, gp, s3
                  sltu         t1, sp, sp
                  xor          s8, gp, a4
                  sub          s1, sp, a6
                  mulhsu       s2, s1, zero
                  c.xor        a1, a5
                  c.xor        a4, a0
                  mulh         t6, a5, a7
                  rem          a3, sp, t5
                  c.sub        a3, a5
                  c.slli       s9, 20
                  mul          s4, a6, s1
                  sra          tp, s7, a5
                  sltu         a2, a6, s11
                  c.and        s1, s0
                  c.addi4spn   a0, sp, 48
                  c.andi       a5, -1
                  auipc        ra, 783416
                  c.slli       s4, 27
                  c.addi16sp   sp, -16
                  andi         a5, ra, 1072
                  c.sub        a4, a3
                  mulh         s4, a1, a6
                  divu         s5, t4, t6
                  sltu         s8, s3, a1
                  c.and        s1, a0
                  c.lui        s4, 26
                  c.xor        a2, a3
                  or           s2, s11, a7
                  c.andi       s0, -1
                  srai         s3, t5, 0
                  nop
                  nop
                  c.li         s4, 12
                  c.add        a7, s5
                  div          s1, a7, s0
                  and          ra, s11, a6
                  div          ra, a2, t4
                  sltu         a4, t3, a7
                  c.mv         gp, s11
                  sltu         s8, s11, s8
                  andi         a3, t2, 1635
                  c.sub        a5, a5
                  add          a1, s3, s2
                  rem          ra, a5, s5
                  add          s1, s8, s4
                  c.slli       a3, 4
                  xor          s1, t4, s11
                  c.addi4spn   a5, sp, 208
                  div          a7, s11, s7
                  sll          gp, sp, s1
                  srl          s10, a5, t4
                  c.or         a0, s1
                  c.or         a4, a1
                  srl          a3, t0, tp
                  c.li         tp, -1
                  lui          t1, 1005997
                  c.mv         a0, sp
                  srai         a3, s0, 25
                  mul          ra, s4, zero
                  sra          a3, s5, s9
                  c.or         a5, s0
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_7
                  li           s0, 0xffffffff
                  li           tp, 0x4b83977f
                  li           s10, 0x0
                  li           a7, 0x759d5eb4
                  li           t3, 0xffffffff
                  li           t1, 0x80000000
                  li           s4, 0x80000000
                  li           ra, 0x5c7511c
                  li           a5, 0x0
                  divu         a7, a7, s10
                  sub          tp, t1, a5
                  addi         s10, t3, -1435
                  mulhsu       s0, a5, ra
                  nop
                  add          s0, s0, ra
                  addi         s10, a5, 224
                  mulhu        s0, t3, a5
                  divu         a7, s8, t1
                  rem          a5, s4, t1
                  mulh         ra, a5, s4
                  lui          a7, 352062
                  mul          s4, a5, tp
                  mul          a5, t1, t3
                  mulhsu       a5, ra, a5
                  lui          t3, 368661
                  mulhu        ra, t1, t1
                  divu         a5, s0, s0
                  lui          s8, 473364 #end riscv_int_numeric_corner_stream_7
                  xori         s3, zero, 1505
                  c.lui        s0, 3
                  addi         s3, s6, 1460
                  lui          a7, 1017886
                  c.mv         a0, s1
                  slli         t3, gp, 29
                  c.and        a5, a5
                  lui          s1, 498629
                  add          t2, a3, s1
                  slti         a7, s6, 481
                  c.sub        a0, a4
                  c.slli       s11, 4
                  divu         zero, a0, a1
                  andi         a0, a2, 625
                  divu         t3, a2, a1
                  c.addi16sp   sp, 176
                  slti         a7, t0, 1160
                  srai         ra, t4, 14
                  add          tp, s4, s9
                  c.addi       s3, 7
                  c.addi16sp   sp, -16
                  div          s3, a5, s9
                  c.addi16sp   sp, -16
                  c.lui        t6, 29
                  andi         gp, s0, -1681
                  remu         ra, s2, a1
                  c.add        t5, t2
                  mulhu        t2, zero, s4
                  c.addi       gp, -1
                  srai         t6, t4, 18
                  sltiu        s11, s8, 304
                  slti         t3, s1, -908
                  xori         tp, a3, -1836
                  andi         a4, a2, -1634
                  lui          a4, 216755
                  c.sub        a3, s1
                  c.li         s3, -1
                  mul          tp, s1, t0
                  divu         zero, sp, t2
                  remu         t4, s4, s10
                  srl          s2, s9, s1
                  xori         t3, s7, 1508
                  c.srai       a2, 3
                  slli         t4, s9, 6
                  c.or         s0, a3
                  mulhu        t5, t1, t1
                  slti         a4, sp, -958
                  mulhsu       gp, a5, a4
                  slti         a5, a2, 383
                  c.addi4spn   a4, sp, 944
                  c.sub        a2, a0
                  c.addi16sp   sp, 208
                  mulhu        s5, t0, s9
                  lui          a2, 577101
                  c.and        s1, a1
                  sltiu        sp, s1, -205
                  xori         gp, a1, -806
                  ori          s9, a2, -1274
                  c.addi       a7, 14
                  xor          a0, s4, tp
                  mulhsu       ra, t0, s8
                  sub          s9, a2, s6
                  c.sub        s0, s1
                  c.add        tp, t4
                  c.srli       a5, 23
                  c.srai       a3, 23
                  c.slli       a2, 18
                  c.mv         t1, s11
                  c.addi       s10, -1
                  c.or         a3, a0
                  addi         sp, t2, -1441
                  slti         a7, a5, 1423
                  mulhsu       a0, t4, s5
                  sltu         t1, s3, s1
                  c.add        a7, s11
                  c.andi       s0, -1
                  slti         s11, s3, 1424
                  c.addi16sp   sp, -16
                  auipc        a2, 357309
                  sltu         sp, t6, t3
                  srai         a2, t0, 9
                  nop
                  c.mv         s5, s1
                  c.mv         a7, t6
                  c.addi16sp   sp, 48
                  nop
                  c.andi       a0, 6
                  c.li         a2, 21
                  c.and        a5, s0
                  auipc        a1, 313292
                  c.slli       t3, 4
                  slt          gp, a0, zero
                  or           t0, gp, gp
                  srli         a1, t4, 22
                  sltiu        a1, a6, 1493
                  c.addi       s10, 31
                  c.srai       a1, 25
                  addi         s1, ra, 2039
                  slti         t4, s7, -953
                  c.slli       t0, 24
                  slt          t0, t4, a4
                  mulhu        s1, s11, t6
                  sltu         t0, a5, s3
                  c.addi       a4, -1
                  c.lui        a4, 22
                  lui          s1, 411106
                  nop
                  sltiu        s4, s10, -1701
                  mulhsu       gp, a4, t3
                  mulhsu       s5, s11, a5
                  sll          s0, a0, t6
                  c.li         a5, 14
                  auipc        t2, 705427
                  c.sub        s0, a2
                  c.srli       a4, 27
                  slli         s1, s8, 20
                  div          t2, gp, a4
                  c.andi       a5, 25
                  addi         a5, s9, 318
                  mulh         s9, s8, t6
                  c.andi       a0, -1
                  rem          a7, ra, a2
                  c.srli       a0, 1
                  and          s3, a4, a5
                  c.add        s0, a6
                  slt          a1, sp, a2
                  sll          sp, s1, zero
                  c.or         a5, s0
                  slt          tp, ra, s0
                  mulhu        s10, s11, s0
                  or           s8, s10, a1
                  add          a0, tp, s0
                  c.addi16sp   sp, 224
                  c.xor        s1, s0
                  sub          s8, t4, s6
                  c.nop
                  andi         s4, t4, -70
                  nop
                  remu         s4, a3, s9
                  auipc        a7, 1023688
                  c.andi       a5, 0
                  c.add        s10, t0
                  c.sub        s0, a3
                  sra          zero, t4, s2
                  divu         s3, t0, t5
                  c.li         t6, 28
                  c.sub        s1, a0
                  slt          s8, zero, a7
                  c.addi4spn   a0, sp, 320
                  sra          ra, t5, a7
                  slli         gp, a1, 0
                  c.mv         a3, a3
                  c.addi16sp   sp, -16
                  mulhu        t0, t5, zero
                  srl          s3, s10, gp
                  ori          a2, a6, 1250
                  or           s1, a0, a4
                  c.addi16sp   sp, -16
                  c.add        s8, t2
                  sltiu        t3, tp, 1402
                  xor          t5, zero, zero
                  sltu         s3, tp, t0
                  c.xor        a3, s1
                  srai         s2, a1, 22
                  mulhsu       s0, a0, t0
                  divu         s3, a0, gp
                  c.mv         t2, s11
                  sra          s9, s10, s7
                  mulhu        sp, ra, a1
                  ori          zero, gp, -622
                  xori         a1, sp, -1695
                  sra          s8, s5, s8
                  xori         a4, gp, -903
                  sltu         tp, t6, s4
                  rem          t5, sp, a0
                  c.li         a3, -1
                  c.add        s5, ra
                  auipc        s8, 852237
                  lui          s11, 1003563
                  slt          ra, t6, s10
                  and          s10, s2, a7
                  xori         sp, s6, -831
                  and          a2, a0, a2
                  sll          s8, s11, a1
                  c.add        s11, sp
                  div          t5, t1, s0
                  slt          s3, t6, s7
                  andi         ra, s4, -518
                  c.nop
                  srai         s0, s9, 20
                  xori         t5, s1, -1302
                  or           t0, s7, t1
                  c.and        a3, s1
                  mulh         a7, s8, zero
                  c.xor        a5, a1
                  or           t2, t3, a6
                  c.add        t2, a0
                  c.lui        s1, 21
                  c.li         s0, 30
                  c.and        a5, a1
                  c.add        t4, s3
                  mulhu        gp, s10, s5
                  c.add        s0, a5
                  andi         gp, t4, 340
                  c.slli       s3, 1
                  c.add        a7, a3
                  c.li         s0, -1
                  c.lui        a2, 8
                  slt          sp, a5, t5
                  andi         zero, s0, 715
                  xori         a7, gp, -84
                  c.lui        s2, 8
                  rem          s5, a2, a7
                  div          t1, t0, s7
                  mulh         s9, sp, a6
                  xori         s2, t3, -1409
                  addi         a3, s10, -335
                  divu         a4, a2, s3
                  andi         a5, t0, -123
                  c.addi4spn   a0, sp, 688
                  xori         a1, t1, 1087
                  sub          s9, t6, s10
                  c.nop
                  nop
                  c.mv         tp, ra
                  c.or         a1, a3
                  lui          s9, 552918
                  and          s1, t6, s3
                  srai         tp, s10, 27
                  slt          s5, t2, t3
                  mulh         tp, s1, s4
                  c.addi       ra, 18
                  lui          s9, 1021477
                  ori          t5, s2, 470
                  sub          a7, s11, a7
                  and          a3, s6, a6
                  add          a1, a4, a6
                  ori          s8, a6, -93
                  mulh         s5, a5, a2
                  c.and        a0, a4
                  remu         ra, s5, s5
                  c.slli       s2, 25
                  c.lui        a2, 2
                  remu         s10, s8, s8
                  srli         t2, s2, 22
                  add          s4, zero, t4
                  auipc        zero, 66233
                  c.or         a4, a3
                  slli         s2, zero, 17
                  c.xor        a4, a0
                  c.nop
                  add          s1, s8, t3
                  sltu         zero, a2, a3
                  slt          t0, sp, zero
                  remu         s0, ra, s10
                  nop
                  div          t5, s11, tp
                  c.xor        a5, a1
                  slti         s2, s5, 41
                  c.sub        a5, a3
                  divu         s0, a2, s0
                  remu         gp, t0, ra
                  mulhsu       s3, s2, t1
                  or           a7, s8, a6
                  auipc        s4, 125974
                  c.addi16sp   sp, -16
                  c.sub        s1, a4
                  c.sub        a1, a4
                  xori         t3, a7, -1391
                  slt          s3, s4, a1
                  xori         t6, s9, 1432
                  c.or         a2, a0
                  mul          s4, t5, s9
                  c.mv         a4, s2
                  sll          s8, t5, t2
                  divu         t1, a6, t6
                  add          ra, t4, a5
                  c.addi16sp   sp, -16
                  slti         ra, sp, -450
                  mulh         s11, s1, t6
                  c.slli       a7, 24
                  c.li         tp, 4
                  c.srai       a3, 1
                  slti         a4, s1, 202
                  remu         t3, a5, s2
                  rem          a2, s10, ra
                  mulhu        ra, s1, s0
                  divu         t2, s2, s1
                  c.sub        a5, a4
                  c.sub        s0, a1
                  and          a0, gp, tp
                  or           a3, a4, a2
                  srli         t6, s3, 17
                  add          a2, a0, a3
                  and          s0, a1, t2
                  c.or         s0, s1
                  rem          sp, t0, t1
                  nop
                  c.xor        a1, a4
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_2
                  li           a4, 0x0
                  li           s11, 0x80000000
                  li           s1, 0x0
                  li           t6, 0x0
                  li           sp, 0x615052e3
                  li           gp, 0x470ae1cb
                  li           s0, 0xffffffff
                  li           s10, 0xffffffff
                  li           a3, 0x80000000
                  lui          s1, 47983
                  div          t5, t6, s1
                  mulh         gp, a4, s11
                  mulh         s11, sp, s11
                  rem          s0, gp, s10
                  add          a3, s0, a3
                  rem          s10, gp, t5
                  addi         t6, s0, -1395
                  add          s10, a3, t6
                  nop
                  mulhu        s10, gp, t6
                  divu         gp, t6, s11
                  mulhu        t6, s1, a3
                  mul          s1, gp, gp
                  mulhu        s11, gp, t6
                  div          t5, s1, s11
                  remu         t6, s11, s10 #end riscv_int_numeric_corner_stream_2
                  sll          s11, t1, s2
                  c.srli       s1, 17
                  c.xor        a5, s0
                  c.andi       s0, 1
                  c.or         s0, a0
                  ori          gp, a3, -214
                  c.srli       a4, 27
                  sltiu        a2, s7, -1697
                  mul          a2, s7, a5
                  sub          ra, zero, a4
                  or           a5, s5, s8
                  c.xor        a5, a3
                  addi         s9, s9, 1886
                  c.addi       s10, 25
                  c.and        a5, s0
                  ori          t3, zero, -268
                  slti         a5, s11, -1809
                  c.or         s0, a4
                  slti         a4, s6, -154
                  c.srli       a0, 27
                  lui          t2, 281996
                  ori          tp, tp, 1935
                  rem          zero, s9, gp
                  add          s10, a5, a4
                  sltu         sp, sp, s1
                  nop
                  c.nop
                  and          a7, s8, t5
                  add          s9, s11, s11
                  auipc        zero, 600069
                  and          s2, s1, t6
                  div          t0, a0, s10
                  xori         s2, s2, 1948
                  c.and        a3, a2
                  c.nop
                  divu         s9, a2, t3
                  sll          a1, a0, a1
                  slti         gp, a6, 1402
                  xori         t2, a0, -25
                  xori         s10, t0, -1111
                  c.srai       a1, 15
                  remu         s1, a4, t0
                  c.add        t3, s1
                  div          a0, s7, a7
                  sltu         t5, s5, zero
                  mulhsu       t0, s0, a7
                  ori          s3, s6, -1509
                  c.srli       s0, 14
                  mul          s11, s4, t3
                  xor          tp, s1, tp
                  c.slli       t3, 5
                  c.xor        a2, a4
                  sltiu        s2, s5, -1900
                  sub          a5, a3, s3
                  c.mv         ra, t3
                  mulh         s8, sp, t6
                  srli         s3, tp, 10
                  sll          ra, a5, ra
                  mulh         zero, a6, a3
                  rem          t6, sp, t1
                  slti         t3, a2, 796
                  mulh         s4, s7, ra
                  mulhsu       t5, a2, s5
                  c.or         a1, s0
                  c.nop
                  c.slli       s4, 24
                  mulhsu       s8, t4, s7
                  c.mv         s5, a0
                  c.addi4spn   a1, sp, 1008
                  c.slli       sp, 14
                  mulhu        s4, a1, t4
                  c.li         s8, 21
                  slli         s4, a7, 18
                  c.li         a0, 24
                  lui          zero, 756523
                  c.xor        a2, a0
                  div          a7, a3, s10
                  c.lui        t2, 3
                  mulh         a5, s10, s1
                  sub          s8, s4, ra
                  c.or         a0, s1
                  div          t4, t2, t4
                  c.xor        a3, a1
                  c.srli       a0, 1
                  c.and        s1, a5
                  c.andi       a0, -1
                  divu         tp, t3, s9
                  c.or         a4, s1
                  c.andi       s0, -1
                  mulhu        t1, a7, t1
                  c.srli       a3, 15
                  ori          t3, a3, -1887
                  srli         a1, t5, 11
                  addi         s4, a4, -1134
                  c.or         s0, a3
                  sltiu        a0, a1, -1018
                  xori         a2, gp, -1920
                  slt          s4, s7, a3
                  c.nop
                  slt          tp, tp, t0
                  srl          s1, s9, a4
                  c.or         a1, s0
                  lui          s10, 589438
                  nop
                  srl          t0, a3, a4
                  rem          s0, a4, a0
                  li           a5, 0xde890acc #start riscv_int_numeric_corner_stream_9
                  li           a3, 0x7213694c
                  li           s11, 0xd6537be0
                  li           s3, 0x0
                  li           gp, 0x80000000
                  li           a1, 0x88f722cf
                  li           t4, 0xffffffff
                  li           s4, 0x80000000
                  li           s1, 0xffffffff
                  li           s0, 0xffffffff
                  mul          t4, a3, gp
                  mulhsu       s0, a5, a3
                  nop
                  mulhsu       s1, s3, a3
                  remu         s4, s4, s11
                  lui          s4, 103057
                  mulh         t4, s3, gp
                  mul          t4, t4, s3
                  divu         s1, s3, s3
                  mulhsu       gp, t4, s4
                  mulh         s3, s4, t4
                  mul          s0, s3, s0
                  auipc        gp, 604377
                  mulh         s0, s0, a1
                  addi         gp, t4, 665
                  mulh         s0, a5, a3
                  sub          s4, s11, s3
                  addi         gp, s4, -695
                  mulhu        t4, s4, s0
                  rem          s0, s4, s3
                  remu         a5, a5, s4
                  mul          a5, gp, s11
                  div          s3, s11, s1
                  mulh         s1, t4, a5
                  mulh         s4, t4, s4
                  mulhu        s0, s11, s0
                  divu         s4, s0, t4
                  add          s1, s4, a1 #end riscv_int_numeric_corner_stream_9
                  c.addi16sp   sp, 32
                  mulhsu       zero, s0, s0
                  ori          t4, s7, -1437
                  c.lui        s0, 26
                  c.mv         s9, gp
                  add          t5, t4, s4
                  c.xor        a1, a5
                  sltu         t5, s0, t0
                  addi         t6, a5, -182
                  slt          s3, t6, t2
                  c.srai       a1, 23
                  sltu         a7, s11, a5
                  srl          s2, t6, s0
                  addi         a7, gp, -1810
                  mulhu        t6, tp, a0
                  c.nop
                  sll          s5, s6, sp
                  c.addi4spn   s1, sp, 160
                  addi         s10, t6, 1594
                  and          ra, s3, a5
                  c.lui        s4, 9
                  c.addi16sp   sp, -16
                  c.slli       sp, 6
                  slli         t4, s2, 23
                  srai         t6, t6, 1
                  mulh         s4, gp, t5
                  c.addi16sp   sp, -16
                  mulhsu       a3, s1, a7
                  c.srli       a5, 27
                  c.addi4spn   a3, sp, 192
                  xor          tp, s3, a4
                  c.addi4spn   a2, sp, 1008
                  auipc        ra, 527047
                  sra          a0, t4, s3
                  div          a5, a1, t1
                  mul          s4, s11, s1
                  c.andi       a3, 25
                  sub          a0, s6, s7
                  c.srai       a3, 18
                  mulhsu       a0, t1, s0
                  rem          sp, a4, s2
                  ori          s8, t6, -867
                  c.mv         s0, a0
                  mulhu        zero, tp, a7
                  c.xor        s0, a1
                  c.li         t0, 12
                  c.or         a2, s0
                  c.lui        t3, 19
                  remu         t1, a2, a3
                  c.mv         s4, sp
                  c.addi4spn   a1, sp, 352
                  c.addi16sp   sp, -16
                  mul          t5, a6, s8
                  c.andi       a4, 19
                  srai         t0, a3, 28
                  c.and        a0, a1
                  c.mv         t3, s6
                  c.slli       ra, 7
                  c.lui        a1, 12
                  sra          a7, a4, s8
                  sra          s8, t4, a1
                  mulh         t6, t4, a4
                  div          s5, ra, s6
                  add          a7, t0, tp
                  c.xor        a5, a3
                  sll          s3, t2, s4
                  div          s1, t0, t4
                  mul          a3, a0, a7
                  xor          s3, s6, s3
                  and          t4, s2, a3
                  nop
                  nop
                  addi         s10, s3, 1949
                  sub          a4, s2, zero
                  c.srli       a2, 1
                  and          s1, a6, t6
                  slti         s10, zero, -200
                  c.lui        t5, 13
                  rem          s0, a0, t0
                  c.srli       a1, 23
                  c.and        s0, a5
                  c.and        a2, s1
                  c.srai       a2, 14
                  c.addi       s4, -1
                  mulh         s10, a6, a4
                  sltu         a5, s9, t1
                  c.or         a1, a5
                  sltu         s1, a5, t2
                  mulh         s5, t1, gp
                  addi         s0, a1, 428
                  c.sub        a2, s0
                  c.lui        gp, 22
                  c.srai       a5, 22
                  c.nop
                  c.mv         s4, s1
                  c.sub        a5, s0
                  mulhsu       a2, t5, t1
                  addi         t1, a7, -1577
                  sltu         ra, tp, s0
                  c.mv         s4, s7
                  c.add        gp, tp
                  div          tp, a3, a2
                  rem          s9, s9, s11
                  nop
                  c.slli       s4, 20
                  c.or         a4, s1
                  mulh         s10, ra, t5
                  sltiu        s4, s7, -1661
                  c.addi4spn   a1, sp, 752
                  and          t0, s10, s3
                  c.addi       t1, 24
                  c.li         s8, -1
                  c.srli       a0, 14
                  slti         t1, s9, 446
                  c.or         a2, s1
                  sub          s9, a6, a2
                  div          s4, zero, s10
                  rem          t6, a2, t3
                  c.or         s0, a3
                  divu         t4, a7, a4
                  c.or         s0, a2
                  andi         s8, a2, 1748
                  sltu         t5, a7, s4
                  nop
                  lui          t2, 1006839
                  srai         s10, t4, 19
                  srli         tp, s2, 10
                  ori          t3, a3, -1249
                  c.and        a5, a3
                  remu         ra, s0, a6
                  ori          s10, s1, -148
                  c.andi       s1, 29
                  sub          s1, s9, a2
                  c.xor        a5, a5
                  mulh         t2, s0, tp
                  c.nop
                  remu         a2, t2, a3
                  c.slli       s4, 24
                  or           a1, t0, t6
                  c.sub        a2, s1
                  and          t6, sp, a1
                  mul          s2, s6, a0
                  c.addi       a7, 25
                  divu         a5, t5, s4
                  c.srai       a0, 18
                  nop
                  xori         s2, a0, 1566
                  sltiu        t3, a2, 1144
                  xor          zero, a5, s8
                  c.andi       a3, 9
                  c.andi       a0, -1
                  auipc        t2, 525369
                  c.addi16sp   sp, 256
                  mulh         tp, a2, s0
                  c.and        a4, a2
                  c.or         a5, a2
                  c.srli       s0, 20
                  c.mv         a4, a7
                  mulh         s9, t2, t6
                  srl          a2, a6, a3
                  c.andi       a3, -1
                  c.mv         s11, t6
                  c.sub        a2, s0
                  srl          t3, gp, s2
                  c.and        a5, s0
                  srl          sp, t5, a3
                  nop
                  c.addi       tp, 20
                  lui          s8, 41838
                  nop
                  or           s11, s10, s11
                  c.nop
                  slt          s2, t1, a2
                  sltiu        t2, s1, 1527
                  srli         s5, a0, 27
                  c.add        gp, s7
                  addi         t4, t4, -610
                  c.lui        t4, 23
                  sll          gp, s2, gp
                  lui          s1, 117397
                  c.srai       a0, 1
                  c.and        a3, a2
                  li           s2, 0xa40fc59c #start riscv_int_numeric_corner_stream_0
                  li           s9, 0xffffffff
                  li           a5, 0x80000000
                  li           s11, 0x0
                  li           s3, 0x80000000
                  li           a7, 0x80000000
                  li           a2, 0x80000000
                  li           sp, 0xffffffff
                  li           s4, 0xffffffff
                  li           t5, 0xffffffff
                  sub          s9, s2, s4
                  mul          a5, s9, sp
                  addi         s4, a5, 1797
                  mulhsu       t5, sp, s3
                  mul          s4, a5, t5
                  addi         s3, s3, -1183
                  remu         sp, sp, t5
                  div          a5, a2, t5
                  auipc        s4, 440282
                  addi         a2, a7, 1608
                  remu         sp, s2, s4
                  mulh         s4, sp, s4
                  mulhsu       sp, a2, a5
                  mulhu        s9, t5, sp
                  rem          s3, s2, s4
                  auipc        sp, 3035
                  rem          s9, t5, a2
                  mulhsu       s9, sp, s2
                  rem          a2, s3, a5
                  divu         t5, s2, s3
                  mulhsu       a2, s9, sp
                  mulhsu       sp, a2, a5 #end riscv_int_numeric_corner_stream_0
                  c.srli       s0, 10
                  sll          t5, s0, s0
                  c.addi16sp   sp, -16
                  srl          a1, a6, a7
                  div          t3, s1, s4
                  c.xor        s1, a4
                  c.and        a2, s1
                  mul          s2, t3, t6
                  c.addi       s1, 15
                  divu         tp, s7, a3
                  or           s11, gp, a1
                  mulhsu       s10, a5, t4
                  sltu         s2, t5, s7
                  sra          s2, s4, s10
                  lui          t0, 438414
                  lui          t1, 129755
                  nop
                  xor          t3, s3, ra
                  srli         s2, s0, 30
                  xor          a0, s2, a5
                  c.mv         s2, a7
                  slli         t5, s9, 8
                  c.srai       a3, 26
                  srl          s3, a2, s5
                  c.nop
                  mulhu        s2, a5, s9
                  c.or         a1, a4
                  lui          ra, 646618
                  ori          sp, s1, -221
                  addi         t6, t6, -545
                  xor          zero, a6, a0
                  c.lui        s0, 6
                  and          s5, gp, a7
                  c.addi16sp   sp, -16
                  ori          t5, a2, 1780
                  rem          s8, t1, s7
                  rem          a7, t1, a5
                  sltu         zero, t6, a1
                  mulhu        s5, t6, s2
                  xori         a2, a1, 281
                  rem          s8, tp, t5
                  c.xor        a5, a4
                  c.sub        a2, a0
                  div          s8, gp, s7
                  c.addi       tp, -1
                  sra          a5, t1, a6
                  div          s11, a2, gp
                  remu         t6, a4, ra
                  c.and        a1, s1
                  sll          a3, sp, s3
                  rem          sp, t6, t1
                  c.addi4spn   a5, sp, 784
                  div          a2, t3, a6
                  c.li         s11, 11
                  c.addi4spn   a5, sp, 960
                  sltiu        t3, t2, 1065
                  sub          t2, t3, s2
                  sll          a0, s6, t3
                  andi         s4, gp, 332
                  c.addi4spn   a5, sp, 992
                  or           s0, a0, s2
                  c.or         s1, s0
                  mul          t6, t3, s8
                  srai         tp, tp, 4
                  rem          gp, t5, ra
                  srai         gp, a4, 22
                  c.lui        t4, 13
                  mulhsu       sp, s5, t3
                  and          a0, tp, s10
                  slti         t6, zero, -819
                  remu         t6, s0, t1
                  slt          ra, tp, a2
                  nop
                  xori         a2, s11, -1810
                  mulhsu       a3, s4, s4
                  sub          t3, t0, sp
                  mul          t6, s8, t0
                  c.and        a5, a0
                  lui          a1, 145242
                  mulhu        s8, s11, a5
                  sub          s8, t1, t4
                  sltu         t2, a5, s6
                  xori         gp, t3, -1093
                  c.or         s1, a4
                  sll          s10, a4, s3
                  nop
                  c.srai       s0, 12
                  sub          s5, a1, t2
                  andi         s3, s10, -86
                  rem          s0, s5, t2
                  and          s1, a1, t3
                  or           a2, a3, zero
                  andi         t0, s5, 1023
                  mulhsu       s2, a0, t6
                  slli         t4, s0, 8
                  c.li         s11, -1
                  mulh         a5, a5, t0
                  c.add        ra, gp
                  c.addi4spn   a2, sp, 432
                  c.srai       s1, 12
                  sll          s5, t3, s8
                  rem          t0, s5, s1
                  sll          t5, sp, t5
                  sltu         t4, s4, a0
                  auipc        t4, 68447
                  c.mv         s3, a5
                  mulhu        tp, a4, ra
                  remu         gp, ra, s1
                  xor          s4, a1, t1
                  and          a3, t2, t3
                  xor          t2, ra, s4
                  c.li         s9, 7
                  auipc        s2, 916615
                  andi         s2, a0, 930
                  c.nop
                  xori         a0, s4, 230
                  div          s9, a6, s8
                  sub          a4, t3, zero
                  auipc        s5, 320855
                  c.sub        a0, a1
                  srai         t3, sp, 2
                  c.add        a2, t6
                  sub          s9, t4, s0
                  addi         s2, ra, -682
                  divu         s5, a6, zero
                  c.mv         s4, t6
                  divu         a4, t3, s2
                  c.addi       a0, 13
                  nop
                  mul          s3, s10, t5
                  c.li         a5, -1
                  c.addi       s1, 31
                  xor          gp, tp, t4
                  mulhu        s3, a6, s2
                  slt          a2, a5, a2
                  mulh         a5, s0, s3
                  c.addi       ra, -1
                  c.sub        s1, a1
                  addi         s8, t0, 1003
                  divu         a3, t0, s7
                  c.sub        a5, a2
                  ori          t1, a4, -98
                  andi         s0, gp, 1346
                  andi         a2, a7, -882
                  c.srli       a2, 16
                  remu         t4, s10, t6
                  srai         s10, t5, 16
                  c.srli       a3, 25
                  c.srai       a5, 21
                  c.sub        s0, a2
                  andi         a4, ra, 1244
                  sll          zero, a6, t1
                  nop
                  slt          t5, s8, sp
                  c.li         a7, -1
                  sltu         t1, sp, zero
                  srl          t2, tp, s10
                  srli         t2, t0, 2
                  c.andi       a4, -1
                  c.add        t1, s3
                  xor          s11, a1, t4
                  c.andi       a1, -1
                  remu         s11, a1, tp
                  c.add        t5, gp
                  add          a3, ra, t6
                  c.lui        t1, 8
                  slli         s3, zero, 19
                  nop
                  c.mv         a0, a0
                  c.and        a5, s1
                  c.nop
                  rem          t3, t0, s2
                  srai         t6, a5, 7
                  sll          t4, a2, t4
                  sub          gp, s3, sp
                  slt          zero, t1, zero
                  srli         s5, t4, 6
                  srl          zero, t3, t5
                  add          t4, s1, t3
                  c.xor        a5, a1
                  or           a0, s7, t0
                  mulhsu       sp, a3, sp
                  c.xor        s0, a5
                  rem          s1, s8, sp
                  andi         t5, sp, 1715
                  srai         s1, a6, 18
                  add          t2, t0, gp
                  srl          t2, t6, tp
                  addi         s8, s8, 885
                  c.addi       s10, -1
                  or           s9, a5, s1
                  xori         t3, a4, 379
                  and          a1, s2, s3
                  c.nop
                  c.andi       a2, -1
                  c.slli       t2, 15
                  andi         a2, s6, 1673
                  sltiu        s4, s10, 166
                  srli         s11, a7, 13
                  xor          a2, t1, t5
                  sll          s1, s2, s7
                  srli         s10, gp, 0
                  xor          ra, t0, s4
                  c.xor        a0, a4
                  c.addi4spn   a3, sp, 112
                  and          t3, t1, a0
                  slli         s2, s9, 20
                  mul          s5, gp, a6
                  remu         t2, s6, a7
                  auipc        t6, 29779
                  divu         t2, a1, t3
                  c.or         a0, a1
                  andi         a4, s5, 1141
                  xor          s1, s9, s2
                  c.lui        a7, 30
                  nop
                  c.nop
                  c.or         a1, a5
                  mul          a1, a0, s6
                  c.addi4spn   a3, sp, 800
                  c.andi       a1, -1
                  c.sub        s0, a5
                  div          s9, s7, t1
                  c.nop
                  sra          s2, sp, sp
                  lui          t5, 8954
                  c.or         a3, s0
                  sll          t2, a7, t0
                  nop
                  div          s0, ra, a1
                  c.andi       a4, 30
                  add          a7, t6, s1
                  rem          zero, s1, s10
                  c.andi       a0, 13
                  xori         gp, t1, -1227
                  andi         s8, s4, -28
                  c.or         a4, a5
                  remu         s5, t6, s8
                  srai         t6, t6, 9
                  c.srli       a2, 11
                  xor          s8, s7, s0
                  mulhu        s8, a2, a6
                  divu         s8, a6, a0
                  xori         s4, a2, -951
                  addi         tp, t0, 1446
                  srli         s4, a2, 27
                  slli         s5, tp, 10
                  or           a0, t0, t3
                  c.li         t0, -1
                  c.nop
                  c.or         s0, a3
                  c.srli       a4, 24
                  sra          s10, s0, zero
                  mulh         t5, gp, s2
                  mulh         s10, s7, a6
                  xori         t6, sp, 1762
                  slti         t1, ra, -733
                  c.li         a4, 18
                  c.lui        s3, 20
                  xor          tp, s10, a4
                  c.or         a0, a0
                  sltu         s1, tp, s0
                  lui          s8, 548647
                  sra          ra, s0, s11
                  c.addi16sp   sp, -16
                  rem          s9, s6, s0
                  slli         t1, sp, 10
                  sub          zero, t3, s0
                  mul          a4, a0, a6
                  c.srai       s1, 5
                  slli         s8, s0, 22
                  slti         t1, s9, 1549
                  c.nop
                  c.xor        a3, a3
                  c.or         a1, a2
                  auipc        t1, 50041
                  div          a1, s5, t0
                  mulhu        t5, sp, t3
                  sra          s5, a2, t1
                  xori         s4, zero, 1988
                  slti         zero, t4, 5
                  sltu         s10, s4, t6
                  auipc        s10, 259349
                  and          s1, t6, tp
                  xor          t2, s7, t6
                  mulh         s11, gp, zero
                  c.nop
                  srl          zero, t0, t4
                  c.srai       s0, 22
                  c.mv         t1, a2
                  xori         t4, t2, -6
                  c.srli       a3, 8
                  addi         t5, s3, 1072
                  xori         s10, s1, -1521
                  c.and        s1, a5
                  lui          s0, 778333
                  auipc        s10, 558035
                  mulhsu       s9, s7, t6
                  mulhu        a0, a2, t2
                  rem          a3, s9, s9
                  remu         t4, s8, s5
                  rem          s9, s3, a4
                  slti         t4, t3, -1683
                  sub          t3, t0, sp
                  xori         s5, s0, -1361
                  ori          ra, t4, -1497
                  sra          t5, a3, s2
                  ori          ra, sp, 6
                  addi         t3, a0, 606
                  lui          s10, 300790
                  slt          zero, s5, a2
                  c.addi16sp   sp, 192
                  rem          zero, ra, t2
                  c.add        s10, a7
                  slli         t6, gp, 7
                  auipc        a5, 260567
                  andi         gp, ra, 236
                  ori          t2, s9, -2034
                  sltiu        a4, t5, -493
                  mulh         t2, t5, s8
                  sub          s8, s11, a0
                  c.slli       a5, 12
                  c.nop
                  divu         sp, s10, s3
                  sll          s1, s11, s2
                  c.add        s3, a1
                  xori         t4, s5, 698
                  c.srli       s0, 9
                  mulhu        t0, t4, s4
                  nop
                  c.xor        a0, a0
                  addi         t2, t5, 1919
                  addi         zero, zero, 1561
                  c.li         t5, 27
                  mulhu        t0, sp, a6
                  sll          s8, tp, a7
                  c.andi       a4, 24
                  c.andi       a3, -1
                  auipc        t2, 440168
                  slli         t2, s1, 23
                  c.addi       a7, 5
                  and          s4, ra, t5
                  c.addi4spn   a0, sp, 240
                  c.lui        t1, 1
                  c.and        a2, a3
                  and          t0, sp, s10
                  slli         a3, s3, 30
                  srai         t0, s0, 24
                  divu         sp, a0, s11
                  c.srai       a3, 11
                  auipc        gp, 215138
                  c.srai       s0, 5
                  divu         s5, s2, a7
                  ori          t3, a2, -325
                  xori         ra, s11, 742
                  div          tp, a1, s8
                  c.xor        a4, a3
                  sltu         sp, s7, a0
                  mulh         a5, a4, s4
                  c.slli       s4, 4
                  c.slli       s2, 18
                  add          s4, a3, t0
                  c.addi       s2, 10
                  c.addi4spn   a5, sp, 784
                  c.and        a0, a0
                  c.srli       a4, 6
                  rem          s3, s1, t5
                  nop
                  or           t1, t3, s4
                  c.xor        a2, s0
                  slli         s2, s6, 23
                  c.srai       s0, 25
                  sltu         s8, s10, s1
                  c.sub        s0, s0
                  andi         t3, t6, -1167
                  c.mv         s8, s6
                  c.srli       s0, 31
                  c.and        a2, a0
                  nop
                  c.or         a1, a3
                  c.addi16sp   sp, 288
                  slti         ra, s4, 903
                  sll          t4, a4, s2
                  nop
                  mul          s8, s6, s3
                  c.lui        ra, 26
                  ori          s4, t5, -993
                  c.srai       s1, 16
                  slt          a4, a2, a6
                  c.or         a5, a2
                  c.li         ra, -1
                  sub          s5, a7, s10
                  ori          zero, a5, 808
                  c.lui        tp, 28
                  c.or         a3, a0
                  slli         s5, s11, 21
                  srl          t0, s5, a0
                  rem          t6, t5, a2
                  c.nop
                  sra          t4, ra, a5
                  or           s0, gp, a0
                  sub          a5, t6, t5
                  srli         s9, a6, 30
                  and          zero, t1, a2
                  c.srai       s1, 13
                  sra          ra, t5, s11
                  c.nop
                  c.slli       s4, 29
                  c.srai       a1, 1
                  c.sub        a2, a0
                  lui          ra, 40706
                  auipc        ra, 710737
                  c.slli       s3, 2
                  andi         a3, a0, -1425
                  remu         zero, t0, s5
                  c.xor        a3, s1
                  sub          s9, s9, t4
                  c.xor        s0, a4
                  div          a5, ra, tp
                  lui          t1, 332596
                  c.mv         a0, s0
                  c.li         a0, -1
                  srli         s4, s3, 11
                  srai         t3, s4, 20
                  mul          s9, t4, s11
                  sltiu        a2, s0, -1659
                  c.li         a2, -1
                  remu         s5, a4, a4
                  c.xor        a2, s1
                  mul          ra, a5, t5
                  srli         s10, t4, 29
                  c.and        s0, a5
                  xor          gp, a3, s0
                  mulh         sp, s7, t2
                  c.li         t6, 20
                  slt          s0, s9, t6
                  rem          t1, t4, s4
                  xor          t0, a6, s2
                  lui          a0, 161473
                  rem          s3, a1, a7
                  srai         t2, s7, 3
                  slli         t3, t1, 10
                  lui          a4, 343780
                  rem          s1, s4, s6
                  andi         a7, t2, -1034
                  sltu         t3, a3, a2
                  sltu         a0, a0, a4
                  sltiu        s2, s5, -24
                  addi         t0, sp, 1863
                  remu         a2, s0, t3
                  c.srli       a5, 26
                  c.addi       s3, 12
                  slt          zero, s0, a7
                  sub          t6, a2, s11
                  rem          a3, s2, s10
                  or           s8, s0, t0
                  mulhu        t2, a6, s2
                  lui          t1, 473340
                  div          t5, a6, tp
                  c.addi16sp   sp, 368
                  c.addi4spn   a5, sp, 128
                  c.srli       s1, 7
                  srli         t3, s11, 0
                  sra          s4, s3, tp
                  c.srai       s0, 14
                  c.srai       a5, 31
                  c.sub        a3, a4
                  srai         s3, ra, 3
                  c.srli       a0, 1
                  c.srli       a1, 11
                  nop
                  mul          a1, t6, s10
                  srli         t5, t5, 29
                  mulhu        a5, a5, a2
                  sra          s11, a2, a7
                  sltu         t1, s11, s8
                  srai         sp, sp, 6
                  c.addi       a5, -1
                  c.addi16sp   sp, 64
                  sltiu        t2, s4, 1955
                  ori          s0, t1, -1067
                  c.srli       a2, 3
                  srai         t3, s8, 10
                  c.addi       t2, 10
                  c.and        a0, a5
                  div          s9, zero, t0
                  c.addi       tp, 7
                  div          a0, s11, s9
                  rem          sp, a0, t6
                  c.lui        t6, 24
                  c.add        s1, a2
                  and          s5, a3, a1
                  c.andi       a5, -1
                  andi         s2, tp, -92
                  c.add        s3, t2
                  rem          t2, t4, s5
                  sra          tp, t4, s8
                  c.addi       t4, -1
                  sltiu        s4, tp, -581
                  c.and        s0, a4
                  mulh         a5, s5, s11
                  c.andi       a0, 4
                  c.or         a2, s0
                  mulh         a7, t2, a5
                  mulhu        s3, s0, a4
                  mulhu        a5, a3, t0
                  c.or         a0, a5
                  srli         s9, t6, 27
                  addi         t4, a6, 1426
                  xor          s5, t6, s10
                  ori          s1, s8, 19
                  mulh         s8, tp, a5
                  c.and        a0, s1
                  mulh         s8, a3, gp
                  srli         s11, t4, 5
                  slli         s3, s3, 9
                  addi         s3, s6, 681
                  nop
                  slti         s2, s1, 328
                  c.addi16sp   sp, 64
                  srl          gp, t2, s10
                  c.add        t4, s2
                  c.sub        s1, a4
                  c.nop
                  c.or         a5, a4
                  c.lui        s11, 6
                  mulhu        s0, s0, a4
                  c.andi       s1, -1
                  nop
                  sra          t5, ra, tp
                  srai         s3, s10, 13
                  xor          a5, a6, a2
                  srl          t1, s5, t3
                  c.addi4spn   a3, sp, 800
                  c.andi       s1, -1
                  ori          s11, a2, -1354
                  c.lui        t6, 27
                  sltiu        t4, s8, 172
                  andi         a3, a6, 294
                  and          a5, s7, a4
                  c.xor        a3, s1
                  xori         s2, sp, 1630
                  mulhu        s11, s4, t3
                  c.and        s0, s0
                  c.li         s11, 24
                  mulhu        gp, tp, tp
                  c.add        a2, a4
                  c.slli       t1, 5
                  c.add        a1, s7
                  mulhu        sp, t1, s10
                  addi         s10, s8, -1337
                  c.lui        tp, 21
                  sll          gp, s6, a1
                  lui          s4, 6110
                  c.and        a3, a0
                  c.lui        t1, 26
                  srl          s1, t6, t5
                  xori         t0, a2, -741
                  auipc        t2, 758259
                  auipc        t6, 149116
                  sll          t0, t5, a6
                  mulhu        a1, t4, s1
                  c.srli       s1, 5
                  mulhu        a3, t3, a3
                  c.slli       sp, 27
                  c.andi       s1, -1
                  srai         a0, a4, 5
                  nop
                  c.srli       a4, 13
                  auipc        t1, 760810
                  lui          gp, 199084
                  mulhu        s2, sp, a6
                  ori          t0, s6, 99
                  c.andi       a2, -1
                  srai         t2, s9, 26
                  div          a7, a4, t5
                  slli         s5, s10, 21
                  div          t6, a4, a4
                  add          s5, gp, s10
                  ori          s3, s11, -396
                  c.nop
                  sra          s0, a5, a4
                  c.slli       a4, 10
                  mulhu        s5, s2, s5
                  c.slli       t4, 27
                  nop
                  sub          s2, sp, s11
                  c.xor        a2, a2
                  sub          a1, zero, ra
                  c.lui        a7, 1
                  c.li         t1, 20
                  c.xor        s1, a5
                  mul          t1, a2, s10
                  c.lui        a7, 5
                  c.srli       a5, 13
                  c.xor        a3, s0
                  mul          a4, s4, tp
                  c.li         t1, -1
                  div          sp, s11, t1
                  ori          tp, s3, -286
                  c.add        t0, s2
                  xor          a3, s2, s11
                  sltiu        a2, s10, 217
                  c.or         a2, a2
                  c.srli       a3, 23
                  auipc        a7, 33574
                  c.sub        a3, s1
                  slt          t3, ra, a2
                  sub          t2, gp, s9
                  sub          s0, s11, sp
                  sltiu        a7, a5, -946
                  ori          t1, t2, -540
                  xori         a7, s3, -595
                  sltu         t1, a5, s11
                  sub          sp, a5, s5
                  c.add        s0, s0
                  div          a3, t2, s11
                  divu         sp, s0, zero
                  slti         s8, t5, 1917
                  ori          s2, a6, -1854
                  c.mv         t1, a5
                  mul          zero, a0, gp
                  sub          t1, s1, s0
                  srl          ra, s11, a1
                  c.sub        s0, s1
                  xor          a0, s5, s10
                  or           a0, a7, a5
                  xori         t4, a7, 1681
                  sra          a5, s1, a3
                  divu         s10, tp, s2
                  or           t4, a2, s7
                  c.srli       a4, 23
                  sltiu        s0, s4, 115
                  mulh         s3, s10, s3
                  c.or         a3, a5
                  c.srai       s0, 26
                  c.mv         s5, s2
                  rem          a1, a3, s0
                  c.addi4spn   a3, sp, 880
                  andi         s8, sp, -901
                  slt          t6, s6, a7
                  xori         s8, s10, -105
                  c.addi4spn   a5, sp, 656
                  c.mv         s8, s0
                  sltiu        ra, t4, 501
                  c.lui        gp, 25
                  auipc        t2, 960850
                  c.nop
                  and          t1, gp, a5
                  add          a5, s11, gp
                  srai         t2, t2, 2
                  mulh         a7, a1, s4
                  c.add        t4, s6
                  c.lui        s4, 4
                  c.or         s1, a4
                  remu         t5, t5, a0
                  srl          s9, gp, a7
                  xor          a1, a4, a2
                  rem          s4, s10, s11
                  c.and        a2, s0
                  slt          s3, a0, a2
                  mulh         s9, a2, t6
                  slli         t1, s4, 26
                  remu         t1, s2, t4
                  c.andi       a2, -1
                  c.srli       a1, 5
                  c.slli       t5, 15
                  sra          s10, s4, t4
                  auipc        a1, 842621
                  andi         s11, a2, 951
                  c.lui        s9, 5
                  c.srli       a0, 2
                  addi         a2, t5, -1210
                  c.srai       a3, 13
                  rem          s1, a3, a6
                  div          s0, ra, ra
                  c.li         t0, 1
                  c.addi4spn   a2, sp, 528
                  c.addi       ra, -1
                  remu         s8, t6, sp
                  c.addi       s9, -1
                  or           s0, zero, t3
                  addi         a1, a5, 1914
                  c.xor        a1, a4
                  auipc        s0, 709467
                  c.li         s3, 27
                  lui          t5, 616189
                  xor          gp, t0, s0
                  remu         t4, a5, tp
                  lui          t2, 1028909
                  mulh         s0, a7, a4
                  and          a4, t4, s4
                  c.srli       a5, 15
                  c.srai       a0, 22
                  c.and        a3, a4
                  mulh         gp, t1, sp
                  sub          s3, s3, t2
                  rem          s9, s7, s5
                  add          s0, sp, s2
                  c.lui        a5, 17
                  c.slli       s10, 3
                  xor          a0, a1, s4
                  mul          t1, s3, zero
                  ori          s5, t1, -1657
                  sltiu        s9, a2, -1431
                  slti         tp, t0, 22
                  srl          s2, a6, a3
                  mulhsu       t0, t0, s10
                  divu         s8, a0, a7
                  mulhu        tp, a5, s10
                  or           a3, t6, s5
                  c.nop
                  c.andi       s1, 24
                  nop
                  addi         t2, a5, 1755
                  lui          zero, 82962
                  c.addi16sp   sp, 480
                  c.and        a3, a4
                  c.sub        a3, a0
                  or           s11, a0, s2
                  c.slli       t2, 24
                  c.addi       a3, -1
                  mulh         gp, zero, s8
                  addi         t2, t4, 637
                  and          t1, a7, a7
                  xor          sp, tp, t5
                  addi         a7, t6, -1907
                  sltiu        t6, a3, -209
                  div          s5, s3, t2
                  srai         zero, a5, 12
                  or           s3, s0, t4
                  add          a5, a1, a6
                  c.srai       a3, 15
                  andi         s8, t2, -1465
                  c.addi       sp, -1
                  c.slli       t6, 3
                  remu         a0, s4, t1
                  srl          gp, a4, tp
                  div          sp, a2, a4
                  nop
                  remu         s10, s1, s10
                  slt          sp, s2, t5
                  c.li         a1, -1
                  c.sub        a3, s1
                  c.srli       a2, 30
                  divu         t1, ra, a3
                  sll          s11, s5, sp
                  mul          s4, gp, t2
                  nop
                  sltiu        t5, t1, -104
                  srli         s9, zero, 18
                  c.mv         a5, t5
                  c.srai       a5, 29
                  sltu         t5, zero, t6
                  srai         a5, zero, 14
                  div          s5, gp, a2
                  slt          zero, t0, s1
                  c.slli       gp, 22
                  c.and        a1, a2
                  lui          t1, 215455
                  mulhsu       t2, s2, t0
                  c.and        a1, a5
                  c.addi16sp   sp, 224
                  and          t0, s4, s4
                  addi         a5, t5, -1930
                  c.addi4spn   s1, sp, 896
                  c.li         ra, -1
                  divu         s2, a2, t3
                  c.or         a3, a3
                  c.li         gp, -1
                  lui          s4, 240667
                  mulhsu       t5, s6, s7
                  nop
                  sltiu        t6, tp, -469
                  mulh         s5, s6, t4
                  nop
                  sltiu        a1, s8, 822
                  srai         s4, sp, 14
                  sltiu        a0, s2, -181
                  sra          ra, a1, s6
                  div          ra, s2, s4
                  rem          a1, sp, s3
                  andi         s0, s6, -2011
                  c.li         t0, -1
                  sltu         s0, a4, s11
                  c.lui        s3, 2
                  c.andi       a2, -1
                  sltu         a4, t2, a6
                  rem          a1, a4, s7
                  mulhu        sp, a5, s8
                  c.sub        a4, a1
                  ori          a5, s10, 857
                  remu         a7, a7, t2
                  sub          a3, s0, s4
                  xor          t2, a0, t0
                  xor          a2, sp, s10
                  or           t2, s11, s11
                  mulhsu       t3, s11, t1
                  add          a2, a2, a2
                  c.addi16sp   sp, 160
                  xor          t4, s7, a1
                  slt          a0, a0, s4
                  c.or         s0, a0
                  lui          s2, 424585
                  c.addi       s1, -1
                  c.srli       a3, 17
                  andi         a1, a2, -1011
                  div          sp, a2, s3
                  and          a2, a0, t3
                  mulh         s10, t2, t1
                  mulhsu       gp, s11, s2
                  mul          a4, a1, t5
                  c.slli       t3, 17
                  c.or         a1, a0
                  c.sub        a1, a0
                  c.and        s1, a5
                  c.xor        a2, a5
                  c.srai       s0, 7
                  and          tp, s1, s2
                  srli         a2, s4, 5
                  srai         a5, a7, 14
                  c.addi4spn   a3, sp, 752
                  c.srli       s1, 17
                  andi         s10, a0, -1978
                  c.srli       a1, 11
                  c.andi       a2, -1
                  xori         s2, ra, 1213
                  c.sub        a0, a4
                  c.li         tp, 5
                  add          tp, a1, a7
                  slt          tp, tp, a5
                  or           a7, a6, s3
                  div          s2, s4, s1
                  c.andi       a4, 1
                  c.add        s4, a7
                  or           a7, tp, t2
                  remu         t1, s11, s1
                  mulhsu       t3, a4, s7
                  lui          a7, 732573
                  nop
                  remu         s3, t4, t1
                  and          s10, tp, a3
                  srli         s10, a0, 7
                  c.add        s11, s3
                  nop
                  sll          t4, s11, a4
                  sltiu        sp, s2, 1213
                  nop
                  c.addi16sp   sp, -16
                  mulh         tp, s2, s1
                  xor          sp, s2, s10
                  slli         a2, tp, 27
                  sub          s10, a1, t6
                  c.lui        s5, 25
                  auipc        a4, 357273
                  lui          t1, 12273
                  c.or         a0, a2
                  mulhu        s2, s11, s5
                  slti         t4, a1, 1995
                  or           s0, t1, s11
                  c.mv         a2, tp
                  c.sub        a1, s0
                  rem          s9, zero, a7
                  c.addi       ra, -1
                  c.add        sp, s2
                  mulhu        a2, tp, s11
                  c.addi       t0, -1
                  c.sub        a4, s1
                  rem          zero, a7, s9
                  c.addi16sp   sp, -16
                  lui          s1, 463880
                  sltu         a5, s1, s5
                  xor          ra, a3, sp
                  auipc        gp, 309590
                  c.and        s1, a4
                  la x22, test_done
                  jalr x0, x22, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
mmode_intr_vector_1:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_2:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_3:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_4:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_5:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_6:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_7:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_8:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_9:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_10:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_11:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_12:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_13:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_14:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

mmode_intr_vector_15:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x22, test_done
                  jalr x0, x22, 0

.align           4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15
                  .option rvc;

mmode_exception_handler:
                  addi x23, x23, -4
                  sw  x16, (x23)
                  add x16, x23, zero
                  addi x16, x16, -128
                  sw  x1, 4(x16)
                  sw  x2, 8(x16)
                  sw  x3, 12(x16)
                  sw  x4, 16(x16)
                  sw  x5, 20(x16)
                  sw  x6, 24(x16)
                  sw  x7, 28(x16)
                  sw  x8, 32(x16)
                  sw  x9, 36(x16)
                  sw  x10, 40(x16)
                  sw  x11, 44(x16)
                  sw  x12, 48(x16)
                  sw  x13, 52(x16)
                  sw  x14, 56(x16)
                  sw  x15, 60(x16)
                  sw  x16, 64(x16)
                  sw  x17, 68(x16)
                  sw  x18, 72(x16)
                  sw  x19, 76(x16)
                  sw  x20, 80(x16)
                  sw  x21, 84(x16)
                  sw  x22, 88(x16)
                  sw  x23, 92(x16)
                  sw  x24, 96(x16)
                  sw  x25, 100(x16)
                  sw  x26, 104(x16)
                  sw  x27, 108(x16)
                  sw  x28, 112(x16)
                  sw  x29, 116(x16)
                  sw  x30, 120(x16)
                  sw  x31, 124(x16)
                  add x23, x16, zero
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x17, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x17, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x17, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x17, x13, ecall_handler
                  li x13, 0x1
                  beq x17, x13, instr_fault_handler
                  li x13, 0x5
                  beq x17, x13, load_fault_handler
                  li x13, 0x7
                  beq x17, x13, store_fault_handler
                  li x13, 0xc
                  beq x17, x13, pt_fault_handler
                  li x13, 0xd
                  beq x17, x13, pt_fault_handler
                  li x13, 0xf
                  beq x17, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x22, test_done
                  jalr x1, x22, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x22, write_tohost
                  jalr x0, x22, 0

instr_fault_handler:
                  add x16, x23, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x23, x16, zero
                  lw  x16, (x23)
                  addi x23, x23, 4
                  mret

load_fault_handler:
                  add x16, x23, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x23, x16, zero
                  lw  x16, (x23)
                  addi x23, x23, 4
                  mret

store_fault_handler:
                  add x16, x23, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x23, x16, zero
                  lw  x16, (x23)
                  addi x23, x23, 4
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x16, x23, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x23, x16, zero
                  lw  x16, (x23)
                  addi x23, x23, 4
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x16, x23, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x23, x16, zero
                  lw  x16, (x23)
                  addi x23, x23, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x16, x23, zero
                  lw  x1, 4(x16)
                  lw  x2, 8(x16)
                  lw  x3, 12(x16)
                  lw  x4, 16(x16)
                  lw  x5, 20(x16)
                  lw  x6, 24(x16)
                  lw  x7, 28(x16)
                  lw  x8, 32(x16)
                  lw  x9, 36(x16)
                  lw  x10, 40(x16)
                  lw  x11, 44(x16)
                  lw  x12, 48(x16)
                  lw  x13, 52(x16)
                  lw  x14, 56(x16)
                  lw  x15, 60(x16)
                  lw  x16, 64(x16)
                  lw  x17, 68(x16)
                  lw  x18, 72(x16)
                  lw  x19, 76(x16)
                  lw  x20, 80(x16)
                  lw  x21, 84(x16)
                  lw  x22, 88(x16)
                  lw  x23, 92(x16)
                  lw  x24, 96(x16)
                  lw  x25, 100(x16)
                  lw  x26, 104(x16)
                  lw  x27, 108(x16)
                  lw  x28, 112(x16)
                  lw  x29, 116(x16)
                  lw  x30, 120(x16)
                  lw  x31, 124(x16)
                  addi x16, x16, 128
                  add x23, x16, zero
                  lw  x16, (x23)
                  addi x23, x23, 4
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
