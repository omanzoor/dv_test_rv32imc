.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x21, 0x40001104
                  csrw 0x301, x21
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x21, mtvec_handler
                  ori x21, x21, 0
                  csrw 0x305, x21 # MTVEC

mepc_setup:       
                  la x21, init
                  csrw 0x341, x21

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x21, 0x1800
                  csrw 0x300, x21 # MSTATUS
                  li x21, 0x0
                  csrw 0x304, x21 # MIE
                  mret
init:             
                  li x0, 0xf9304e32
                  li x1, 0x0
                  li x2, 0xd
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0xe
                  li x7, 0x80000000
                  li x8, 0x3
                  li x9, 0x80000000
                  li x10, 0xf062de40
                  li x11, 0xd
                  li x13, 0x131df336
                  li x14, 0x0
                  li x15, 0x4aa257a5
                  li x16, 0xf2400e24
                  li x17, 0x80000000
                  li x18, 0x5abe9dc5
                  li x19, 0xfb63bbb6
                  li x20, 0xf49d8809
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x0
                  li x24, 0xc
                  li x25, 0xf5eaca0b
                  li x26, 0x9
                  li x27, 0x0
                  li x29, 0xa
                  li x30, 0xfce652b9
                  li x31, 0xacb7e069
                  la x12, user_stack_end
main:             li           a5, 0x0 #start riscv_int_numeric_corner_stream_20
                  li           ra, 0x80000000
                  li           tp, 0x0
                  li           gp, 0xa2222221
                  li           s5, 0xffffffff
                  li           s7, 0x9ac077a
                  li           t0, 0x0
                  li           t4, 0x0
                  li           a7, 0x0
                  li           s11, 0x0
                  remu         t0, a7, t4
                  sub          s11, s7, t4
                  mulhsu       tp, a7, tp
                  sub          a5, tp, s7
                  mulhsu       s7, gp, gp
                  sub          a7, gp, t0
                  rem          tp, s11, s11
                  add          s11, tp, s11
                  mul          gp, ra, ra
                  sub          a5, tp, s5
                  mul          a5, a5, gp
                  mul          ra, s7, tp
                  lui          a5, 675225
                  mulhsu       gp, ra, a5
                  mul          s11, s11, tp
                  sub          tp, s11, t0
                  nop
                  mulhsu       tp, s11, s7
                  div          a5, a7, s7
                  mul          s5, t4, t0
                  mulhu        gp, s7, a7
                  lui          tp, 458565
                  mulh         a7, ra, t4
                  mulhu        s11, a5, t0
                  remu         tp, ra, s5 #end riscv_int_numeric_corner_stream_20
                  li           t1, 0x830f9736 #start riscv_int_numeric_corner_stream_28
                  li           a7, 0x0
                  li           sp, 0xffffffff
                  li           ra, 0x80000000
                  li           s11, 0x80000000
                  li           t0, 0x80000000
                  li           s8, 0x0
                  li           a3, 0xffffffff
                  li           tp, 0x0
                  li           a5, 0x0
                  mulhu        t0, s8, a5
                  addi         tp, ra, 829
                  nop
                  addi         tp, sp, -1537
                  nop
                  mulh         s8, ra, t0
                  mul          s8, s11, sp
                  mulh         ra, t1, sp
                  lui          ra, 865062
                  sub          s8, a5, a3
                  auipc        s8, 389152
                  rem          tp, tp, s8
                  auipc        a7, 656233
                  mul          sp, a7, tp
                  rem          tp, a5, a7
                  remu         s8, sp, sp
                  nop
                  sub          s11, sp, sp
                  addi         a5, t0, -79
                  lui          t1, 546011
                  rem          s8, a3, tp
                  div          s11, sp, t0
                  sub          a7, t1, tp
                  auipc        t0, 618745
                  remu         a5, a5, tp
                  auipc        a5, 30398 #end riscv_int_numeric_corner_stream_28
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_35
                  li           s6, 0x80000000
                  li           t2, 0xffffffff
                  li           a3, 0xffffffff
                  li           s0, 0x0
                  li           sp, 0x55265ac1
                  li           a5, 0x0
                  li           s5, 0xe3925abb
                  li           ra, 0x0
                  li           s8, 0x0
                  div          t2, a3, ra
                  add          s0, s6, ra
                  mul          ra, a5, s8
                  sub          a3, s8, s5
                  addi         s5, s6, 1392
                  divu         a3, sp, a3
                  auipc        a3, 275953
                  divu         s5, a5, a3
                  lui          s0, 800824
                  remu         t2, s5, sp
                  nop
                  nop
                  addi         t2, a4, -773
                  mulh         a4, sp, a3
                  mul          ra, t2, t2
                  mulhu        a3, a3, sp
                  mulh         a3, s5, a5
                  add          s8, t2, s0
                  mulhu        t2, a3, ra
                  mul          t2, s8, t2
                  mulh         s8, a3, s8
                  rem          sp, a5, s5
                  mul          s0, ra, s8
                  remu         a5, s8, s5
                  rem          ra, ra, a3 #end riscv_int_numeric_corner_stream_35
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_21
                  li           s10, 0x80000000
                  li           a1, 0x677f8624
                  li           tp, 0x45042fc3
                  li           sp, 0xffffffff
                  li           gp, 0x80000000
                  li           s4, 0xffffffff
                  li           t1, 0x80000000
                  li           t4, 0x80000000
                  li           a7, 0x80000000
                  divu         sp, t5, a7
                  mul          tp, t4, a7
                  mul          a1, tp, t1
                  addi         t1, t4, -161
                  mul          tp, a7, a1
                  lui          tp, 349504
                  mulh         t4, gp, t1
                  nop
                  div          s10, t1, a1
                  addi         gp, t5, 647
                  mul          a7, a1, a1
                  addi         t5, s4, 1791
                  remu         a7, tp, t1
                  auipc        t5, 40645
                  divu         t4, a7, s4 #end riscv_int_numeric_corner_stream_21
                  li           s7, 0x7660dba1 #start riscv_int_numeric_corner_stream_13
                  li           t4, 0x0
                  li           a3, 0x80000000
                  li           a0, 0xffffffff
                  li           t2, 0x81e70ca7
                  li           tp, 0x80000000
                  li           gp, 0x80000000
                  li           t6, 0xffffffff
                  li           a6, 0xffffffff
                  li           a4, 0x80000000
                  add          a6, t2, a6
                  addi         t6, a6, -1384
                  nop
                  mulh         a3, a0, t4
                  divu         a0, a4, a0
                  addi         a0, t6, 977
                  addi         a6, s7, 917
                  addi         a4, tp, -1865
                  mul          t4, s7, t2
                  remu         t6, gp, a4
                  mulhu        a0, a6, s7
                  mulhu        t4, a4, t4
                  sub          t2, a4, a6
                  mulhu        a0, a6, t2
                  mulh         s7, a6, a4
                  lui          a6, 422511 #end riscv_int_numeric_corner_stream_13
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           t4, 0x80000000
                  li           t5, 0xffffffff
                  li           ra, 0x80000000
                  li           s3, 0x0
                  li           t1, 0xffffffff
                  li           a1, 0xb3cfa8d7
                  li           s5, 0x0
                  li           s7, 0x7830fbac
                  li           s11, 0xe70e0693
                  lui          t5, 119185
                  mulh         t1, s3, t1
                  rem          ra, ra, t4
                  auipc        a3, 520528
                  mul          t1, s11, ra
                  mulh         s5, t1, s3
                  sub          a3, s11, s3
                  sub          s5, s7, s11
                  remu         ra, t1, t5
                  mulhu        ra, s11, a3
                  divu         t5, t1, t4
                  nop
                  lui          ra, 460308
                  div          s3, t1, a3
                  mulhsu       s5, s11, t4
                  add          s7, s11, s11
                  mul          s3, s3, s5
                  rem          s7, t4, t1
                  mulh         ra, t1, s3
                  add          a3, t5, s5
                  mul          s11, t5, t4 #end riscv_int_numeric_corner_stream_34
                  li           t5, 0x5c91635b #start riscv_int_numeric_corner_stream_26
                  li           t6, 0x0
                  li           tp, 0x80000000
                  li           t4, 0x80000000
                  li           a6, 0x80000000
                  li           t2, 0x80000000
                  li           s4, 0xf882250d
                  li           sp, 0x80000000
                  li           a7, 0xffffffff
                  li           s0, 0x0
                  remu         s0, sp, tp
                  auipc        s4, 476605
                  mulhu        tp, tp, t2
                  mulh         a6, sp, a6
                  addi         t4, t5, -1305
                  nop
                  mul          a6, t4, s0
                  auipc        tp, 606839
                  add          s0, a6, t2
                  add          t5, t4, sp
                  remu         t5, t4, a6
                  lui          sp, 861024
                  add          a7, a7, t5
                  mulhu        sp, tp, s4
                  rem          t5, tp, tp
                  add          s0, sp, sp #end riscv_int_numeric_corner_stream_26
                  li           s3, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           s7, 0xffffffff
                  li           s11, 0x0
                  li           t6, 0x80000000
                  li           a5, 0x80000000
                  li           s10, 0x80000000
                  li           a7, 0x0
                  li           ra, 0x0
                  li           a3, 0x80000000
                  li           a4, 0xffffffff
                  auipc        a4, 219690
                  mulhsu       a3, ra, a5
                  rem          s11, s10, a5
                  addi         a3, t6, 1323
                  mul          ra, s3, s7
                  divu         s7, s10, s10
                  mulh         s10, a4, a3
                  remu         a3, ra, a5
                  mulhsu       a4, a4, ra
                  auipc        t6, 760995
                  addi         s10, a7, 1570
                  mulhu        a7, a7, a3
                  remu         s7, a7, ra
                  add          ra, a4, a5
                  mul          a3, ra, a5
                  mulh         a5, a5, s11
                  rem          ra, ra, a3
                  mulhu        a7, a7, t6
                  mulhsu       t6, a3, s7
                  nop
                  add          s7, t6, a5
                  remu         a7, a7, a5
                  sub          s3, s10, s11
                  mul          t6, s10, t6
                  addi         a3, t6, -965
                  sub          a4, s7, s3
                  div          a7, t6, s10
                  rem          a4, a3, a4
                  nop #end riscv_int_numeric_corner_stream_32
                  li           s7, 0x73260b6f #start riscv_int_numeric_corner_stream_24
                  li           a4, 0xffffffff
                  li           t6, 0x96c46063
                  li           s0, 0x8c5ebca6
                  li           a3, 0x80000000
                  li           s10, 0x0
                  li           s5, 0xffffffff
                  li           s11, 0xb7056995
                  li           t4, 0xe57333de
                  li           a7, 0x46c363eb
                  nop
                  mulhu        s7, t6, t6
                  lui          a7, 824629
                  remu         a4, s11, t6
                  nop
                  rem          a7, t6, s5
                  nop
                  sub          s10, s11, t6
                  mulh         s0, s0, t6
                  nop
                  lui          s0, 381066
                  mulhsu       s0, a4, s7
                  sub          s5, t6, t6
                  lui          s0, 92152
                  mulh         a4, s5, s11
                  remu         s10, s0, t4 #end riscv_int_numeric_corner_stream_24
                  li           s8, 0x80000000 #start riscv_int_numeric_corner_stream_3
                  li           a0, 0xffffffff
                  li           a5, 0x915194b9
                  li           a7, 0xbfb2e773
                  li           t2, 0x0
                  li           s7, 0x80000000
                  li           t0, 0xfee1a39a
                  li           sp, 0xe7b3ddec
                  li           ra, 0xffffffff
                  li           s0, 0x80000000
                  mulhsu       ra, ra, a7
                  auipc        s0, 415553
                  rem          a5, a5, a5
                  mul          s7, a5, t0
                  addi         t0, t2, 1229
                  nop
                  mul          ra, a0, t0
                  add          s0, sp, a5
                  mulh         t0, a5, s7
                  sub          a0, ra, a0
                  nop
                  remu         t0, a5, sp
                  sub          t2, t0, a7
                  div          a7, s8, s0
                  mulh         t2, s8, s0
                  mulhsu       s0, t2, ra
                  rem          a5, t2, s0
                  rem          a0, a7, t2
                  nop
                  sub          a5, s7, sp
                  remu         s7, s0, a7
                  addi         s8, sp, 2000
                  remu         s8, ra, s8
                  sub          a7, sp, s8
                  remu         s7, a5, s0
                  remu         a0, a7, s0
                  mulhu        a7, a5, s0
                  lui          t0, 435795 #end riscv_int_numeric_corner_stream_3
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_38
                  li           t1, 0x4e05e171
                  li           gp, 0x0
                  li           s8, 0x4cad49ae
                  li           s7, 0x0
                  li           tp, 0x80000000
                  li           t0, 0x0
                  li           a4, 0x47ba0500
                  li           s4, 0x0
                  li           a6, 0xffffffff
                  mulh         s4, s8, gp
                  divu         ra, gp, a4
                  div          t0, s8, t0
                  sub          s7, s8, s4
                  mul          s8, gp, tp
                  mul          t0, gp, a6
                  remu         s4, s7, a6
                  add          t0, s4, s8
                  remu         ra, t1, a6
                  add          a4, a6, t1
                  lui          s7, 457698
                  auipc        a6, 869517
                  mulh         s7, s7, a4
                  remu         a4, a4, gp
                  mulhu        s4, gp, t1
                  mulh         a4, t1, s8
                  mulhu        a4, a4, tp
                  mulhu        t0, a4, a6 #end riscv_int_numeric_corner_stream_38
                  li           a5, 0x0 #start riscv_int_numeric_corner_stream_25
                  li           ra, 0x0
                  li           s3, 0x80000000
                  li           gp, 0x0
                  li           s0, 0xffffffff
                  li           s7, 0x80000000
                  li           s8, 0xffffffff
                  li           s1, 0xffffffff
                  li           t0, 0x0
                  li           t1, 0x80000000
                  add          s3, s7, s7
                  mul          t0, t0, a5
                  mulh         s1, s3, s8
                  addi         s1, s8, 1659
                  mulhsu       ra, t1, s1
                  divu         ra, gp, s1
                  divu         s8, a5, s7
                  remu         s0, s0, t0
                  add          ra, gp, t0
                  mulh         s1, a5, s3
                  nop
                  mul          t1, s7, s8
                  add          a5, s3, s8
                  mulhu        s0, s8, t1
                  mulhu        gp, s1, gp
                  mulhsu       s8, s1, gp
                  mulh         s7, s1, gp
                  addi         a5, t1, 1197
                  mulhsu       s1, s8, t0 #end riscv_int_numeric_corner_stream_25
                  li           a5, 0xffffffff #start riscv_int_numeric_corner_stream_22
                  li           s2, 0xd377d870
                  li           a3, 0x1d3ff2bb
                  li           s11, 0x0
                  li           t2, 0xffffffff
                  li           a4, 0x80000000
                  li           t0, 0x0
                  li           s4, 0xffffffff
                  li           s7, 0x0
                  li           tp, 0x1f623866
                  mulh         s2, t2, s7
                  sub          s2, tp, s4
                  rem          t0, a3, s11
                  addi         tp, a4, 1354
                  addi         a3, s11, 1544
                  add          t2, s2, t2
                  mul          s2, a4, s7
                  mulhsu       t0, s4, s4
                  nop
                  mulhsu       t0, s2, s2
                  nop
                  mul          s2, s4, a5
                  lui          s11, 2461
                  rem          a5, a5, s4
                  nop
                  sub          s11, s2, s11
                  mulhu        s2, s11, a4
                  mul          s2, a4, s7
                  nop
                  div          s4, tp, a5 #end riscv_int_numeric_corner_stream_22
                  li           s6, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           t5, 0x0
                  li           a7, 0xa20951b
                  li           gp, 0x80000000
                  li           tp, 0x80000000
                  li           ra, 0x1701ce00
                  li           s2, 0xda01aa13
                  li           a3, 0xffffffff
                  li           a6, 0x0
                  li           s8, 0x31c5e895
                  add          gp, s6, a3
                  mulhu        s8, s2, s2
                  add          a6, a7, ra
                  lui          s6, 859828
                  remu         gp, a3, gp
                  div          s2, a6, s2
                  div          a3, gp, t5
                  mulh         s2, a7, s2
                  auipc        gp, 238324
                  remu         s2, gp, tp
                  mulhsu       s8, tp, s8
                  remu         a3, a3, gp
                  mulhu        ra, s6, ra
                  div          a7, t5, a7
                  remu         gp, a3, a3
                  rem          t5, t5, t5 #end riscv_int_numeric_corner_stream_0
                  li           s3, 0x5978802c #start riscv_int_numeric_corner_stream_39
                  li           a1, 0x35efe7b5
                  li           s6, 0xffffffff
                  li           a7, 0x7a133876
                  li           s5, 0x39e6ea21
                  li           t2, 0x80000000
                  li           ra, 0x0
                  li           s10, 0xffffffff
                  li           gp, 0x0
                  li           a3, 0xdcc62ab
                  mul          s5, s6, a7
                  mulhu        a1, s3, s5
                  mul          s6, s5, t2
                  div          a7, a7, a3
                  divu         s6, s10, a7
                  auipc        s3, 217619
                  mulhsu       a1, s5, s5
                  auipc        a7, 331939
                  mul          gp, a1, a3
                  lui          a7, 539860
                  mulhsu       t2, t2, s5
                  mulh         t2, s6, a1
                  mulh         a3, a3, t2
                  mulh         t2, a7, a3
                  mulhsu       ra, s5, s6 #end riscv_int_numeric_corner_stream_39
                  li           s8, 0xba74ff75 #start riscv_int_numeric_corner_stream_29
                  li           t5, 0x0
                  li           t1, 0x2376aa4
                  li           a6, 0x0
                  li           t4, 0x0
                  li           s7, 0x80000000
                  li           a0, 0x9146bfa2
                  li           a7, 0x0
                  li           t0, 0xffffffff
                  li           s2, 0xffffffff
                  divu         a0, t0, t1
                  lui          a6, 1045714
                  rem          t1, s2, s2
                  lui          s8, 342410
                  auipc        a7, 662622
                  divu         s7, t4, a7
                  add          s7, s7, s8
                  addi         s8, a0, -93
                  remu         a0, s2, s8
                  lui          s7, 777062
                  mulhu        a0, s7, a7
                  mulhu        a6, t0, t0
                  mulhsu       t0, a0, a0
                  divu         t0, t1, a0
                  mul          a0, a7, s7
                  sub          t1, t5, s7
                  sub          s7, s8, s8
                  mulhsu       t5, a0, t1
                  remu         a7, a6, s7
                  divu         s8, t4, t5
                  sub          t0, s8, a0
                  mulhu        s7, s8, t4 #end riscv_int_numeric_corner_stream_29
                  li           a3, 0x3357f5c3 #start riscv_int_numeric_corner_stream_19
                  li           a6, 0x0
                  li           s6, 0x80000000
                  li           sp, 0x80000000
                  li           s8, 0xffffffff
                  li           a7, 0x19d98414
                  li           t5, 0x80000000
                  li           s0, 0x0
                  li           s10, 0xffffffff
                  li           s2, 0x80000000
                  mulhsu       s2, s10, s2
                  divu         s0, a3, s10
                  addi         a3, a6, 273
                  rem          sp, sp, s8
                  auipc        a7, 862560
                  mulhu        s6, s6, a7
                  addi         sp, a3, -1465
                  add          a3, t5, s2
                  sub          t5, a3, sp
                  remu         a7, s0, s2
                  remu         s10, a3, t5
                  addi         t5, a6, -82
                  div          a3, s10, a3
                  auipc        s6, 57821
                  lui          a3, 778743
                  addi         s6, a3, -1850
                  remu         a6, s8, s2
                  rem          t5, t5, a3
                  mulhu        s10, a7, s0
                  div          a7, t5, t5
                  nop
                  sub          s0, a7, s8
                  lui          a7, 788798
                  mulhu        sp, a3, sp
                  nop
                  remu         s0, s6, a7
                  addi         a3, s6, 2024 #end riscv_int_numeric_corner_stream_19
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_1
                  li           t2, 0x421fcea0
                  li           s4, 0xdd90c32b
                  li           gp, 0x0
                  li           s0, 0x0
                  li           t0, 0xffffffff
                  li           tp, 0xffffffff
                  li           s1, 0xffffffff
                  li           s7, 0x0
                  li           sp, 0x80000000
                  divu         t0, s0, t2
                  mulhu        gp, t0, s1
                  add          s7, tp, gp
                  sub          s1, s7, s7
                  rem          s4, s4, tp
                  mulhsu       t2, tp, t1
                  nop
                  mulhu        s0, s7, s7
                  remu         s1, t1, s0
                  remu         s7, t2, s4
                  add          gp, t0, s4
                  remu         tp, s4, t0
                  lui          s7, 355725
                  mulhsu       tp, gp, t0
                  divu         s0, s7, t2
                  add          tp, s7, t0
                  nop
                  divu         s7, s4, gp
                  rem          s1, s4, sp
                  rem          t0, gp, sp
                  mulh         s4, s4, sp #end riscv_int_numeric_corner_stream_1
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           ra, 0x80000000
                  li           s3, 0xffffffff
                  li           s10, 0x80000000
                  li           gp, 0xffffffff
                  li           a6, 0x0
                  li           t4, 0x80000000
                  li           sp, 0x80000000
                  li           s0, 0x15f871b6
                  li           t5, 0xffffffff
                  divu         a7, s10, a7
                  divu         gp, t4, s3
                  mulhsu       s10, t4, a7
                  mulhsu       t4, a7, s0
                  lui          t4, 920905
                  mulhu        sp, t4, ra
                  lui          s10, 107728
                  div          a6, a6, a6
                  mulh         s0, t5, gp
                  sub          s3, gp, a7
                  sub          s3, t4, s3
                  sub          t4, gp, ra
                  rem          t4, t4, s0
                  sub          s3, a7, a6
                  div          a7, ra, s0
                  sub          s10, s0, sp #end riscv_int_numeric_corner_stream_2
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           a7, 0x80000000
                  li           s1, 0x80000000
                  li           a1, 0x0
                  li           a6, 0xffffffff
                  li           a0, 0x0
                  li           t2, 0x0
                  li           gp, 0x80000000
                  li           a5, 0x63fe254a
                  li           a4, 0xffffffff
                  mulhsu       a6, t2, gp
                  remu         s1, t2, a4
                  mulhsu       gp, sp, a4
                  mulhu        a5, gp, a5
                  nop
                  mulhu        a4, gp, a5
                  sub          a7, sp, a1
                  div          a4, a4, a1
                  div          a6, a4, a6
                  sub          a7, t2, a5
                  divu         a0, a6, a5
                  divu         a0, a4, t2
                  sub          a5, a5, sp
                  sub          gp, a7, a1
                  addi         t2, sp, 933
                  mulhsu       s1, a7, sp
                  remu         a4, a5, a6
                  addi         s1, a7, 1354
                  nop
                  mulh         a6, s1, a7
                  mul          a4, a6, a0 #end riscv_int_numeric_corner_stream_17
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           s2, 0x0
                  li           s4, 0x0
                  li           s3, 0xffffffff
                  li           ra, 0x80000000
                  li           a0, 0xa0483f78
                  li           tp, 0x3c6afeda
                  li           t2, 0x6bfe196d
                  li           s7, 0xffffffff
                  li           t0, 0x0
                  mulhsu       t0, s4, s2
                  mulh         a0, s7, s3
                  remu         t2, tp, s5
                  auipc        s2, 346636
                  mulhsu       s4, a0, ra
                  mulh         s3, s7, tp
                  auipc        s7, 128488
                  remu         ra, s3, t2
                  remu         s5, s3, s3
                  mul          s7, a0, t0
                  add          tp, tp, s4
                  addi         a0, s2, -634
                  remu         a0, t0, ra
                  auipc        t0, 661700
                  addi         s2, a0, -603
                  add          a0, ra, s2
                  lui          s7, 829906 #end riscv_int_numeric_corner_stream_8
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           a3, 0xffffffff
                  li           a1, 0x80000000
                  li           s5, 0x80000000
                  li           s2, 0xf795cba3
                  li           tp, 0xbdc32202
                  li           sp, 0xecc95f43
                  li           t4, 0x66f15d52
                  li           s0, 0x0
                  li           t0, 0x3d942835
                  addi         s2, a1, 1866
                  mul          t4, s5, s5
                  mulh         s0, a1, tp
                  remu         s0, s7, tp
                  rem          t4, t4, a3
                  divu         s2, sp, t0
                  sub          tp, a3, t4
                  auipc        tp, 857229
                  sub          s0, tp, s5
                  mulh         s2, tp, s5
                  mulh         a1, t4, a3
                  mulhu        s0, s2, t0
                  addi         a1, s5, -127
                  mulhsu       s7, s5, s0
                  addi         t4, a1, 208
                  nop
                  mul          a1, s2, a3
                  remu         s5, s5, s5 #end riscv_int_numeric_corner_stream_37
                  slt          s2, s10, s11
                  c.li         s11, -1
                  c.addi       a4, -1
                  sltu         s11, t5, a0
                  c.add        s10, ra
                  sub          a6, ra, s0
                  divu         s10, s8, s5
                  c.lui        s3, 15
                  c.srli       a4, 9
                  c.addi16sp   sp, 80
                  sll          a5, s2, t0
                  mulh         a5, s7, gp
                  srai         s8, tp, 7
                  c.or         a3, a3
                  c.addi16sp   sp, -16
                  div          s8, a1, s7
                  lui          s6, 795820
                  slti         a1, a4, 1858
                  srli         s10, s9, 31
                  div          tp, ra, a7
                  mulh         s11, a7, t0
                  add          a3, s7, ra
                  slti         s1, t1, -1686
                  div          t0, s10, t4
                  addi         s3, a5, -229
                  c.andi       a4, -1
                  addi         a7, t1, -373
                  c.sub        a5, a4
                  c.sub        s1, a5
                  c.and        a1, a3
                  c.xor        s0, a2
                  c.add        gp, a6
                  c.addi4spn   a4, sp, 304
                  rem          s11, s4, s1
                  sll          t5, s4, a3
                  c.add        s2, sp
                  slli         s1, t2, 15
                  divu         a3, s9, a1
                  xor          t4, a2, s10
                  srli         s6, t1, 25
                  srl          ra, gp, t1
                  c.slli       tp, 20
                  auipc        s7, 989740
                  xor          a1, ra, gp
                  mul          a5, ra, a7
                  div          t0, a2, t4
                  or           sp, s2, gp
                  slti         a7, t3, -416
                  c.add        sp, gp
                  c.lui        s0, 22
                  slti         t1, s2, -784
                  auipc        a5, 1008903
                  mulhu        t6, s6, zero
                  c.srai       a1, 24
                  srai         t5, t2, 15
                  c.srli       s0, 13
                  srl          a7, s5, s0
                  lui          t5, 108434
                  c.mv         a3, t3
                  srli         a5, s0, 12
                  mulh         a7, t2, gp
                  c.nop
                  addi         t1, s4, 794
                  c.andi       a5, 18
                  srai         t4, s4, 29
                  c.and        a0, a1
                  auipc        a4, 108961
                  or           t5, t2, a0
                  sll          t0, s5, tp
                  c.slli       s1, 18
                  c.andi       a5, 6
                  c.andi       a0, 28
                  rem          s4, s3, s6
                  c.and        a4, a2
                  rem          s1, ra, t1
                  c.andi       s0, 3
                  sub          a5, t3, t5
                  c.srai       a3, 16
                  c.addi4spn   a0, sp, 944
                  slt          a1, s4, a4
                  sltu         a6, a0, t5
                  c.nop
                  srli         s1, a2, 15
                  mulhu        s5, s9, t1
                  xor          a0, a6, a0
                  sub          s8, tp, ra
                  c.srli       s1, 5
                  c.add        a5, s6
                  div          a0, a6, t5
                  nop
                  sltiu        tp, a3, 1893
                  srli         t1, s5, 7
                  remu         s1, a2, t3
                  sll          a5, t2, t3
                  lui          t1, 802634
                  xor          sp, s3, a3
                  slt          t1, s6, s9
                  c.sub        a1, a4
                  div          s6, t4, s8
                  mul          s7, s5, t6
                  c.lui        s11, 30
                  c.or         a4, a2
                  c.mv         t2, t3
                  c.li         s6, -1
                  c.addi16sp   sp, 496
                  srli         t5, s8, 8
                  addi         t1, t1, -90
                  xori         s5, a0, -648
                  divu         a3, s7, t5
                  srli         zero, t1, 8
                  srli         a1, a7, 29
                  xor          gp, a4, s10
                  sll          s2, s2, t2
                  c.srli       s1, 17
                  divu         tp, s6, t6
                  mulh         s6, sp, s11
                  divu         zero, s11, s2
                  mulh         a3, a0, zero
                  rem          t2, sp, s10
                  sll          s5, s1, s7
                  sub          a5, a7, a6
                  c.andi       a1, 2
                  rem          tp, a1, a3
                  rem          gp, a5, s3
                  sltu         s7, s7, s9
                  c.addi       t5, 11
                  c.li         t4, 30
                  c.addi       t6, -1
                  lui          s2, 243173
                  lui          s11, 523048
                  c.andi       a0, 15
                  c.mv         a7, s6
                  lui          s8, 764488
                  sltiu        zero, t4, 890
                  sra          t6, t2, gp
                  mulh         t5, zero, a3
                  c.or         a1, a0
                  c.srai       a3, 20
                  addi         s2, t3, 825
                  mulhu        s5, t6, tp
                  xori         a4, t5, 1585
                  c.li         a1, -1
                  sra          a5, a3, s11
                  or           a1, sp, t5
                  divu         gp, a4, a5
                  c.nop
                  slti         ra, s0, 1456
                  slti         t6, s5, 1045
                  c.slli       s10, 14
                  srai         s6, s6, 9
                  lui          s2, 802746
                  lui          a5, 998860
                  sltu         s11, s0, a6
                  andi         s2, s0, -1160
                  ori          a7, a0, 330
                  srl          a1, tp, a7
                  c.srai       s0, 22
                  srl          a1, a5, a4
                  c.addi16sp   sp, -16
                  mulhu        sp, a4, zero
                  mul          tp, a2, gp
                  slli         s1, s2, 11
                  mulhsu       t5, s0, a2
                  c.addi       t2, 11
                  mulhsu       s5, a5, a1
                  c.and        a1, a1
                  add          zero, s7, a5
                  sra          ra, s6, s10
                  c.and        s0, a0
                  c.srli       a0, 9
                  mulh         a4, a3, s5
                  c.xor        s0, a0
                  nop
                  xor          a7, s4, sp
                  sll          s3, gp, t0
                  c.lui        s0, 22
                  auipc        s4, 809445
                  xor          a3, s2, s5
                  srai         t2, a5, 7
                  mulhsu       sp, s6, s3
                  xori         s3, t3, 108
                  sra          gp, s11, t4
                  c.lui        a6, 25
                  divu         gp, s11, a2
                  c.andi       a5, -1
                  nop
                  c.li         ra, -1
                  c.lui        s8, 24
                  ori          a0, s0, -1035
                  mul          a5, t0, a7
                  sltu         tp, ra, t3
                  and          zero, a0, s1
                  c.addi16sp   sp, -16
                  lui          gp, 966713
                  ori          s0, zero, -840
                  c.slli       t5, 5
                  divu         tp, s7, s6
                  addi         t0, s5, -2011
                  slli         s10, s2, 13
                  mulhsu       t4, t2, s2
                  add          s6, s9, sp
                  c.srai       a0, 7
                  ori          tp, s3, -1388
                  slli         a7, ra, 2
                  slti         s4, tp, 1422
                  sub          t2, gp, a2
                  c.sub        s1, a0
                  sltiu        s5, a5, 1800
                  c.slli       a4, 5
                  or           t0, t0, s6
                  srai         s0, t1, 19
                  mulhsu       s3, a0, a3
                  rem          s3, tp, tp
                  mulhsu       sp, a0, a1
                  or           s10, s0, s5
                  slt          a5, s10, tp
                  sub          a7, s9, s8
                  sra          t1, ra, s5
                  slti         s4, s10, -399
                  c.li         s0, 25
                  xori         s11, s1, -943
                  mulhu        s11, s3, s10
                  srai         ra, s1, 10
                  mul          ra, s4, a4
                  c.add        a6, s11
                  xor          s1, s10, s11
                  auipc        s6, 3620
                  add          s8, t6, zero
                  c.lui        a4, 19
                  c.addi16sp   sp, 32
                  nop
                  nop
                  or           t5, sp, t2
                  c.nop
                  andi         sp, s3, -1113
                  c.sub        a4, a5
                  rem          t1, t4, t1
                  add          sp, a5, t1
                  slli         s0, t0, 6
                  or           t4, s0, gp
                  c.mv         a3, s11
                  or           s0, a5, ra
                  slti         s10, a0, 1867
                  srai         s3, zero, 15
                  c.or         a1, s1
                  c.add        t0, t1
                  sltu         a0, a5, a3
                  c.addi       s0, 10
                  slti         tp, s9, 844
                  srli         a5, a5, 7
                  srl          s11, s5, a7
                  remu         a4, s11, a5
                  c.addi4spn   a3, sp, 848
                  sltiu        zero, s5, 1644
                  c.addi       t4, 19
                  andi         t1, t3, -1679
                  srai         t0, s1, 16
                  div          t4, a0, t5
                  slli         ra, t0, 29
                  c.xor        s0, a2
                  slti         sp, t5, 1409
                  c.addi4spn   s0, sp, 416
                  srli         t2, t6, 9
                  c.andi       a4, -1
                  sub          s7, s5, s8
                  remu         a5, t2, a3
                  slli         t1, s9, 4
                  divu         t1, a4, sp
                  nop
                  div          s10, ra, ra
                  sltiu        gp, a7, -2037
                  addi         tp, s5, -557
                  c.li         ra, 13
                  c.nop
                  div          s11, a0, s5
                  c.or         a3, a5
                  c.slli       t6, 18
                  c.xor        s0, a1
                  nop
                  c.sub        a3, a1
                  mulhu        ra, a7, a3
                  lui          ra, 1032484
                  c.addi       s4, -1
                  c.andi       a4, -1
                  slti         s6, s9, 1171
                  lui          a6, 655108
                  c.lui        s2, 7
                  slli         s11, t2, 30
                  andi         a6, a4, -7
                  ori          a3, t0, 1509
                  sltiu        t2, s7, -714
                  mulhsu       a6, ra, s0
                  mul          t4, a5, s5
                  xori         gp, t4, -497
                  srl          a4, a2, t4
                  remu         s8, a7, s11
                  or           s11, zero, s3
                  c.mv         t0, t2
                  mulhu        a4, t5, ra
                  c.srli       s0, 13
                  c.srai       a0, 3
                  sltiu        a0, s9, -1305
                  c.add        s0, s6
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 496
                  lui          a3, 670345
                  srli         s1, s9, 16
                  and          s8, t5, s3
                  rem          t6, s8, s9
                  slti         s0, s3, -1002
                  slti         t5, t3, 1115
                  mul          s5, t0, s8
                  c.addi4spn   s1, sp, 800
                  c.srli       a3, 7
                  slt          sp, t2, s0
                  slt          a5, s2, s8
                  srli         tp, a0, 0
                  slti         tp, s5, -920
                  slt          s0, a3, t4
                  addi         s4, s9, -483
                  mulh         t1, tp, t3
                  srli         a4, t0, 24
                  c.lui        a1, 19
                  or           t6, a1, a1
                  c.addi16sp   sp, 448
                  c.xor        a0, a5
                  mulhu        t0, zero, t0
                  rem          s4, s6, s10
                  mul          a1, a6, tp
                  remu         s3, s3, s4
                  slt          s0, s2, s0
                  addi         s11, ra, 966
                  srli         s7, t3, 28
                  c.mv         a5, s10
                  c.andi       a3, 30
                  addi         a3, t1, 388
                  c.nop
                  c.andi       a3, -1
                  c.and        a0, s0
                  auipc        s5, 908011
                  xori         a4, s11, -817
                  c.xor        s0, a0
                  slt          gp, s11, tp
                  c.addi       tp, -1
                  c.srli       a1, 21
                  c.li         sp, -1
                  mulh         a0, t4, s7
                  c.srli       a3, 1
                  mulh         t1, sp, s11
                  mulhu        s11, t0, s7
                  c.andi       a4, -1
                  ori          a4, a3, 70
                  sra          s10, s1, t6
                  c.addi4spn   a4, sp, 576
                  sub          a0, ra, sp
                  mulhu        a1, tp, s8
                  nop
                  xor          sp, t0, ra
                  xor          s11, ra, zero
                  c.nop
                  c.srli       a5, 13
                  xori         s10, t4, 670
                  srai         s3, ra, 31
                  add          a0, s4, s7
                  mulh         s3, t2, t2
                  c.xor        s1, s1
                  c.mv         a3, t4
                  c.xor        a3, a2
                  c.xor        a4, a1
                  c.xor        a3, a3
                  srli         a3, s11, 29
                  slti         a3, s2, -87
                  c.nop
                  c.add        sp, t4
                  remu         a1, t3, gp
                  c.add        s3, a2
                  sub          gp, s1, t6
                  c.addi4spn   a0, sp, 688
                  c.xor        a5, a2
                  c.lui        s6, 3
                  ori          ra, tp, -144
                  c.li         a0, 16
                  c.andi       a3, -1
                  slti         t4, t1, -1343
                  c.or         a1, a0
                  sll          sp, s7, gp
                  srl          a6, s6, s10
                  sltiu        gp, a4, 1752
                  srai         s2, t0, 15
                  auipc        s10, 652372
                  srl          t4, zero, a3
                  ori          s5, a4, 1791
                  c.addi4spn   s0, sp, 656
                  auipc        s0, 643057
                  lui          t4, 471488
                  c.sub        a3, a5
                  slti         ra, s2, -829
                  remu         a7, s4, t2
                  ori          s3, s11, 252
                  addi         a0, t0, 971
                  mulhu        s4, s8, s10
                  mulh         s6, s11, a2
                  srai         t1, s8, 0
                  sll          a7, t4, tp
                  sll          a4, a2, s3
                  divu         s3, s10, s5
                  c.mv         a4, s4
                  c.xor        a4, a1
                  sll          s5, zero, a2
                  mulhsu       s4, gp, t6
                  slti         t4, s6, 606
                  div          a7, a4, a6
                  mulh         s10, t6, t2
                  ori          t5, t0, 807
                  c.srli       s0, 2
                  divu         tp, tp, s6
                  srl          a7, t1, s4
                  rem          a1, s1, zero
                  or           t1, s2, a4
                  c.addi16sp   sp, -16
                  sra          s8, s11, a7
                  srl          a7, s4, s7
                  c.slli       a7, 11
                  or           a1, t0, s6
                  c.xor        a3, a4
                  mul          gp, a4, tp
                  c.slli       t2, 15
                  c.add        a7, a2
                  c.andi       a5, -1
                  sltiu        s5, zero, 475
                  addi         t6, s5, -1404
                  mul          a7, zero, ra
                  mulhsu       zero, a2, t5
                  addi         t0, t6, -1671
                  mulhsu       s0, t3, s3
                  mul          t5, s4, sp
                  rem          sp, a7, a5
                  mul          s7, s0, a0
                  remu         s0, t6, gp
                  sltu         s4, a2, t3
                  ori          a1, a1, 336
                  and          t4, s5, a0
                  c.slli       t4, 17
                  c.nop
                  or           ra, s6, a4
                  slti         t5, zero, 137
                  mulhsu       tp, s8, s1
                  sra          s8, a0, a2
                  or           t0, s8, s1
                  addi         a1, tp, 504
                  c.and        a4, a4
                  sltiu        s2, t5, 1666
                  ori          gp, zero, 1248
                  add          t0, t0, ra
                  c.or         a3, a3
                  and          gp, s2, s0
                  ori          a6, t3, -1300
                  c.addi       sp, 17
                  srli         a7, a5, 5
                  c.sub        s0, s0
                  c.lui        a0, 26
                  lui          t6, 985062
                  c.andi       a5, -1
                  nop
                  mul          s3, gp, s5
                  lui          s2, 90096
                  c.srai       a3, 8
                  andi         sp, s2, 1898
                  c.slli       s10, 15
                  c.addi4spn   a4, sp, 608
                  sll          s7, s0, a0
                  c.addi       a3, 14
                  c.li         a0, 26
                  andi         a3, s4, 148
                  c.addi4spn   a4, sp, 96
                  mulh         s6, a0, a6
                  sltiu        s2, sp, 1179
                  c.lui        s11, 20
                  c.nop
                  c.and        s1, a0
                  c.nop
                  ori          t5, t0, -843
                  c.nop
                  slli         t1, s1, 22
                  sltu         a0, s3, s6
                  xori         t5, s7, 562
                  slt          sp, a5, t6
                  mulh         s4, tp, s0
                  ori          gp, s3, -614
                  ori          t5, s2, 417
                  sltu         t0, s3, s1
                  c.nop
                  sll          ra, t2, t0
                  or           s4, a5, ra
                  c.lui        t5, 28
                  divu         zero, s3, a2
                  c.li         a4, 8
                  ori          t1, t0, 664
                  sub          sp, s7, s8
                  or           s3, t0, a6
                  c.addi       s7, -1
                  c.srai       s1, 26
                  divu         s4, t3, s3
                  c.mv         s0, t1
                  slli         s1, a1, 2
                  div          a5, s0, s11
                  sll          ra, a6, s9
                  nop
                  sra          t5, s4, a2
                  c.andi       a3, -1
                  c.mv         s11, tp
                  slt          sp, s2, s11
                  srli         t6, a1, 17
                  srai         t6, t0, 12
                  sra          a0, gp, s8
                  auipc        s0, 1036672
                  or           tp, gp, s10
                  mulhsu       s10, s11, gp
                  auipc        ra, 279867
                  xori         t5, t5, -1309
                  c.sub        a5, s1
                  sltu         a3, s4, sp
                  c.li         a1, -1
                  slt          zero, a5, s6
                  divu         a3, t6, s6
                  xor          t5, s10, s3
                  sra          ra, sp, t6
                  auipc        zero, 653168
                  c.andi       a0, -1
                  srai         tp, a2, 19
                  mul          tp, a4, s1
                  mulh         sp, s9, t6
                  c.lui        t1, 26
                  c.lui        s8, 28
                  c.mv         s1, t1
                  c.srai       a5, 31
                  c.mv         s0, s8
                  mulhsu       a3, t3, t6
                  c.slli       s1, 30
                  mulhu        t1, ra, tp
                  sltiu        a1, s0, -1696
                  lui          t2, 589768
                  mulh         s4, a4, t0
                  c.sub        a4, a4
                  xori         s3, s11, -982
                  c.srli       a3, 13
                  slt          s8, zero, t2
                  divu         a1, t1, s3
                  slt          tp, s1, s5
                  mulh         a6, t2, t3
                  divu         t6, t2, a7
                  andi         a1, a1, 1722
                  addi         zero, t3, -154
                  c.andi       s0, 26
                  rem          a4, s9, s1
                  remu         a0, s9, gp
                  nop
                  xor          s1, s7, s3
                  remu         gp, s6, t2
                  mul          t1, t5, s6
                  c.mv         s1, t4
                  sub          sp, sp, t1
                  c.add        t4, s8
                  xor          s4, t0, a2
                  mulh         zero, gp, a4
                  sra          a6, ra, gp
                  c.add        s1, a5
                  c.lui        s0, 14
                  srl          zero, a4, s7
                  rem          s10, a2, a4
                  rem          tp, s4, ra
                  mul          sp, t5, s8
                  div          t4, t3, a4
                  c.andi       a4, 2
                  mulhsu       zero, s3, s10
                  mulh         s4, s9, t2
                  auipc        t2, 556199
                  ori          ra, gp, -673
                  c.add        tp, a1
                  sltiu        a7, tp, -1097
                  sra          sp, s3, s9
                  ori          a4, s1, -1774
                  mulhsu       a6, t0, t0
                  sra          a5, t0, t1
                  c.addi16sp   sp, 80
                  sltiu        s11, s11, 502
                  c.mv         t0, t2
                  lui          a7, 858051
                  c.lui        s0, 6
                  slt          s11, t4, s4
                  sub          a4, a6, s11
                  c.addi16sp   sp, 128
                  slli         sp, s8, 6
                  nop
                  mulh         a5, t6, s9
                  xor          s2, a6, sp
                  c.add        sp, a0
                  sll          a5, t1, s1
                  c.addi       t5, 22
                  li           s10, 0x80000000 #start riscv_int_numeric_corner_stream_15
                  li           s8, 0xffffffff
                  li           t4, 0x351ce5d8
                  li           s1, 0x0
                  li           s11, 0x80000000
                  li           s6, 0x0
                  li           s3, 0x80000000
                  li           tp, 0x66b84771
                  li           ra, 0xffffffff
                  li           sp, 0xffffffff
                  auipc        ra, 531526
                  auipc        tp, 428217
                  nop
                  add          s10, tp, s11
                  divu         ra, s8, sp
                  remu         s10, s3, sp
                  div          t4, s10, s6
                  mulhu        s6, tp, s10
                  sub          s3, t4, ra
                  addi         s6, s8, -30
                  mulhu        s11, ra, t4
                  mulhu        s6, tp, s10
                  rem          s1, s3, sp
                  mulh         s6, s10, ra
                  div          s6, s6, s1
                  remu         tp, sp, s8
                  mulhsu       s6, s10, ra
                  mulh         tp, s8, s10
                  divu         ra, s10, s8 #end riscv_int_numeric_corner_stream_15
                  c.srai       a5, 6
                  c.srai       a1, 17
                  c.andi       s1, 0
                  xori         s3, s8, -877
                  andi         t5, s9, -484
                  slti         s4, t4, -175
                  rem          t4, a7, s3
                  or           t5, t2, a7
                  and          t5, ra, s6
                  xori         s4, s10, -1737
                  nop
                  mulhu        gp, s3, s9
                  div          s11, t0, a4
                  and          zero, s4, s0
                  c.sub        s1, a5
                  xor          t0, t2, ra
                  srai         t2, s10, 13
                  c.nop
                  mulh         s3, s1, a2
                  nop
                  slt          s7, s1, gp
                  c.addi16sp   sp, 144
                  srai         sp, ra, 1
                  c.addi       ra, 8
                  sltiu        s4, tp, -919
                  c.lui        a4, 19
                  or           a0, s8, t5
                  auipc        s10, 1038921
                  remu         zero, a7, a6
                  c.slli       a4, 28
                  c.and        a4, s0
                  lui          t0, 571450
                  c.add        gp, s0
                  c.nop
                  c.or         s0, s0
                  sltu         s11, zero, a5
                  add          s1, t1, t1
                  c.srli       a3, 6
                  sub          s0, s7, a6
                  sra          ra, s6, a0
                  c.or         a3, a4
                  c.andi       a3, 7
                  addi         t5, t3, -1259
                  sra          s7, t6, s5
                  slli         s5, s11, 1
                  mulhu        s11, a7, gp
                  lui          s8, 132990
                  mul          a3, zero, s10
                  remu         s2, s8, a0
                  ori          sp, s10, -447
                  div          sp, s2, s3
                  c.and        s0, a0
                  c.addi16sp   sp, -16
                  c.and        a5, a0
                  add          t1, t4, a7
                  or           s7, t2, t1
                  c.mv         a5, s8
                  xori         gp, a1, 1921
                  c.srai       a4, 18
                  c.andi       a4, 10
                  c.li         s1, 20
                  rem          t5, tp, a6
                  srai         s8, a0, 17
                  c.nop
                  c.add        a4, t1
                  c.nop
                  mul          a5, a2, t6
                  c.sub        s1, a0
                  mulh         sp, ra, a5
                  c.slli       s0, 14
                  srl          t6, t6, s9
                  mulhsu       t0, a0, a0
                  c.addi4spn   s0, sp, 224
                  slt          a3, a2, s1
                  c.sub        s0, a5
                  remu         a7, a1, s6
                  addi         a6, s11, -1191
                  srl          s8, a2, s6
                  andi         t4, s0, -564
                  or           s5, t6, a0
                  sll          s1, t6, t2
                  srli         s1, a7, 6
                  xor          s8, s4, t1
                  srli         a6, a0, 13
                  ori          a0, t1, -586
                  c.lui        tp, 16
                  rem          t2, s8, tp
                  srai         s3, t1, 19
                  sltu         s4, sp, t6
                  c.slli       s5, 28
                  ori          a0, t3, -1623
                  div          s11, s7, s8
                  sltiu        tp, a1, -1134
                  slti         s4, s0, -1645
                  slli         a3, t5, 5
                  c.or         s1, s0
                  mulh         s0, s6, a3
                  auipc        s7, 968201
                  addi         t0, a7, -1490
                  srl          s10, t4, a2
                  rem          a4, s8, a2
                  rem          t0, t2, t5
                  auipc        s0, 15298
                  sra          tp, a3, t6
                  c.and        a5, a2
                  slli         s3, s7, 18
                  mulh         a6, a2, a2
                  c.and        a4, a1
                  sra          a3, s8, a2
                  sltu         s3, t1, t5
                  remu         sp, s4, zero
                  and          s3, ra, s9
                  srai         a1, s5, 7
                  slt          sp, s10, a1
                  nop
                  c.mv         a7, t2
                  sll          s11, s10, a2
                  slli         t5, a7, 29
                  slt          tp, gp, a4
                  c.andi       a4, -1
                  remu         s10, a0, t3
                  c.addi       s8, 16
                  c.addi       s1, 23
                  srli         t6, s5, 19
                  sll          tp, ra, a3
                  c.xor        a0, a5
                  mul          s6, sp, s2
                  xor          s3, gp, s0
                  c.lui        t6, 18
                  c.addi       gp, 15
                  sltiu        s10, a1, -218
                  lui          t6, 814469
                  slti         s10, t5, 174
                  xor          a3, t1, tp
                  c.addi       t6, -1
                  sub          gp, s0, a2
                  mulhu        a4, a7, s10
                  c.addi       ra, 18
                  c.srli       s0, 24
                  c.addi4spn   a5, sp, 288
                  sltu         a0, t6, a4
                  srai         t4, a0, 5
                  xor          s0, s11, sp
                  sra          t4, t5, ra
                  div          s1, t5, s9
                  sll          a4, t6, t0
                  add          s7, t4, a6
                  c.andi       a5, 20
                  c.srai       a3, 20
                  c.or         a4, a1
                  c.add        t2, s3
                  c.srli       a4, 6
                  c.xor        a0, a4
                  c.xor        a0, s1
                  div          t5, s11, a2
                  div          s0, a0, ra
                  c.andi       s0, 12
                  mul          a3, s9, a6
                  c.mv         s4, s10
                  auipc        s4, 975944
                  sltiu        t4, s4, -1833
                  slti         t5, t0, 92
                  slli         a6, s9, 1
                  slti         s4, ra, 312
                  sltu         s10, t2, zero
                  sub          a5, ra, s6
                  divu         s0, t2, t2
                  mulhu        a5, zero, t2
                  c.li         t6, 12
                  c.nop
                  c.addi       t4, -1
                  c.srli       a3, 20
                  c.add        s7, tp
                  sll          t6, t3, sp
                  sltu         t0, s9, s6
                  mul          t4, a4, s0
                  xor          a1, s6, a0
                  sltiu        s4, a2, -1845
                  c.srai       a1, 2
                  sltu         a1, gp, s11
                  remu         a5, t3, s6
                  add          a4, s10, zero
                  slli         s8, a7, 16
                  mulhu        t4, s2, ra
                  slti         s8, a7, 989
                  c.xor        a3, s0
                  sll          s4, a0, s5
                  srai         tp, t0, 2
                  rem          a0, s2, a3
                  mulhu        t4, a0, a1
                  c.li         tp, -1
                  lui          a0, 249335
                  c.sub        a1, a3
                  or           s4, a3, tp
                  mulhu        s10, s0, s1
                  c.addi4spn   a3, sp, 112
                  c.xor        s1, s1
                  c.addi       a5, -1
                  sltiu        tp, a6, -394
                  div          gp, s2, s6
                  srli         s8, a3, 28
                  lui          tp, 919203
                  xor          a4, ra, a6
                  div          a1, a0, t4
                  mulhsu       s7, s11, t5
                  ori          t1, tp, 1677
                  c.addi4spn   a5, sp, 688
                  sra          s7, zero, t2
                  div          s2, s2, zero
                  nop
                  or           gp, tp, s10
                  xori         a4, a0, 167
                  div          sp, t0, s0
                  c.mv         s0, t0
                  slli         a5, t6, 22
                  c.lui        t4, 30
                  andi         s2, a0, -803
                  c.xor        s1, a0
                  slti         a3, s9, 298
                  c.slli       s2, 30
                  c.add        s2, s6
                  c.or         s0, a1
                  or           a5, a1, s0
                  c.addi16sp   sp, 96
                  rem          t6, sp, s8
                  xori         a4, t0, 459
                  sub          a3, s9, a2
                  mulhu        t6, s8, s2
                  c.add        a7, a4
                  mul          a1, s9, a6
                  c.li         a7, -1
                  xor          t1, a4, t0
                  xori         s11, s4, -83
                  remu         t4, a3, a4
                  slli         a4, s6, 27
                  xori         gp, a4, 1689
                  or           s2, t2, t1
                  c.addi       a0, 13
                  and          t6, a3, s1
                  sra          s11, s8, t5
                  mulh         a7, s11, s6
                  slli         t2, a5, 3
                  sub          s4, s3, a5
                  or           s11, a5, s5
                  nop
                  or           tp, a6, s6
                  c.slli       s11, 28
                  c.slli       t5, 1
                  c.addi4spn   a1, sp, 384
                  xor          a1, t4, s11
                  auipc        s6, 553006
                  ori          a5, s5, 1456
                  c.addi       a7, -1
                  rem          s10, s5, s1
                  srai         s11, s5, 20
                  c.slli       a0, 22
                  sll          s4, a2, s4
                  sub          a0, s6, s1
                  auipc        a0, 597104
                  nop
                  mulhu        a1, s4, s11
                  sltu         a1, s4, sp
                  sub          ra, s11, a4
                  mulhsu       s11, zero, a7
                  c.sub        a1, s0
                  c.addi       ra, 8
                  sra          a6, t0, s3
                  srli         ra, t6, 12
                  sltu         s11, s2, s0
                  c.and        s1, a2
                  divu         s4, t3, s7
                  slti         t5, zero, 90
                  c.slli       a6, 31
                  slli         t0, s7, 19
                  srai         a5, s6, 12
                  mul          t6, a7, t5
                  mulhsu       t2, s0, t2
                  slti         a7, t0, 184
                  c.sub        a3, s0
                  srai         t2, gp, 26
                  c.addi16sp   sp, -16
                  c.srli       s0, 9
                  srli         a3, s1, 22
                  mulhsu       s4, a5, zero
                  c.mv         s10, sp
                  andi         s7, s5, 1322
                  c.srli       a1, 12
                  slti         s5, a4, -682
                  c.nop
                  nop
                  slt          s11, a5, t4
                  c.srai       a1, 31
                  srai         s7, a5, 15
                  srli         s4, s5, 2
                  and          gp, s2, s0
                  xori         t0, t3, -237
                  slt          s4, t1, ra
                  c.or         a4, a1
                  or           s2, t6, t6
                  auipc        s4, 57643
                  divu         s11, a5, a2
                  srai         zero, s9, 23
                  sltiu        tp, sp, -991
                  c.srli       a5, 16
                  addi         s10, gp, 1378
                  mul          s0, s10, gp
                  and          s8, a1, t3
                  c.mv         a4, s9
                  or           t5, t5, s3
                  remu         s7, a2, a3
                  slt          s5, s0, t0
                  c.sub        a4, a2
                  c.addi       a6, 28
                  c.srli       a1, 25
                  c.srai       a4, 16
                  c.addi16sp   sp, -16
                  slti         gp, a7, -1525
                  c.srli       a3, 23
                  c.and        a0, a3
                  c.sub        a3, s0
                  c.slli       s10, 16
                  c.lui        s0, 2
                  c.nop
                  c.srli       a0, 8
                  remu         s1, t4, t4
                  rem          a4, t4, s6
                  addi         a7, a7, 1037
                  c.lui        t0, 25
                  c.srai       a3, 12
                  xor          a1, s9, t4
                  c.addi4spn   a0, sp, 864
                  and          zero, a6, sp
                  srl          a5, zero, zero
                  srl          t2, t1, gp
                  c.and        a1, a2
                  mulh         s5, s2, s11
                  c.addi       a0, 10
                  c.slli       s10, 28
                  c.addi       s5, 4
                  addi         s8, t3, -1778
                  c.mv         s4, a0
                  div          s6, s6, a0
                  mulhu        a3, a1, a1
                  or           s10, a5, s8
                  srai         t1, a6, 13
                  remu         gp, a5, sp
                  add          s8, zero, a0
                  li           s6, 0xd90dcb10 #start riscv_int_numeric_corner_stream_23
                  li           s2, 0xffffffff
                  li           gp, 0x80000000
                  li           s0, 0xffffffff
                  li           a6, 0x768d574b
                  li           a5, 0xb207af24
                  li           a0, 0x0
                  li           s3, 0xffffffff
                  li           a1, 0x792388d0
                  li           ra, 0xffffffff
                  mulhu        a5, a6, a5
                  mulhu        a6, a0, gp
                  mulhu        a1, s2, a0
                  remu         a6, a0, a0
                  mul          a5, s6, s2
                  add          a6, s6, s2
                  addi         s0, gp, -1422
                  auipc        s3, 106902
                  mulhsu       s6, a6, s6
                  mul          gp, a6, gp
                  rem          a1, s6, s3
                  mulhsu       a1, s2, ra
                  add          a5, s0, s3
                  rem          s0, a5, s3
                  rem          a1, gp, s2
                  remu         a0, gp, a0
                  mulhsu       a5, a0, ra #end riscv_int_numeric_corner_stream_23
                  rem          t5, a4, gp
                  andi         t6, a2, 1647
                  sltiu        tp, a1, -5
                  c.slli       a4, 24
                  sra          s2, gp, s1
                  sra          s11, t5, s3
                  c.srai       a3, 19
                  xori         a1, t5, -1385
                  c.mv         s10, s3
                  remu         s8, a6, s2
                  c.li         s7, 1
                  mul          s3, a3, s1
                  remu         a1, s4, t1
                  ori          sp, s6, 904
                  srli         s4, s0, 4
                  c.addi16sp   sp, -16
                  sll          a5, sp, ra
                  sub          s5, a0, s6
                  slli         s8, a1, 15
                  sltu         zero, s3, t1
                  c.srai       a5, 7
                  c.nop
                  and          ra, a6, t4
                  c.addi       t0, -1
                  c.and        a5, s1
                  sltiu        s3, t2, 1704
                  slt          a1, s4, t4
                  c.mv         t4, a0
                  sltiu        s11, a2, 637
                  srai         ra, s4, 15
                  c.addi16sp   sp, 272
                  or           a0, a2, s4
                  sltiu        gp, sp, -1462
                  sltiu        a0, gp, 1025
                  add          t5, s2, s5
                  slt          a4, s5, s7
                  lui          a0, 707111
                  xor          s7, s3, t2
                  srli         t1, s0, 14
                  or           a7, s10, t1
                  sub          t5, ra, s3
                  or           a3, s4, t6
                  slli         t4, s3, 20
                  add          zero, t6, t2
                  auipc        t0, 982824
                  mulhu        s10, a5, s9
                  srli         a5, t3, 30
                  srl          zero, s3, a4
                  srli         t5, gp, 17
                  xor          a1, t3, s7
                  c.lui        s1, 9
                  c.or         s1, a4
                  srl          a5, s10, a5
                  srli         s5, s10, 17
                  c.lui        s8, 4
                  mulhu        s8, s9, t2
                  c.sub        a0, a0
                  c.mv         s1, s2
                  c.nop
                  slt          sp, t2, a2
                  sltiu        s8, t6, -1318
                  c.lui        a7, 18
                  mul          s11, s1, s8
                  slt          s2, s6, s5
                  c.mv         a0, s3
                  ori          s10, s9, 1048
                  c.srli       s0, 4
                  c.srai       s0, 15
                  c.nop
                  srai         s5, ra, 19
                  divu         a4, s6, t4
                  c.or         a5, s0
                  sltu         a1, t1, ra
                  srli         t6, s5, 12
                  c.xor        s0, a4
                  li           s6, 0xffffffff #start riscv_int_numeric_corner_stream_9
                  li           a6, 0xc5c6b27b
                  li           s10, 0xffffffff
                  li           a1, 0x80000000
                  li           s0, 0xb6c8f051
                  li           gp, 0x227fb8cd
                  li           tp, 0xffffffff
                  li           s2, 0xe82f1b85
                  li           a5, 0xffffffff
                  li           t5, 0x0
                  mul          a5, tp, s10
                  rem          tp, a5, s2
                  div          s6, tp, t5
                  divu         a5, t5, s6
                  lui          s6, 374293
                  lui          a1, 375934
                  divu         s2, tp, tp
                  mulhu        t5, t5, gp
                  rem          s6, gp, tp
                  lui          s10, 240423
                  div          s0, s2, s10
                  nop
                  add          s2, tp, tp
                  mul          gp, s2, a5
                  add          s10, a1, tp
                  nop
                  mulhsu       s0, a5, s2
                  remu         a6, a6, s2
                  mulhu        a5, tp, tp
                  lui          a6, 1019482
                  sub          t5, s6, s10
                  remu         a5, t5, s6
                  lui          a1, 396658
                  mulh         a6, gp, a6 #end riscv_int_numeric_corner_stream_9
                  c.or         a5, a3
                  c.srli       s0, 20
                  sll          s3, t1, a1
                  and          s3, sp, s8
                  c.and        a4, a4
                  mulhu        a1, s9, s7
                  ori          a0, s3, 1898
                  c.li         a0, -1
                  mulh         ra, s8, a5
                  c.add        a7, s11
                  c.lui        a6, 12
                  srai         t4, a0, 8
                  srli         s0, s4, 9
                  c.mv         s2, s9
                  c.li         s3, -1
                  c.addi16sp   sp, 464
                  c.slli       s10, 4
                  sra          a4, a2, t6
                  c.and        a4, a4
                  mulhu        t5, a3, t0
                  and          s6, s7, s9
                  slti         s2, t3, 1038
                  ori          a5, s8, -122
                  div          t5, a0, a1
                  and          tp, s9, t0
                  mul          a5, a5, t6
                  c.li         a6, -1
                  c.nop
                  nop
                  and          s2, a1, s3
                  or           s0, a5, s2
                  rem          gp, a3, tp
                  c.addi       s4, -1
                  sra          s10, t0, s5
                  and          t1, zero, s0
                  srai         s1, s4, 31
                  xori         a5, s10, 1253
                  c.nop
                  xor          s10, a6, zero
                  div          a1, a4, t3
                  c.slli       ra, 15
                  divu         a5, t5, a5
                  srai         s0, sp, 16
                  xor          a6, zero, s7
                  c.lui        t6, 3
                  divu         s0, s11, s9
                  remu         ra, a1, s11
                  sltiu        tp, t5, -838
                  c.nop
                  nop
                  mulhsu       zero, s11, tp
                  sltiu        s8, s10, 1144
                  c.srai       a1, 23
                  c.xor        a5, a3
                  srli         s5, ra, 28
                  and          a5, t1, a2
                  slli         a3, s3, 24
                  sltiu        t6, a0, 54
                  c.addi4spn   a4, sp, 896
                  c.srai       a4, 1
                  c.mv         s0, s6
                  sra          s5, a5, s8
                  c.addi       ra, -1
                  c.lui        s4, 10
                  sll          t4, s3, s4
                  divu         t5, s5, a5
                  c.or         a1, a5
                  sltiu        t4, s9, 278
                  slt          t6, a5, a2
                  sll          s6, a2, gp
                  slti         s1, s5, -83
                  c.sub        a3, s1
                  auipc        s2, 380898
                  c.and        a5, a0
                  ori          s8, s2, 1112
                  rem          t6, tp, zero
                  c.mv         sp, a6
                  ori          s6, a2, -979
                  srl          t2, s4, zero
                  divu         s11, s2, s7
                  mulh         a3, s9, s6
                  and          s5, ra, t0
                  c.lui        t4, 8
                  xor          s6, s8, s5
                  c.sub        a4, s0
                  add          a5, a6, a2
                  sra          zero, t4, a3
                  sltiu        sp, s1, 233
                  and          a4, t5, a7
                  auipc        s10, 94361
                  c.and        a3, a3
                  mulh         a6, a2, s4
                  xor          t4, s9, a0
                  rem          t0, s11, a5
                  c.add        t4, s6
                  mulh         t2, ra, s6
                  slt          tp, s9, a1
                  slt          t2, a1, s0
                  c.nop
                  mulhsu       s4, sp, t1
                  slt          gp, a1, a3
                  c.addi       s8, -1
                  c.mv         sp, s9
                  mulhsu       s7, t3, a3
                  mul          a1, tp, sp
                  c.addi       s5, 26
                  c.add        s8, ra
                  sltiu        s3, a0, -1987
                  c.or         a4, a2
                  divu         tp, t4, zero
                  srai         a6, t0, 11
                  c.srai       s0, 20
                  c.nop
                  rem          t5, s6, s3
                  nop
                  sub          s7, zero, s1
                  c.mv         s10, s3
                  xor          ra, t0, s7
                  c.and        s0, a4
                  lui          a6, 1045493
                  divu         a3, t5, s2
                  sltiu        ra, a2, -619
                  add          t2, a2, a4
                  slt          s8, s8, gp
                  c.or         a3, a3
                  c.nop
                  c.addi       s10, -1
                  lui          t2, 222265
                  c.slli       t2, 22
                  slti         s2, s6, 934
                  or           s10, a7, s5
                  c.andi       a5, 29
                  andi         t2, s9, 1371
                  xori         s2, s4, -810
                  or           t2, sp, s5
                  c.andi       a4, 11
                  remu         a1, a1, ra
                  c.andi       s0, 12
                  c.addi       s6, 20
                  c.srai       a3, 31
                  div          t1, s11, a2
                  xor          zero, t2, s2
                  c.xor        a5, a0
                  rem          s8, a5, s7
                  c.mv         a7, a6
                  c.addi       a7, 1
                  rem          s3, gp, s3
                  c.addi       a5, 13
                  mulhu        gp, sp, t4
                  c.sub        s0, s1
                  ori          zero, a0, 1430
                  sltiu        t4, s8, 464
                  sll          s0, a7, sp
                  or           t0, zero, a3
                  sltiu        t1, t3, -1955
                  c.add        a7, t6
                  divu         s5, a7, s4
                  or           a4, a3, s10
                  mulh         t0, zero, t4
                  sltu         s2, a2, ra
                  add          tp, ra, tp
                  sra          s7, a7, a4
                  slt          zero, a6, s8
                  mulh         s2, t0, t5
                  auipc        a1, 888858
                  srai         a0, s3, 0
                  c.nop
                  slt          t0, t3, t5
                  c.sub        a5, a2
                  addi         s3, a2, -513
                  xori         s8, sp, -1329
                  c.srai       s0, 26
                  c.add        tp, a3
                  srl          s7, s9, s6
                  sltu         s5, s2, s3
                  c.srli       a3, 6
                  c.andi       s0, 25
                  or           s3, zero, a7
                  c.srli       a4, 13
                  srl          gp, t1, s10
                  sltiu        s0, sp, 784
                  c.andi       s0, 5
                  mul          s10, t1, t3
                  add          t4, s11, s0
                  slt          s1, s9, a7
                  rem          t2, s0, t3
                  c.xor        s0, s0
                  nop
                  auipc        s1, 1004668
                  srl          a3, s6, s7
                  mul          t4, tp, s4
                  c.and        a0, a0
                  sub          s2, t4, a1
                  and          s7, s3, a2
                  c.srli       a0, 15
                  c.mv         a4, s4
                  slli         t0, t4, 20
                  xori         s3, gp, -473
                  slli         a1, tp, 8
                  c.lui        gp, 12
                  or           gp, t6, s0
                  auipc        s8, 854821
                  auipc        s8, 57116
                  srai         s6, t0, 5
                  addi         a4, s11, 687
                  srl          a7, s10, tp
                  and          t1, s5, s10
                  add          a7, a6, t1
                  nop
                  rem          t5, t3, s1
                  c.addi16sp   sp, 496
                  addi         tp, a6, -1466
                  sll          s5, s2, a1
                  auipc        a6, 954067
                  c.and        s0, s0
                  addi         s5, s9, -629
                  mulhu        s3, t5, t4
                  c.nop
                  c.sub        a5, a3
                  c.or         s1, a3
                  mul          t4, s0, a1
                  srl          s1, a4, a6
                  c.addi16sp   sp, 272
                  rem          s8, t1, a4
                  c.or         a3, a3
                  xor          s2, ra, sp
                  div          zero, t2, s2
                  slt          s2, a1, s9
                  c.lui        a6, 4
                  c.li         s0, 13
                  slti         tp, s6, -628
                  divu         s1, gp, a5
                  sll          s5, t0, tp
                  c.slli       t0, 16
                  xor          t0, t1, gp
                  c.srli       a4, 28
                  c.srai       a4, 17
                  c.mv         a1, t1
                  c.add        tp, s1
                  mul          a3, a5, t5
                  xor          t0, gp, s9
                  nop
                  auipc        a4, 330319
                  c.andi       a1, 11
                  mulhu        s8, s10, s8
                  add          s2, a5, t6
                  slli         a4, s3, 4
                  ori          a7, a0, 518
                  xor          a4, s11, s4
                  srl          ra, zero, ra
                  c.addi4spn   a5, sp, 528
                  div          s3, a1, t4
                  srl          ra, a1, s11
                  c.addi       s0, 1
                  srai         a5, t5, 30
                  c.lui        t4, 11
                  lui          s11, 568632
                  c.slli       t6, 11
                  sll          t4, s5, a1
                  add          s10, a3, s0
                  auipc        sp, 906159
                  lui          s10, 414720
                  sltu         a0, a7, s11
                  sll          s8, sp, tp
                  c.addi16sp   sp, 384
                  c.li         s10, 18
                  andi         s5, sp, 1766
                  or           s0, a2, t4
                  c.add        t4, a7
                  and          a5, t5, a1
                  andi         t1, s4, 611
                  c.slli       ra, 20
                  mulhsu       t5, t2, s2
                  c.addi16sp   sp, 256
                  xori         s11, t4, 1779
                  nop
                  mul          ra, zero, s10
                  lui          t6, 555586
                  ori          t5, s4, -1764
                  divu         sp, ra, a7
                  div          t5, tp, zero
                  mulh         t0, a2, s5
                  c.addi       s11, -1
                  sra          sp, a1, ra
                  lui          ra, 611377
                  mulhu        tp, a7, s6
                  andi         sp, sp, 1156
                  c.li         sp, -1
                  sltu         t5, s10, t4
                  xor          s5, a2, t0
                  c.li         s3, 4
                  srai         t5, t2, 8
                  slt          t4, s8, tp
                  slli         s8, ra, 10
                  c.slli       a4, 16
                  c.and        a5, a4
                  rem          a0, a4, a0
                  ori          zero, a7, 1941
                  c.slli       s0, 10
                  divu         tp, tp, gp
                  mul          s11, a6, a3
                  slli         a1, t3, 27
                  auipc        s6, 525323
                  slli         a7, t4, 17
                  c.xor        a1, s0
                  c.and        a0, a5
                  or           tp, t0, a6
                  xor          s10, s0, a6
                  srai         t0, a1, 30
                  slli         tp, a4, 2
                  rem          tp, a4, t1
                  slli         tp, tp, 7
                  and          a4, t1, gp
                  sra          t6, a3, t4
                  nop
                  auipc        s11, 566189
                  c.lui        s6, 3
                  c.and        a1, s1
                  remu         t6, a5, s1
                  sltu         gp, a0, t2
                  remu         a3, s0, s6
                  andi         s3, s2, -1207
                  divu         s5, a6, t2
                  div          t4, s10, s6
                  c.mv         a1, gp
                  srai         a5, s11, 16
                  c.or         a3, a3
                  c.slli       a7, 23
                  sltu         s7, s1, s5
                  srai         zero, a6, 26
                  c.andi       s1, 4
                  ori          sp, s1, -1984
                  slli         a1, zero, 23
                  xor          zero, t1, a6
                  c.srai       a0, 25
                  mulh         t0, a7, tp
                  c.li         s8, -1
                  c.li         sp, -1
                  div          s10, s4, sp
                  c.andi       s0, 9
                  c.li         t6, 7
                  mulh         gp, s1, a5
                  sll          s8, s3, a6
                  c.or         a4, a2
                  rem          a0, a1, gp
                  slt          s11, t4, a1
                  c.srli       s0, 5
                  c.slli       t2, 7
                  c.addi16sp   sp, -16
                  remu         s2, s3, s4
                  srl          a3, t0, t5
                  c.andi       a0, -1
                  c.addi       a0, -1
                  or           s10, tp, a2
                  c.addi16sp   sp, 48
                  sra          gp, sp, a5
                  slti         s3, s8, -1775
                  c.srai       s0, 13
                  slt          gp, a7, s3
                  sll          t0, a4, a4
                  mulh         tp, s11, s3
                  sltiu        t1, s10, 909
                  srai         a7, zero, 11
                  nop
                  c.or         a4, s0
                  sltiu        s8, a3, 1181
                  c.li         s4, -1
                  c.srai       s0, 7
                  addi         s0, sp, 656
                  c.srli       s0, 8
                  andi         s10, t5, 1892
                  c.xor        a5, s0
                  c.add        t0, a2
                  xori         s4, t5, 597
                  c.or         a1, a3
                  mulhsu       t2, a4, zero
                  c.xor        a0, s1
                  c.addi16sp   sp, 224
                  sltu         a6, s7, s5
                  divu         a4, a7, s7
                  c.add        s7, s7
                  c.xor        s1, s1
                  auipc        s0, 936063
                  remu         s6, s3, sp
                  rem          a3, s6, sp
                  sll          s1, s5, t2
                  c.or         s0, a2
                  remu         ra, a6, s0
                  auipc        s8, 756497
                  c.and        a3, s0
                  c.sub        a0, s0
                  c.li         ra, -1
                  c.and        a5, a1
                  ori          zero, s8, 1228
                  slti         tp, t6, 1815
                  slli         a5, t3, 24
                  mulh         a4, a4, s2
                  c.addi16sp   sp, 112
                  nop
                  c.add        t0, s6
                  mulh         t1, t4, t6
                  c.xor        a4, a4
                  srli         tp, t6, 7
                  c.add        t4, gp
                  slt          t1, t6, a3
                  addi         s8, t0, -242
                  c.li         s4, -1
                  c.add        t6, s8
                  c.sub        a3, a0
                  rem          s0, tp, a5
                  c.addi       t4, 6
                  c.add        gp, t6
                  xori         sp, a7, -507
                  c.and        a5, a4
                  c.addi       t4, -1
                  c.sub        a3, s0
                  c.slli       t1, 19
                  addi         t2, t5, -1627
                  remu         a6, tp, t2
                  remu         t2, a7, a3
                  and          s7, t2, tp
                  c.li         s2, 14
                  c.li         a7, -1
                  remu         s10, sp, t1
                  sltu         a1, s3, a3
                  andi         s6, t0, 1228
                  lui          a7, 641974
                  andi         a0, t0, 1207
                  addi         a3, s9, -957
                  sltiu        s5, a6, -1377
                  add          s2, gp, sp
                  c.addi       t5, 28
                  or           zero, t4, tp
                  mul          s2, sp, zero
                  xor          t0, a4, a5
                  and          t4, t6, s1
                  and          a4, gp, s1
                  c.xor        s0, s0
                  addi         s0, t5, -1235
                  xor          a4, a0, a4
                  mulh         t2, t4, a6
                  add          s8, t4, t6
                  srl          s6, s9, t6
                  c.addi       s0, 10
                  c.and        a1, a3
                  and          s2, gp, a4
                  c.addi16sp   sp, -16
                  sub          a0, s2, t6
                  c.slli       sp, 17
                  div          s5, s2, a2
                  ori          a0, a3, 232
                  c.add        ra, a3
                  xori         s11, t2, -1330
                  c.srli       a1, 8
                  c.xor        a3, a4
                  c.addi16sp   sp, 80
                  slli         a3, a5, 9
                  nop
                  add          t5, a6, a0
                  c.addi       t2, 24
                  c.li         gp, -1
                  c.li         s1, -1
                  lui          s4, 27170
                  ori          a1, zero, 535
                  srai         s2, s5, 26
                  xori         s6, s5, -394
                  c.lui        s1, 13
                  mulhu        ra, tp, t4
                  divu         sp, s5, t3
                  c.slli       t0, 8
                  remu         t5, a2, s0
                  c.lui        tp, 26
                  andi         s3, t1, -1952
                  c.addi       a1, 19
                  c.add        s11, t0
                  c.or         a3, s1
                  c.mv         s8, a7
                  sltiu        t4, s3, 1602
                  or           ra, t2, t4
                  sltiu        s1, tp, -305
                  div          ra, s3, s3
                  auipc        sp, 433544
                  sll          s7, t0, ra
                  c.slli       t2, 6
                  xor          s1, t5, s2
                  mulhu        s10, s5, s7
                  srli         s11, a4, 23
                  div          s8, tp, a2
                  div          s2, s0, s1
                  ori          s8, a2, 183
                  lui          a6, 105943
                  c.addi4spn   a5, sp, 384
                  c.mv         ra, t4
                  c.slli       t6, 20
                  or           s4, t5, t2
                  c.sub        a3, a5
                  c.srli       a4, 14
                  c.lui        tp, 22
                  nop
                  c.srai       a1, 1
                  or           t5, a3, s2
                  c.sub        s1, a0
                  sub          sp, s6, s9
                  c.and        s0, a0
                  c.addi4spn   a3, sp, 752
                  xor          s5, s3, a0
                  c.or         a5, a3
                  c.mv         gp, a0
                  xori         tp, a5, -1875
                  slti         gp, t2, 1453
                  c.lui        a6, 7
                  mulh         s10, t5, t5
                  rem          tp, a1, a0
                  or           s5, gp, a5
                  c.srli       a3, 23
                  c.andi       a3, 24
                  c.lui        a6, 20
                  c.xor        a1, a3
                  slli         s8, sp, 10
                  divu         a3, t6, a1
                  xori         s6, s5, 983
                  sub          s5, a5, t3
                  xor          a1, t4, a3
                  sltiu        a4, tp, -560
                  c.srai       a1, 20
                  c.andi       a3, -1
                  c.sub        a3, a5
                  slti         s11, t4, 2030
                  c.sub        a3, a0
                  sll          gp, gp, a7
                  slti         s8, s2, -1285
                  mulhu        gp, s10, sp
                  c.nop
                  addi         tp, t4, -1495
                  slli         a5, s2, 7
                  nop
                  divu         s3, a5, s5
                  c.li         s1, 22
                  c.srli       s0, 22
                  c.and        a5, a0
                  sra          a0, a0, s1
                  c.lui        t5, 28
                  sub          a0, a4, t1
                  c.mv         s0, s3
                  mulhu        t4, s8, zero
                  c.nop
                  xor          t5, t5, s10
                  slli         a7, t3, 27
                  c.mv         s8, a6
                  ori          t5, s0, -319
                  c.srai       a4, 6
                  sltiu        ra, sp, 776
                  div          t5, t3, t2
                  add          s4, a4, a5
                  div          gp, tp, gp
                  c.srli       s1, 15
                  srli         s11, a2, 1
                  c.nop
                  auipc        t2, 924301
                  c.nop
                  c.mv         t2, ra
                  ori          t4, ra, -2047
                  c.li         s8, 19
                  srl          s5, a7, t4
                  c.add        a4, ra
                  sltiu        s11, tp, -1351
                  remu         gp, t1, t0
                  add          t5, t6, a4
                  nop
                  mulhsu       s0, s5, s8
                  mulhu        zero, s11, s1
                  xor          s0, s11, t4
                  auipc        s8, 464049
                  srl          s1, a1, t3
                  c.srli       a4, 17
                  mul          s8, a5, tp
                  c.xor        a0, a5
                  sltu         t1, a2, a2
                  sltiu        t2, s2, -156
                  xori         s1, s6, -564
                  sra          a3, zero, tp
                  sltu         ra, s2, a4
                  addi         a6, t4, 1035
                  srli         s1, sp, 17
                  c.srai       s1, 28
                  c.and        a3, a0
                  lui          a1, 412723
                  c.sub        a5, a5
                  c.addi4spn   s1, sp, 672
                  auipc        t5, 928984
                  srli         gp, s9, 30
                  mul          s3, s7, s5
                  c.andi       a0, 17
                  c.mv         s8, a2
                  c.li         a7, -1
                  or           t4, s9, a2
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           a0, 0x0
                  li           ra, 0x0
                  li           gp, 0x46d08142
                  li           s0, 0x0
                  li           s11, 0xffffffff
                  li           t2, 0x0
                  li           t1, 0xffffffff
                  li           s10, 0x80000000
                  li           s7, 0xfb6a5672
                  rem          s10, s5, s11
                  divu         s11, s0, s7
                  nop
                  remu         s0, a0, s7
                  mulhsu       ra, s0, s7
                  div          s0, t2, a0
                  div          ra, s0, s7
                  mul          t1, s7, a0
                  mulhu        ra, s11, s5
                  divu         s5, s11, a0
                  rem          t2, s11, s11
                  addi         s5, t1, -1857
                  div          s0, s0, s11
                  mulh         t1, s0, s7
                  add          ra, s7, s11
                  nop
                  mulh         s0, ra, s10
                  div          s0, t1, s7
                  divu         s0, gp, gp
                  add          a0, t1, ra
                  mul          s5, s0, t2
                  remu         s5, a0, s5
                  mulhu        s0, t1, s5
                  mul          t2, t1, t2
                  addi         ra, t1, 1610 #end riscv_int_numeric_corner_stream_16
                  srl          s6, sp, s3
                  add          a6, zero, s7
                  slt          s10, t5, t3
                  sra          s6, s8, t0
                  srli         s11, s1, 22
                  andi         a3, s5, 1083
                  mulhsu       s8, a2, gp
                  c.li         s2, 25
                  c.add        a0, t4
                  xori         zero, a5, 855
                  addi         s7, a5, -8
                  add          a5, t6, t5
                  srai         s11, t4, 29
                  auipc        s11, 911067
                  c.xor        s0, a1
                  c.addi       t6, 22
                  srai         t2, s2, 21
                  sub          a4, a4, s4
                  remu         a6, a1, zero
                  xor          tp, t4, t3
                  c.li         t1, 2
                  rem          s7, sp, s7
                  slti         s0, t3, 112
                  c.and        a5, a0
                  srl          a1, s0, a4
                  c.srai       a1, 17
                  divu         a1, a7, t3
                  xori         t5, t2, 1086
                  div          s0, tp, a0
                  mul          s5, a1, s0
                  mulhu        a4, t6, a4
                  c.mv         s0, a6
                  c.slli       s5, 4
                  c.addi       t4, 21
                  srl          t5, s4, s5
                  srai         s7, s8, 7
                  rem          s5, tp, s4
                  sra          s5, s4, t5
                  mulhu        a6, a4, a5
                  c.lui        a0, 16
                  mulh         a4, tp, sp
                  slli         s4, tp, 3
                  andi         s4, t1, 202
                  c.add        s5, t6
                  xori         sp, t5, 872
                  remu         s3, a0, s10
                  or           s2, gp, t0
                  c.nop
                  addi         s6, a6, -1905
                  sra          s7, t2, s11
                  remu         s0, t2, zero
                  slli         a1, s0, 27
                  add          s3, a5, s4
                  c.srli       a1, 25
                  sltu         a6, a3, a3
                  c.nop
                  c.add        tp, t2
                  mulhsu       s11, a0, s1
                  ori          a1, t1, 990
                  c.and        a3, a0
                  c.srai       a0, 27
                  c.or         a4, a5
                  or           s6, t0, s1
                  mulhu        s4, a5, s9
                  c.or         a1, a0
                  or           a6, tp, gp
                  sltiu        s1, a5, 1601
                  sra          t2, a5, a6
                  c.sub        a0, a4
                  slli         gp, zero, 2
                  c.addi4spn   a0, sp, 704
                  div          s1, t6, s6
                  c.li         a0, 22
                  or           sp, t5, s3
                  c.lui        s10, 3
                  sra          t1, gp, s4
                  srl          sp, a0, sp
                  add          ra, t6, ra
                  nop
                  sltu         t6, a2, s10
                  mul          gp, ra, s3
                  c.lui        gp, 25
                  sub          t1, s2, s8
                  remu         s11, zero, a1
                  srai         s11, gp, 20
                  c.slli       t5, 20
                  c.li         s11, -1
                  xor          s7, s1, s3
                  nop
                  srai         s11, a6, 7
                  sra          t4, a3, t4
                  div          sp, s2, t6
                  mulhsu       t2, t3, a5
                  xor          a5, s5, a3
                  c.li         a3, 0
                  rem          a3, s5, sp
                  sltiu        a4, a7, -197
                  and          t0, s8, a4
                  srai         tp, t6, 3
                  auipc        s1, 168147
                  rem          s4, gp, t6
                  c.andi       a3, -1
                  div          zero, zero, s3
                  c.lui        t2, 24
                  andi         s11, s10, -526
                  srai         t1, t6, 24
                  andi         s0, gp, -1869
                  c.li         s11, 30
                  srai         a3, a5, 5
                  c.lui        ra, 28
                  srai         a1, t3, 12
                  slti         a5, a2, 1787
                  ori          a7, a4, 977
                  c.mv         a6, s2
                  mulhsu       s6, s5, gp
                  xor          t1, s0, s5
                  c.nop
                  andi         t6, s10, 42
                  mulh         ra, zero, s3
                  srai         a6, t3, 25
                  remu         t4, s2, s2
                  c.lui        t0, 14
                  xori         a5, s11, 1830
                  c.slli       a7, 8
                  c.or         a1, s0
                  sltu         a7, a2, t0
                  xori         s11, sp, -463
                  c.andi       a0, 27
                  sltiu        ra, t6, 675
                  sra          a1, a0, s1
                  nop
                  c.srai       a3, 7
                  srai         tp, s6, 19
                  srli         ra, ra, 8
                  rem          a3, sp, t0
                  c.andi       a4, -1
                  xor          s2, t1, a4
                  sra          s6, t4, s7
                  srli         s1, zero, 24
                  add          s1, tp, s1
                  sltiu        s0, tp, -1540
                  sltiu        s6, t0, 334
                  c.or         a5, a1
                  remu         a3, sp, s0
                  c.mv         tp, t5
                  c.and        a0, a3
                  c.mv         t4, a0
                  mul          s0, a6, zero
                  sltu         s5, t0, ra
                  srli         a4, s3, 31
                  c.or         a3, a1
                  c.addi       s10, -1
                  c.and        a4, s0
                  c.sub        s0, a2
                  c.lui        t2, 20
                  mulh         s5, a1, s8
                  sra          s6, s1, s1
                  sll          s0, s2, sp
                  div          tp, s10, t3
                  sra          s2, a5, sp
                  auipc        t2, 898259
                  sltu         s8, t3, gp
                  srl          s8, t4, t2
                  c.addi4spn   a0, sp, 1008
                  remu         a1, a2, a2
                  srai         t2, a3, 6
                  ori          a1, s2, 1818
                  sltiu        ra, t3, -282
                  xor          s7, t5, s3
                  div          a0, a3, s1
                  auipc        a0, 218540
                  slti         s0, s11, 1233
                  xori         a0, t4, 797
                  nop
                  and          s11, tp, s7
                  mulh         s6, a0, t1
                  srai         s2, s3, 19
                  xori         t2, a6, 1041
                  mulh         s11, gp, s2
                  rem          s0, t5, a0
                  and          s7, zero, s4
                  lui          s2, 984005
                  addi         s3, a1, 16
                  mul          a3, s11, a7
                  c.li         a0, -1
                  sltu         s5, s0, ra
                  ori          s11, t1, 1327
                  c.addi16sp   sp, 160
                  slli         s2, s6, 10
                  sltiu        t2, a4, 521
                  srl          s7, gp, a4
                  remu         t4, a5, sp
                  sltiu        t6, s0, 1705
                  mulh         s4, s5, s5
                  c.srai       a1, 14
                  and          a0, t6, s1
                  slti         t0, t4, 1227
                  addi         t5, zero, -1438
                  c.and        a1, a1
                  c.andi       a4, -1
                  sra          s3, t4, s8
                  ori          s8, a6, -1753
                  slli         sp, sp, 12
                  c.addi       a5, -1
                  and          s10, a5, tp
                  c.srai       a1, 10
                  srai         t5, t5, 0
                  xor          s4, t0, s1
                  or           a0, s11, gp
                  c.slli       s6, 5
                  sub          a7, s6, s10
                  mulh         tp, ra, s9
                  sra          s0, gp, sp
                  mulhu        sp, s2, a5
                  add          t6, a3, t6
                  c.nop
                  xor          a4, gp, s10
                  and          a3, t5, s7
                  srli         s3, s0, 15
                  andi         s2, s8, 639
                  srli         s11, s3, 12
                  srl          tp, s8, s0
                  auipc        s11, 255722
                  xor          t5, a1, tp
                  srai         t0, s11, 15
                  sltu         s1, tp, s6
                  xori         a3, s2, 1693
                  mulhsu       s11, s10, t3
                  c.li         a1, 7
                  srai         t4, a7, 25
                  mulh         s1, a7, gp
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  sltu         s2, t6, tp
                  sltu         t0, s10, s11
                  divu         s11, t1, s3
                  addi         a5, s2, 1566
                  divu         s5, a1, a5
                  slt          t0, a2, s0
                  c.mv         a4, t4
                  divu         s7, s10, gp
                  c.srai       s0, 3
                  c.addi16sp   sp, 448
                  slli         t1, s6, 23
                  c.andi       a3, 1
                  andi         s4, s0, 1712
                  mulhu        gp, a0, gp
                  sltiu        a5, t2, 1903
                  c.srai       s1, 7
                  div          a1, a0, a0
                  nop
                  lui          s2, 991786
                  addi         t6, s4, 744
                  divu         t5, s11, a3
                  c.addi4spn   s0, sp, 592
                  div          a4, s8, s10
                  nop
                  nop
                  mulh         t0, t3, s11
                  divu         a6, s6, sp
                  c.addi16sp   sp, -16
                  c.andi       a5, 16
                  c.srai       a3, 28
                  sub          s1, s3, ra
                  sra          a7, tp, sp
                  div          s3, zero, gp
                  xori         ra, s5, 175
                  divu         a7, ra, s11
                  c.lui        a1, 20
                  c.addi16sp   sp, -16
                  sll          s8, s5, s10
                  div          s0, a7, t3
                  mulhu        s4, s7, a7
                  auipc        s6, 708389
                  or           t5, a7, t0
                  mul          a1, ra, a5
                  sltu         t1, s5, a2
                  mulhsu       s3, s9, s9
                  and          t1, a4, a7
                  c.addi       s6, -1
                  c.mv         s2, s8
                  mulhsu       gp, s5, s9
                  sub          tp, s8, gp
                  c.lui        ra, 23
                  addi         s11, s9, 1781
                  mulhu        t4, t6, s8
                  c.xor        a3, a0
                  divu         a6, a1, s1
                  add          s7, t6, ra
                  c.addi       t0, 31
                  sra          s2, a7, s4
                  srai         t2, s8, 11
                  mul          ra, a1, s11
                  slti         t4, a6, 595
                  sll          s3, s8, s2
                  auipc        s6, 459948
                  srai         tp, t2, 15
                  divu         gp, s6, t4
                  c.sub        a5, a5
                  c.addi16sp   sp, 400
                  sltu         a7, a3, t3
                  rem          s4, zero, t5
                  sra          a1, s8, s1
                  lui          a5, 655319
                  c.or         s0, a2
                  c.add        s0, t1
                  sltiu        s6, a3, 242
                  srai         s1, gp, 17
                  c.sub        a3, a3
                  mulhsu       a4, s9, a1
                  add          a1, s1, t0
                  slli         s6, t6, 10
                  mulhu        t5, t5, a2
                  rem          s11, sp, s6
                  c.nop
                  sltiu        ra, s11, -1115
                  c.srli       s1, 6
                  slti         s8, t2, 1283
                  sub          tp, t5, ra
                  c.addi4spn   a1, sp, 752
                  addi         t2, gp, 779
                  c.li         tp, -1
                  remu         t5, a1, a1
                  sra          a5, tp, t1
                  sra          s4, s7, a7
                  xori         t4, t4, -331
                  divu         a6, s9, s1
                  andi         s6, a3, 1890
                  slli         s2, s5, 18
                  ori          s3, a6, 1087
                  srl          s4, s8, zero
                  mul          s7, t3, gp
                  srli         s8, t6, 19
                  c.addi       a3, -1
                  slt          s0, a0, a0
                  xori         s1, a6, -260
                  c.xor        s0, a3
                  c.addi4spn   a4, sp, 864
                  rem          t2, gp, t3
                  xor          s3, s0, a3
                  c.or         s1, s0
                  c.andi       s1, -1
                  nop
                  srli         s11, s10, 22
                  slt          s7, a1, s0
                  xor          gp, s0, s2
                  srli         gp, t2, 17
                  c.mv         s7, t1
                  c.sub        s0, a3
                  mulhsu       s2, sp, a5
                  slli         s4, s0, 5
                  c.xor        a0, a5
                  mulhsu       zero, s1, s10
                  srli         s11, zero, 19
                  nop
                  rem          s11, a6, s7
                  mul          a1, s0, a2
                  rem          t0, s11, a0
                  mulhu        a5, s10, s11
                  mul          t2, s4, t3
                  c.xor        a1, s1
                  c.slli       a6, 22
                  div          a1, a5, sp
                  remu         s3, s0, sp
                  slt          s2, s10, ra
                  c.add        t1, ra
                  c.mv         gp, a2
                  auipc        t4, 3025
                  c.srli       a4, 8
                  c.li         gp, -1
                  c.srai       a3, 10
                  sltu         sp, s4, t5
                  c.xor        a5, a4
                  c.andi       a5, -1
                  sll          s8, ra, zero
                  mulhu        s1, a7, s8
                  sra          t4, a5, a6
                  c.addi4spn   a3, sp, 816
                  c.or         a0, a4
                  div          t4, a0, t0
                  c.and        a0, s0
                  c.sub        a0, a0
                  divu         gp, s0, t0
                  mulhsu       s1, s6, gp
                  c.mv         t6, a7
                  mulhsu       a6, ra, t3
                  c.and        a1, a3
                  xori         s2, zero, 264
                  mulhsu       s5, a2, zero
                  c.addi       a0, -1
                  c.mv         tp, a1
                  c.li         t1, 10
                  and          s1, s2, tp
                  sltiu        gp, s0, -526
                  c.andi       a4, 3
                  addi         a4, s1, -1990
                  c.addi       ra, 10
                  auipc        gp, 102752
                  div          a4, t4, s1
                  c.add        t6, s4
                  add          t0, gp, s2
                  nop
                  sub          a6, s9, s1
                  sltu         zero, gp, ra
                  and          a7, s0, t6
                  mulhu        a5, a2, s2
                  mulhsu       s4, s11, s11
                  sltu         s6, sp, s10
                  slt          s5, s6, s6
                  lui          s8, 663547
                  c.mv         t6, s1
                  mulhsu       ra, t2, a4
                  or           a5, s8, a0
                  srai         t4, s6, 11
                  sra          a7, s3, s3
                  c.addi4spn   a1, sp, 960
                  ori          s2, t5, -483
                  c.nop
                  sltu         t2, t3, a5
                  mulh         t0, s6, t4
                  andi         s8, s11, -1104
                  lui          s11, 188693
                  c.lui        a3, 30
                  srl          a3, s2, s9
                  mulh         zero, s2, t3
                  mulhsu       s5, s6, t2
                  remu         s8, t3, s5
                  sra          a0, s6, t4
                  srli         s3, s10, 25
                  sll          a7, ra, s1
                  c.add        a7, t4
                  c.lui        tp, 20
                  c.mv         s8, t4
                  slli         gp, a4, 13
                  c.lui        s7, 6
                  slt          a6, t5, a2
                  slt          s3, s7, s10
                  c.lui        ra, 30
                  andi         a5, gp, -38
                  or           a1, a3, a3
                  c.and        s1, a4
                  c.sub        s1, a1
                  c.add        a4, ra
                  sltu         s3, ra, t6
                  c.addi16sp   sp, 32
                  remu         a3, t3, a0
                  or           a1, s5, a1
                  mulh         s10, t5, a0
                  c.srai       s1, 14
                  c.xor        a4, a0
                  ori          tp, sp, 1075
                  xor          t1, a3, s10
                  slt          a0, s7, a6
                  xor          t4, zero, a2
                  mulhsu       a4, s2, s3
                  xor          s11, s6, a5
                  sub          s4, a5, s8
                  sll          s8, a2, s10
                  div          s4, a1, a4
                  slli         t0, a5, 26
                  sub          a7, t5, s2
                  c.addi       s10, -1
                  slt          a5, s6, s3
                  sra          t0, t1, a3
                  rem          t4, s4, s8
                  c.mv         t2, s4
                  sra          s1, t4, s0
                  slt          s7, s10, a6
                  c.lui        s2, 21
                  div          s8, t0, s8
                  mul          a1, zero, s6
                  c.and        a4, s1
                  c.lui        a0, 7
                  c.nop
                  auipc        zero, 359100
                  srai         ra, s11, 28
                  c.srli       s1, 27
                  sub          s10, a4, s8
                  mulh         a7, s6, a5
                  c.lui        t0, 27
                  nop
                  rem          a6, s1, a5
                  c.add        s5, gp
                  c.slli       t5, 21
                  c.addi16sp   sp, 304
                  rem          t0, t3, a1
                  ori          t1, t3, 1116
                  rem          a3, a6, s4
                  xori         s10, s10, -803
                  slti         s4, t0, 587
                  c.mv         s3, a6
                  c.srai       a4, 18
                  xori         s1, s8, -848
                  divu         s4, zero, a0
                  srai         a4, s8, 1
                  slli         s8, a4, 28
                  c.nop
                  c.and        s0, a4
                  div          s6, a3, a0
                  c.and        a4, s1
                  srai         t6, s8, 14
                  c.and        s0, s1
                  slli         a5, s7, 16
                  c.addi       gp, 19
                  srli         s7, t3, 25
                  c.mv         s6, s0
                  c.addi4spn   a0, sp, 528
                  xor          s0, a5, t6
                  c.or         a0, a2
                  auipc        sp, 258855
                  c.and        s1, a5
                  c.li         s8, 26
                  add          s8, a3, a1
                  c.andi       a5, -1
                  or           s7, s3, s10
                  c.nop
                  lui          t6, 612413
                  c.addi16sp   sp, 368
                  srl          t2, t2, ra
                  lui          t4, 78210
                  sltu         s2, s3, a4
                  sltiu        s2, t3, 1228
                  slli         t4, s8, 24
                  c.srai       a5, 20
                  addi         t4, t5, -1234
                  sra          s1, s11, s7
                  c.andi       a1, -1
                  c.lui        a3, 8
                  sll          zero, s8, t0
                  auipc        a0, 740858
                  rem          t6, ra, zero
                  c.addi       a5, -1
                  ori          s10, t3, -94
                  slli         s1, t3, 6
                  sub          s10, s7, t1
                  slli         ra, sp, 30
                  c.addi       a6, 12
                  slti         s10, sp, -1248
                  c.add        t2, t4
                  c.nop
                  xor          gp, t3, a5
                  c.mv         gp, t3
                  c.nop
                  sra          s1, t0, s2
                  slt          t5, t2, s9
                  srli         t5, t6, 21
                  c.addi       ra, 11
                  c.slli       s8, 17
                  c.addi4spn   a1, sp, 560
                  sub          a3, t5, t0
                  c.li         t4, 24
                  c.srli       a1, 27
                  or           s4, sp, ra
                  remu         s1, gp, t5
                  div          a0, a7, a5
                  srli         s3, s1, 18
                  mulh         s1, s4, s2
                  nop
                  mulhu        a5, t0, t2
                  c.or         a1, a2
                  lui          t5, 677670
                  c.andi       a0, 24
                  c.addi16sp   sp, -16
                  divu         ra, t5, s10
                  srai         t6, t3, 29
                  andi         a4, a0, 440
                  mulh         s7, s3, s11
                  xor          a5, t5, t1
                  c.mv         s7, s9
                  lui          t5, 129793
                  ori          a1, gp, 396
                  c.add        t2, s10
                  mul          s6, s11, a6
                  nop
                  sll          t4, s1, s8
                  c.andi       a4, 17
                  srl          t1, s10, s7
                  c.andi       a4, 26
                  xori         s8, a2, 1396
                  remu         t4, s3, s5
                  c.slli       s7, 24
                  c.xor        s0, a3
                  c.and        s1, a0
                  rem          a5, t2, t5
                  c.srli       s0, 22
                  sll          t4, s11, a3
                  c.addi16sp   sp, 368
                  srai         a0, a7, 21
                  sll          s10, gp, t2
                  mul          t6, s10, t1
                  slli         s10, t4, 24
                  mulhu        t1, s5, a6
                  rem          s4, s8, s10
                  c.lui        s10, 7
                  c.lui        s4, 20
                  c.srai       a0, 1
                  c.addi4spn   a0, sp, 480
                  srai         s3, s3, 2
                  sll          gp, a3, s1
                  mulh         s3, sp, a5
                  addi         a3, t4, 197
                  mulhsu       t6, s9, t3
                  c.sub        a4, a5
                  sltu         s7, ra, s7
                  c.lui        t1, 9
                  remu         t1, s9, zero
                  ori          tp, ra, 481
                  and          s3, t2, a7
                  lui          s1, 124103
                  and          t0, t0, sp
                  c.lui        s7, 13
                  sub          a0, tp, s0
                  srli         t6, sp, 7
                  remu         gp, s3, ra
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 432
                  add          t2, s9, a6
                  remu         t0, s1, s9
                  c.slli       a3, 6
                  slti         s11, a6, 1081
                  sltu         a1, a1, s3
                  sltiu        a0, a2, -838
                  srl          s0, a1, s6
                  mulhsu       s2, t2, s11
                  slt          s8, s3, zero
                  lui          s7, 720010
                  ori          s1, t6, 1754
                  slli         s4, s1, 21
                  c.mv         a1, s7
                  c.or         a5, a2
                  slt          t2, a5, s10
                  div          gp, a4, s4
                  c.addi       t2, -1
                  c.sub        a3, a2
                  add          t0, t5, a0
                  add          t4, a4, a4
                  c.srai       a0, 17
                  slti         t4, s11, -1217
                  mulhsu       a6, t1, s2
                  and          a3, a6, t0
                  c.lui        a3, 22
                  auipc        s10, 755885
                  c.andi       a3, -1
                  sll          ra, s0, a4
                  or           s2, s6, a1
                  mul          a4, a6, sp
                  xori         s2, t0, -1391
                  c.or         a5, a1
                  or           a6, s4, a2
                  ori          s5, s5, 1058
                  or           s11, s3, s5
                  c.nop
                  auipc        s6, 546216
                  mulhsu       t2, a7, s4
                  addi         a5, a2, -192
                  c.addi16sp   sp, -16
                  ori          gp, s0, 1881
                  slli         s5, s4, 2
                  c.lui        t4, 5
                  c.slli       a7, 14
                  sltu         a1, a6, s4
                  c.srli       a0, 30
                  addi         s2, s6, -956
                  xori         t0, a6, 1904
                  sltiu        t5, t4, -610
                  sub          sp, t2, a6
                  rem          tp, t2, t2
                  rem          s11, a2, s0
                  lui          t4, 692973
                  c.xor        a1, a2
                  slt          s8, sp, a3
                  c.srai       s0, 23
                  mulhsu       s0, sp, s11
                  srai         s1, ra, 8
                  c.li         sp, 25
                  addi         s1, t6, -740
                  mulh         tp, t0, gp
                  c.lui        a4, 11
                  sll          a6, s11, s6
                  sltiu        s5, s2, 438
                  c.addi       ra, 26
                  sll          t6, s7, a4
                  slt          a5, a7, a7
                  xor          a5, s5, t2
                  rem          a5, s4, s6
                  mulh         a6, s4, ra
                  add          a5, t5, t1
                  mulhu        sp, s6, s0
                  rem          s7, t5, zero
                  c.srli       a5, 9
                  add          ra, s10, t0
                  ori          a6, s9, -484
                  c.slli       a3, 10
                  xor          tp, t5, a4
                  and          a0, s0, t0
                  srl          s11, a6, t4
                  add          a0, a6, s0
                  slli         sp, s8, 12
                  sltiu        s0, gp, 1554
                  sltiu        t4, s8, 1230
                  mulhu        a0, s5, s11
                  srli         t4, t5, 15
                  c.lui        a1, 19
                  and          s7, a3, s11
                  div          tp, t5, s5
                  srli         t2, t1, 5
                  add          s4, s5, t0
                  slli         s6, t3, 8
                  c.lui        a6, 1
                  mulhu        s5, t3, t3
                  c.srai       s0, 11
                  remu         s6, s10, a0
                  c.nop
                  sltu         t4, t5, zero
                  sra          s7, a2, a5
                  slti         s6, s7, 1287
                  c.and        a3, a0
                  srl          s0, a5, t0
                  srai         a5, s1, 8
                  c.or         a4, a2
                  ori          a1, s5, 44
                  divu         t6, s6, a5
                  auipc        s5, 285648
                  c.lui        a0, 26
                  slti         s10, t1, 816
                  c.add        t0, a3
                  c.slli       a3, 15
                  c.li         t4, 4
                  c.addi16sp   sp, -16
                  c.mv         s0, a2
                  mul          a4, a2, tp
                  mulhu        s8, a1, a0
                  sltu         a4, gp, a0
                  c.mv         t5, s8
                  c.li         ra, 4
                  mulhsu       gp, s0, s6
                  rem          sp, a5, a3
                  c.add        s11, sp
                  slti         gp, a6, 1168
                  remu         s11, t3, s11
                  divu         t4, s6, s2
                  slti         t2, s4, -589
                  srl          t5, s10, t0
                  addi         gp, ra, 254
                  xori         t2, s8, 1714
                  c.slli       s6, 7
                  c.sub        a4, a3
                  addi         a3, sp, 8
                  nop
                  nop
                  andi         s5, s8, -526
                  c.mv         s2, a4
                  c.and        a4, a1
                  c.addi4spn   a3, sp, 864
                  mulh         s11, s11, a0
                  c.addi       s2, 26
                  c.or         a1, s0
                  c.add        s10, s8
                  c.lui        s0, 10
                  c.slli       a7, 31
                  auipc        s0, 27907
                  auipc        tp, 259315
                  auipc        s7, 96485
                  c.xor        s1, a1
                  xor          s6, t2, a6
                  mulh         s8, t0, s11
                  add          sp, a5, t2
                  sltu         t5, ra, ra
                  slli         t2, a7, 24
                  srl          t5, gp, s11
                  c.xor        a3, a5
                  c.mv         t4, s6
                  slti         a7, a4, 1560
                  addi         s5, t1, 198
                  c.nop
                  sra          a1, a2, t5
                  mul          ra, zero, s1
                  c.lui        t4, 28
                  andi         s8, a3, -1045
                  add          ra, s11, a3
                  srli         s1, s5, 21
                  c.slli       s11, 20
                  c.add        s4, s11
                  c.and        a1, a2
                  srl          tp, a5, a1
                  c.add        tp, s1
                  srli         s4, s11, 31
                  c.slli       s2, 16
                  c.andi       s0, 18
                  c.nop
                  sltiu        gp, a7, 1337
                  c.slli       ra, 31
                  c.xor        a0, a4
                  sra          t6, s10, s8
                  sra          t2, a2, s1
                  andi         s8, s0, 155
                  srl          tp, a7, t5
                  mulh         s4, s1, t5
                  div          t1, s8, tp
                  divu         a6, a2, s10
                  mul          s10, zero, t1
                  nop
                  c.or         s0, a4
                  add          s1, s11, t2
                  srai         t6, a4, 2
                  c.addi4spn   s0, sp, 432
                  mulhu        t1, ra, s3
                  c.srli       s1, 28
                  c.add        s0, tp
                  divu         s5, s8, t2
                  xori         t4, ra, 420
                  and          gp, t1, a6
                  c.or         a0, a0
                  mulh         s6, t5, a0
                  lui          a1, 680573
                  c.addi4spn   a3, sp, 704
                  add          a3, s7, s1
                  slt          t4, a7, s9
                  sltiu        s11, s11, 1189
                  srai         t4, s5, 21
                  c.sub        a5, s1
                  c.addi16sp   sp, -16
                  or           s3, s0, s3
                  c.andi       s0, -1
                  div          a5, a5, s11
                  c.xor        a5, a3
                  mulhu        s2, gp, s6
                  c.andi       a4, 26
                  or           tp, s8, s8
                  mul          s0, a1, t5
                  andi         a1, a1, -892
                  c.srai       s1, 26
                  c.addi       t1, -1
                  sltu         s2, t6, zero
                  lui          a3, 548092
                  srai         gp, a3, 15
                  c.and        a5, a4
                  and          t4, s9, t6
                  div          t6, a4, a0
                  mulhsu       s5, s6, s2
                  srli         a4, s10, 26
                  sra          t6, t6, tp
                  c.mv         s7, a2
                  srl          s8, s11, ra
                  sub          t4, tp, t0
                  slli         tp, s8, 24
                  srli         sp, s9, 14
                  slti         s7, s10, 375
                  c.slli       t6, 30
                  c.slli       sp, 29
                  sub          s10, s6, s11
                  rem          a1, s9, t5
                  srai         s0, a4, 9
                  c.srli       a4, 14
                  mulhsu       s7, a1, s2
                  c.addi16sp   sp, 144
                  lui          t6, 908054
                  auipc        tp, 925449
                  divu         s10, tp, a5
                  add          s8, s8, t0
                  mulh         s5, t4, s4
                  mulhu        a4, ra, t4
                  add          s5, tp, s0
                  sra          s11, t3, s11
                  remu         s5, t4, a2
                  c.addi4spn   s1, sp, 80
                  divu         ra, tp, t5
                  c.addi4spn   a3, sp, 336
                  c.lui        s6, 1
                  c.slli       a0, 19
                  c.addi       t5, -1
                  srl          s6, s3, a4
                  srl          tp, a3, s2
                  add          a3, a2, t6
                  c.li         s0, -1
                  c.mv         a6, a6
                  lui          a1, 866430
                  andi         a7, s2, -605
                  slt          sp, s7, a1
                  c.slli       t5, 3
                  mul          a4, t2, a3
                  c.xor        a3, a0
                  c.add        tp, sp
                  c.nop
                  srai         s1, s11, 10
                  lui          s8, 836305
                  c.lui        s11, 31
                  slti         s6, t3, 765
                  andi         a5, a6, -2019
                  addi         t0, gp, 1925
                  rem          tp, t3, a7
                  c.addi4spn   a1, sp, 384
                  ori          a4, sp, 212
                  c.slli       tp, 17
                  sll          t5, a7, gp
                  sltiu        a4, s6, -1226
                  c.or         a4, s1
                  slli         a7, gp, 24
                  c.add        s1, s7
                  sll          s0, s3, s6
                  mulh         a1, t4, t4
                  andi         sp, s0, 1866
                  addi         s0, s11, 1370
                  c.addi16sp   sp, -16
                  or           s1, s3, sp
                  and          t2, a1, s11
                  divu         s1, s7, ra
                  div          t4, s3, tp
                  sra          s1, gp, s10
                  xori         a5, s0, -1866
                  slt          s4, zero, t6
                  sltu         a4, a2, t1
                  sll          gp, t1, a4
                  addi         a5, a3, -853
                  sll          t6, s6, gp
                  andi         gp, gp, -774
                  c.li         s8, -1
                  c.addi16sp   sp, -16
                  srai         s3, gp, 14
                  c.addi4spn   a1, sp, 144
                  c.or         a4, s0
                  c.slli       s0, 9
                  c.nop
                  rem          t0, a4, a5
                  div          t4, s0, s2
                  and          a3, s10, sp
                  c.addi4spn   a3, sp, 368
                  c.or         a4, a1
                  auipc        s1, 709119
                  mulhsu       s11, zero, s1
                  mul          s8, s11, tp
                  slt          a0, s2, zero
                  mulh         s6, s5, s3
                  remu         a4, t1, t2
                  ori          s0, t0, 743
                  sub          s11, t4, s3
                  mulh         t4, ra, s7
                  c.xor        a1, a0
                  auipc        ra, 410009
                  c.add        s8, gp
                  srl          a5, t2, a5
                  remu         a7, a0, a3
                  c.srai       s1, 19
                  c.addi16sp   sp, -16
                  c.li         sp, -1
                  mulh         s5, s9, s8
                  sltiu        s2, tp, 1388
                  c.lui        s1, 2
                  c.addi16sp   sp, -16
                  srai         a1, s11, 12
                  sltu         s4, t5, s4
                  sll          t2, a2, t3
                  andi         t0, s8, -1333
                  c.addi4spn   s0, sp, 96
                  c.srai       a3, 29
                  sub          t2, ra, s7
                  c.li         s1, -1
                  c.or         a0, a4
                  srli         t2, s6, 24
                  xori         ra, a5, 481
                  xor          t4, s8, s2
                  auipc        s1, 454459
                  mulh         t0, s8, s6
                  mul          ra, a5, a7
                  c.or         a1, s1
                  remu         s1, s10, t2
                  and          a0, gp, t3
                  or           t5, tp, a7
                  mul          s0, t5, s7
                  andi         t2, t2, 604
                  c.add        a4, a7
                  srai         s11, a0, 3
                  ori          s11, a4, 1921
                  c.slli       t5, 28
                  c.and        a1, s0
                  c.or         s0, a0
                  c.add        s8, s10
                  c.or         a0, a5
                  c.srli       s0, 20
                  srli         s3, sp, 18
                  c.srai       s1, 11
                  mulhu        a4, a1, t6
                  mul          ra, s3, a3
                  c.addi4spn   a3, sp, 192
                  or           a7, t0, t6
                  sltiu        tp, t6, -490
                  slt          s10, t3, s5
                  c.addi16sp   sp, 320
                  c.nop
                  divu         tp, a3, t2
                  nop
                  slti         s0, t6, -1084
                  c.sub        a4, a0
                  c.and        a3, a5
                  srli         s4, s9, 18
                  srl          t1, s1, s2
                  addi         s4, s9, -871
                  ori          t1, t6, -598
                  srli         a6, ra, 25
                  ori          a7, t5, 498
                  c.lui        s7, 5
                  sll          s11, s11, zero
                  c.addi       a6, -1
                  c.addi16sp   sp, -16
                  c.srli       a0, 20
                  mulh         a4, s0, a6
                  c.add        t5, s1
                  mulh         s8, a2, t4
                  c.srai       s1, 27
                  nop
                  sltiu        t5, s11, 1151
                  xori         s7, a0, -1978
                  mulhsu       t2, t1, t2
                  mulhsu       a6, t6, t0
                  c.nop
                  ori          s3, s2, -601
                  andi         t0, s8, 1502
                  rem          s4, s8, s6
                  srli         s7, a6, 24
                  addi         zero, a7, 1765
                  slli         a6, s0, 3
                  srl          sp, s7, s0
                  c.slli       s11, 14
                  c.li         gp, 26
                  c.sub        a5, a3
                  rem          s11, s2, s6
                  srl          s8, s5, s6
                  c.srli       a4, 19
                  c.andi       a3, -1
                  lui          t4, 774626
                  c.li         t1, -1
                  c.andi       a1, 23
                  addi         s8, s9, 1068
                  c.nop
                  rem          a3, s10, s10
                  c.addi16sp   sp, 272
                  srli         s5, s8, 27
                  srl          tp, s2, t3
                  sra          t4, s0, a0
                  c.srli       a0, 2
                  c.li         a4, 20
                  and          ra, s10, s2
                  srai         s5, t6, 15
                  sra          s2, ra, s8
                  mulhu        s2, a3, s8
                  ori          t2, s0, 850
                  sub          s4, s3, s2
                  and          s11, s10, a1
                  c.add        t4, t4
                  add          tp, s0, s10
                  lui          t5, 946460
                  c.lui        t5, 6
                  addi         s8, s10, 673
                  c.or         a5, a2
                  c.mv         a6, s10
                  add          a0, a6, a6
                  divu         s1, s2, s3
                  andi         s3, t6, 1033
                  andi         s3, s1, 315
                  srl          t4, t4, s9
                  srli         s0, t4, 9
                  slti         tp, s3, -1247
                  lui          s0, 361276
                  srai         a6, ra, 1
                  xori         a7, a2, 234
                  c.sub        s0, s1
                  srai         t0, t2, 12
                  or           tp, s5, ra
                  c.sub        a0, a0
                  c.and        a1, a2
                  srl          a4, zero, zero
                  sltiu        t1, a2, 1819
                  c.srai       a3, 7
                  mulh         t4, a5, a7
                  c.lui        t6, 4
                  c.mv         s8, t4
                  mulh         sp, s0, s5
                  c.srai       s1, 10
                  c.srli       s1, 27
                  slt          a4, t0, t2
                  c.andi       a3, 2
                  andi         sp, t5, -1138
                  nop
                  add          t6, a7, t4
                  c.sub        a4, a3
                  nop
                  c.xor        a4, a4
                  mul          s3, s3, t1
                  c.li         s4, 31
                  sub          t0, sp, a2
                  c.addi       a1, -1
                  c.addi16sp   sp, -16
                  sub          a4, s11, s3
                  c.andi       a3, -1
                  c.addi16sp   sp, -16
                  nop
                  andi         s7, s6, 95
                  c.srai       s1, 15
                  and          s7, s3, s10
                  add          a5, s1, s2
                  ori          a1, a5, -1948
                  and          t2, t3, s6
                  c.lui        s1, 18
                  sll          s2, s9, s11
                  srl          a4, a6, s1
                  c.addi16sp   sp, -16
                  srl          a5, t1, t3
                  c.addi4spn   a0, sp, 112
                  c.addi       s5, -1
                  mulhsu       t4, s10, s3
                  or           s1, sp, t5
                  divu         s1, t4, s1
                  sltiu        zero, a2, -1420
                  c.lui        s4, 9
                  srli         a7, s11, 20
                  sub          s2, s7, a1
                  sltu         s10, t5, gp
                  divu         t0, t0, a4
                  c.srai       a0, 10
                  c.sub        s0, a4
                  addi         tp, s11, 522
                  mulhsu       s11, s2, s9
                  rem          a0, a2, t4
                  slt          a1, t0, s9
                  c.srli       a5, 7
                  slti         s5, a1, -985
                  and          a0, s4, tp
                  ori          t1, s3, -44
                  mulh         t4, a1, s10
                  c.xor        a3, a5
                  sra          s10, a1, s5
                  remu         ra, a4, s3
                  c.mv         t6, t0
                  mulh         t0, s2, s9
                  and          t0, zero, s5
                  remu         t5, t6, s5
                  add          zero, s9, a4
                  c.or         a5, a3
                  c.addi       sp, 9
                  and          a3, s1, s10
                  c.srai       s0, 27
                  sra          t2, s5, t1
                  c.li         a6, -1
                  xori         s0, sp, -1138
                  c.xor        a3, a2
                  c.nop
                  slli         a5, s8, 30
                  slli         sp, t0, 9
                  c.mv         ra, s0
                  andi         a0, t0, -696
                  srl          s10, s0, zero
                  c.mv         s1, s3
                  c.li         s0, 18
                  srli         a7, s2, 29
                  slt          tp, s7, s4
                  c.addi4spn   a4, sp, 224
                  sra          sp, a7, a7
                  sll          t5, a4, a4
                  or           a0, s3, s1
                  c.addi4spn   a5, sp, 128
                  c.xor        a4, a4
                  remu         a6, t1, t1
                  mulhsu       a7, s3, s7
                  auipc        s5, 522001
                  addi         ra, ra, 934
                  c.addi       a5, 28
                  sll          s0, s0, tp
                  ori          s5, s5, -1117
                  mulhsu       t2, t1, s0
                  mulhu        s0, t3, s9
                  sub          s8, gp, a5
                  remu         s2, s4, ra
                  c.lui        t1, 11
                  srli         ra, t3, 19
                  mulh         s10, s6, s0
                  c.slli       s8, 25
                  c.andi       a4, -1
                  c.srai       a3, 26
                  or           t1, t6, s5
                  c.srli       a4, 4
                  c.addi       s7, -1
                  auipc        t1, 967704
                  nop
                  rem          t1, s4, gp
                  mulh         t6, gp, a0
                  sltu         s8, sp, t2
                  slti         s1, t6, 1338
                  mulhsu       t6, s0, a6
                  and          a5, ra, a4
                  auipc        tp, 35501
                  sll          a4, s4, s6
                  slt          s3, s0, a7
                  c.or         a5, a1
                  slli         a4, t1, 19
                  and          s1, zero, s10
                  c.mv         a1, s11
                  sltu         a4, t4, t4
                  xor          s1, t5, a3
                  li           s5, 0x9c56e6dd #start riscv_int_numeric_corner_stream_10
                  li           a4, 0x0
                  li           t0, 0xffffffff
                  li           a1, 0xffffffff
                  li           s4, 0x0
                  li           t2, 0xb9847862
                  li           sp, 0x80000000
                  li           s2, 0x80000000
                  li           s8, 0xffffffff
                  li           t4, 0xffffffff
                  rem          s2, a4, t4
                  mulhu        s2, t0, a1
                  remu         s8, t0, s4
                  nop
                  mul          s5, t2, t0
                  sub          s8, s2, a4
                  mul          s2, s8, t4
                  divu         a4, s2, t4
                  mulhu        s8, a4, t4
                  rem          s8, s8, a1
                  nop
                  remu         a4, t4, t2
                  addi         s4, t2, -177
                  mulhu        s2, s8, a1
                  mulhu        s8, a4, t2
                  rem          t4, t2, sp
                  div          s8, s4, t2
                  add          s4, s2, sp
                  sub          s4, sp, sp
                  mulh         t0, a1, s5
                  mulhu        s2, s8, s5
                  mulhu        s8, sp, sp
                  auipc        a4, 554819
                  mulh         a4, s8, t0
                  add          t4, s8, s2 #end riscv_int_numeric_corner_stream_10
                  slti         a7, sp, -258
                  sltiu        s11, t3, 979
                  slt          s10, a6, s6
                  sltu         a0, s8, t6
                  lui          s8, 671680
                  mulhsu       a1, sp, s2
                  lui          s7, 165081
                  xor          s3, t4, a6
                  c.or         a5, a5
                  c.li         s3, 26
                  mulh         t6, s3, s4
                  mulhsu       sp, a3, t5
                  c.or         s0, a0
                  or           s1, a4, zero
                  sll          t4, a6, t4
                  mul          a6, ra, a1
                  c.nop
                  c.andi       a1, 1
                  add          s4, t3, tp
                  ori          s11, s9, -157
                  c.li         a6, -1
                  c.addi       s11, -1
                  c.and        a3, a1
                  nop
                  c.or         a1, s0
                  c.addi       s11, -1
                  mulh         t6, s7, s1
                  c.add        s0, s4
                  c.sub        a0, a1
                  auipc        s10, 690524
                  or           s4, a6, tp
                  sll          s2, s8, s9
                  srai         s0, s11, 30
                  c.or         a1, a2
                  nop
                  sub          a4, gp, s8
                  rem          t5, a3, t0
                  sra          s7, zero, s7
                  mulhsu       a0, a1, s4
                  sltu         t6, a6, tp
                  mulhu        s1, t5, s4
                  c.addi       sp, -1
                  sub          t5, s8, s5
                  sltiu        a1, s8, 1273
                  c.add        t5, s9
                  mulhu        s5, s9, s0
                  addi         t4, s6, 55
                  srai         a6, a2, 5
                  addi         sp, t6, -1525
                  srai         t6, s7, 19
                  or           t4, a4, tp
                  remu         t4, s11, a1
                  c.addi16sp   sp, -16
                  c.andi       a0, 19
                  srli         zero, s9, 10
                  c.slli       a6, 19
                  sll          t6, s2, a0
                  xori         ra, s0, -1333
                  rem          s5, s1, a2
                  slti         s8, s10, -990
                  slti         a1, ra, -108
                  c.and        a1, a5
                  lui          s8, 62690
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_14
                  li           t5, 0xffffffff
                  li           ra, 0x0
                  li           a0, 0x80000000
                  li           s7, 0x0
                  li           t4, 0xf73791cd
                  li           tp, 0x8f4e4a79
                  li           t6, 0x0
                  li           s5, 0x80000000
                  li           a5, 0x0
                  nop
                  mulhsu       s5, s2, a0
                  rem          ra, s2, t6
                  mulhu        t4, s7, tp
                  nop
                  auipc        s7, 612419
                  auipc        ra, 1002493
                  mulhu        s2, t6, tp
                  add          s2, a0, a5
                  div          ra, a0, s5
                  mulhsu       ra, s2, a5
                  div          ra, tp, ra
                  remu         ra, tp, t6
                  mulhu        ra, s7, t4
                  div          s7, ra, s2
                  nop
                  sub          t6, tp, t5
                  rem          a0, t6, a5
                  nop #end riscv_int_numeric_corner_stream_14
                  c.and        a0, a0
                  mul          a0, t0, a4
                  sltiu        a1, a6, 741
                  c.addi       s8, 8
                  c.lui        s4, 11
                  andi         a3, a2, -1514
                  auipc        t2, 160857
                  c.mv         s10, s7
                  mul          s3, s7, zero
                  c.xor        a5, a3
                  sltiu        t2, s4, 203
                  xori         a4, a4, 918
                  c.nop
                  rem          s10, s0, s1
                  xor          a4, ra, s0
                  c.mv         t0, a2
                  or           t5, a5, s5
                  lui          s10, 1021204
                  srai         t5, t3, 22
                  sra          t6, t1, s1
                  auipc        s3, 1009120
                  srl          t6, gp, a5
                  slt          s10, s1, s4
                  slt          t2, ra, a5
                  andi         a5, t4, 734
                  lui          a7, 1017484
                  c.slli       s3, 20
                  andi         s0, gp, 1307
                  c.addi4spn   s1, sp, 112
                  ori          t2, t1, 299
                  c.xor        a1, s1
                  sub          s0, a4, s2
                  c.srai       s1, 26
                  or           t5, zero, tp
                  srl          s2, a7, s11
                  remu         s11, a2, s2
                  slli         s5, a4, 19
                  sra          a1, a3, zero
                  sra          s0, s8, tp
                  divu         a7, s10, s7
                  mulhu        t4, tp, a5
                  sltiu        a4, a3, 666
                  andi         s1, s8, -1959
                  slli         s11, s8, 15
                  c.nop
                  c.addi4spn   s1, sp, 832
                  sll          t1, s9, s1
                  sub          s10, a5, tp
                  c.addi4spn   a1, sp, 448
                  slti         s5, s1, -1327
                  mulh         s3, s3, a3
                  mulh         s10, t3, a2
                  c.lui        t4, 26
                  c.add        gp, gp
                  c.addi       a3, -1
                  c.addi4spn   a3, sp, 816
                  c.andi       a3, 29
                  c.addi       t4, 21
                  c.add        s11, a7
                  slli         a3, a7, 2
                  nop
                  srli         a1, s5, 20
                  xori         s0, s6, 28
                  c.add        a7, t3
                  add          t0, ra, sp
                  c.sub        s0, a1
                  sltiu        a4, s7, 746
                  c.and        s0, a2
                  mul          a7, a4, s9
                  sll          tp, s8, s3
                  srli         s4, t0, 21
                  mulh         zero, a6, a7
                  and          s6, s3, t2
                  sltiu        t6, t2, -630
                  sltu         s3, zero, tp
                  sltiu        tp, a4, 408
                  lui          s0, 383829
                  sltu         s11, s3, a3
                  and          a6, t2, sp
                  c.xor        a3, a2
                  c.addi16sp   sp, 16
                  slt          a1, a2, s10
                  sra          t6, s8, s8
                  sub          gp, a3, s8
                  sll          sp, a3, tp
                  auipc        t5, 258286
                  slti         t6, a1, 1036
                  divu         t2, s2, s9
                  sub          s7, s2, s6
                  slti         a3, s0, -569
                  srai         a6, s2, 10
                  nop
                  c.addi       a7, 5
                  c.add        s1, tp
                  div          a7, t2, s4
                  divu         s0, s10, zero
                  sra          s7, zero, a2
                  addi         s0, sp, -782
                  c.add        t5, ra
                  addi         a7, s3, -1513
                  sll          tp, ra, a5
                  c.li         t1, 6
                  sll          sp, s1, a4
                  slli         t5, ra, 2
                  c.srli       a4, 13
                  c.or         a5, s0
                  c.andi       a0, 1
                  rem          tp, gp, s6
                  and          ra, t0, s3
                  slt          a7, ra, s3
                  c.or         s0, a3
                  c.addi       s6, 3
                  slti         a4, s8, 389
                  srli         s11, tp, 3
                  srl          a7, ra, t5
                  c.lui        s8, 11
                  xor          t1, a1, s6
                  c.slli       t1, 30
                  div          s1, t1, t6
                  c.nop
                  sltiu        a7, s10, -1170
                  sltu         t5, s5, s1
                  sub          t1, a3, a4
                  sra          sp, gp, tp
                  c.addi16sp   sp, -16
                  rem          sp, t1, a6
                  add          t2, s4, s11
                  mulhsu       t2, t3, s1
                  c.srli       s0, 21
                  c.slli       t4, 13
                  sll          a3, s5, a7
                  c.andi       a1, 5
                  c.addi       ra, 23
                  c.and        s0, a1
                  lui          a7, 267558
                  srai         zero, t3, 24
                  sltiu        t2, s4, 1814
                  mulh         zero, s0, t5
                  c.addi16sp   sp, 288
                  slti         tp, s2, -1463
                  add          a1, s5, a5
                  rem          ra, t6, t2
                  c.addi       s0, 3
                  sltu         s7, s0, s8
                  c.and        s1, a3
                  sltu         ra, t4, s2
                  c.add        a6, sp
                  c.nop
                  c.lui        a5, 4
                  sub          s6, a5, tp
                  lui          s7, 1024491
                  c.srai       a1, 16
                  c.mv         s0, s9
                  sltiu        t6, t2, 1617
                  rem          s0, zero, a2
                  sll          s5, tp, s1
                  srai         s7, a5, 13
                  sra          a1, t6, a1
                  sltiu        s5, s3, 209
                  c.nop
                  c.srai       a1, 17
                  c.slli       t5, 31
                  c.sub        a0, a5
                  ori          t2, t4, -1963
                  ori          s8, s3, -535
                  c.andi       a3, 22
                  auipc        a0, 737698
                  c.srai       s0, 5
                  xor          s3, s3, s7
                  andi         zero, t5, 1258
                  c.addi16sp   sp, 256
                  c.xor        a5, a3
                  c.addi16sp   sp, 192
                  div          a3, tp, a6
                  mulh         t6, a7, a5
                  c.li         s11, -1
                  mulhsu       t6, s5, s0
                  sltiu        a4, a1, -176
                  xor          a7, s6, a0
                  and          s3, t6, s9
                  c.srai       a5, 15
                  c.andi       a0, 13
                  add          s4, t1, s8
                  and          s3, s2, sp
                  sra          s5, t0, a1
                  ori          s10, a1, -263
                  andi         a5, s8, 291
                  c.slli       a4, 13
                  c.andi       a4, -1
                  sub          s6, s1, a3
                  remu         t2, s1, t3
                  c.srai       a0, 23
                  c.addi       t1, 27
                  sra          a3, s8, sp
                  sub          s6, t4, s6
                  or           gp, s10, t0
                  mulhsu       t1, a1, t3
                  c.addi16sp   sp, 400
                  c.xor        s0, a5
                  srl          s3, a1, s11
                  lui          t2, 939353
                  srli         a4, s0, 3
                  mul          t5, t5, sp
                  lui          t6, 31217
                  sltu         a3, s4, s7
                  c.add        ra, t1
                  nop
                  srli         sp, gp, 27
                  ori          a7, s6, 395
                  sra          a0, gp, a5
                  slli         s7, s7, 12
                  sltu         a6, s2, gp
                  c.xor        s0, a1
                  mulhu        s3, t0, s0
                  divu         ra, s9, a1
                  xori         t4, a7, 1171
                  lui          t1, 698437
                  slti         s0, a1, 986
                  remu         t4, a4, s10
                  xor          tp, s10, s1
                  sll          t4, a2, s5
                  c.addi       a3, 16
                  add          a6, a1, t4
                  c.slli       s0, 5
                  sra          s1, s0, t6
                  srl          t5, t2, a2
                  andi         s5, s3, 195
                  andi         tp, s2, 1839
                  slt          sp, t1, s10
                  ori          s8, s0, -1904
                  c.mv         s3, t0
                  c.add        a4, s10
                  ori          sp, t1, 1741
                  c.and        a4, a4
                  rem          t1, a0, s1
                  sra          s1, s3, t0
                  slt          t2, t0, a3
                  sltu         gp, a0, t6
                  xori         s6, a6, 1235
                  or           s6, gp, t0
                  ori          s0, sp, -1405
                  slti         s2, t5, 319
                  c.lui        a3, 27
                  srai         a0, s3, 21
                  andi         a0, s4, 89
                  srl          s4, a3, s9
                  remu         s1, t1, s4
                  c.xor        a3, a3
                  c.sub        s0, a4
                  xor          a7, a7, t1
                  srli         s4, s6, 24
                  mulhsu       a0, s3, s2
                  srai         t0, a2, 27
                  mul          a3, a3, s9
                  sll          t4, tp, s3
                  c.sub        a3, s0
                  auipc        t2, 113686
                  nop
                  addi         ra, s3, -554
                  srai         s6, s5, 22
                  xori         s5, t4, -1492
                  nop
                  sltiu        t4, s10, -753
                  c.add        ra, tp
                  c.andi       a1, 28
                  xori         a0, s9, 666
                  c.nop
                  sra          s8, s5, a6
                  lui          s8, 1032458
                  srl          s10, s2, s5
                  addi         s11, t4, -1555
                  ori          a0, s11, -1843
                  andi         s5, s7, -11
                  c.and        a0, a5
                  nop
                  c.sub        a5, a0
                  c.nop
                  mulhu        s4, a3, ra
                  slt          sp, tp, a5
                  div          zero, s5, t4
                  c.srai       a1, 28
                  auipc        zero, 475412
                  sltiu        zero, t1, -556
                  sltiu        s4, zero, -1886
                  mulhu        ra, t5, t1
                  srl          s2, t6, s0
                  slt          t0, s7, s3
                  c.and        a4, s1
                  c.nop
                  lui          t4, 226825
                  c.sub        a3, a4
                  slt          zero, s0, t6
                  c.li         s11, 28
                  xor          s0, sp, zero
                  srai         t4, a3, 23
                  srli         t0, a5, 3
                  srai         a6, s1, 19
                  divu         t5, t4, tp
                  or           s0, s9, s6
                  sltu         a5, a0, ra
                  c.add        t4, s3
                  c.addi16sp   sp, -16
                  slt          a4, a0, tp
                  nop
                  c.li         a0, 2
                  c.andi       a1, 1
                  c.li         s2, -1
                  sra          s6, t1, sp
                  lui          s3, 774558
                  auipc        s6, 88649
                  mul          s1, s7, tp
                  c.addi       a4, -1
                  c.addi       s8, -1
                  c.and        a0, a0
                  c.andi       s1, 28
                  c.lui        s2, 8
                  c.or         a3, a5
                  c.srai       a5, 21
                  divu         a0, a1, a2
                  srli         a1, a0, 9
                  andi         t5, a3, 918
                  mulhsu       zero, a0, s0
                  mulh         s10, zero, tp
                  c.addi16sp   sp, 320
                  c.slli       s10, 8
                  sltu         zero, t1, sp
                  sll          a3, s10, s8
                  c.nop
                  c.xor        a3, a4
                  and          a7, zero, s11
                  ori          s4, t3, 247
                  xor          t5, s1, s10
                  c.addi       a3, -1
                  sltu         s4, s9, t1
                  addi         t1, s10, -1453
                  c.addi16sp   sp, 128
                  div          a6, s3, a2
                  c.sub        a5, a0
                  mulhsu       a0, tp, s0
                  xor          tp, a6, s5
                  c.sub        s0, s1
                  c.or         a0, a3
                  c.xor        a3, s1
                  div          a1, zero, s7
                  divu         t5, s1, a6
                  srai         s10, a5, 6
                  div          tp, a4, zero
                  c.andi       a3, -1
                  c.li         t6, 16
                  xor          s2, a5, a6
                  nop
                  c.addi       ra, 2
                  auipc        s11, 457911
                  c.li         s5, 23
                  c.addi4spn   a4, sp, 800
                  ori          t4, t0, -852
                  slli         s5, t4, 13
                  add          t0, a2, t5
                  slli         s2, s2, 16
                  c.addi16sp   sp, -16
                  c.nop
                  c.slli       t4, 20
                  c.addi       s10, -1
                  c.or         a5, a4
                  c.slli       t0, 3
                  and          a1, s5, zero
                  c.xor        a3, s1
                  srai         s3, s4, 20
                  c.srli       a1, 18
                  mulhsu       s11, t6, s0
                  mulhu        t1, a2, t1
                  c.li         t6, 13
                  sltu         s1, s5, gp
                  c.srai       a0, 10
                  andi         s7, ra, 1838
                  nop
                  c.sub        s1, a3
                  c.sub        a4, a5
                  c.addi16sp   sp, -16
                  divu         s5, s4, s4
                  xori         s4, t6, -1301
                  srl          s5, a7, s11
                  xor          sp, sp, s4
                  rem          s10, s6, a4
                  mulh         s4, s9, s5
                  c.add        s3, t5
                  xor          a6, s3, t6
                  srl          t1, s3, t2
                  c.slli       s7, 23
                  nop
                  c.add        s3, a3
                  xor          tp, a0, t1
                  slt          gp, s4, t0
                  c.lui        s3, 25
                  mulh         gp, a2, tp
                  sltu         gp, ra, s7
                  sub          a4, a7, t2
                  mulhu        t4, s4, s6
                  slti         s0, a0, 166
                  c.andi       s0, -1
                  slt          sp, s7, a3
                  mulh         a7, s5, t6
                  c.andi       s0, -1
                  mul          a5, s4, s1
                  srli         gp, ra, 13
                  auipc        s8, 775537
                  slt          s5, s9, t6
                  c.addi       s1, -1
                  andi         a0, a0, -1208
                  addi         t4, a1, -423
                  addi         t0, a1, 185
                  remu         t0, s11, s11
                  c.andi       s1, 26
                  addi         t4, a5, 550
                  mulhsu       t0, s0, a1
                  remu         tp, ra, a7
                  c.and        s1, a3
                  c.andi       s1, -1
                  rem          a3, a1, a0
                  sra          sp, a5, s3
                  c.addi16sp   sp, 304
                  addi         s2, t6, -191
                  xor          s4, zero, a1
                  nop
                  c.srai       a4, 9
                  andi         tp, t3, 1375
                  rem          s7, s5, s1
                  srli         ra, s10, 24
                  ori          tp, s7, -1421
                  sll          t1, a2, s3
                  c.or         a0, a0
                  c.lui        s3, 31
                  c.mv         t2, a6
                  sltu         s4, gp, s6
                  c.addi16sp   sp, -16
                  c.add        s8, gp
                  addi         t6, sp, 1682
                  c.add        s2, s11
                  divu         s5, a2, s7
                  div          a1, a5, ra
                  rem          a5, t0, s3
                  auipc        sp, 866647
                  remu         s6, a1, ra
                  mul          s11, s5, s11
                  xori         zero, t0, 613
                  auipc        a7, 112269
                  srli         s6, t2, 28
                  andi         ra, s5, -1067
                  sll          t4, a0, t2
                  nop
                  rem          t1, t5, s2
                  srl          a5, t1, s8
                  or           s7, s6, s2
                  c.add        tp, t4
                  c.or         a0, a1
                  mul          a4, tp, s2
                  c.nop
                  slli         t1, a1, 30
                  auipc        s8, 664287
                  nop
                  c.lui        a4, 2
                  srai         s0, t6, 12
                  c.sub        a5, a3
                  c.addi4spn   a5, sp, 736
                  mulh         gp, s1, s7
                  c.and        a4, s0
                  srai         t6, a4, 24
                  sltu         t4, a4, s0
                  slti         a5, t2, 1158
                  c.addi4spn   a0, sp, 672
                  c.or         a4, a3
                  mulh         t2, a3, a0
                  rem          s3, a7, a2
                  c.addi4spn   s1, sp, 608
                  remu         s0, t5, s0
                  c.add        t2, s8
                  add          s2, s6, t0
                  slt          t6, t3, s6
                  sltu         s11, a3, s4
                  slt          a5, t4, t4
                  c.lui        tp, 22
                  c.li         t4, 18
                  add          s8, s1, s7
                  srli         a0, a0, 4
                  auipc        gp, 259819
                  c.addi4spn   s1, sp, 128
                  mulhu        s8, s2, s2
                  srli         s1, tp, 8
                  c.and        a1, a1
                  div          t6, s5, s0
                  sra          t1, t3, a7
                  mulhsu       s2, a7, t4
                  add          t1, s1, t5
                  c.addi4spn   a4, sp, 64
                  nop
                  nop
                  c.andi       a5, -1
                  c.xor        a4, a2
                  mul          t6, s8, a0
                  remu         a4, ra, gp
                  sltu         t2, a6, gp
                  c.slli       s1, 11
                  c.and        s0, s0
                  and          s10, a7, a2
                  mulh         zero, a0, s5
                  ori          s2, s0, -998
                  c.addi4spn   s1, sp, 288
                  mulhu        s0, t4, s11
                  xor          s8, s9, s6
                  mulh         a7, tp, s3
                  c.or         s0, a4
                  div          s10, s7, tp
                  c.nop
                  c.slli       a7, 19
                  srai         s3, t6, 21
                  and          a1, a5, a4
                  sltiu        gp, t6, -155
                  lui          a5, 839996
                  c.sub        a1, a1
                  c.addi16sp   sp, 256
                  auipc        s5, 301148
                  andi         s5, a2, -971
                  ori          t2, s4, 838
                  srl          a1, t0, s5
                  nop
                  rem          tp, s3, a2
                  remu         t5, t1, a2
                  mul          zero, s4, s0
                  add          a3, a3, s4
                  and          t2, a3, s1
                  sra          gp, a2, t6
                  c.srai       a1, 3
                  c.srai       a3, 28
                  c.addi16sp   sp, 224
                  sltiu        s6, s9, 246
                  addi         t6, s11, 953
                  or           s3, t2, s5
                  lui          s5, 244706
                  slt          s3, a7, s1
                  c.xor        a4, a4
                  c.add        s6, s2
                  c.srli       a0, 21
                  c.nop
                  slti         s8, s4, 562
                  sltu         s2, tp, s5
                  slt          a7, zero, t5
                  remu         s0, zero, a4
                  srai         tp, s9, 25
                  xor          t1, a3, s0
                  c.lui        s4, 9
                  c.add        s0, t1
                  addi         t5, t1, -1803
                  slli         s6, t0, 1
                  mul          a5, a5, sp
                  andi         t4, s3, 1857
                  c.mv         t1, ra
                  c.li         a1, -1
                  slt          t2, s8, a4
                  srl          a5, s4, t6
                  mulhsu       t2, t0, t5
                  nop
                  c.and        s1, a2
                  c.add        s4, t0
                  c.andi       s0, -1
                  c.xor        a5, s0
                  slt          a0, s7, a4
                  mul          t5, zero, a0
                  lui          s4, 319216
                  mulh         s4, a0, zero
                  c.and        a0, a1
                  mul          s10, t3, sp
                  c.li         s7, -1
                  c.lui        t2, 26
                  srai         t2, s7, 4
                  andi         a5, t5, 676
                  and          t2, ra, s5
                  c.nop
                  c.or         a1, a2
                  slt          t4, sp, ra
                  auipc        a1, 666290
                  addi         a4, t1, -926
                  c.or         a5, a5
                  c.addi       ra, -1
                  mulh         gp, s3, s11
                  c.lui        ra, 12
                  sub          a1, t5, s6
                  sltu         t5, s4, a2
                  div          s4, a2, a0
                  srli         gp, s6, 3
                  slti         s1, a7, 1795
                  mulhu        s5, sp, t4
                  and          t1, a4, zero
                  c.srai       a0, 26
                  mulhu        t5, a5, s1
                  c.and        a5, a0
                  srai         s8, s5, 3
                  sub          a0, s7, a4
                  srai         gp, a3, 8
                  addi         sp, t4, -471
                  add          sp, t1, s7
                  c.mv         t2, s5
                  remu         s0, zero, t1
                  addi         s10, ra, 39
                  mulh         s6, s7, sp
                  c.addi4spn   a0, sp, 944
                  xori         s0, s7, 852
                  or           tp, s3, a6
                  slli         a1, zero, 5
                  div          a7, s10, a5
                  sll          s0, s7, a0
                  div          a4, a0, a1
                  c.addi16sp   sp, -16
                  c.nop
                  xor          s0, a7, t1
                  srl          s1, a2, a5
                  add          s2, t0, s5
                  mul          s4, a5, a4
                  nop
                  mulh         gp, s0, a5
                  addi         a6, a6, 1542
                  srli         a3, s3, 21
                  sra          s7, s4, t2
                  srli         tp, a4, 26
                  c.sub        s0, a3
                  divu         t5, a6, s10
                  or           s3, s11, s1
                  sub          a7, s11, s1
                  auipc        s11, 585598
                  mul          t0, s6, a2
                  sltu         s3, s0, s6
                  xori         t0, s7, -1699
                  sll          s8, s0, s1
                  addi         s8, a0, -347
                  sub          s5, a6, t3
                  div          tp, a3, a1
                  mulhu        s4, t4, t4
                  c.addi16sp   sp, 336
                  c.mv         a7, s6
                  c.andi       a0, 23
                  sltu         s8, s1, s9
                  mulh         t4, a1, t3
                  and          s4, s10, s3
                  mulhu        gp, t3, sp
                  srl          s8, s1, t1
                  srl          t4, ra, a6
                  mul          s3, a3, t3
                  srli         t4, tp, 11
                  mulhsu       t0, t0, t3
                  c.addi       a1, -1
                  c.andi       a0, -1
                  c.or         a1, a5
                  sra          gp, a3, a5
                  sll          a6, ra, t2
                  mulhsu       s5, a2, t0
                  slt          zero, t2, a4
                  auipc        s5, 878838
                  add          t1, a4, gp
                  ori          a1, a5, -708
                  sltu         s1, s0, a6
                  c.li         a1, -1
                  c.sub        a1, s0
                  sub          t6, s8, t1
                  c.sub        a4, s1
                  nop
                  xori         s3, sp, 525
                  add          s8, a5, t1
                  c.nop
                  c.srai       s1, 4
                  c.srli       a4, 5
                  mul          a3, a6, tp
                  mulh         t5, zero, a4
                  xori         ra, t6, -1916
                  sll          s6, s3, s7
                  c.lui        a3, 9
                  sll          t5, a6, tp
                  c.add        s3, s11
                  auipc        a7, 916183
                  srl          s11, a4, s7
                  sltiu        a5, s11, -1234
                  sra          s3, a3, t1
                  remu         t5, s1, a7
                  slti         a0, s9, 295
                  xori         a3, s4, -170
                  div          a7, gp, t5
                  slti         a7, t5, -2005
                  mulh         t5, s10, s1
                  c.addi16sp   sp, -16
                  c.nop
                  add          t4, s8, a4
                  sltu         t6, a0, a5
                  xori         s4, s10, 119
                  sltu         a4, a2, t4
                  c.addi16sp   sp, 48
                  slt          s2, gp, t5
                  ori          a6, a6, -1694
                  c.add        t2, s1
                  c.lui        a5, 28
                  c.srli       a4, 31
                  slt          t0, s6, t3
                  mulhsu       t6, s0, t1
                  c.xor        a4, a4
                  c.slli       s6, 27
                  sll          s10, a7, a4
                  andi         s5, sp, 806
                  xori         t5, s11, 560
                  srai         tp, t0, 1
                  auipc        tp, 999190
                  c.and        a4, s1
                  c.addi16sp   sp, -16
                  sltu         s8, a0, s7
                  addi         zero, t3, 534
                  slli         s7, s0, 21
                  c.addi4spn   a4, sp, 432
                  mulh         gp, s2, s6
                  srai         s2, t0, 31
                  xor          t0, a3, t4
                  c.addi16sp   sp, -16
                  c.mv         t5, s8
                  c.li         ra, -1
                  c.addi       t6, -1
                  c.addi       tp, -1
                  c.addi16sp   sp, -16
                  andi         s1, t6, -987
                  mul          a5, ra, s6
                  addi         t0, t3, 619
                  mulhsu       a6, ra, a7
                  c.add        a3, t5
                  slti         t4, s2, -279
                  div          sp, ra, a5
                  lui          s1, 603679
                  mul          s8, s4, s2
                  sll          s4, s7, tp
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 400
                  c.slli       sp, 19
                  c.slli       s10, 15
                  c.andi       s1, -1
                  srli         s8, t6, 16
                  add          a7, s5, a0
                  auipc        t1, 147438
                  mulhu        a3, s2, s3
                  mulhsu       sp, gp, zero
                  addi         t5, sp, 1961
                  c.addi16sp   sp, 384
                  c.xor        s0, a3
                  c.addi       a7, 15
                  nop
                  srl          s2, s11, a2
                  auipc        a7, 672682
                  xor          t5, a1, a7
                  sltu         s3, s7, s8
                  slti         a0, a5, -1411
                  c.mv         s5, t6
                  c.mv         a6, a0
                  srl          ra, sp, s1
                  c.srli       s0, 20
                  c.addi       sp, -1
                  mulhsu       t0, a3, s9
                  c.or         a3, a2
                  slti         t4, s0, -1439
                  c.nop
                  remu         gp, a7, t4
                  slti         s11, a7, -1138
                  c.lui        s6, 3
                  mulhsu       t5, t0, s0
                  c.addi       s6, -1
                  c.srai       a5, 8
                  c.add        t2, a3
                  c.li         s3, 15
                  remu         a4, s9, s8
                  c.srai       a3, 21
                  c.xor        a5, a5
                  c.sub        a1, s1
                  slli         a1, s4, 27
                  sra          s0, sp, t6
                  mulhu        s2, sp, s10
                  or           s10, s7, s8
                  c.li         t0, 16
                  c.and        s0, a4
                  c.nop
                  mulh         s1, tp, a7
                  c.slli       sp, 27
                  sub          a7, tp, s6
                  c.addi4spn   a0, sp, 352
                  c.add        a5, t5
                  c.addi4spn   a3, sp, 464
                  sub          s11, t4, a4
                  and          sp, s0, t5
                  slt          s0, ra, a3
                  c.slli       a3, 12
                  xori         s4, zero, 697
                  remu         s5, s1, t5
                  slti         a1, s5, 993
                  c.add        tp, a6
                  srli         s6, gp, 31
                  c.addi16sp   sp, -16
                  c.lui        s10, 18
                  mulhu        s8, s2, tp
                  c.xor        a0, a3
                  mulhsu       ra, t4, s10
                  mulh         s7, a1, a0
                  c.sub        a0, a4
                  c.li         s5, 24
                  c.andi       s0, -1
                  slt          s4, t3, s6
                  sra          s7, gp, s6
                  and          t5, ra, s5
                  c.srai       a1, 26
                  c.li         a3, 25
                  lui          sp, 470087
                  divu         s4, s8, s10
                  slli         a1, a5, 24
                  c.mv         t4, s10
                  add          a3, s1, a7
                  add          s3, s5, a4
                  c.addi4spn   s1, sp, 912
                  c.srli       a3, 20
                  xori         t0, s5, 1045
                  c.addi4spn   s1, sp, 720
                  c.addi       s1, 9
                  c.and        a0, a5
                  rem          s2, a1, s5
                  mulh         a6, a7, ra
                  c.li         s5, 10
                  c.lui        s1, 12
                  sra          s8, a3, gp
                  sltu         s2, t2, ra
                  sltiu        a4, a4, 959
                  or           s3, t1, a4
                  auipc        zero, 176448
                  remu         t1, t2, a5
                  srai         a7, t6, 23
                  mulh         t2, t6, s9
                  andi         t4, t6, 513
                  c.sub        a5, a1
                  slt          s3, s8, zero
                  c.andi       a4, 1
                  nop
                  addi         s4, ra, -810
                  c.addi4spn   s0, sp, 352
                  mulh         s1, t5, zero
                  slti         a3, a5, 2005
                  c.addi16sp   sp, 320
                  sltiu        s6, t0, -1797
                  srli         t5, s0, 8
                  sub          t6, t0, a7
                  sll          t6, ra, t2
                  c.add        s6, t2
                  sra          s0, t4, s7
                  c.xor        a4, s1
                  remu         t1, a0, s0
                  lui          t5, 608675
                  mulh         s11, s11, s2
                  sub          a6, a7, zero
                  c.xor        a1, a0
                  sll          s1, s7, s11
                  c.slli       a6, 10
                  c.andi       s1, 22
                  mul          sp, s4, sp
                  slti         t1, s3, -1153
                  andi         s10, t6, -858
                  sltu         a4, gp, a0
                  c.add        gp, a3
                  sltu         ra, s7, s5
                  srli         s7, t0, 16
                  mulhsu       ra, s5, a4
                  lui          a5, 471599
                  c.xor        a0, a3
                  mulhu        s6, t2, tp
                  c.mv         a6, s5
                  c.srai       a3, 28
                  c.srai       a3, 17
                  div          a5, a0, a3
                  or           s6, s6, t1
                  srl          s5, t1, s2
                  c.lui        t2, 14
                  c.add        s11, t5
                  remu         s5, zero, s2
                  c.slli       s1, 7
                  sub          s8, a5, a7
                  srl          gp, t0, a4
                  c.andi       s0, 18
                  c.sub        a0, a2
                  c.mv         a3, s9
                  sra          t4, s6, a5
                  lui          s1, 1016391
                  c.srli       a1, 31
                  srai         s11, a4, 15
                  sra          s10, s10, s0
                  c.addi       s4, 19
                  c.sub        a0, s1
                  sll          gp, t0, s1
                  remu         t1, t2, s9
                  c.sub        a3, a4
                  add          t1, a3, t0
                  sltu         s1, a5, a0
                  div          a6, gp, t0
                  c.slli       s0, 7
                  ori          s2, s2, -524
                  sltiu        s7, s6, 721
                  c.lui        s11, 30
                  c.li         t6, 8
                  srl          s10, ra, tp
                  sltiu        t1, s9, -312
                  slti         tp, s8, 1803
                  c.sub        s0, a3
                  slti         s5, s8, -468
                  mulhu        t6, s10, s0
                  slti         s11, s7, -880
                  slt          s11, t0, tp
                  remu         s5, s5, gp
                  auipc        sp, 74516
                  srl          ra, s2, s9
                  c.add        s3, a0
                  slti         t2, t4, -1705
                  mulhu        a3, s1, a0
                  ori          s0, a7, 1273
                  sll          a5, t5, t0
                  sltiu        s3, s3, -5
                  c.addi       s3, 24
                  c.xor        s1, a2
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, 256
                  c.slli       s10, 14
                  nop
                  sltiu        s11, s6, -506
                  c.add        s1, gp
                  divu         a3, t1, a3
                  slli         a3, a5, 29
                  slli         a7, s3, 22
                  add          t5, s2, s6
                  div          t5, s0, s10
                  slli         a7, a4, 9
                  slt          t4, s2, a6
                  c.addi       a1, -1
                  c.mv         a1, s10
                  sll          s2, s6, s10
                  c.or         s0, a1
                  srai         a7, s3, 15
                  sll          tp, t3, a0
                  remu         t4, s7, t3
                  or           s2, s9, s1
                  lui          s5, 126220
                  c.or         a4, s0
                  c.lui        a7, 27
                  remu         a7, zero, a1
                  sltiu        s11, s11, 1191
                  and          tp, gp, a3
                  mulhu        zero, a3, t5
                  sub          s2, s9, s3
                  slti         s2, a7, 297
                  c.sub        a3, a2
                  or           ra, t6, sp
                  srli         s8, s0, 30
                  slli         t6, s4, 24
                  mulhsu       a1, s1, t3
                  c.add        t6, a2
                  ori          a7, s1, 1132
                  divu         t5, s11, t5
                  addi         t4, s8, 423
                  xor          a0, a1, gp
                  c.and        a0, s0
                  divu         t4, gp, ra
                  sub          t4, ra, t1
                  srli         t0, s9, 11
                  c.srai       a1, 5
                  xor          s11, a6, t0
                  sra          a7, s9, s4
                  srli         t4, s0, 30
                  c.add        s5, a4
                  c.sub        a0, a4
                  c.sub        s1, a0
                  c.slli       a7, 10
                  sltiu        s5, t6, -1549
                  slti         sp, s7, 1201
                  lui          ra, 422086
                  c.addi16sp   sp, 208
                  xori         a4, t6, -84
                  sltiu        t6, s4, 1489
                  sll          ra, t6, a3
                  c.srli       a0, 1
                  c.sub        a5, a1
                  c.addi16sp   sp, -16
                  rem          s7, a1, s11
                  mulh         t6, tp, t1
                  c.addi16sp   sp, -16
                  c.xor        a4, a0
                  sll          s3, s7, t6
                  nop
                  xori         s11, gp, 1573
                  c.add        a6, s9
                  slti         s0, t3, 698
                  c.srai       s1, 12
                  srai         s2, s6, 17
                  c.li         a4, 7
                  mulhsu       s7, s7, s3
                  xor          t2, s5, t3
                  c.or         a3, a5
                  sltu         a5, a7, t6
                  mul          a4, zero, t2
                  c.and        a1, a4
                  or           gp, s2, sp
                  c.andi       a5, 31
                  mulh         a4, a7, sp
                  sra          tp, gp, a6
                  mul          t1, s2, s9
                  c.addi16sp   sp, 96
                  c.nop
                  remu         s2, t2, s3
                  c.andi       a0, 9
                  xori         t6, s3, -469
                  srl          a5, a7, s5
                  c.add        tp, a5
                  addi         t6, s10, 250
                  lui          s7, 160822
                  addi         sp, s3, -227
                  sltiu        a0, t3, -63
                  c.sub        a5, a2
                  sra          a5, t4, ra
                  sltu         a3, a7, t4
                  lui          s7, 403345
                  divu         zero, s4, s2
                  c.nop
                  divu         gp, s0, s4
                  c.srli       a4, 31
                  and          ra, tp, a5
                  divu         sp, a6, t3
                  addi         sp, gp, 1738
                  srai         zero, a4, 28
                  add          gp, t1, s10
                  lui          s5, 279098
                  auipc        zero, 710827
                  c.xor        a5, a2
                  ori          s3, s3, -1496
                  srli         tp, s0, 31
                  slti         a6, t4, -1318
                  c.sub        a1, s1
                  xor          t5, a5, a4
                  remu         t1, a7, zero
                  mulh         a7, s0, zero
                  addi         a3, s11, 1107
                  c.addi16sp   sp, -16
                  c.nop
                  c.mv         s8, s1
                  div          gp, s10, s6
                  or           s8, s5, t1
                  srai         s2, s0, 10
                  auipc        s6, 360442
                  c.and        a5, a0
                  lui          zero, 853226
                  slt          t4, t1, t5
                  c.srli       s0, 31
                  c.li         ra, 29
                  remu         a7, s1, tp
                  addi         s10, s0, -2018
                  mulhsu       a3, t4, t6
                  c.srai       a0, 22
                  ori          s2, s2, -1229
                  c.lui        a7, 15
                  mul          s4, t0, s5
                  div          a7, s8, tp
                  sltiu        s6, t3, 253
                  nop
                  or           a4, a3, s5
                  slli         s6, tp, 14
                  c.sub        a5, a2
                  c.add        s8, s1
                  lui          a1, 228750
                  addi         s3, ra, 1830
                  slli         a5, s3, 28
                  nop
                  and          a3, s5, s4
                  nop
                  and          t2, t4, sp
                  c.or         a4, a5
                  add          t4, t3, s1
                  c.sub        s1, a5
                  add          a0, a6, t1
                  c.slli       a5, 19
                  c.mv         s1, ra
                  c.lui        t0, 2
                  sll          s4, a3, t1
                  c.sub        s0, a1
                  and          s4, s2, s6
                  xor          t2, t2, s9
                  add          t4, s3, s7
                  divu         t6, s0, s7
                  c.andi       a4, -1
                  srl          s1, s8, s10
                  remu         a4, a2, sp
                  srl          s7, zero, a4
                  and          a3, gp, s9
                  addi         s8, a5, 1332
                  c.andi       a3, -1
                  srli         t0, t4, 5
                  c.srli       a5, 24
                  divu         s11, s11, t3
                  add          s8, s7, a3
                  sub          s3, zero, s11
                  mulhu        a7, s7, a7
                  and          a1, t2, s9
                  xori         s10, a2, -219
                  sll          t5, ra, zero
                  c.srai       a0, 31
                  c.addi16sp   sp, 448
                  c.addi16sp   sp, 176
                  slt          sp, t3, t2
                  sub          a1, a0, a5
                  c.srli       a4, 23
                  c.slli       s0, 31
                  c.addi       s8, -1
                  c.or         a5, a3
                  mulhsu       a6, t2, t4
                  c.sub        a1, a4
                  remu         s8, t2, ra
                  c.mv         a7, t2
                  c.li         s2, -1
                  auipc        t6, 122397
                  ori          a4, t0, 1714
                  remu         a4, a6, zero
                  mulhsu       a3, t5, a7
                  slli         a3, a7, 8
                  c.nop
                  c.add        a6, a4
                  c.addi4spn   a1, sp, 240
                  div          a7, tp, tp
                  slli         tp, t1, 12
                  nop
                  addi         s3, a3, 489
                  lui          a5, 1000923
                  c.lui        t5, 19
                  srli         t0, gp, 7
                  mulhsu       s3, zero, zero
                  div          a5, s5, a0
                  c.srai       a3, 17
                  sra          a0, t1, s7
                  divu         zero, t2, s2
                  sll          s6, t1, a6
                  lui          s7, 502127
                  c.or         a5, a5
                  c.nop
                  mulh         s7, gp, zero
                  c.andi       s0, 24
                  sub          tp, ra, s3
                  c.addi16sp   sp, 336
                  slti         a7, s8, -530
                  sltu         a1, a5, ra
                  remu         t5, zero, sp
                  or           a3, s7, a2
                  c.lui        t4, 15
                  c.or         a4, s1
                  c.addi       t5, -1
                  c.or         a1, a5
                  mul          t5, s10, s8
                  c.sub        a0, a5
                  c.nop
                  slli         gp, a2, 18
                  c.addi4spn   a0, sp, 976
                  c.add        t4, ra
                  c.addi4spn   s1, sp, 208
                  remu         t6, tp, s3
                  c.addi       s1, 10
                  nop
                  c.or         a0, a5
                  c.srai       s0, 17
                  xori         t1, s9, -1523
                  nop
                  c.and        a1, s0
                  or           t6, a0, gp
                  ori          t1, s0, 1024
                  div          a6, s6, t1
                  sltiu        s3, sp, -1512
                  c.sub        a5, a5
                  c.srli       s0, 3
                  or           s5, a7, t6
                  sub          tp, s5, s6
                  remu         s6, a4, s7
                  ori          s3, t3, -1190
                  andi         t4, a6, 641
                  c.addi16sp   sp, -16
                  c.sub        a4, s0
                  c.sub        s0, a1
                  sra          t2, sp, s3
                  xori         t2, gp, 1036
                  sltu         s5, s1, t0
                  c.nop
                  c.xor        a4, s1
                  divu         tp, a6, a4
                  addi         s8, s7, 125
                  mulhsu       t1, a2, a6
                  mulh         a5, t5, gp
                  slti         s6, s1, -1589
                  auipc        s0, 144308
                  sra          t0, a0, s10
                  mulh         a7, t4, s8
                  srai         s0, t2, 23
                  ori          tp, t6, -1046
                  sltu         a7, gp, t5
                  c.lui        s6, 12
                  add          a1, a3, t0
                  sltiu        zero, s6, 565
                  srl          a3, s6, t5
                  c.srli       a1, 4
                  addi         a4, t0, 887
                  sll          sp, t5, s5
                  auipc        a5, 132406
                  c.xor        a5, a1
                  mulhsu       s11, s0, gp
                  mulhu        s2, a0, a6
                  divu         t0, s7, a0
                  div          a1, a7, t4
                  mulhu        a1, zero, s8
                  mulhu        tp, s6, t1
                  div          t5, a6, s8
                  sltiu        t0, t3, 1847
                  mul          s7, s5, t3
                  c.addi       t6, 6
                  divu         s5, s6, a7
                  slti         s4, a6, 488
                  mulh         a0, zero, t1
                  rem          a4, s2, a3
                  xori         a3, s6, -565
                  add          t6, a5, a1
                  or           a6, t0, t4
                  c.addi4spn   a4, sp, 224
                  rem          s11, a5, t2
                  ori          s11, t0, -1910
                  sltiu        s10, t5, 1021
                  andi         s4, a7, -444
                  c.addi16sp   sp, -16
                  c.addi       t6, 3
                  c.addi16sp   sp, 384
                  or           a7, s11, a0
                  c.or         a0, a5
                  div          s11, a2, t6
                  add          tp, a5, zero
                  c.and        s1, a2
                  or           t5, s1, s3
                  divu         a3, ra, s4
                  srai         a6, t1, 20
                  c.mv         s4, t1
                  c.srai       a1, 11
                  c.andi       s0, -1
                  andi         s2, s7, -1692
                  xor          s8, s7, a5
                  srl          t4, s0, s1
                  add          a3, s3, t1
                  auipc        s1, 99941
                  c.xor        a4, a3
                  lui          ra, 482860
                  slti         s0, s7, 192
                  c.addi16sp   sp, -16
                  c.add        t4, t1
                  c.lui        a6, 9
                  div          t6, a7, s8
                  mulhu        s11, s10, s11
                  mul          s5, s6, s9
                  ori          s11, s0, 1762
                  c.addi4spn   a3, sp, 592
                  auipc        t6, 533664
                  addi         a0, a1, -1765
                  or           s7, s1, s4
                  c.and        a4, s1
                  c.mv         s5, a6
                  c.add        t1, t3
                  slli         s2, a4, 27
                  sltiu        t1, a2, 68
                  mulhu        a1, s0, a3
                  ori          a3, s7, 1598
                  mulh         gp, t1, t1
                  ori          a6, a0, 308
                  c.and        a0, a0
                  div          ra, t4, a1
                  c.add        t5, t5
                  c.or         s1, a3
                  c.nop
                  c.addi       t2, -1
                  c.mv         tp, s1
                  nop
                  or           s0, s5, zero
                  and          tp, t4, tp
                  xori         t4, s5, -418
                  c.mv         t5, a1
                  sll          tp, s1, s11
                  c.addi       a1, 9
                  c.addi16sp   sp, -16
                  ori          a7, gp, 135
                  srl          a3, a7, a1
                  ori          s11, t1, 1322
                  xor          tp, t4, zero
                  c.and        a4, a3
                  c.and        s0, a4
                  mulhu        zero, s6, t3
                  and          ra, s6, s11
                  c.or         s1, a2
                  c.and        a4, s0
                  mulh         t2, ra, a6
                  c.li         s11, -1
                  srai         t2, sp, 5
                  xori         s11, s2, 1521
                  c.andi       a3, -1
                  sltiu        t6, a6, -516
                  c.andi       s1, 26
                  c.addi4spn   s1, sp, 272
                  slli         t0, a4, 21
                  mul          t4, tp, s4
                  c.addi16sp   sp, -16
                  c.mv         t5, s3
                  or           s6, t5, s0
                  c.and        a4, a0
                  ori          s11, ra, 550
                  slt          a5, t0, s1
                  c.add        a3, ra
                  c.andi       s0, -1
                  div          a4, s11, s1
                  c.mv         gp, gp
                  c.addi4spn   s0, sp, 176
                  c.lui        t0, 19
                  sltiu        s10, a6, -1413
                  addi         t5, s3, 1763
                  c.nop
                  srl          t5, t1, a5
                  addi         s8, s6, 1088
                  addi         zero, s4, 1322
                  c.nop
                  xor          t2, s8, s4
                  srli         t1, t1, 13
                  nop
                  c.srai       a3, 11
                  xor          s8, t1, s2
                  c.lui        s3, 21
                  sra          t1, t1, t6
                  nop
                  slt          s4, a6, t6
                  c.add        t6, s7
                  c.li         a1, -1
                  c.mv         gp, a5
                  mul          a1, s0, t0
                  srli         gp, s6, 19
                  addi         t4, s7, -1552
                  c.xor        a4, s1
                  andi         t0, s0, 643
                  divu         s11, a0, s7
                  auipc        s11, 14083
                  auipc        t0, 641920
                  xori         a6, a4, -1941
                  auipc        s10, 1035410
                  c.andi       a4, -1
                  or           tp, t0, s10
                  srli         t6, t0, 28
                  c.nop
                  mul          t2, sp, s0
                  c.srai       a4, 1
                  slti         t4, s11, -1708
                  sltu         a6, s11, a0
                  c.xor        a4, s0
                  andi         a4, t6, 43
                  c.nop
                  addi         a3, a3, -337
                  mulhu        a4, a3, ra
                  c.and        a3, a5
                  sll          s8, s2, t4
                  c.srai       a4, 5
                  mulhsu       s7, s5, s1
                  slt          s0, s8, zero
                  addi         s7, a1, -1086
                  srai         t4, s8, 8
                  andi         s0, s2, 199
                  c.li         t0, 6
                  div          t5, a3, gp
                  c.addi4spn   a1, sp, 640
                  c.addi       a5, -1
                  addi         s3, t4, -966
                  sltiu        a3, t0, -1174
                  or           s4, s5, t6
                  c.sub        a4, s0
                  xor          gp, a3, a2
                  c.addi16sp   sp, -16
                  c.add        s10, t0
                  slli         t5, a2, 1
                  add          a0, s5, s6
                  c.nop
                  rem          t2, t1, a2
                  or           s4, s7, a7
                  sra          t0, s11, s2
                  sll          s5, s3, t3
                  c.mv         a3, a2
                  c.addi16sp   sp, 64
                  c.addi4spn   a1, sp, 704
                  c.addi       s4, 23
                  xor          ra, s4, s0
                  lui          sp, 512407
                  or           t2, ra, a2
                  sll          s10, a5, a7
                  c.andi       a5, 21
                  slli         ra, s5, 5
                  nop
                  srai         a4, t4, 7
                  c.mv         tp, a4
                  c.andi       a5, -1
                  c.and        s0, a5
                  slli         ra, a3, 16
                  mulh         t4, a2, s7
                  ori          tp, sp, -813
                  andi         s11, s11, -72
                  c.srli       a4, 17
                  remu         s3, s6, t0
                  xori         zero, t6, 1489
                  srai         s0, sp, 21
                  c.andi       a4, 20
                  c.xor        a5, a5
                  mulh         s1, t6, t5
                  c.mv         s1, a3
                  xor          t2, a2, a2
                  c.addi16sp   sp, 32
                  c.slli       a0, 9
                  c.addi4spn   a1, sp, 32
                  sra          s10, s5, a4
                  c.or         a4, a4
                  c.sub        s0, a1
                  sra          s4, a0, tp
                  c.slli       a3, 12
                  auipc        s1, 821
                  mul          gp, s5, a3
                  c.sub        s1, a3
                  c.addi4spn   a4, sp, 48
                  mulh         ra, a4, zero
                  add          s1, sp, tp
                  c.sub        s1, a1
                  srai         s7, a6, 12
                  sltiu        t2, a3, -103
                  c.sub        s1, a5
                  c.and        a0, a2
                  add          a4, s4, s1
                  slli         ra, gp, 10
                  divu         gp, t1, s5
                  mulhu        s8, s11, a7
                  slti         s8, gp, -571
                  c.li         a5, 28
                  c.sub        a5, a1
                  mul          sp, t0, s9
                  c.srli       s1, 25
                  c.mv         a4, a3
                  or           s3, s3, s0
                  addi         s11, a2, -1663
                  slti         gp, s1, 1566
                  addi         a5, s3, -887
                  srai         s5, a2, 15
                  add          tp, a1, s9
                  addi         a0, s6, -413
                  divu         sp, a2, t1
                  div          s10, t4, s4
                  sltiu        s2, tp, -27
                  rem          s4, s10, a7
                  c.lui        gp, 30
                  slti         a3, s1, -450
                  c.sub        s0, a0
                  nop
                  srl          a0, a1, s10
                  nop
                  c.and        a0, a0
                  mul          tp, s8, t0
                  mul          tp, a3, s6
                  slt          a3, a6, a1
                  ori          tp, s3, -1828
                  slt          a3, s11, zero
                  srli         a6, a3, 13
                  c.addi4spn   a3, sp, 864
                  mulhu        t2, ra, t1
                  c.andi       s1, 8
                  mulhsu       s8, s1, s1
                  srli         s3, s11, 17
                  mul          a7, a3, a7
                  auipc        s0, 89690
                  div          s0, s9, s4
                  sra          s11, s8, s7
                  lui          zero, 236435
                  c.slli       t6, 3
                  c.addi       t6, -1
                  srli         sp, ra, 9
                  sub          a1, zero, t4
                  mul          a5, a3, t0
                  lui          ra, 21832
                  or           s6, a4, s11
                  c.lui        t0, 30
                  sll          a0, a2, s4
                  lui          s1, 438469
                  c.nop
                  c.addi4spn   s0, sp, 304
                  c.mv         s11, s10
                  slli         s4, s9, 20
                  slli         a6, s3, 27
                  c.xor        s0, s0
                  div          t1, a5, a0
                  sll          a6, t6, a7
                  ori          t5, s1, 394
                  c.addi       s11, -1
                  c.li         t2, -1
                  sra          t4, tp, a4
                  sra          s3, s7, a1
                  add          a0, t0, s8
                  sub          a7, s7, a5
                  or           zero, s4, s3
                  c.srai       a3, 11
                  add          a3, a1, s4
                  srai         s8, a4, 18
                  lui          t2, 481802
                  c.xor        a5, a3
                  mulhu        a0, a5, s3
                  srai         s8, t5, 8
                  mulh         tp, s4, s7
                  and          s10, ra, s6
                  remu         s5, s5, t6
                  sltiu        s0, a1, 1124
                  c.srli       s0, 6
                  andi         gp, s1, -1695
                  sltiu        a3, t1, -1871
                  c.nop
                  andi         ra, t4, 529
                  c.andi       a0, 12
                  c.addi4spn   a5, sp, 352
                  xori         tp, tp, 789
                  c.add        s11, a5
                  srl          t2, a0, a4
                  slli         s3, a6, 27
                  add          a4, s11, a3
                  addi         t6, a6, -1539
                  c.or         s0, a1
                  divu         a0, t1, s4
                  c.slli       t5, 21
                  srli         gp, a4, 3
                  andi         s8, s5, 1225
                  xori         s4, s9, -1597
                  c.add        t0, s9
                  c.andi       a0, -1
                  xor          sp, s10, t1
                  and          sp, s1, t3
                  xori         s0, a6, -526
                  c.sub        a3, a4
                  mulhsu       s0, t6, zero
                  mulhsu       s3, gp, t0
                  divu         t5, s1, a2
                  rem          a5, t4, s7
                  srai         s10, t2, 0
                  ori          s8, s9, -232
                  sub          ra, zero, t2
                  mulh         a4, ra, a3
                  c.add        a1, a2
                  srai         ra, a1, 30
                  c.or         s0, s0
                  sub          gp, a3, a6
                  lui          t1, 134728
                  add          a0, a2, a1
                  slli         gp, s7, 19
                  auipc        t0, 63385
                  srai         s1, s1, 17
                  c.addi4spn   s1, sp, 352
                  addi         t2, s2, -1761
                  and          a6, a3, a1
                  div          a5, s8, ra
                  c.addi16sp   sp, -16
                  c.nop
                  c.nop
                  sra          a4, t4, s7
                  c.nop
                  addi         a3, t3, -1306
                  srai         s11, a5, 14
                  c.slli       a7, 31
                  c.slli       sp, 12
                  c.addi       a4, -1
                  c.or         a5, a0
                  or           s5, s7, a4
                  remu         t4, s8, a7
                  c.add        sp, a7
                  c.addi       ra, -1
                  c.addi16sp   sp, 64
                  c.and        a3, a4
                  add          a1, ra, a1
                  slli         s3, sp, 4
                  auipc        s10, 118707
                  add          s8, s9, gp
                  sra          a1, s2, s0
                  addi         sp, s0, 416
                  srl          t5, t1, s1
                  sltu         ra, s4, a2
                  c.srai       a5, 10
                  remu         t4, t6, t4
                  c.srai       s0, 13
                  mul          s7, s11, s6
                  sra          s8, t2, sp
                  c.lui        tp, 21
                  mul          sp, a0, a6
                  sll          s5, s6, s8
                  remu         a7, s1, s5
                  srai         ra, s6, 26
                  nop
                  mul          s8, tp, s10
                  auipc        t0, 84641
                  add          t5, a3, a7
                  addi         a3, a1, -1740
                  srli         s8, a1, 15
                  sltiu        s3, s5, -1484
                  c.andi       a3, -1
                  srl          t6, s1, t1
                  or           t0, s4, s1
                  rem          s4, s4, s2
                  srli         s6, a3, 29
                  c.srai       a4, 19
                  and          a7, s10, s4
                  div          a0, t4, s0
                  divu         t1, t4, t6
                  mulh         a4, s11, ra
                  srl          s1, zero, gp
                  c.andi       a4, -1
                  mulhsu       s8, tp, s5
                  div          a7, a2, s1
                  mul          a7, a4, a5
                  slt          t6, t5, s7
                  c.xor        a3, s0
                  c.addi       s7, 12
                  c.srli       a4, 16
                  srl          s8, s11, a1
                  addi         s0, s9, -890
                  andi         a7, s4, 1246
                  sltu         sp, s11, s1
                  or           s5, sp, gp
                  addi         s10, ra, -1953
                  c.add        sp, a5
                  c.srli       a5, 22
                  ori          t1, s11, 1696
                  xori         s4, s6, 1813
                  mulhsu       a0, s7, a3
                  c.addi4spn   a4, sp, 208
                  c.addi16sp   sp, -16
                  sltiu        t4, s2, -1260
                  sltu         tp, a0, a4
                  srai         a6, t4, 6
                  slli         gp, t2, 28
                  mul          s7, t0, s11
                  c.add        s7, s1
                  mulh         a5, a6, a6
                  srli         tp, a6, 11
                  sll          t4, a1, a7
                  mul          t2, a1, ra
                  mulh         t2, s4, s8
                  mulh         a7, a1, zero
                  and          s8, s0, a6
                  c.addi16sp   sp, -16
                  divu         s8, s7, zero
                  mulhsu       s5, t5, a7
                  nop
                  srai         s11, t2, 21
                  mul          tp, a1, a1
                  c.andi       a5, 25
                  mul          s5, tp, a6
                  or           zero, t5, s10
                  div          s1, s8, t4
                  mulhsu       a7, a6, a5
                  c.addi4spn   s0, sp, 880
                  c.xor        a1, s1
                  xori         a6, s6, 453
                  and          s10, a6, sp
                  c.or         a4, s0
                  c.addi       t5, 13
                  addi         s2, a7, -696
                  add          a3, s10, ra
                  add          ra, s3, s10
                  srli         ra, s5, 23
                  or           a3, a7, s9
                  c.and        a5, s0
                  c.sub        a4, a1
                  sltu         a4, t1, s7
                  nop
                  slt          t6, t0, t4
                  mulhu        t2, t0, s0
                  c.nop
                  srai         a4, a4, 6
                  sltiu        a4, s0, 1661
                  srai         s6, s0, 21
                  c.li         t1, 8
                  sltiu        a4, s7, -1734
                  c.addi       s6, 13
                  c.addi4spn   a1, sp, 672
                  div          t4, s9, a7
                  srai         t5, sp, 2
                  mulh         t1, s4, a0
                  lui          tp, 682622
                  c.sub        a5, s0
                  divu         ra, t4, s5
                  xor          s3, s6, t3
                  c.srai       a5, 31
                  or           t4, s10, t0
                  sltiu        a4, s7, -1190
                  divu         t0, s1, t1
                  andi         s11, t3, -974
                  c.slli       ra, 26
                  mulhsu       s11, t3, ra
                  sltiu        a6, ra, -5
                  rem          t5, sp, gp
                  c.addi       s8, -1
                  nop
                  c.srli       a1, 11
                  slli         gp, t5, 22
                  srl          a4, tp, a3
                  remu         zero, s7, t2
                  and          s11, s7, s10
                  srl          s8, t2, s10
                  add          s5, s6, t5
                  divu         s7, s0, a5
                  and          a3, a1, s8
                  slt          s5, t4, s11
                  c.or         a3, s0
                  sltiu        a5, t3, -1470
                  xor          s4, s11, s5
                  c.sub        a0, a4
                  sll          t5, t6, a3
                  c.slli       t5, 29
                  c.srli       a5, 17
                  c.srai       a0, 22
                  divu         s3, ra, s8
                  sll          zero, a7, s5
                  c.srli       a4, 12
                  c.add        t1, a1
                  xor          a4, a6, s5
                  slt          t1, ra, a1
                  c.addi4spn   a0, sp, 672
                  c.lui        t5, 28
                  li           a7, 0x9f80ff3b #start riscv_int_numeric_corner_stream_11
                  li           a4, 0x0
                  li           s7, 0x0
                  li           gp, 0x5142c220
                  li           s6, 0x0
                  li           t1, 0x0
                  li           a3, 0x0
                  li           s5, 0x80000000
                  li           tp, 0x80000000
                  li           t4, 0x80000000
                  rem          t4, a3, s6
                  mul          s6, gp, s6
                  nop
                  rem          s5, s5, s7
                  add          s6, tp, s5
                  mulh         s6, t1, s7
                  mulhu        a3, s7, a3
                  rem          a4, gp, s6
                  nop
                  auipc        tp, 24267
                  addi         a4, t4, -1321
                  sub          tp, tp, s7
                  rem          gp, a4, a3
                  rem          a7, a4, t4
                  remu         s7, a4, a7 #end riscv_int_numeric_corner_stream_11
                  div          t6, s4, a2
                  remu         a5, t0, a7
                  and          t1, t3, a0
                  and          sp, a5, ra
                  c.add        a7, a6
                  c.li         t5, -1
                  c.slli       t2, 4
                  mulhu        s6, a5, t6
                  sltiu        s6, s7, -1133
                  c.add        s4, gp
                  c.xor        s1, a5
                  c.xor        s0, s0
                  auipc        a0, 329441
                  srli         t2, a3, 11
                  slli         s3, s5, 7
                  ori          s6, t5, -1689
                  c.sub        s1, a5
                  srli         sp, ra, 24
                  c.addi       s0, -1
                  c.addi       a7, -1
                  mul          sp, s11, s4
                  mul          a7, s4, s3
                  srl          s11, a0, s5
                  sub          s3, s7, t4
                  c.addi16sp   sp, 224
                  mulh         t6, a1, gp
                  sub          a5, t1, s4
                  c.addi4spn   s0, sp, 16
                  sub          a4, t6, s10
                  c.srli       s1, 7
                  and          a6, a0, a5
                  srli         s7, a2, 17
                  or           s4, t4, s5
                  c.add        s10, tp
                  c.srli       a3, 11
                  auipc        s8, 325983
                  sub          s0, s3, a4
                  add          s3, t6, a5
                  c.xor        a4, a5
                  c.lui        s2, 10
                  c.mv         s6, s0
                  c.mv         t5, a2
                  sltu         a4, s1, s3
                  c.li         t4, -1
                  sltu         a3, s6, s1
                  c.addi       s0, 13
                  c.lui        s4, 29
                  sltiu        s2, a5, -272
                  mulhsu       s6, s9, t3
                  nop
                  c.addi4spn   s1, sp, 928
                  c.mv         s3, a1
                  add          a7, s6, t2
                  c.andi       a0, 3
                  c.li         t5, -1
                  c.addi16sp   sp, 160
                  nop
                  sub          s8, ra, t1
                  xor          a3, gp, a6
                  mulhu        zero, a7, s9
                  lui          s11, 118364
                  srli         gp, t0, 14
                  sra          s11, s10, ra
                  sll          a3, s2, s10
                  rem          s5, t2, t2
                  c.addi4spn   s1, sp, 288
                  div          a7, s4, s6
                  c.srai       s0, 4
                  lui          s7, 473799
                  slti         t2, zero, -1403
                  rem          s3, t6, s4
                  add          s8, a4, tp
                  lui          s8, 188089
                  c.srai       a1, 29
                  c.andi       s1, -1
                  c.srai       a3, 3
                  sub          s3, s10, a1
                  c.or         a1, a4
                  remu         a3, s11, a3
                  c.addi4spn   s0, sp, 960
                  mulh         t6, a4, s2
                  nop
                  c.addi4spn   a3, sp, 496
                  srli         a6, sp, 25
                  andi         s7, tp, -1233
                  xor          s4, ra, t0
                  lui          s4, 225683
                  c.andi       s0, -1
                  sltu         a0, ra, s0
                  c.and        a4, a1
                  andi         a0, s1, -1023
                  srl          s11, sp, s3
                  c.mv         a4, a5
                  remu         s0, t1, t1
                  sll          s3, s3, s6
                  srl          t4, s9, t6
                  sra          a7, a4, s10
                  srai         t5, t1, 11
                  mulh         a1, s11, t1
                  andi         s6, a2, -274
                  c.or         a3, a2
                  xori         s8, zero, -524
                  xori         tp, zero, -1003
                  c.and        a3, s1
                  c.andi       a3, 16
                  sltiu        a6, s6, -478
                  c.mv         s10, a2
                  andi         s8, t1, -693
                  c.slli       s1, 12
                  sub          s1, s6, gp
                  c.lui        a7, 4
                  andi         tp, s4, 1934
                  auipc        a7, 711762
                  sra          zero, a5, a0
                  c.li         s4, 0
                  mulh         a4, t4, s3
                  divu         a5, s3, t2
                  slt          t0, t4, a1
                  addi         s10, a4, 1964
                  or           a5, t5, a0
                  srai         t2, s3, 18
                  c.srai       a4, 19
                  srl          a4, s5, t1
                  rem          s0, s5, s4
                  srli         zero, s2, 15
                  c.li         s3, -1
                  addi         t5, tp, -187
                  or           a1, a1, s2
                  slli         s1, s0, 14
                  c.xor        s0, s0
                  andi         t0, s0, -478
                  xori         a4, s8, -728
                  c.add        t4, s10
                  c.li         t4, 0
                  c.add        s7, a3
                  c.or         a5, a3
                  c.nop
                  andi         gp, t4, 1777
                  mul          s1, a6, s7
                  c.addi4spn   a0, sp, 384
                  sltu         a7, s5, t3
                  c.slli       tp, 11
                  c.nop
                  add          a6, ra, s11
                  add          s8, a7, tp
                  addi         s3, s8, -168
                  or           s8, sp, s5
                  c.or         s0, a0
                  and          t0, s3, a4
                  slt          sp, t3, t2
                  add          s3, t6, a6
                  sltiu        s0, a4, -1456
                  slt          t0, t1, zero
                  srli         a0, s9, 23
                  sub          t4, t5, s1
                  remu         s5, s11, s8
                  sra          s8, s8, t2
                  c.li         s8, -1
                  c.srli       a5, 30
                  addi         a1, s9, -181
                  c.or         a4, s0
                  slti         a1, s6, 1785
                  c.mv         a1, a1
                  mulhsu       a3, s7, t4
                  c.add        s7, s5
                  sra          tp, sp, s2
                  sltiu        a4, zero, 653
                  div          s11, a6, s2
                  slt          t5, s8, a6
                  add          a0, t0, a7
                  c.addi16sp   sp, -16
                  c.nop
                  mul          t5, s5, a5
                  auipc        a6, 489289
                  rem          a4, s1, a5
                  sra          s1, a0, s4
                  sub          s2, s6, t1
                  ori          s4, a6, -91
                  c.li         s8, 26
                  remu         a3, t3, t2
                  sra          t5, s7, t0
                  srai         s8, s2, 5
                  addi         sp, sp, -505
                  andi         gp, gp, 117
                  c.slli       t4, 16
                  rem          s4, sp, s6
                  c.addi16sp   sp, 480
                  sub          t1, a6, s0
                  slti         sp, t5, 1768
                  slt          s10, t3, s8
                  c.slli       t4, 11
                  c.and        a4, a2
                  srl          s4, a4, t3
                  xor          tp, a2, s7
                  c.srai       a1, 14
                  c.add        t4, s0
                  or           a0, a5, t5
                  and          s6, tp, a4
                  rem          a7, t6, ra
                  c.sub        a0, a4
                  slli         s1, a6, 18
                  c.slli       a7, 22
                  c.lui        s7, 5
                  ori          sp, gp, 338
                  c.srli       a5, 15
                  nop
                  c.addi16sp   sp, -16
                  c.sub        a3, a3
                  c.mv         a1, a5
                  srai         s8, ra, 28
                  mulhu        gp, t2, s6
                  c.nop
                  divu         t2, gp, t4
                  auipc        sp, 701743
                  c.sub        a1, s0
                  divu         a5, a2, s6
                  nop
                  mulhu        a3, a6, t4
                  and          a4, s6, s7
                  srli         s11, a3, 17
                  andi         s11, t1, -1106
                  c.lui        ra, 14
                  ori          s8, s5, -1304
                  c.li         tp, -1
                  c.addi4spn   a5, sp, 528
                  mulhu        s0, a5, tp
                  c.nop
                  srl          gp, s5, sp
                  ori          a4, sp, -234
                  andi         s8, t0, -1133
                  c.sub        s1, a1
                  divu         s8, s9, s7
                  sll          s4, t3, s7
                  lui          t0, 278292
                  mulhu        t6, s4, s9
                  sra          t2, a2, t2
                  c.sub        a3, a1
                  c.addi16sp   sp, 272
                  c.addi16sp   sp, 16
                  c.li         ra, 7
                  c.slli       t4, 12
                  lui          s4, 560044
                  slt          s8, s7, sp
                  c.addi       t0, 5
                  c.mv         a1, t1
                  addi         s7, gp, 409
                  addi         sp, sp, -1177
                  c.srai       a3, 10
                  slti         zero, s9, -613
                  andi         s5, a0, -8
                  c.addi       t2, -1
                  sll          tp, gp, a4
                  auipc        t0, 905234
                  div          t5, t3, s8
                  slli         t0, t3, 10
                  mulh         s10, a3, s6
                  c.li         t1, 30
                  sub          t1, t3, s7
                  andi         s2, s1, -1988
                  c.or         s0, a4
                  srli         ra, zero, 18
                  and          s7, t2, s3
                  addi         s8, s10, 1138
                  c.nop
                  c.lui        a6, 14
                  slt          a5, sp, a3
                  c.addi16sp   sp, 96
                  remu         t2, a7, t1
                  nop
                  mulh         sp, sp, a1
                  slti         t5, s8, 1285
                  sltiu        s11, s2, -1341
                  div          sp, a7, t2
                  c.add        a0, s8
                  c.srai       a0, 21
                  xor          s0, s10, a0
                  mul          s10, s3, a1
                  c.lui        t0, 17
                  mulhu        s8, a5, s4
                  slti         t0, tp, 732
                  c.mv         a6, s2
                  divu         s4, gp, tp
                  slt          a4, t5, t0
                  and          s7, t2, s2
                  sub          t4, t0, t3
                  c.add        a3, s6
                  addi         s5, s1, 1581
                  and          s11, s7, s7
                  c.slli       s0, 4
                  mulhu        t2, a6, s9
                  srli         t6, t4, 29
                  andi         t4, s8, 2034
                  slt          s0, t3, a1
                  c.sub        a5, s0
                  c.li         s4, -1
                  sltu         s2, t3, s8
                  sltiu        s2, zero, 683
                  c.srli       a0, 11
                  divu         sp, t3, a3
                  c.addi16sp   sp, 272
                  slli         a5, s1, 12
                  sub          a3, t2, s8
                  srai         t5, s5, 15
                  sub          s8, s4, t0
                  nop
                  mulhu        s0, s0, s0
                  slt          t4, a5, zero
                  xori         gp, t1, -905
                  sltu         t1, s1, sp
                  c.addi4spn   a3, sp, 192
                  andi         s7, a1, 227
                  c.addi       a5, -1
                  lui          s5, 255675
                  mul          s3, t6, a5
                  sltu         s4, a2, a0
                  xor          a4, sp, s3
                  c.srli       a4, 5
                  and          a0, a0, s2
                  c.li         t6, 2
                  c.andi       a5, 21
                  slti         t2, a4, 1350
                  c.slli       s11, 28
                  mulhu        a6, a2, t1
                  srl          s4, s4, s1
                  c.mv         a1, t2
                  rem          s5, tp, t1
                  lui          a4, 772296
                  slti         a5, s9, 625
                  c.lui        ra, 24
                  mul          t4, s11, s1
                  slt          s8, ra, t1
                  c.slli       a1, 29
                  c.andi       a1, 8
                  c.slli       a4, 21
                  addi         a3, s9, -52
                  mulhsu       s0, a6, a4
                  mulhu        t2, a7, a0
                  and          a5, a1, tp
                  c.sub        a1, a1
                  add          s8, s7, t1
                  c.or         a4, a3
                  slti         s0, s2, -1765
                  div          ra, t2, s7
                  xori         s1, t5, 1150
                  nop
                  nop
                  c.srli       s1, 6
                  c.sub        a4, a3
                  add          a4, a2, t6
                  c.li         t4, -1
                  sltiu        t4, s0, -1373
                  c.sub        a3, a2
                  c.andi       a4, -1
                  c.addi16sp   sp, 32
                  c.and        s0, s0
                  c.xor        a3, a5
                  slt          a5, s8, s11
                  rem          a5, s11, t5
                  add          a6, t4, a7
                  c.xor        a1, a2
                  srl          s1, a5, t1
                  c.srai       a4, 10
                  or           zero, a5, s6
                  sub          s10, s2, s11
                  lui          t0, 783733
                  srl          s6, s7, t5
                  or           a4, a7, s5
                  mulh         t5, zero, a1
                  xor          t1, a7, s6
                  c.xor        a0, a1
                  remu         ra, t0, s2
                  slli         t6, t2, 8
                  srli         s1, a5, 13
                  c.li         t6, -1
                  slt          s5, t1, s6
                  srai         ra, a1, 0
                  xor          a6, a0, t1
                  addi         s7, t5, 49
                  c.nop
                  srl          s7, a1, t0
                  c.addi4spn   s0, sp, 752
                  and          s11, a3, t6
                  mulhsu       s2, s2, t6
                  xor          a5, s9, s9
                  c.li         s4, -1
                  sltu         gp, t1, t0
                  ori          s10, s2, 101
                  c.nop
                  c.sub        a1, a4
                  mulhu        a1, sp, tp
                  auipc        s5, 315816
                  srli         gp, s2, 13
                  sltiu        s3, tp, -1939
                  addi         a3, tp, -1945
                  addi         a6, s10, -711
                  sltiu        s3, sp, 1951
                  or           s7, a3, s4
                  mul          a6, s2, s2
                  and          sp, a0, s1
                  andi         s10, t1, 357
                  srai         t2, s0, 25
                  sltiu        a5, t3, 817
                  srl          s7, s9, tp
                  srai         a6, a1, 20
                  add          t5, a2, s10
                  xor          t1, t5, a5
                  nop
                  sltiu        tp, t2, -1143
                  div          s8, gp, ra
                  sltu         t5, a1, t3
                  c.addi4spn   a0, sp, 784
                  srai         t0, a1, 1
                  sltiu        s4, s1, 1921
                  xor          sp, t5, s3
                  ori          tp, t3, 739
                  addi         a4, t6, -483
                  c.slli       gp, 19
                  sub          zero, tp, s4
                  add          t6, a4, t4
                  ori          s0, a0, -1056
                  srl          tp, zero, sp
                  and          s0, a3, sp
                  srli         tp, s9, 1
                  c.li         a5, -1
                  or           t6, s9, t1
                  c.srai       a0, 22
                  sub          a5, t4, s2
                  sub          s10, gp, sp
                  c.mv         a7, s5
                  rem          s1, s8, s11
                  div          s0, s9, s1
                  rem          tp, t5, s8
                  divu         zero, s3, ra
                  sltiu        s4, s6, -1435
                  c.slli       gp, 11
                  c.srai       a1, 18
                  add          s0, ra, t4
                  xor          sp, s8, s3
                  c.or         a5, a0
                  c.nop
                  srl          t5, s3, a3
                  nop
                  c.slli       s8, 21
                  rem          s1, a0, s0
                  sltu         a3, s11, s6
                  c.andi       a5, 28
                  and          s2, s5, s6
                  mul          ra, gp, s7
                  rem          a3, a6, a0
                  slti         s10, t2, -1044
                  srl          s2, s3, s10
                  c.andi       a3, -1
                  c.nop
                  slt          a0, t2, t1
                  slli         s3, a7, 23
                  mulhu        t4, s4, sp
                  sub          s1, gp, t2
                  remu         t4, s9, s7
                  c.sub        s1, s1
                  c.mv         s0, a4
                  srli         s10, a5, 6
                  auipc        a6, 219236
                  c.sub        a5, s0
                  ori          a4, s5, 1202
                  c.mv         s11, s2
                  add          t2, s11, s5
                  c.mv         a0, s9
                  c.nop
                  div          t0, t1, t0
                  divu         s10, s2, s0
                  div          a0, a5, s5
                  mulhu        ra, s9, a6
                  xor          a7, t5, t4
                  srl          t1, t3, t0
                  sltiu        s1, s0, 1125
                  divu         tp, s2, tp
                  mul          t0, a4, t4
                  c.mv         t2, t0
                  mul          t2, s10, s5
                  andi         ra, s4, 1391
                  c.mv         a5, s7
                  ori          t5, zero, 1133
                  slti         s7, a5, -1152
                  mulhu        zero, s8, s5
                  divu         s6, a2, tp
                  c.or         s0, a1
                  slti         s10, t1, -936
                  mulhsu       tp, t0, s6
                  srl          a0, a7, a2
                  andi         s3, s1, -1529
                  c.addi       a5, 11
                  mulh         s6, s1, s10
                  c.li         tp, 24
                  c.sub        a4, a4
                  mul          s6, t3, s1
                  c.srli       s1, 1
                  sltiu        a5, a3, 780
                  andi         a0, a2, 239
                  c.addi4spn   a3, sp, 464
                  c.mv         t2, a5
                  slli         a7, t2, 31
                  mulhu        t4, s6, s11
                  lui          s7, 242214
                  c.srli       a1, 13
                  mulhu        gp, t6, s5
                  sll          s1, a3, t5
                  ori          a7, s3, -1288
                  sra          s8, t5, a1
                  sltu         t0, s7, t3
                  srai         s8, s7, 18
                  slti         a5, s10, 1121
                  c.addi4spn   a3, sp, 656
                  remu         s7, s6, t4
                  sll          s11, a6, a4
                  c.sub        a0, a3
                  divu         gp, s4, s2
                  nop
                  nop
                  sltiu        s0, t4, -1751
                  c.srai       a1, 8
                  slli         t1, a2, 15
                  c.addi4spn   a5, sp, 144
                  srli         t2, t1, 22
                  sltiu        t6, tp, -886
                  srl          s11, a3, a6
                  slti         s5, s1, 2035
                  mulhu        s11, t5, tp
                  c.add        s2, s5
                  c.srai       s1, 25
                  ori          t0, s3, -389
                  srai         a3, a6, 18
                  c.li         ra, 0
                  srli         a1, s11, 24
                  slli         sp, t0, 14
                  c.xor        a3, a2
                  ori          t4, s1, 1032
                  slli         s1, s11, 1
                  sll          s4, zero, t5
                  sra          a5, a5, t5
                  c.andi       a3, -1
                  lui          s4, 312387
                  c.slli       s7, 4
                  c.srai       a0, 14
                  slt          t2, a7, t6
                  mulhu        s4, a2, ra
                  xor          t4, s4, s10
                  nop
                  c.mv         a3, s10
                  slti         t4, s10, 484
                  ori          a6, t4, -2009
                  xori         s6, t0, -1901
                  mul          s5, t4, a2
                  or           t2, a2, a5
                  add          s10, s1, s2
                  c.andi       a4, -1
                  sltu         a1, t6, s11
                  c.or         a3, a2
                  c.li         s4, 8
                  c.mv         t1, gp
                  c.sub        a0, a2
                  c.nop
                  sll          a3, a2, s6
                  c.add        s0, ra
                  c.add        ra, a3
                  nop
                  mulh         a3, s6, t1
                  divu         tp, sp, s6
                  c.and        a4, s0
                  c.mv         a7, t5
                  c.andi       a5, -1
                  mulh         s7, a6, s11
                  sltu         zero, t5, zero
                  c.sub        a1, a5
                  mulh         t0, a7, a6
                  c.addi       s0, -1
                  slti         s5, s4, 726
                  lui          a3, 404416
                  c.srai       a4, 29
                  c.slli       a6, 17
                  auipc        s10, 736160
                  andi         zero, a4, 1604
                  mul          t5, a4, a1
                  lui          s5, 274788
                  addi         s6, s6, 1015
                  sub          s4, a5, t5
                  c.addi16sp   sp, 384
                  addi         s4, a6, -1981
                  lui          s5, 432406
                  mulh         s7, s2, s10
                  add          s0, s7, t3
                  xori         s1, s11, 1609
                  c.nop
                  mulhsu       ra, s9, a1
                  srai         a6, a1, 29
                  c.and        a3, s1
                  xor          a0, a4, a6
                  remu         a7, gp, t4
                  sub          s11, t6, s5
                  divu         gp, gp, s4
                  addi         t1, ra, -477
                  divu         s5, s8, zero
                  sra          t1, gp, a7
                  mulhu        s5, a4, s9
                  sll          s0, t5, t2
                  sll          s11, a6, s2
                  c.srai       s0, 26
                  div          s11, a1, s8
                  divu         s6, a4, s5
                  mulhu        s5, s1, t2
                  srai         t0, a6, 20
                  xori         tp, gp, 1812
                  srli         a0, t5, 2
                  sll          s4, s7, a4
                  sll          t0, a5, s10
                  slti         t1, a3, 602
                  lui          t2, 47376
                  mulhu        s1, s10, s6
                  c.xor        s0, a3
                  sub          s8, a6, s1
                  div          t2, t3, s3
                  nop
                  slt          a7, s1, t1
                  addi         t2, s10, -1146
                  c.or         a0, a5
                  andi         s1, s9, 498
                  c.addi4spn   a3, sp, 576
                  c.addi       a1, 12
                  addi         a5, s10, 781
                  slt          t0, s0, t2
                  mulh         t4, s4, s7
                  or           t2, s5, t1
                  c.slli       gp, 29
                  c.li         s7, -1
                  c.mv         a3, s3
                  c.xor        s1, a2
                  xor          s5, t1, s5
                  or           a3, a3, t1
                  div          t6, t1, s8
                  lui          s11, 310599
                  srli         t0, s8, 20
                  slti         t0, t1, 991
                  ori          s4, s9, 1742
                  mulhu        zero, tp, s5
                  c.li         a4, 3
                  sltu         tp, s7, gp
                  c.sub        a0, s0
                  xori         t1, a5, -768
                  nop
                  srli         a7, s3, 31
                  c.mv         s0, t3
                  c.nop
                  c.lui        a7, 10
                  c.xor        s0, a1
                  c.xor        a0, a1
                  or           tp, s7, a3
                  c.mv         gp, ra
                  or           gp, zero, s3
                  xori         ra, s7, 542
                  rem          s0, s5, ra
                  c.srai       a4, 4
                  sltu         gp, zero, s1
                  c.xor        a5, a5
                  and          zero, s0, ra
                  srli         zero, t3, 19
                  c.slli       s4, 18
                  c.srli       a3, 12
                  sltu         t5, t5, s4
                  andi         s4, s7, -1935
                  lui          s7, 433886
                  c.srli       a4, 27
                  sll          a7, gp, t3
                  remu         a3, s5, s5
                  mul          s1, gp, a4
                  sltu         t0, s7, t3
                  sll          s2, t6, a1
                  c.xor        a5, s0
                  mul          gp, t4, t2
                  div          s4, a0, s4
                  c.xor        a3, a5
                  c.addi       s8, -1
                  c.slli       s5, 21
                  mulhsu       s6, a3, a4
                  andi         t6, s4, -1629
                  ori          zero, sp, -1923
                  mul          s0, a6, t3
                  mulh         t2, s2, a1
                  or           s7, a4, gp
                  xori         t5, a3, -679
                  srai         t1, s10, 13
                  div          tp, a7, t1
                  and          a6, s0, t0
                  sra          t1, s11, a4
                  c.addi       s2, -1
                  c.andi       a3, -1
                  add          a5, t0, a0
                  sltiu        s8, s10, -1521
                  c.lui        s3, 14
                  nop
                  ori          t6, a5, -86
                  c.and        s0, a0
                  c.srli       a0, 20
                  c.mv         a7, s11
                  addi         s3, tp, 748
                  srli         a4, s9, 12
                  c.nop
                  srai         s2, tp, 6
                  c.mv         s8, tp
                  c.sub        a1, a3
                  andi         s5, tp, -425
                  c.lui        ra, 27
                  sra          s5, s10, t2
                  ori          tp, s5, -825
                  c.and        a5, a5
                  remu         a3, t1, a4
                  c.li         gp, -1
                  slt          t2, s0, zero
                  divu         s6, zero, a1
                  sll          s1, s2, s8
                  c.sub        a3, a3
                  c.slli       t2, 26
                  c.mv         s1, s2
                  c.or         a4, a1
                  c.andi       s0, 13
                  mulh         s5, s8, tp
                  div          t1, t2, s3
                  srli         s10, s7, 20
                  nop
                  sltiu        s8, t5, 1607
                  sll          s7, a4, tp
                  c.andi       s0, -1
                  ori          t1, ra, 1587
                  c.srai       a3, 3
                  c.sub        a3, a0
                  mulhu        s5, sp, s0
                  and          s8, a1, s8
                  c.slli       t4, 27
                  c.sub        s1, a4
                  c.nop
                  c.slli       t5, 2
                  c.srli       a4, 5
                  andi         t2, a1, 519
                  srli         s5, tp, 22
                  c.addi16sp   sp, -16
                  c.lui        a0, 4
                  lui          s5, 714716
                  div          t0, a2, zero
                  or           a0, s0, s0
                  c.sub        a0, a4
                  c.srli       s0, 27
                  slti         a7, a2, 852
                  c.sub        s1, a1
                  c.addi16sp   sp, -16
                  lui          a0, 474223
                  c.xor        a3, a2
                  sltiu        s1, a4, -412
                  andi         a3, s4, -1921
                  sub          t1, s2, s8
                  slt          tp, s1, t0
                  c.li         s10, 26
                  slti         a3, a1, 859
                  sltu         tp, a7, t1
                  mulhsu       t5, gp, s7
                  add          s6, s0, s3
                  c.sub        a4, s1
                  srai         s8, s8, 4
                  c.slli       s7, 2
                  or           t2, gp, s11
                  c.andi       a3, 29
                  nop
                  c.srli       s0, 20
                  sltu         tp, a2, t1
                  nop
                  c.li         a0, 20
                  mulh         s4, sp, a4
                  c.andi       s0, 30
                  c.nop
                  add          s4, s7, s0
                  c.addi16sp   sp, -16
                  c.andi       a1, -1
                  sltu         t1, t4, s2
                  c.nop
                  sltu         s11, s5, t1
                  slli         s5, tp, 13
                  c.nop
                  slti         s0, s8, 255
                  c.addi       a7, -1
                  or           a1, s4, a3
                  xori         a7, s2, 417
                  c.addi4spn   a1, sp, 432
                  c.xor        s0, a3
                  srli         a6, t4, 8
                  c.addi16sp   sp, 480
                  xori         a5, s3, -217
                  c.lui        t0, 26
                  nop
                  mulhu        t4, t4, a1
                  srl          a6, s1, s10
                  sltu         tp, t5, t1
                  srl          s0, s10, zero
                  sub          zero, a1, s8
                  remu         zero, a5, a3
                  srl          a7, sp, t0
                  c.addi4spn   a4, sp, 720
                  c.nop
                  lui          t4, 135844
                  slti         a1, a1, -1613
                  c.xor        a0, a2
                  div          s5, s0, t0
                  addi         a1, t1, 1711
                  mulhsu       a5, t5, a7
                  andi         zero, a1, 1315
                  c.sub        a5, s1
                  c.add        s3, a3
                  c.mv         a7, s4
                  slti         s8, tp, -1008
                  ori          zero, s2, 512
                  c.addi16sp   sp, -16
                  c.mv         t2, s9
                  sra          t5, s7, a1
                  mul          zero, sp, a4
                  sub          t5, s3, s6
                  xori         s1, s11, 1231
                  c.slli       t5, 17
                  c.addi       s8, -1
                  xori         sp, a1, -1698
                  c.srli       a4, 14
                  remu         s0, a3, a5
                  c.andi       a5, -1
                  c.nop
                  sltu         t1, t4, s3
                  c.lui        t4, 25
                  c.srai       a3, 22
                  mulhu        s7, t1, a0
                  andi         s7, zero, -83
                  mulh         s10, a6, t0
                  mulh         a1, s0, t1
                  c.addi16sp   sp, 48
                  and          t2, a0, s10
                  srai         s7, s0, 16
                  sll          s3, a7, s8
                  mul          a5, a3, s6
                  c.srai       s1, 12
                  auipc        s1, 404364
                  srai         s10, s4, 15
                  slti         gp, s9, -306
                  divu         t6, s1, t3
                  div          t0, a0, gp
                  addi         tp, s1, 844
                  mulhu        t1, t0, t4
                  mulhsu       s2, t4, t6
                  c.and        a4, a5
                  nop
                  c.mv         a0, t4
                  c.slli       t5, 16
                  c.andi       s0, 4
                  addi         t4, t0, -708
                  divu         s11, s9, t6
                  c.sub        s0, a0
                  srl          t2, tp, t5
                  sub          t5, a5, t0
                  sra          a5, t6, s2
                  c.add        a4, a4
                  sll          t2, a3, s9
                  mulhu        a3, a3, s8
                  c.andi       s0, 20
                  and          s6, s7, s5
                  nop
                  srai         a6, a6, 23
                  nop
                  c.andi       s1, -1
                  auipc        s0, 385575
                  xor          a4, zero, t4
                  and          s8, s1, s1
                  mul          gp, t5, a2
                  xori         ra, ra, -592
                  sltu         s6, s11, a5
                  c.sub        a0, a2
                  addi         ra, a4, -472
                  c.addi       s0, 24
                  c.srai       a0, 20
                  sub          s4, a0, s4
                  mulhu        t4, s0, a7
                  addi         a7, t2, -1343
                  slti         gp, sp, -1847
                  mul          s3, a2, t6
                  ori          a1, a5, -1609
                  nop
                  srli         a3, s9, 21
                  rem          t2, t2, t1
                  c.add        t2, t1
                  c.srai       a0, 7
                  li           tp, 0xba6e29f4 #start riscv_int_numeric_corner_stream_4
                  li           s11, 0x7d9f99b5
                  li           t5, 0xffffffff
                  li           a4, 0x80000000
                  li           a0, 0x0
                  li           a3, 0xffffffff
                  li           a5, 0x51acc276
                  li           sp, 0xffffffff
                  li           s6, 0x0
                  li           t4, 0x80000000
                  auipc        s11, 339976
                  mulh         s11, a0, a4
                  mulh         a0, sp, a4
                  nop
                  mul          a0, s11, sp
                  mulhu        s6, tp, t5
                  remu         tp, a5, s11
                  mulhsu       s11, s11, tp
                  mulh         a3, a5, sp
                  nop
                  mulhu        tp, t4, a0
                  add          t4, s11, s11
                  add          s11, t5, a3
                  mulh         a3, a0, a0
                  divu         a3, sp, a3
                  auipc        t4, 928920
                  div          a4, s11, t4
                  mulhu        a4, a3, a4 #end riscv_int_numeric_corner_stream_4
                  add          s7, a7, t0
                  slti         zero, s1, -1320
                  c.nop
                  addi         tp, s2, -1485
                  mulhu        s3, ra, ra
                  lui          t6, 412184
                  div          zero, s9, a6
                  mulh         t6, t1, zero
                  c.srli       a1, 9
                  c.xor        s0, a3
                  c.li         t0, -1
                  c.add        s4, a1
                  c.addi       s11, 4
                  sltu         a1, s9, a0
                  addi         a7, a5, 464
                  lui          s4, 714387
                  addi         t6, s10, 1301
                  auipc        s10, 857196
                  sll          s8, s5, gp
                  c.srai       a0, 5
                  andi         s8, s3, 688
                  c.addi16sp   sp, 432
                  c.or         a1, s0
                  rem          t1, ra, gp
                  srai         t0, a0, 29
                  sltu         s11, a4, s4
                  c.li         a6, 5
                  mul          s10, t3, a4
                  sll          t0, sp, s4
                  mul          s11, t6, a7
                  c.andi       a1, -1
                  add          t4, t5, a4
                  mulhu        t0, gp, s8
                  slt          a6, s5, ra
                  slt          gp, s5, t5
                  ori          s5, a0, 210
                  c.andi       a3, 23
                  mulhsu       a4, s1, s0
                  addi         a6, s1, 221
                  c.lui        s11, 3
                  c.addi       t4, 23
                  divu         s1, a2, ra
                  add          ra, t5, ra
                  sltu         t0, t4, a7
                  c.slli       a0, 9
                  auipc        s7, 105489
                  c.slli       tp, 26
                  c.addi4spn   a0, sp, 704
                  xor          t4, gp, t0
                  rem          s6, t6, a6
                  lui          s3, 295230
                  sra          a6, s3, t5
                  c.mv         s8, t6
                  auipc        t2, 825124
                  divu         t6, s8, a0
                  slli         s8, s7, 6
                  lui          s4, 490000
                  sltu         s5, s11, s2
                  c.addi4spn   s1, sp, 912
                  sltu         t0, t4, a3
                  mulhsu       s8, s7, s8
                  ori          s7, s0, 1387
                  andi         s0, zero, 853
                  and          tp, s8, s2
                  mulhsu       s10, gp, s10
                  mulhu        zero, s5, sp
                  c.nop
                  srl          s2, t2, s6
                  xor          t2, a5, a6
                  c.andi       a4, -1
                  divu         gp, ra, s2
                  mul          s7, a4, s2
                  and          s6, sp, sp
                  srl          t6, a1, s5
                  slli         s8, a3, 18
                  mul          t0, t5, t2
                  rem          a4, s3, a2
                  c.and        s0, a2
                  c.addi       s7, -1
                  sltu         ra, t6, s3
                  c.addi       a5, 27
                  div          zero, a1, a4
                  c.slli       t1, 16
                  c.slli       t6, 3
                  and          t0, s4, a1
                  c.nop
                  auipc        a3, 280846
                  c.addi       tp, 10
                  c.addi4spn   a3, sp, 704
                  c.addi4spn   a0, sp, 416
                  sub          t5, s6, t5
                  c.xor        a4, a2
                  c.or         s0, a4
                  add          s8, sp, s0
                  slti         ra, s2, 460
                  ori          t5, s10, 837
                  srai         s1, a5, 17
                  c.nop
                  lui          s11, 93941
                  xor          t1, s1, s0
                  c.sub        s0, a3
                  c.li         s5, 28
                  c.addi16sp   sp, 96
                  srai         s0, t3, 13
                  c.srli       a4, 16
                  c.nop
                  c.addi4spn   a3, sp, 688
                  c.slli       s7, 16
                  sltiu        sp, s0, -42
                  rem          a3, s4, s5
                  c.addi       s4, -1
                  ori          t1, a3, 668
                  c.nop
                  div          a4, a3, s7
                  andi         gp, t6, -1318
                  srai         a7, t4, 14
                  c.mv         gp, s0
                  slli         t5, s0, 19
                  c.andi       a4, 28
                  c.andi       a0, -1
                  c.add        a3, s8
                  c.addi       t1, -1
                  auipc        s1, 1015824
                  c.and        a4, a0
                  sub          t5, t5, a2
                  ori          ra, s7, -286
                  sltiu        t4, t0, -1387
                  xori         s2, a3, 1395
                  mulh         a3, t1, a3
                  c.addi       s0, -1
                  c.srai       a0, 6
                  c.srai       a3, 16
                  c.slli       sp, 15
                  sll          s7, a5, t0
                  or           s11, t3, a7
                  div          sp, s7, sp
                  nop
                  and          a5, a7, s1
                  add          ra, a2, s8
                  remu         sp, sp, a0
                  srai         a7, sp, 3
                  divu         s5, ra, s10
                  c.addi4spn   a0, sp, 224
                  c.addi4spn   a5, sp, 496
                  remu         a3, a3, t1
                  srl          t2, s5, zero
                  c.and        a0, a2
                  sub          a1, t2, t2
                  and          t5, t2, s5
                  andi         t6, t1, 952
                  mulhu        a4, s3, a3
                  slti         a5, s3, -1477
                  srli         a7, t4, 25
                  c.andi       s1, 29
                  rem          gp, s2, a5
                  c.addi4spn   a1, sp, 320
                  addi         s1, a3, 137
                  c.andi       s1, -1
                  sub          t1, s9, t5
                  srl          sp, a3, t5
                  mul          t2, s4, t0
                  slli         t0, s6, 0
                  mulhu        t5, a5, s3
                  c.sub        s0, s1
                  c.lui        s7, 13
                  c.addi       tp, -1
                  c.add        s10, a2
                  auipc        a0, 750492
                  xori         s8, s4, 1081
                  c.and        a1, a4
                  c.addi4spn   a4, sp, 96
                  c.lui        a1, 3
                  sll          s11, s2, a0
                  mulhsu       t0, s11, s6
                  andi         s7, s4, -425
                  ori          s6, s11, 1597
                  add          t4, s8, s10
                  div          a5, t5, s5
                  c.andi       s1, -1
                  divu         s0, s4, s11
                  div          a1, s5, t3
                  srli         s0, a3, 23
                  divu         a0, t5, a5
                  slti         t0, s6, 1999
                  c.addi       t5, 22
                  sltu         s4, a4, a4
                  and          s2, s2, sp
                  c.addi       s6, -1
                  auipc        s1, 689297
                  div          t4, t3, t4
                  c.addi       sp, 20
                  c.and        a4, s1
                  c.srli       a5, 26
                  div          t4, sp, s8
                  slli         a3, a7, 3
                  nop
                  mul          a3, s9, t2
                  c.addi       a6, -1
                  add          a1, t2, t4
                  remu         s4, s7, s1
                  nop
                  lui          a4, 285481
                  auipc        a7, 802698
                  sub          a7, s0, tp
                  c.slli       ra, 18
                  and          gp, s5, s11
                  rem          tp, a0, t2
                  remu         a3, s1, sp
                  c.addi4spn   a4, sp, 400
                  c.lui        t1, 19
                  srai         s6, s10, 17
                  slt          a1, s8, s6
                  c.or         a1, a1
                  c.addi4spn   a1, sp, 144
                  sll          s11, s6, a6
                  c.slli       a6, 31
                  andi         t4, s5, 1269
                  mulhu        s3, t2, t6
                  c.or         a5, a3
                  c.srai       a0, 18
                  c.li         s1, -1
                  mulh         a7, s3, zero
                  c.srli       a1, 3
                  or           t0, s6, s10
                  srai         s1, s8, 2
                  divu         sp, gp, s7
                  mul          s5, s1, t6
                  rem          a5, t2, t3
                  sub          ra, t2, a2
                  addi         a5, s8, 1439
                  c.srai       a0, 1
                  mul          zero, a5, s11
                  andi         s1, t1, 745
                  ori          s10, s0, -565
                  sll          s0, a5, t0
                  xor          zero, a6, t1
                  mulh         s8, s6, t3
                  div          s6, a4, a1
                  slti         a4, s3, 425
                  c.addi16sp   sp, -16
                  or           s1, tp, s2
                  c.srai       a3, 27
                  auipc        s0, 873750
                  auipc        s1, 836580
                  sltu         a5, s10, s7
                  mulhu        s3, s11, a3
                  c.andi       a3, 14
                  lui          t4, 467656
                  and          a3, a3, t6
                  lui          tp, 260477
                  sltu         s4, a4, gp
                  srl          t1, s6, t5
                  mulhu        s8, s11, t0
                  c.li         t4, 30
                  c.lui        s2, 6
                  c.srli       s1, 11
                  divu         s3, a1, s5
                  slli         s3, a5, 7
                  slti         gp, s0, 1908
                  sra          tp, s4, ra
                  c.nop
                  rem          t2, t6, s6
                  mulhsu       a4, a7, t5
                  c.srli       a0, 28
                  auipc        zero, 733228
                  sub          s2, s11, s2
                  c.addi4spn   a1, sp, 448
                  c.add        s1, a0
                  remu         s0, gp, s4
                  c.and        a3, a4
                  mul          t5, s7, s8
                  div          t0, a0, s2
                  xor          a7, a5, s7
                  slt          a0, t4, t2
                  add          a1, s6, s5
                  remu         t2, a4, ra
                  c.or         s0, a5
                  rem          s1, s2, a1
                  andi         t2, t6, -1261
                  c.mv         s5, t6
                  c.addi4spn   a4, sp, 96
                  mulhsu       t1, t2, s1
                  c.srli       a4, 16
                  div          ra, s9, s6
                  c.andi       a3, -1
                  sltiu        s8, t4, 419
                  mulhsu       s8, s10, tp
                  slt          a1, s9, a4
                  or           t6, sp, a5
                  sub          a1, t0, a1
                  c.li         t0, -1
                  add          s5, s4, t4
                  srai         s0, s8, 2
                  div          a1, s5, s7
                  rem          tp, s5, t0
                  mulhsu       s1, s9, s9
                  c.addi16sp   sp, 432
                  remu         a3, s1, ra
                  c.nop
                  sltu         a1, s4, t6
                  nop
                  sltiu        s5, s2, -247
                  sltiu        s10, s10, -1043
                  sra          s5, a0, t4
                  auipc        tp, 604082
                  sra          t5, a4, s0
                  mul          s0, zero, t0
                  sltu         s5, sp, s5
                  srai         a3, s0, 23
                  sltu         t2, s4, s11
                  mul          a4, s0, zero
                  mul          s2, s4, s4
                  lui          a4, 157815
                  xori         s4, a7, 309
                  c.srai       a1, 13
                  c.sub        a1, a1
                  xor          t1, sp, s7
                  c.li         t4, -1
                  sltiu        s7, a4, -1675
                  slt          s11, s3, zero
                  xori         a3, t5, -1428
                  c.or         a4, a2
                  add          sp, s6, a3
                  c.xor        a3, a2
                  mulh         s2, s9, s0
                  slt          sp, s9, s4
                  mulhu        t1, s6, a7
                  andi         s3, zero, -1490
                  addi         s5, t1, 1863
                  xor          t4, s0, t2
                  c.addi4spn   a0, sp, 80
                  addi         s8, sp, -161
                  mulhu        s8, s0, t5
                  mulh         t2, ra, s2
                  c.and        s0, a3
                  rem          tp, a3, a5
                  sra          a7, a6, a2
                  srai         t0, t2, 4
                  c.xor        a4, a2
                  c.xor        s0, a4
                  div          t4, s8, a3
                  c.xor        a5, a4
                  c.sub        s1, a1
                  li           t6, 0x1648fc88 #start riscv_int_numeric_corner_stream_7
                  li           a4, 0xffffffff
                  li           s3, 0x18409874
                  li           s0, 0xffffffff
                  li           tp, 0x0
                  li           gp, 0x80000000
                  li           s6, 0xbfd750e0
                  li           s7, 0xe6c4a329
                  li           s8, 0x80000000
                  li           sp, 0x8733b991
                  divu         t6, sp, a4
                  mulh         s3, s6, s6
                  divu         s8, gp, gp
                  auipc        t6, 903229
                  nop
                  mul          sp, t6, tp
                  mulh         gp, t6, a4
                  rem          tp, s7, s8
                  div          s8, s8, a4
                  sub          tp, s6, s8
                  add          s8, s6, s0
                  addi         s7, t6, -1024
                  mul          s7, a4, tp
                  remu         t6, s3, sp
                  div          s8, s7, gp
                  mulhu        s8, s3, s0
                  remu         sp, sp, s7
                  divu         gp, gp, s3
                  lui          s8, 594095
                  mul          tp, t6, s0
                  mul          s8, tp, gp
                  mulh         s7, tp, a4
                  mulhsu       s6, s7, gp
                  addi         tp, s0, -1600
                  divu         s0, s8, s8 #end riscv_int_numeric_corner_stream_7
                  nop
                  slti         sp, sp, 927
                  xori         s3, a4, -1590
                  c.addi       tp, -1
                  c.sub        a5, a1
                  sltu         gp, a3, tp
                  divu         t6, a7, a1
                  xori         s0, a5, -1957
                  c.addi4spn   a1, sp, 720
                  c.and        a3, a4
                  c.li         s0, -1
                  mul          s11, t2, a2
                  ori          s2, s4, 593
                  slti         s11, s4, 125
                  rem          s5, t6, a0
                  xori         a7, s6, -1235
                  srl          t4, a7, a4
                  addi         a7, a5, -1481
                  mul          s8, s7, a6
                  c.lui        a4, 30
                  sub          a4, a6, s10
                  auipc        a5, 738241
                  sltiu        t4, a2, -1145
                  mulhu        s6, a5, t5
                  slti         s7, t4, 342
                  mulhu        s10, s5, s0
                  rem          s8, s7, a4
                  divu         ra, t1, s6
                  c.srli       a5, 12
                  c.srai       s1, 28
                  divu         zero, ra, sp
                  srai         t4, s9, 23
                  andi         t0, t4, 1839
                  auipc        t1, 778013
                  xor          s6, s4, a2
                  c.addi       a6, 11
                  xor          t4, ra, gp
                  srl          t5, t0, t4
                  c.nop
                  srl          s8, a7, sp
                  c.mv         a4, tp
                  c.srli       a0, 1
                  rem          s0, t2, t1
                  addi         a4, s10, -938
                  c.mv         t6, s6
                  mulh         t0, t0, s10
                  c.xor        a3, s0
                  mulh         ra, a3, a3
                  rem          t4, s6, a3
                  addi         s7, t1, 1895
                  c.srai       s0, 26
                  mul          tp, t4, t4
                  rem          a5, a5, gp
                  sll          t6, s11, t3
                  c.lui        t1, 11
                  c.sub        a0, a3
                  c.sub        a3, a2
                  lui          t6, 367442
                  div          s0, s7, a2
                  sltiu        s3, a2, 1514
                  and          s5, s7, s3
                  c.or         s0, a3
                  xori         t4, t1, 487
                  c.sub        s0, a2
                  srli         sp, s7, 0
                  mul          ra, a1, gp
                  srai         s11, s4, 28
                  sra          s0, t1, a0
                  c.xor        a4, a3
                  c.addi16sp   sp, -16
                  div          a4, t3, zero
                  c.addi4spn   a0, sp, 560
                  sll          s5, t5, t4
                  mulhu        t5, gp, a7
                  slli         s0, a3, 0
                  ori          s11, zero, 1047
                  sub          s5, s9, s9
                  c.nop
                  c.addi16sp   sp, -16
                  and          s4, t1, t4
                  slli         t0, sp, 30
                  c.addi4spn   a0, sp, 624
                  sll          s7, s9, a6
                  and          a0, t1, s11
                  remu         a7, s7, t4
                  sra          a0, sp, gp
                  auipc        s4, 801266
                  c.nop
                  mulh         s1, s0, a4
                  xor          s6, a4, t3
                  lui          t0, 103208
                  remu         a0, t5, ra
                  or           zero, s0, a1
                  c.addi       s10, -1
                  sra          t0, t5, a2
                  xor          a6, a5, s4
                  c.add        t2, s6
                  sll          t4, a0, gp
                  remu         s3, s10, sp
                  srai         s6, a2, 25
                  srai         s0, t1, 10
                  or           t1, s0, a1
                  c.or         s0, s0
                  mulh         a7, t4, a6
                  c.slli       s6, 31
                  xori         s10, gp, 1369
                  c.and        a1, a3
                  andi         zero, ra, -1476
                  add          a3, a7, s7
                  nop
                  c.nop
                  slli         a7, t4, 1
                  srl          s4, t3, s4
                  slti         t4, a6, -1691
                  c.nop
                  c.and        a5, s0
                  remu         s3, t3, gp
                  mulhu        s6, a3, a7
                  xor          a4, sp, zero
                  andi         s7, a6, 174
                  c.lui        a7, 2
                  div          a3, s3, a5
                  div          s7, a5, t4
                  mulhsu       a0, t3, s5
                  c.and        a4, a2
                  mulhu        a4, a0, a0
                  andi         t2, a7, -694
                  rem          s1, a7, a3
                  mul          a1, a7, s4
                  c.xor        a4, a4
                  c.andi       s0, -1
                  andi         s3, t3, -1026
                  sltu         s0, a3, a1
                  slti         s4, a2, 865
                  add          tp, s2, t1
                  sltu         t5, s11, a1
                  srai         s8, s4, 6
                  c.slli       s10, 6
                  c.srli       a4, 2
                  c.addi4spn   a1, sp, 64
                  c.srli       s0, 23
                  sltiu        a7, s7, 1019
                  c.nop
                  mulhu        t6, s8, a5
                  nop
                  sltiu        s10, s7, -45
                  mulh         tp, a4, t0
                  sra          a0, a2, t3
                  sll          s8, s0, zero
                  xor          a6, a1, gp
                  sub          s4, t5, a1
                  c.and        a4, a2
                  remu         tp, t0, t1
                  c.sub        a0, a5
                  slli         s2, s1, 27
                  lui          t1, 481991
                  c.xor        a3, a5
                  c.srai       s0, 4
                  c.srai       a4, 3
                  sra          s8, ra, t6
                  slt          t2, ra, a6
                  andi         t5, a0, -1791
                  c.sub        a5, a1
                  mulhu        t4, zero, s2
                  xori         a6, a7, -1663
                  sll          a3, a1, a5
                  c.or         a5, a3
                  or           a7, a2, s1
                  mulhu        s6, s11, s8
                  sll          tp, s5, t5
                  sll          sp, t3, t4
                  divu         sp, s8, sp
                  mul          t0, s4, s11
                  c.nop
                  andi         gp, t5, -1442
                  c.and        a3, s1
                  nop
                  c.nop
                  mul          s10, tp, s5
                  or           s7, t3, s9
                  addi         t0, t4, -1070
                  srli         t4, gp, 14
                  and          a3, s5, tp
                  add          s2, gp, s2
                  c.andi       a3, -1
                  c.and        s1, a4
                  c.srli       a5, 24
                  xor          s0, a5, s11
                  mul          s3, t1, s11
                  c.andi       a0, 6
                  c.addi4spn   a3, sp, 832
                  c.mv         tp, t6
                  c.li         s0, 1
                  mulh         a7, t6, s3
                  lui          sp, 235606
                  slt          t6, s2, t1
                  c.mv         t6, t6
                  c.srai       a1, 27
                  srai         a6, s11, 5
                  sll          gp, a7, t6
                  c.lui        t0, 25
                  xor          s4, s3, a1
                  addi         t6, s10, 1677
                  lui          a7, 731924
                  auipc        a6, 234646
                  sltu         tp, a3, a2
                  c.addi4spn   a1, sp, 656
                  c.or         a1, a3
                  srli         tp, a6, 11
                  c.andi       a1, 12
                  c.li         s6, 11
                  slt          s3, sp, a1
                  mulhu        tp, s8, t1
                  ori          t6, t3, -282
                  divu         s8, s6, a3
                  slti         s3, a6, -1198
                  c.srai       a0, 17
                  slt          a4, s0, s3
                  nop
                  sll          s2, a3, sp
                  sltiu        sp, a4, 137
                  and          ra, s10, a5
                  divu         s6, a3, t1
                  div          a5, ra, sp
                  mul          s4, a1, s2
                  slt          tp, t2, a7
                  ori          t1, a0, -1541
                  srai         a6, a4, 8
                  c.nop
                  sltiu        a5, s0, 1916
                  c.srai       s1, 21
                  lui          a0, 805067
                  xor          s5, t6, tp
                  ori          s7, s7, 683
                  c.sub        s0, a3
                  ori          a5, s8, -325
                  c.srli       a3, 18
                  c.mv         t0, a2
                  c.srli       a5, 23
                  add          s8, t2, s10
                  rem          s2, ra, zero
                  xori         a7, a2, 844
                  and          s2, s8, s8
                  div          a4, s11, s8
                  mulhsu       a4, tp, a3
                  mulh         a6, t6, tp
                  mul          a0, a6, ra
                  slti         s4, t4, -1826
                  c.addi16sp   sp, -16
                  c.li         tp, 28
                  mulh         s11, a4, a7
                  div          s1, a1, t6
                  c.slli       a0, 20
                  and          a4, s10, s3
                  lui          a0, 920968
                  mul          t2, a2, s3
                  ori          s2, sp, 88
                  div          a5, s11, zero
                  sra          a6, s7, s2
                  sll          s3, t0, t3
                  c.srli       s0, 11
                  srl          ra, t5, tp
                  c.sub        s0, a5
                  divu         s4, a4, a1
                  c.sub        a3, a0
                  c.addi4spn   s1, sp, 192
                  mul          a1, t3, tp
                  sra          a4, gp, a3
                  add          s0, tp, a7
                  c.xor        s1, a2
                  divu         tp, s5, s5
                  mulhu        s7, a6, a7
                  c.or         a1, s1
                  auipc        tp, 693505
                  ori          s11, a0, -278
                  c.mv         a3, tp
                  rem          zero, s1, a1
                  addi         s4, s0, 593
                  xori         a4, t5, 1466
                  mul          t0, t0, a2
                  sltiu        a7, s9, -1640
                  c.li         t2, 28
                  mulh         zero, a3, t3
                  nop
                  rem          t1, t2, a6
                  sltiu        a5, a7, 1910
                  c.addi16sp   sp, -16
                  andi         t1, s9, 777
                  addi         tp, a6, 1300
                  auipc        a1, 621946
                  sra          t5, a1, t1
                  c.srai       a4, 8
                  ori          t0, t3, -488
                  sra          s0, s1, a7
                  slti         t1, s5, 718
                  c.srli       a1, 10
                  c.lui        a4, 1
                  c.andi       a0, 17
                  slti         tp, s6, -1554
                  xor          s5, a6, s1
                  andi         a7, a3, 155
                  c.srli       a0, 31
                  c.nop
                  c.srli       a5, 26
                  c.nop
                  slti         gp, t4, -246
                  c.add        tp, a6
                  c.and        a0, a5
                  nop
                  c.addi16sp   sp, 400
                  xor          a4, s7, s10
                  lui          s4, 613722
                  andi         t2, a4, -149
                  sltu         a5, a7, t2
                  xori         s5, t1, -1622
                  rem          t1, a4, a7
                  c.srli       s0, 23
                  xori         ra, t3, 1339
                  c.xor        a1, s0
                  c.addi4spn   a3, sp, 608
                  c.add        a3, s6
                  div          s5, s5, t1
                  addi         tp, a6, 1599
                  c.srai       a3, 26
                  c.lui        a7, 7
                  mul          s1, s2, s8
                  c.addi16sp   sp, 288
                  c.addi       s1, 1
                  xor          a1, t3, a1
                  rem          sp, t5, s6
                  c.srai       a4, 22
                  sub          tp, s8, tp
                  c.nop
                  mulhu        a0, s0, a0
                  xori         zero, s2, -1679
                  c.andi       a0, 16
                  mulhu        t4, t0, a3
                  c.and        s1, a3
                  or           s3, s7, s9
                  c.srai       a3, 19
                  sll          s11, gp, sp
                  mulh         s0, ra, s7
                  c.xor        s0, s1
                  c.addi       a0, -1
                  lui          a7, 763928
                  slti         tp, s10, 961
                  srl          s5, t1, gp
                  c.or         a0, a4
                  c.addi4spn   s0, sp, 848
                  c.xor        s0, a3
                  slti         t5, t1, -1644
                  sltiu        s11, s10, 723
                  c.xor        a5, a5
                  andi         s5, t5, 921
                  and          t4, s8, t4
                  c.nop
                  nop
                  srli         t4, s0, 3
                  c.srli       a1, 17
                  c.and        s1, a4
                  c.and        s1, a4
                  mulh         s3, s1, a0
                  c.srai       a5, 13
                  c.addi4spn   a0, sp, 896
                  slli         t4, zero, 19
                  c.xor        a5, a3
                  c.and        a3, a2
                  nop
                  or           s10, a5, s10
                  slt          s1, s9, s2
                  sll          gp, s9, s10
                  sra          gp, t2, s3
                  auipc        t4, 585266
                  c.addi       s11, -1
                  sub          a5, s4, a2
                  mul          s7, zero, s2
                  srl          s4, gp, a5
                  c.lui        s8, 5
                  remu         a3, s2, s4
                  xor          s5, t2, a3
                  xor          s3, s9, s3
                  c.sub        s0, a1
                  lui          s5, 908796
                  c.or         a1, a5
                  c.and        a5, s1
                  rem          t1, a0, s10
                  sltu         t4, s1, t5
                  srai         gp, s1, 25
                  c.or         s1, s1
                  auipc        a6, 688818
                  auipc        t0, 624969
                  remu         s4, t3, s11
                  div          s4, a7, s8
                  remu         t6, a4, a5
                  add          a3, s1, s0
                  remu         ra, a1, ra
                  c.add        a4, s11
                  c.srli       a1, 6
                  auipc        t5, 341732
                  c.xor        a5, s0
                  or           ra, a1, a2
                  div          tp, t0, a3
                  nop
                  addi         a7, s0, -438
                  andi         gp, tp, -14
                  c.xor        a5, a2
                  divu         a4, s1, s5
                  c.sub        a3, s0
                  sltu         s3, t3, s6
                  nop
                  lui          a0, 203797
                  c.addi       a3, -1
                  slli         a1, s11, 30
                  c.addi4spn   a5, sp, 752
                  c.mv         s1, a1
                  c.lui        t1, 27
                  sll          t0, s4, a6
                  c.addi       s8, 11
                  c.mv         s3, t4
                  mul          zero, a0, s10
                  c.nop
                  c.and        a4, a0
                  c.addi       s10, -1
                  c.addi       s7, -1
                  divu         t1, s8, t0
                  slli         tp, s4, 4
                  c.slli       s6, 17
                  c.li         t5, -1
                  remu         ra, a6, s4
                  auipc        s8, 787568
                  c.srli       s0, 4
                  sub          t5, s2, s8
                  rem          t5, ra, a0
                  add          s2, s9, t5
                  srai         gp, s8, 31
                  xori         a5, s9, 1813
                  slli         t2, ra, 7
                  slti         s1, a2, 1707
                  xor          s11, s10, t1
                  mul          s8, a6, s6
                  sll          t5, t5, s8
                  c.addi4spn   a4, sp, 976
                  or           a4, t0, a0
                  c.or         a3, s0
                  sub          gp, s2, a1
                  divu         s10, s5, t4
                  xor          a4, t0, a0
                  c.or         s0, s1
                  xor          t4, t4, s3
                  mulhu        tp, s2, t4
                  c.addi       tp, -1
                  nop
                  c.addi16sp   sp, 208
                  c.andi       a0, -1
                  ori          s6, t2, -656
                  addi         a5, a6, -1398
                  andi         t6, s3, -978
                  sra          a3, a0, s11
                  c.and        a3, a5
                  addi         s0, t6, 1335
                  c.slli       t0, 11
                  div          ra, s9, a4
                  c.nop
                  c.xor        a5, a5
                  sll          s3, tp, s9
                  sll          s7, s11, sp
                  c.add        s5, s5
                  div          a7, s10, s1
                  or           t2, t0, t0
                  addi         a0, s6, -279
                  andi         s4, sp, -297
                  divu         a7, s0, a6
                  c.slli       a7, 30
                  andi         s11, tp, 739
                  c.srai       s1, 18
                  ori          zero, a3, -479
                  c.addi16sp   sp, -16
                  c.nop
                  c.sub        a1, s0
                  slli         t4, s5, 17
                  c.sub        a4, a0
                  add          s10, a5, t1
                  c.srli       a1, 4
                  c.addi4spn   s0, sp, 112
                  or           a1, ra, s5
                  xori         s7, t2, -1868
                  c.addi16sp   sp, 80
                  c.xor        a4, a1
                  xor          a6, s0, s11
                  lui          s1, 275408
                  c.add        s0, s1
                  mulh         s8, s2, s11
                  remu         tp, a1, s8
                  div          t0, t6, s5
                  divu         a1, s5, a6
                  mul          s7, s11, s7
                  srli         gp, t2, 0
                  srli         t4, a7, 28
                  nop
                  srai         t5, t3, 24
                  mul          a7, a1, a6
                  c.srli       a3, 21
                  c.and        a5, a4
                  slti         ra, a2, 938
                  c.xor        a4, s0
                  c.mv         s0, a3
                  divu         a7, s5, s8
                  c.slli       tp, 8
                  ori          zero, s10, -471
                  and          t0, gp, a5
                  xor          t0, a3, s4
                  ori          a0, s6, -382
                  mul          s11, s11, t1
                  c.andi       a0, 3
                  or           gp, zero, tp
                  auipc        s2, 277638
                  slli         a5, s0, 5
                  srli         a4, a7, 30
                  c.or         a4, a4
                  c.addi4spn   s1, sp, 640
                  c.mv         s0, s9
                  xori         t4, s5, 1038
                  srai         ra, a0, 31
                  c.or         a0, s1
                  sltiu        tp, a4, -506
                  add          s0, s9, a7
                  c.addi       gp, -1
                  slt          gp, tp, a4
                  slt          s1, sp, s2
                  slti         t6, a4, 1226
                  slt          a3, a7, a6
                  sltiu        tp, gp, 1763
                  addi         s5, s6, -2014
                  and          s6, s10, gp
                  or           a6, sp, s10
                  c.add        ra, s9
                  mul          ra, a2, t5
                  sltu         s8, t4, a0
                  c.srli       a4, 24
                  c.add        s10, s4
                  c.addi16sp   sp, 496
                  c.andi       a5, 18
                  div          tp, s3, s11
                  sub          s0, zero, s8
                  c.or         a3, a1
                  remu         a1, t2, s11
                  c.lui        a4, 29
                  divu         t2, a7, a0
                  mulh         s11, gp, t2
                  c.slli       s8, 2
                  remu         s1, s2, s3
                  mulhu        ra, s4, s1
                  c.srai       s1, 28
                  c.slli       t5, 3
                  slt          t5, s4, ra
                  sll          a1, a2, a0
                  sll          tp, s0, s2
                  mulhsu       zero, s2, sp
                  c.sub        a0, a1
                  rem          a1, s11, zero
                  c.mv         a5, s0
                  c.srli       s1, 11
                  mulhsu       a6, a1, a6
                  addi         s2, t2, 440
                  c.sub        a3, s1
                  mul          s2, s9, t1
                  srai         a4, t3, 17
                  c.addi16sp   sp, 144
                  rem          t2, a3, s7
                  c.sub        s1, a5
                  srli         t5, tp, 15
                  xor          s8, s11, s8
                  c.xor        a5, a4
                  sll          s0, t6, s7
                  addi         a7, a5, 906
                  mulhu        t5, a2, s8
                  mulhsu       tp, a4, a6
                  c.srli       a0, 26
                  rem          s11, a4, s10
                  c.and        a0, a4
                  mul          s8, s10, s9
                  mulhsu       t4, t4, zero
                  sub          a3, gp, a3
                  c.nop
                  xor          s1, s2, ra
                  mul          t4, gp, s4
                  c.li         a4, 23
                  mulhu        a6, zero, s2
                  mulh         t5, t1, t2
                  c.addi4spn   a1, sp, 368
                  sltiu        s0, s1, 2042
                  sll          a5, a4, s11
                  sltu         sp, a2, s10
                  ori          zero, s7, 945
                  sll          t4, s1, s11
                  and          gp, a5, t6
                  slti         tp, a7, 212
                  c.sub        a5, a0
                  mulh         a6, s5, ra
                  c.lui        s0, 22
                  or           t2, a7, s4
                  c.addi       a3, -1
                  c.srli       a4, 13
                  mulh         s6, a0, t3
                  c.slli       a7, 25
                  auipc        zero, 62590
                  remu         a4, t0, t1
                  add          t4, s4, a4
                  sll          t4, s7, s8
                  mulhsu       tp, s6, s8
                  sll          t1, a2, a2
                  sll          s3, tp, s8
                  c.and        s1, a1
                  xor          s5, t0, a4
                  addi         t4, ra, 865
                  rem          t4, ra, s5
                  c.lui        a1, 8
                  c.and        s1, a3
                  add          a3, a0, t2
                  c.lui        s5, 24
                  srl          tp, s5, s5
                  or           a3, ra, s5
                  add          s2, s10, a5
                  rem          ra, s4, s6
                  sra          t0, a4, a1
                  add          a4, t0, t5
                  divu         t2, a0, a4
                  auipc        s2, 221456
                  srli         t5, a7, 24
                  mulhu        a6, s11, t4
                  div          s10, a0, a4
                  c.li         s7, -1
                  c.addi16sp   sp, -16
                  and          s10, zero, a7
                  c.xor        a3, a0
                  remu         s4, a1, s9
                  c.srli       a1, 22
                  mulh         a6, a1, a4
                  slti         t1, a1, -688
                  c.lui        a3, 28
                  divu         zero, a2, s9
                  mulhu        gp, s9, t0
                  sltiu        s5, a6, -1248
                  c.srli       s0, 28
                  mulhsu       s8, a0, s10
                  addi         ra, a6, 690
                  nop
                  slti         s1, s0, 1565
                  remu         s2, s0, t4
                  or           t5, t4, s2
                  c.xor        a3, s1
                  c.lui        a3, 5
                  c.sub        s1, a1
                  ori          t0, s10, 1017
                  c.or         a4, s0
                  c.andi       s0, -1
                  mulh         ra, ra, s8
                  srli         t0, gp, 7
                  c.sub        a1, a0
                  or           tp, s11, a2
                  nop
                  mulhsu       s6, a3, gp
                  sltu         t5, s10, s2
                  mulh         s2, s2, zero
                  c.add        a0, s11
                  c.add        a6, t2
                  c.andi       a3, -1
                  remu         a0, tp, t6
                  addi         a7, sp, -782
                  c.xor        a1, a5
                  c.and        s0, s0
                  c.addi       t6, -1
                  sra          zero, s0, t5
                  slt          s2, tp, gp
                  mulh         s8, s9, s3
                  srai         t1, s9, 21
                  c.lui        tp, 4
                  c.add        s10, ra
                  c.li         t4, -1
                  c.srli       a3, 5
                  c.and        s0, a3
                  slli         a5, t2, 25
                  div          t4, s1, a6
                  c.lui        a5, 20
                  sra          tp, a5, a7
                  sra          t6, s0, s1
                  c.add        s2, a3
                  c.xor        a4, a1
                  sra          s0, a5, s9
                  c.andi       s0, -1
                  c.addi4spn   s1, sp, 384
                  c.addi16sp   sp, -16
                  remu         zero, t6, s3
                  slli         s8, s1, 16
                  c.or         a0, s0
                  c.xor        a4, a3
                  c.mv         t4, s10
                  mulhsu       s1, ra, a3
                  slli         a1, t4, 5
                  slti         t2, s5, -579
                  c.or         a4, a0
                  c.addi       s10, 26
                  nop
                  andi         a1, zero, 537
                  c.or         s1, a5
                  rem          s4, s4, s0
                  div          s0, a1, a3
                  c.addi4spn   a1, sp, 480
                  andi         t4, a6, 586
                  xori         a6, gp, -1110
                  srli         s0, s0, 18
                  lui          gp, 145725
                  sltu         s4, t5, t2
                  c.nop
                  add          t2, s11, s4
                  slli         a4, s4, 26
                  ori          s2, t4, 645
                  c.slli       sp, 17
                  srli         t5, a3, 8
                  c.add        t0, t4
                  sll          a4, a4, s6
                  c.srai       a1, 1
                  slti         s0, t0, 545
                  mulhsu       s4, s11, t1
                  andi         s6, a0, 862
                  c.nop
                  sltiu        a4, s5, -1687
                  c.xor        a1, s0
                  andi         gp, s2, 1651
                  mulhu        a4, s6, s4
                  c.nop
                  c.addi16sp   sp, -16
                  div          tp, a1, sp
                  remu         s10, a0, sp
                  c.addi16sp   sp, -16
                  mulhu        s8, zero, a4
                  c.nop
                  sltiu        t5, s3, 805
                  slli         t2, s9, 26
                  c.or         s1, a2
                  rem          t2, t0, gp
                  c.or         a3, s0
                  c.and        s0, a3
                  c.slli       t0, 17
                  c.li         s8, -1
                  slli         ra, s2, 8
                  srl          ra, s11, t6
                  remu         s11, a7, t2
                  rem          s5, t6, a7
                  remu         s2, s11, t2
                  c.and        a3, a1
                  c.and        s1, a2
                  slli         tp, t2, 6
                  srli         t5, s6, 2
                  mul          tp, a1, a3
                  xori         s8, zero, 739
                  c.mv         a7, a7
                  c.addi16sp   sp, 128
                  srl          t0, t4, s1
                  c.slli       t2, 31
                  c.and        a0, a0
                  lui          s4, 773217
                  mulh         s0, a6, s5
                  rem          s8, zero, zero
                  sll          s4, a5, s2
                  auipc        a3, 335136
                  c.add        gp, a2
                  srl          s4, s5, a7
                  xori         a3, a1, -283
                  sltu         t4, s4, s0
                  or           t5, t2, t5
                  nop
                  or           a0, t5, s0
                  c.lui        t2, 23
                  sub          t1, s1, zero
                  c.srai       a3, 13
                  c.srli       a1, 21
                  nop
                  and          t4, t6, s9
                  slti         s7, t6, -34
                  nop
                  slt          t6, a5, a5
                  or           t1, s6, s1
                  xori         a4, s7, 678
                  c.and        a5, a2
                  sra          zero, t6, a3
                  srl          s8, ra, s9
                  and          a7, gp, s6
                  auipc        s5, 888375
                  xor          sp, a6, s8
                  sub          t6, s11, t3
                  c.add        s10, a4
                  c.add        sp, s9
                  remu         t4, ra, t6
                  c.or         a4, a5
                  and          s6, gp, s5
                  sll          a3, ra, tp
                  c.lui        s3, 18
                  srl          t1, t1, t0
                  slt          a6, s3, s3
                  auipc        a0, 310829
                  and          a0, a1, s11
                  sub          s7, t2, s9
                  xori         s10, a3, -2009
                  lui          a3, 783991
                  srl          a7, a3, zero
                  rem          s1, a4, sp
                  c.slli       s8, 12
                  c.or         a3, a2
                  srai         a0, a6, 0
                  c.add        s1, t1
                  div          a1, s0, t4
                  c.slli       sp, 5
                  c.or         s0, a0
                  xor          s6, s1, s0
                  c.mv         a1, sp
                  c.and        a5, a0
                  ori          s1, a1, -1266
                  mulh         a3, s4, a1
                  ori          t1, zero, -1825
                  slti         gp, t3, 895
                  lui          a7, 529816
                  remu         s4, a1, a0
                  srai         s6, t3, 14
                  sub          ra, s1, s3
                  slti         s5, a0, 1712
                  div          s5, s10, t3
                  c.srai       a0, 30
                  remu         s6, s5, s11
                  and          t0, s1, s11
                  slt          t4, s5, sp
                  c.lui        a3, 6
                  andi         s3, s1, 1842
                  add          t5, t6, a2
                  xor          s0, a4, t0
                  c.mv         sp, t1
                  c.sub        s0, a4
                  c.addi4spn   a1, sp, 240
                  xori         s2, s8, -1050
                  addi         s7, s1, 373
                  c.sub        a5, a4
                  or           s4, a4, s10
                  lui          a1, 953814
                  mulh         s1, zero, s4
                  c.xor        a4, a4
                  c.or         a1, a5
                  mulhu        s6, s1, t4
                  and          sp, t0, s5
                  nop
                  andi         a6, a3, -404
                  srli         s1, gp, 17
                  c.srli       s1, 17
                  c.lui        t1, 31
                  c.nop
                  xor          s2, zero, zero
                  c.srai       a4, 18
                  ori          a6, s10, 564
                  div          a7, a4, t3
                  mulhu        s6, s1, s2
                  c.slli       s11, 28
                  mul          s11, s7, a7
                  div          gp, t5, s8
                  c.or         a3, a1
                  sll          gp, s0, t6
                  c.and        a1, a4
                  or           s1, a3, a2
                  sub          s6, t5, a4
                  remu         gp, a6, s6
                  nop
                  and          zero, s7, t3
                  add          gp, s7, s8
                  mulhu        t1, zero, s11
                  c.xor        s1, s1
                  c.srli       a3, 4
                  sub          t2, t0, s0
                  mul          gp, s0, a0
                  srl          sp, a7, a0
                  slt          s1, a6, s7
                  c.andi       s1, 8
                  and          s0, ra, a0
                  c.mv         t0, a5
                  c.mv         tp, gp
                  c.xor        a4, a1
                  c.addi4spn   a1, sp, 576
                  remu         t4, ra, a0
                  c.andi       a5, -1
                  lui          a4, 942438
                  xori         t0, a2, -652
                  c.li         t1, -1
                  slti         sp, a3, -606
                  c.addi16sp   sp, -16
                  c.or         a5, s1
                  c.lui        s3, 25
                  mulhu        gp, s8, s2
                  sltu         t2, ra, a7
                  sltiu        s1, sp, -1981
                  c.addi       s1, -1
                  divu         a7, s6, t5
                  andi         s7, a4, 595
                  nop
                  sll          s8, t2, a3
                  and          gp, t1, a2
                  c.addi16sp   sp, 32
                  c.mv         gp, s8
                  or           zero, t3, a1
                  c.and        s0, a1
                  slli         s8, s11, 7
                  c.srli       a5, 25
                  c.addi16sp   sp, 80
                  remu         zero, s6, gp
                  xor          s1, a7, s3
                  c.add        a3, a7
                  c.li         s1, 1
                  c.li         s1, 1
                  mul          t6, s9, s3
                  sll          sp, t5, a4
                  mulh         t0, tp, s2
                  c.slli       s5, 30
                  sltiu        a3, a3, -661
                  rem          s2, s1, t5
                  srli         a1, a0, 19
                  c.addi4spn   a4, sp, 944
                  sltiu        s4, s2, -404
                  div          t1, s10, tp
                  sra          s0, s5, s2
                  slli         t5, s4, 30
                  slli         a7, s6, 6
                  add          s7, s5, zero
                  c.add        gp, ra
                  c.or         a0, a0
                  and          s7, sp, ra
                  slti         s0, t1, 31
                  srli         s10, s0, 15
                  lui          a6, 625405
                  slli         a3, a1, 29
                  slti         t4, s6, 457
                  sub          a3, s8, s4
                  sltiu        s1, t0, -536
                  c.andi       a1, 15
                  c.xor        s0, a1
                  and          a0, t0, s0
                  c.srai       a1, 11
                  div          a0, a1, a7
                  sltiu        s11, s0, -1222
                  c.or         a4, a3
                  c.slli       ra, 19
                  or           s10, s1, t6
                  xori         gp, a1, 1454
                  add          ra, a6, t1
                  sra          s2, s9, t2
                  c.srai       a4, 20
                  sra          s5, t2, t0
                  c.srli       a3, 5
                  mulh         s7, s0, t1
                  c.xor        s1, a4
                  auipc        t6, 256615
                  xori         a3, t1, -1263
                  c.or         a4, a5
                  lui          a1, 853937
                  c.lui        tp, 25
                  mulhu        a5, s2, s8
                  mulhsu       s8, s6, s3
                  slti         a6, s8, -1286
                  c.xor        a1, a4
                  xor          s7, t1, s6
                  c.li         tp, -1
                  srli         a6, t5, 14
                  addi         sp, s6, 54
                  c.andi       a5, -1
                  addi         sp, zero, -734
                  remu         s11, sp, t6
                  xor          t6, s4, a1
                  mulh         a5, s5, ra
                  sll          a3, sp, a5
                  c.lui        t1, 18
                  c.add        s5, s8
                  c.sub        a4, a5
                  c.xor        a0, a3
                  mulh         zero, s2, t6
                  sra          t4, a0, tp
                  or           s0, t4, s10
                  c.andi       a1, 31
                  srl          t0, a5, t0
                  div          tp, s11, s11
                  div          a4, ra, sp
                  ori          t1, ra, -1149
                  sltiu        zero, s9, 2025
                  slt          a4, t5, t5
                  srli         s0, t6, 0
                  srai         s3, t3, 5
                  mulhu        a4, s1, a5
                  slti         a7, s10, -1734
                  c.srai       a0, 30
                  or           s11, tp, s9
                  mulh         a0, a4, a3
                  div          tp, t0, sp
                  sub          s11, a0, t5
                  add          s7, t0, s3
                  c.srai       s0, 3
                  c.li         a7, -1
                  c.nop
                  c.and        s0, a5
                  slt          zero, tp, tp
                  mulhu        s0, s8, s4
                  c.sub        a5, a1
                  c.nop
                  c.lui        s0, 17
                  nop
                  slt          a6, s0, s1
                  remu         t4, t5, tp
                  c.and        s1, a3
                  xori         s3, t1, -480
                  c.and        s1, a1
                  divu         s3, a3, t0
                  slli         s6, a6, 2
                  srai         s10, s9, 23
                  auipc        t4, 18592
                  sll          gp, a4, t2
                  c.srli       a0, 25
                  c.li         t1, -1
                  xor          s4, sp, s10
                  c.xor        a0, a1
                  c.and        s0, a2
                  xor          a7, s9, a3
                  mulhu        s5, s0, s6
                  c.mv         t1, ra
                  c.slli       a3, 29
                  c.mv         tp, a1
                  srli         sp, tp, 22
                  c.lui        t2, 6
                  slti         t5, tp, -139
                  andi         a1, t3, 35
                  c.add        a5, s2
                  c.srli       s1, 14
                  c.sub        a1, a5
                  c.li         s4, -1
                  sltiu        s7, s11, -1300
                  andi         a3, t4, 1818
                  nop
                  slti         t0, a7, 2043
                  addi         s4, s3, -1767
                  c.add        tp, s0
                  c.slli       t0, 26
                  c.addi16sp   sp, -16
                  slt          s0, a0, s1
                  c.or         a3, a2
                  auipc        t2, 511612
                  c.add        a1, s11
                  remu         gp, a3, s2
                  c.xor        s0, a3
                  c.mv         a5, t2
                  sll          t4, s9, a0
                  rem          tp, s9, t2
                  srai         s2, a1, 31
                  c.mv         t2, a4
                  srl          a6, a4, s6
                  c.andi       a0, 14
                  srli         t5, s9, 26
                  add          s4, gp, a1
                  auipc        a1, 800881
                  c.xor        a5, a2
                  xori         s8, t4, 1967
                  slti         a4, s7, 1567
                  or           a7, s7, s2
                  nop
                  addi         t4, s6, -1276
                  sll          t6, s6, s3
                  c.srai       s0, 3
                  c.sub        a4, a4
                  divu         s8, t3, s10
                  c.srai       a3, 13
                  slt          s2, a2, t1
                  srli         t0, t4, 9
                  c.addi4spn   a1, sp, 720
                  c.nop
                  c.lui        gp, 9
                  and          s4, s2, s8
                  slt          s2, a1, a6
                  c.srli       s0, 27
                  slt          s11, a2, s6
                  c.andi       a0, 18
                  ori          t4, s3, -54
                  slt          s4, s1, s8
                  sltiu        a0, ra, -1340
                  c.lui        t4, 3
                  ori          s7, sp, -100
                  sll          a6, s2, s10
                  mulhu        t1, a6, s7
                  nop
                  c.mv         s8, s4
                  auipc        a1, 783427
                  xori         s4, s7, -485
                  slli         a3, t4, 20
                  c.addi       a6, -1
                  and          t5, s8, s5
                  c.lui        s8, 24
                  c.or         a3, a3
                  c.add        t5, a2
                  lui          gp, 634595
                  c.addi4spn   a3, sp, 336
                  or           s2, s2, a7
                  add          a5, s11, s2
                  sra          t6, s5, t1
                  mulhsu       a7, a6, a2
                  sltiu        s10, s3, 912
                  and          s10, t3, ra
                  ori          a1, sp, -1508
                  mulhu        s4, t1, s6
                  c.add        s6, s2
                  mulhsu       t4, s9, s8
                  c.srai       s0, 24
                  c.li         t4, 22
                  c.li         s6, 0
                  div          s1, s7, t2
                  slt          t2, s5, a0
                  ori          a3, a6, 2007
                  c.addi16sp   sp, 176
                  sub          a1, s6, gp
                  c.srli       a1, 14
                  c.mv         s11, s10
                  c.or         a5, a0
                  or           a5, s1, s7
                  c.li         t4, -1
                  addi         tp, a6, -1013
                  c.slli       a0, 20
                  slt          a0, s2, t1
                  sub          tp, s5, zero
                  slli         s5, s8, 17
                  auipc        a4, 10996
                  c.and        a0, a3
                  add          a6, s4, a0
                  srli         s5, s1, 31
                  c.addi16sp   sp, 16
                  c.srli       a0, 8
                  c.nop
                  c.sub        a3, a5
                  slti         s4, s10, -1400
                  slti         a6, s9, 1747
                  mulhsu       t0, s6, gp
                  sub          s6, a4, ra
                  c.srai       s1, 17
                  c.sub        a5, a1
                  andi         s3, t0, 834
                  sra          s11, a2, t1
                  c.mv         a7, a5
                  ori          s4, a6, -354
                  xori         t0, s10, 721
                  addi         s7, s0, 198
                  c.nop
                  c.lui        s11, 20
                  divu         tp, gp, a0
                  auipc        t4, 49894
                  ori          t5, s7, -1562
                  div          a7, sp, s3
                  remu         a5, a3, a0
                  c.xor        s0, s0
                  c.addi4spn   a0, sp, 880
                  xori         t2, a0, 1391
                  sll          s6, s11, a4
                  slti         t4, a7, -1159
                  slti         t1, zero, -1760
                  c.sub        a4, s0
                  xor          a5, s9, s7
                  div          t2, t1, s7
                  srai         s11, t2, 27
                  auipc        s5, 305298
                  slti         s3, s7, -13
                  c.mv         s6, a3
                  slt          a7, s4, a0
                  and          s4, t0, a6
                  c.li         a5, -1
                  mulhsu       t4, a3, s9
                  div          a0, a4, a1
                  sll          a3, s10, a7
                  mulhu        s8, s11, t6
                  lui          t4, 388533
                  xori         s3, tp, -65
                  c.mv         a7, s4
                  c.sub        s0, a0
                  c.lui        ra, 31
                  lui          t5, 244819
                  andi         s5, s11, -483
                  slli         s11, ra, 16
                  sra          gp, s6, tp
                  auipc        s5, 491727
                  srl          a0, gp, t2
                  srai         t5, a1, 29
                  lui          a1, 292427
                  c.addi4spn   s0, sp, 416
                  nop
                  slt          s3, t0, s8
                  lui          tp, 436717
                  c.slli       a3, 6
                  c.addi16sp   sp, 320
                  remu         s2, s6, t3
                  c.mv         s6, a5
                  sra          s5, a4, sp
                  c.slli       a4, 18
                  rem          s11, t5, s1
                  c.andi       s0, 12
                  add          s10, s3, t4
                  srl          s0, t5, t5
                  sltiu        t0, t1, -1220
                  div          s8, s0, t2
                  c.and        a5, s1
                  slli         t0, s8, 2
                  xori         s4, tp, -228
                  remu         s10, s1, zero
                  srl          ra, sp, t2
                  lui          a1, 118677
                  mulhu        s6, ra, s8
                  sll          s8, s2, t6
                  sub          s10, t0, a1
                  nop
                  c.addi       t1, 24
                  xori         s3, s5, 76
                  sltiu        t5, t0, -451
                  c.and        s1, a1
                  sra          s6, t0, a2
                  c.nop
                  c.srai       s0, 26
                  lui          s4, 568700
                  or           s8, zero, t3
                  xori         a5, ra, 2012
                  c.and        a0, a0
                  c.sub        a1, a2
                  c.li         s11, -1
                  c.xor        a5, s1
                  xori         a3, a6, -1392
                  sltiu        t5, t3, 1808
                  rem          t6, t3, t1
                  sra          t6, s10, s4
                  addi         sp, s11, 1357
                  sltu         a1, gp, s4
                  srli         s1, ra, 29
                  sltu         s5, t2, a0
                  c.addi4spn   a4, sp, 544
                  c.addi       s11, 13
                  addi         s10, t4, -1956
                  remu         tp, t2, s6
                  or           a7, a7, sp
                  c.addi16sp   sp, -16
                  srai         s5, sp, 21
                  lui          t4, 913344
                  slli         t5, t6, 21
                  c.srai       a4, 13
                  c.srli       a5, 15
                  c.or         a5, s0
                  c.li         s1, 3
                  c.mv         t2, a5
                  sub          a1, s3, a6
                  c.addi4spn   a0, sp, 176
                  and          t4, s4, a3
                  c.add        s1, ra
                  divu         s11, zero, s4
                  lui          s1, 956934
                  c.nop
                  ori          sp, a4, 833
                  mulh         zero, t2, a5
                  divu         s5, t6, a5
                  c.li         s7, 5
                  or           s7, t4, gp
                  c.lui        a5, 1
                  c.or         a3, s1
                  rem          s0, a1, a4
                  addi         a1, gp, -1020
                  sra          t6, a7, t3
                  mulh         ra, s8, a4
                  c.mv         tp, t5
                  c.addi16sp   sp, 80
                  c.nop
                  and          s2, a5, s9
                  divu         zero, s6, t1
                  srli         s7, t5, 17
                  c.or         a3, a4
                  xor          a4, t5, a5
                  mulhu        t5, t4, a6
                  c.li         a5, -1
                  c.addi16sp   sp, -16
                  srli         s6, t6, 1
                  sltu         a6, s8, t4
                  c.add        a6, s8
                  srli         tp, ra, 21
                  c.addi4spn   a5, sp, 544
                  nop
                  c.xor        s0, a0
                  and          zero, ra, t2
                  c.addi16sp   sp, 288
                  xor          a0, s10, s9
                  slt          a0, t4, t4
                  c.addi16sp   sp, -16
                  sll          s3, tp, a0
                  div          sp, s7, s3
                  div          s8, a5, t5
                  c.srli       a1, 15
                  slt          gp, s6, t6
                  c.lui        s2, 15
                  mulh         s10, a4, t1
                  sub          s3, s11, s4
                  c.addi4spn   a4, sp, 240
                  slli         s7, a7, 25
                  slli         s8, s6, 13
                  ori          a6, t6, 1066
                  slli         t5, t4, 14
                  mulhsu       t6, a0, s9
                  sltiu        a6, t4, -949
                  remu         s1, a3, t2
                  xor          a1, a2, a2
                  mulhsu       t1, gp, s2
                  srai         s4, a1, 3
                  c.srli       a0, 11
                  sltu         t5, a1, s6
                  add          a3, t1, gp
                  slti         s0, s4, -1784
                  c.li         t0, 28
                  mulh         a4, sp, s1
                  c.andi       a4, 9
                  xor          t6, s4, s2
                  c.and        a5, a1
                  c.addi16sp   sp, -16
                  srai         s10, a6, 20
                  c.li         tp, -1
                  addi         gp, a2, -1489
                  c.lui        t4, 12
                  sltiu        s4, ra, -991
                  c.or         a5, a4
                  c.xor        a5, s1
                  andi         s3, s7, 364
                  c.addi16sp   sp, 80
                  sub          t2, t1, a4
                  div          zero, s8, s2
                  auipc        s2, 541749
                  and          sp, s2, ra
                  rem          s6, s2, s7
                  srl          gp, s5, s9
                  c.lui        a4, 24
                  c.sub        a0, a0
                  c.andi       a4, -1
                  andi         t6, a3, 1069
                  divu         a1, a1, s6
                  or           t2, s9, a1
                  c.mv         a5, t6
                  c.lui        a4, 14
                  c.srli       a1, 15
                  c.nop
                  srli         t4, tp, 25
                  slti         a1, a5, 1754
                  mulhsu       s10, tp, a7
                  srai         s0, s2, 27
                  add          s0, a1, t2
                  ori          t0, t6, 768
                  sltu         a4, a2, a7
                  c.srli       s1, 5
                  andi         a4, s6, -556
                  c.sub        s0, a2
                  sra          a0, a4, sp
                  c.add        a6, sp
                  c.addi       t4, -1
                  c.srli       a5, 3
                  sll          s5, a7, s3
                  rem          t2, a0, s8
                  ori          tp, t0, -149
                  c.slli       s1, 27
                  sltiu        s4, tp, 59
                  c.nop
                  c.addi4spn   a1, sp, 480
                  c.lui        a6, 8
                  sra          a3, s4, a7
                  c.andi       s1, 7
                  nop
                  c.xor        a3, a2
                  addi         s10, a2, 549
                  div          s2, t4, gp
                  c.mv         t0, s11
                  mulhsu       t0, ra, t6
                  nop
                  c.lui        a1, 22
                  c.slli       s6, 18
                  slti         a3, gp, 1404
                  xori         t2, s1, 583
                  srli         s4, t3, 0
                  sll          t5, a6, tp
                  mulh         t4, a5, t1
                  c.addi16sp   sp, -16
                  add          s5, s0, s2
                  sltu         s8, s2, a3
                  nop
                  sltu         a1, s1, a3
                  srl          s4, zero, tp
                  c.srli       s0, 14
                  c.xor        a5, a5
                  addi         s7, s10, -658
                  c.addi4spn   a0, sp, 752
                  c.or         a0, a5
                  srai         t0, a4, 3
                  c.and        a1, a4
                  c.sub        a1, a5
                  c.addi16sp   sp, 464
                  sll          a7, s10, t1
                  sll          t0, ra, t6
                  mulh         s2, a2, s7
                  srai         sp, a7, 8
                  nop
                  c.and        s0, s1
                  slt          a6, s7, t2
                  ori          s6, s0, -1193
                  mul          t1, t5, t4
                  or           s10, t4, s7
                  li           a3, 0x80000000 #start riscv_int_numeric_corner_stream_31
                  li           t2, 0x7f0fe62a
                  li           s10, 0x80000000
                  li           a0, 0x426740cf
                  li           a1, 0x1e2007e6
                  li           s6, 0x0
                  li           ra, 0x80000000
                  li           s1, 0xf47e9004
                  li           gp, 0x80000000
                  li           t6, 0x52c13cfa
                  rem          t6, a0, t2
                  div          ra, s10, a0
                  remu         s6, a0, s10
                  mulhu        a1, s1, a0
                  lui          ra, 185529
                  mulhu        a3, s6, t6
                  divu         a3, s10, a1
                  mulhu        s10, s6, s1
                  mul          a3, a0, t2
                  div          a0, a1, s1
                  mul          s10, a0, s1
                  addi         s10, s10, -1084
                  mulhu        gp, s6, t6
                  mulhsu       ra, a0, t2
                  mul          gp, s6, s1
                  add          s6, s6, a1
                  remu         s6, ra, t6
                  addi         s6, s10, -79
                  rem          a3, a3, gp
                  remu         s6, a3, s10
                  mulhu        s6, s10, t6 #end riscv_int_numeric_corner_stream_31
                  c.lui        t5, 15
                  c.srai       a1, 17
                  lui          a1, 391947
                  sra          tp, a5, s3
                  addi         s5, s7, 886
                  xor          t4, gp, t2
                  c.or         a3, a0
                  sra          gp, gp, a2
                  mulhu        a5, sp, t2
                  xor          sp, a2, s9
                  lui          s6, 755099
                  xor          t0, s6, s9
                  c.mv         s11, tp
                  and          s11, sp, t3
                  div          t4, t3, s11
                  sll          s5, t0, a5
                  sra          a7, gp, zero
                  c.sub        a4, a4
                  nop
                  srli         t5, t4, 28
                  sll          s11, a1, s8
                  c.or         a3, a5
                  div          a5, t4, t6
                  sltiu        a3, t0, -1849
                  auipc        t0, 1000644
                  c.or         a0, s1
                  c.or         a5, s1
                  mulh         a6, sp, s11
                  srai         zero, t4, 15
                  slti         a3, a6, 1437
                  sltu         a0, a0, s9
                  mulhsu       s5, s6, a1
                  div          a0, t1, s0
                  mulhu        a3, a5, gp
                  c.srai       a5, 7
                  auipc        a3, 812979
                  c.mv         ra, t3
                  or           s8, t3, t6
                  remu         a5, t4, t6
                  sub          s8, a0, s3
                  c.srli       s0, 12
                  andi         a4, a1, 218
                  divu         a3, t2, t0
                  sub          a7, t6, sp
                  c.sub        a0, a2
                  slli         tp, sp, 17
                  c.xor        a3, s0
                  c.or         a3, a1
                  c.or         a3, a4
                  div          s10, s9, tp
                  slli         tp, s11, 17
                  srli         s11, t0, 20
                  slti         t5, s2, 1559
                  c.li         s11, -1
                  c.li         s11, -1
                  auipc        t0, 470011
                  srl          a3, t2, a0
                  xor          t4, s8, s11
                  c.add        s3, s7
                  or           s11, t4, s1
                  lui          s3, 925291
                  c.add        t1, s10
                  nop
                  mulhu        zero, a1, t4
                  slli         s5, s7, 6
                  c.or         a5, s0
                  srai         s11, s6, 6
                  nop
                  c.addi4spn   s0, sp, 736
                  rem          t6, t5, t3
                  mulhsu       t5, a1, t6
                  c.xor        s0, a0
                  ori          t5, t5, 1275
                  c.mv         s2, s4
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  add          s4, tp, tp
                  c.li         s5, -1
                  c.add        a5, a2
                  mulhsu       tp, sp, a5
                  c.li         s7, -1
                  mulhsu       s11, s9, tp
                  srli         sp, s7, 10
                  sub          ra, a2, zero
                  rem          s7, s0, s0
                  c.addi16sp   sp, 336
                  rem          sp, a1, s3
                  mulh         a7, tp, s8
                  mulhsu       t5, t5, zero
                  ori          s11, s11, -785
                  srli         s3, a1, 24
                  c.sub        a1, a5
                  c.or         a3, a5
                  c.add        t4, t1
                  c.xor        a3, a5
                  c.addi16sp   sp, 176
                  rem          s6, s0, t1
                  sub          sp, t0, t6
                  c.xor        a3, a2
                  mulhu        s4, a1, a0
                  c.sub        s0, s0
                  slti         sp, sp, 1399
                  or           a0, t3, s1
                  c.addi       tp, 6
                  c.srai       a1, 17
                  sub          s8, zero, a2
                  nop
                  slti         s11, s6, -1721
                  or           a5, zero, a1
                  c.mv         t5, a7
                  sltiu        a7, a2, 1974
                  c.and        s0, a2
                  srai         t1, a5, 15
                  sra          a1, a6, t4
                  srli         a7, t5, 13
                  sltu         s1, s3, gp
                  div          a6, t5, s0
                  or           t6, s9, tp
                  c.slli       a7, 16
                  or           gp, t2, t2
                  sll          a1, t5, t5
                  c.and        a1, a0
                  c.mv         a4, t0
                  divu         t6, t5, a6
                  remu         s6, a1, s1
                  sll          s8, a5, s0
                  andi         sp, a4, 613
                  c.slli       a1, 23
                  slli         s6, t6, 19
                  and          s11, t3, ra
                  mulhsu       s4, t6, s5
                  addi         s0, s9, 1462
                  c.srai       a4, 2
                  c.slli       s4, 30
                  srai         s7, s3, 25
                  sltiu        s1, s9, 341
                  srli         s4, s6, 11
                  c.mv         a6, s9
                  andi         s6, a0, -335
                  and          s8, t5, a3
                  add          s0, s11, t2
                  c.andi       a4, 10
                  nop
                  c.srli       a3, 8
                  remu         t2, a7, zero
                  sltu         a4, a1, a1
                  rem          ra, a1, gp
                  slt          s4, s9, t3
                  slti         a4, s1, -1219
                  slti         t4, a5, 161
                  or           s4, t5, s6
                  slt          s11, t1, s3
                  c.and        s1, a2
                  c.li         sp, 20
                  rem          a4, s1, t3
                  c.slli       s1, 2
                  nop
                  mulh         s1, s0, s2
                  c.lui        tp, 31
                  slt          a6, sp, t0
                  sra          s10, a5, s6
                  mul          t4, s9, ra
                  addi         ra, sp, -136
                  mulhsu       t5, tp, a3
                  ori          s2, s8, 333
                  c.srli       s0, 14
                  remu         s1, s5, a6
                  or           a3, a5, s3
                  c.sub        s1, a0
                  or           a4, s0, ra
                  addi         zero, t6, -1772
                  srli         tp, a1, 8
                  ori          a3, tp, -440
                  slli         s3, t6, 2
                  sltiu        s0, s10, 307
                  mul          ra, t1, t0
                  sra          a0, s2, a0
                  c.or         a4, a1
                  c.lui        a0, 11
                  c.or         a1, a1
                  c.addi       s7, -1
                  remu         t1, a1, a4
                  mulhsu       t2, s8, t3
                  add          s8, a2, s4
                  auipc        s0, 839509
                  sll          a1, ra, t6
                  or           t2, a2, tp
                  sltiu        a3, s10, 1154
                  c.lui        t6, 20
                  mulh         a3, a3, t3
                  c.mv         t1, s0
                  sra          s5, s7, a5
                  mulhsu       s2, zero, s9
                  nop
                  c.or         a4, a0
                  slli         sp, tp, 5
                  mul          t4, a5, s1
                  c.addi4spn   a3, sp, 720
                  remu         gp, s2, t0
                  andi         t2, a3, 1067
                  slti         s3, s9, 613
                  c.or         s0, a2
                  c.addi4spn   a1, sp, 816
                  c.addi       a0, -1
                  sll          a4, t1, s1
                  rem          s4, t1, t0
                  c.li         sp, 8
                  auipc        t5, 556266
                  div          s8, zero, s11
                  sub          a6, a4, a7
                  remu         a0, a5, s6
                  sll          s10, s5, gp
                  auipc        a4, 53393
                  slti         t2, s7, 743
                  c.srli       a0, 5
                  sra          s6, t5, tp
                  sra          t6, s8, a5
                  c.and        a4, a2
                  c.srai       a1, 20
                  srl          t0, t4, s7
                  rem          tp, s2, zero
                  addi         s7, s8, -1767
                  c.sub        a4, a1
                  mulhsu       tp, ra, s5
                  c.addi16sp   sp, -16
                  or           s10, zero, s6
                  li           t1, 0xffffffff #start riscv_int_numeric_corner_stream_27
                  li           a1, 0x74c18f83
                  li           s5, 0x0
                  li           t0, 0x0
                  li           s7, 0xffffffff
                  li           t2, 0x0
                  li           a4, 0xffffffff
                  li           t4, 0x0
                  li           a5, 0x87ec2c4e
                  li           s10, 0xffffffff
                  div          s10, a4, t0
                  lui          t1, 822329
                  sub          a4, s5, t2
                  addi         a5, s10, -64
                  rem          s10, t1, t0
                  lui          s7, 698128
                  addi         a4, t4, 508
                  mulhsu       s7, a1, a5
                  mul          s5, s10, t1
                  remu         s7, t2, a1
                  sub          s10, t2, a4
                  sub          a4, s10, a1
                  rem          t4, t1, a1
                  nop
                  lui          s10, 849290
                  lui          a5, 549353
                  rem          s10, t4, t2
                  divu         t0, a4, t2
                  mul          t0, t4, a5
                  remu         t1, t4, t0
                  rem          t4, a5, s10
                  div          s5, a4, a1
                  mulhu        a1, t0, a1
                  mulhu        t4, s5, t4
                  rem          a1, s5, a1
                  lui          s7, 889354
                  nop
                  mulhu        s10, t4, t2
                  div          t2, t4, t1 #end riscv_int_numeric_corner_stream_27
                  divu         s7, a2, s1
                  sra          sp, gp, t3
                  div          t2, s7, s2
                  slti         s8, a6, 273
                  c.addi4spn   a3, sp, 864
                  divu         s11, sp, s5
                  c.li         s1, -1
                  auipc        s4, 871126
                  divu         t4, t3, s6
                  c.addi       s5, -1
                  lui          s4, 764883
                  or           tp, a7, a3
                  mulhu        s4, a6, a3
                  sltu         t4, ra, t3
                  sltu         tp, s7, s0
                  mulh         t4, s5, tp
                  slt          s7, gp, a1
                  c.mv         s0, a7
                  mulhu        s11, a0, a4
                  c.addi4spn   s1, sp, 240
                  add          a3, a6, s8
                  c.and        a1, a0
                  sub          a7, s1, t5
                  c.add        t4, s4
                  rem          tp, s2, sp
                  c.srai       s0, 25
                  srli         a1, a6, 2
                  c.sub        a0, s1
                  xor          s7, t6, a0
                  c.and        a4, a2
                  c.nop
                  rem          a1, ra, s5
                  slt          s1, s2, s4
                  mulhu        s0, a2, a2
                  c.xor        a0, a1
                  and          a1, s8, a7
                  srai         a4, sp, 13
                  remu         s3, s0, s3
                  c.andi       a0, -1
                  c.slli       s11, 12
                  mulh         s5, s4, zero
                  remu         sp, s8, a4
                  c.and        s0, a5
                  sltu         s0, a0, a2
                  nop
                  sub          a7, s3, a1
                  c.sub        a1, s0
                  or           a7, t4, a3
                  c.nop
                  mulh         a4, s4, t4
                  c.and        a5, a1
                  mulhsu       s10, s6, a4
                  srai         t4, a5, 12
                  slt          s0, s2, s5
                  c.srli       a5, 18
                  srai         tp, a1, 10
                  c.andi       s1, 5
                  srli         s2, s1, 8
                  auipc        a4, 986150
                  mul          s5, zero, zero
                  sltu         t6, a0, s4
                  mulhsu       a5, t3, t3
                  or           a1, s8, s9
                  c.sub        s1, a3
                  lui          s4, 1016266
                  nop
                  sltiu        t1, a3, 219
                  remu         s5, s1, a1
                  c.mv         s10, s3
                  c.addi4spn   s0, sp, 800
                  ori          t1, s6, -1830
                  add          s6, a1, s2
                  or           s8, s1, tp
                  srl          t4, a1, s11
                  c.andi       a3, 16
                  div          t2, sp, gp
                  c.mv         s1, a5
                  mul          s11, a0, tp
                  add          a7, zero, s8
                  slt          t4, s10, a1
                  sll          tp, a7, a1
                  c.andi       a3, 9
                  sltiu        a4, a1, -404
                  c.addi4spn   a4, sp, 128
                  or           t6, ra, s5
                  c.add        s8, s2
                  xori         s1, t0, 1104
                  c.xor        a5, a4
                  andi         sp, a3, -1865
                  xori         t6, s1, -1186
                  srli         a5, t0, 16
                  xori         tp, s0, -404
                  c.sub        s0, a2
                  sltu         a7, s0, s1
                  auipc        s1, 54116
                  c.srli       a4, 29
                  or           t2, s7, t4
                  slli         gp, t3, 3
                  mulh         zero, s11, ra
                  c.srli       a3, 26
                  c.andi       a0, -1
                  sll          gp, s9, s7
                  c.or         a3, a5
                  srl          ra, t2, ra
                  c.addi16sp   sp, 32
                  addi         t6, a0, -1614
                  c.add        ra, a0
                  andi         t1, s8, -1407
                  sub          a4, s7, t0
                  andi         a3, s9, 185
                  srai         a6, t6, 7
                  and          t2, t3, s1
                  div          s3, t0, s2
                  mul          t1, a6, t1
                  auipc        a4, 280238
                  or           t6, t6, s10
                  c.andi       s0, 5
                  mul          a6, t3, s0
                  xor          t5, s9, gp
                  sltu         a6, t2, t3
                  sltiu        s0, zero, -229
                  rem          s5, t2, t1
                  addi         t1, t0, 1372
                  mulh         ra, a1, s10
                  c.sub        s1, a4
                  mul          a3, a0, zero
                  div          t4, s11, t5
                  c.li         t4, -1
                  srl          t5, a5, t2
                  div          t1, sp, t2
                  addi         a7, t3, -68
                  and          s8, s4, s11
                  sub          gp, s0, s5
                  xor          s10, sp, s2
                  c.add        gp, s1
                  mulhu        s11, tp, s11
                  c.and        a1, a4
                  sra          s1, s6, s3
                  slti         s8, tp, 1581
                  srai         t0, t0, 25
                  ori          s5, tp, -1181
                  c.add        s5, s6
                  nop
                  c.and        a4, s0
                  xori         t6, a0, 2013
                  c.or         a3, a1
                  c.andi       a0, 9
                  c.and        s0, a1
                  c.lui        s10, 11
                  sub          s4, t6, s0
                  xori         s4, t6, -1827
                  remu         s1, a4, a7
                  rem          t4, s3, t4
                  c.or         s0, a1
                  c.mv         t2, s4
                  sub          s4, t6, s7
                  divu         a0, s8, t4
                  c.lui        s4, 28
                  srai         a0, s1, 19
                  sltiu        a3, s6, 1375
                  nop
                  c.srai       a1, 19
                  c.slli       a3, 21
                  mulhsu       s4, t6, t2
                  c.add        t4, s1
                  c.srai       a1, 22
                  slli         s8, s6, 0
                  slt          t4, s0, s1
                  c.slli       s1, 15
                  srl          gp, a1, a6
                  sll          s6, a5, a1
                  xor          a4, gp, t0
                  sltiu        a6, a1, -1715
                  ori          sp, s11, 1717
                  remu         s5, s2, a1
                  mulhu        gp, a0, s3
                  or           s11, s11, s3
                  addi         a4, s6, -913
                  sub          s3, a1, a4
                  divu         t1, s2, a1
                  c.addi4spn   a3, sp, 912
                  c.xor        s1, a2
                  c.sub        a5, a4
                  remu         s3, a7, s0
                  c.add        a3, a2
                  c.add        a4, t2
                  c.or         s0, a2
                  c.andi       s1, 19
                  c.srli       a3, 5
                  mul          s11, tp, a4
                  c.and        a3, s1
                  sll          tp, s6, s3
                  div          s2, s11, s5
                  c.sub        s1, a4
                  srl          s5, s3, s0
                  c.lui        s8, 21
                  xori         s3, s3, 1194
                  and          ra, s4, s6
                  c.sub        a0, a2
                  or           a5, sp, s3
                  c.srai       a4, 22
                  or           s4, a4, zero
                  c.addi       t2, -1
                  c.add        t4, a1
                  rem          tp, s9, a0
                  slli         gp, t2, 13
                  auipc        s1, 347455
                  sll          s10, t2, tp
                  nop
                  slti         s11, a0, -96
                  remu         s10, s8, gp
                  c.xor        a1, a5
                  sll          t0, t6, s11
                  sub          s3, t4, ra
                  auipc        t0, 91578
                  lui          s3, 13445
                  c.slli       s0, 20
                  and          a6, t2, a6
                  c.addi16sp   sp, -16
                  xori         gp, s10, 1924
                  addi         t0, s5, 598
                  c.add        a5, t1
                  sltu         a4, s9, s3
                  addi         s2, s11, -259
                  c.slli       a3, 9
                  c.or         a1, a2
                  mulhu        s0, s9, s9
                  srl          t0, a4, gp
                  c.srai       s1, 22
                  auipc        s4, 508732
                  c.andi       a5, 10
                  c.or         a1, s0
                  slti         t4, a0, 1774
                  srai         sp, t1, 11
                  c.lui        a4, 4
                  c.or         a1, s1
                  div          s5, s9, t4
                  sra          t2, a2, a2
                  mulhsu       tp, a7, s6
                  mul          s10, t5, s0
                  xori         s7, s0, 602
                  srl          s5, zero, tp
                  c.andi       a3, 9
                  mulhu        gp, ra, a2
                  c.andi       s1, -1
                  c.and        a0, s0
                  sltu         t4, s1, t4
                  srli         a0, zero, 17
                  sltiu        t4, a3, 1075
                  c.li         t5, -1
                  add          a3, s5, t3
                  slt          a7, t3, t5
                  slti         a0, a4, 2019
                  c.srai       s1, 28
                  div          s4, tp, t2
                  mulhu        a7, a2, s5
                  lui          s8, 628717
                  c.andi       a4, -1
                  sltiu        s0, gp, -317
                  nop
                  c.xor        a5, a3
                  slti         a5, t4, 1843
                  c.mv         t2, t5
                  mulhu        t4, sp, zero
                  andi         s0, s9, -1416
                  sltu         zero, s3, gp
                  remu         a4, s7, t4
                  c.and        s0, s1
                  div          t4, sp, s7
                  c.srli       a1, 31
                  slti         a0, t3, -627
                  c.srli       s0, 4
                  c.srai       s0, 19
                  or           s7, s6, sp
                  sll          s10, a7, s5
                  addi         tp, a6, -1347
                  mulhu        tp, a6, t6
                  c.and        s0, a2
                  slli         a3, a2, 29
                  div          t0, s2, s6
                  auipc        t5, 305748
                  mulh         zero, s5, a4
                  mulhsu       t1, t4, sp
                  sll          zero, s10, s9
                  or           t6, s7, zero
                  c.and        a3, a3
                  c.li         a3, 21
                  sra          t2, a4, a6
                  c.andi       a1, -1
                  srli         s10, sp, 10
                  slti         a6, gp, 521
                  c.sub        a4, a5
                  c.add        gp, a0
                  mulhu        s5, s9, s4
                  andi         s7, a0, 570
                  c.mv         s6, sp
                  nop
                  c.and        a3, a2
                  mulhu        s8, a0, a5
                  c.sub        s1, a5
                  c.nop
                  c.lui        s2, 28
                  slli         a5, t4, 27
                  c.srli       a5, 11
                  ori          s11, t0, -1860
                  c.add        sp, s4
                  div          t5, a3, s2
                  mulhu        s5, a2, zero
                  mulhsu       s2, zero, gp
                  c.addi16sp   sp, 336
                  srli         a7, t1, 27
                  sltiu        s11, s1, 1600
                  c.addi       t5, 11
                  c.or         a3, a2
                  nop
                  or           sp, ra, s6
                  sll          tp, a3, a1
                  divu         s11, a5, t4
                  c.and        a1, a1
                  c.li         sp, 14
                  addi         a4, t1, 1274
                  xor          a5, a0, s7
                  slli         a0, s6, 6
                  c.slli       t6, 23
                  rem          a7, a6, ra
                  c.srli       a0, 19
                  c.addi4spn   a3, sp, 864
                  sltiu        t5, a1, 860
                  c.addi       s11, -1
                  mulhsu       zero, s7, s0
                  mulhsu       a7, a6, s9
                  addi         s11, s0, -424
                  c.and        a5, a4
                  c.li         t5, -1
                  sltu         s1, t2, gp
                  c.addi       a1, -1
                  lui          s0, 288197
                  c.srai       a4, 4
                  c.addi4spn   s1, sp, 16
                  ori          t4, a1, -873
                  rem          t4, t2, tp
                  srl          s6, t2, t2
                  remu         t6, t4, s3
                  add          s7, ra, zero
                  xori         sp, a0, 1308
                  srl          ra, s3, gp
                  nop
                  sub          s6, a2, s9
                  c.li         s8, 11
                  or           s8, t4, t4
                  srl          s2, t2, s0
                  rem          s4, a0, tp
                  div          a6, a5, s8
                  c.srli       a3, 8
                  sub          t0, s0, a3
                  sll          s4, s11, zero
                  auipc        t2, 144022
                  c.sub        s0, a2
                  slti         t2, t5, 857
                  and          a3, a5, sp
                  c.mv         t5, t3
                  lui          t2, 807888
                  div          t5, s4, a4
                  mul          t4, t3, ra
                  mulhu        s11, t0, t1
                  c.addi       sp, -1
                  mul          tp, ra, tp
                  c.srai       a0, 11
                  auipc        t4, 362689
                  div          s8, a4, t1
                  mulh         t0, sp, t2
                  slt          t1, s8, t5
                  mulhu        a3, s5, a5
                  ori          s3, a0, 1456
                  c.addi4spn   a4, sp, 448
                  c.slli       a0, 15
                  c.xor        a5, a0
                  sra          a5, s10, t2
                  c.sub        a3, a5
                  srai         s8, t1, 2
                  remu         t5, s6, s1
                  remu         s1, t0, s1
                  srli         gp, a3, 11
                  auipc        a7, 267644
                  sra          zero, s6, t3
                  c.and        a4, a2
                  sub          s1, s8, s0
                  c.slli       a4, 1
                  sltu         ra, s0, ra
                  add          a1, sp, a3
                  ori          s3, s1, -924
                  c.xor        a3, a5
                  c.srai       a3, 11
                  mulhsu       t6, t1, s3
                  remu         s11, s7, t3
                  c.andi       a0, 23
                  sltu         s6, s1, sp
                  c.addi       a0, -1
                  or           s10, s5, tp
                  div          a6, sp, a4
                  lui          t0, 790221
                  mulhsu       a6, a5, s11
                  div          tp, a0, s4
                  ori          gp, a7, -713
                  sltiu        a0, s10, -1614
                  c.mv         s2, s2
                  c.and        s0, a1
                  c.sub        a4, a2
                  div          zero, a7, t1
                  mulhsu       t5, s6, a2
                  mulhsu       s5, t1, t6
                  slt          a4, s2, t5
                  or           s11, a6, a7
                  c.addi4spn   a5, sp, 816
                  c.add        a7, s0
                  c.xor        a5, s1
                  c.or         s1, a3
                  c.li         s5, -1
                  c.and        s1, s1
                  add          s0, a0, zero
                  andi         s8, s7, -738
                  c.addi16sp   sp, -16
                  add          s3, s3, s10
                  xor          s0, a3, s8
                  slti         a7, zero, 460
                  lui          s11, 1021991
                  mulhu        t4, ra, s7
                  srai         sp, a4, 29
                  srai         a3, a5, 4
                  sll          t4, a3, s2
                  c.srli       a0, 26
                  mulhu        a7, s9, ra
                  mul          a3, sp, a4
                  c.add        s0, t5
                  c.mv         s1, s10
                  div          s8, t4, s0
                  sltiu        a5, t0, -1464
                  slli         sp, t5, 12
                  sll          a7, t2, a7
                  c.addi       s1, 7
                  sra          t5, a6, s8
                  remu         a7, a1, zero
                  c.lui        a3, 2
                  addi         s11, a0, -1965
                  or           sp, t5, t2
                  mulhsu       a0, s9, t4
                  auipc        s11, 269713
                  slti         s7, gp, -1505
                  srl          t6, s2, s5
                  mulhsu       s11, s5, t3
                  remu         sp, a5, a6
                  sltu         a1, s9, t0
                  c.add        t1, a3
                  c.and        a3, a1
                  c.addi16sp   sp, 448
                  mul          a1, a4, s1
                  srli         t0, s4, 30
                  c.srai       s0, 18
                  slti         a6, s2, -873
                  c.sub        a1, a0
                  remu         t2, t6, t0
                  srl          a0, s6, t0
                  divu         t1, s11, a1
                  xori         t2, gp, -330
                  c.sub        s0, a2
                  c.sub        a1, a5
                  sub          s3, ra, s4
                  mulhsu       a1, s5, t5
                  addi         ra, s4, 1672
                  sltu         a4, gp, s7
                  c.slli       s7, 19
                  srl          t2, s8, s1
                  slt          t4, ra, s11
                  nop
                  nop
                  rem          s11, s0, a2
                  remu         s11, s11, t5
                  srai         t6, s1, 15
                  srai         s10, ra, 5
                  c.add        a1, s6
                  c.or         a3, a3
                  mul          s5, s8, a5
                  c.andi       s1, -1
                  and          s3, s0, s7
                  and          s10, s9, s5
                  c.nop
                  mulhu        tp, ra, t0
                  c.addi       a3, -1
                  slti         s4, s0, 301
                  sltu         t2, t1, a0
                  andi         t1, s5, -1628
                  c.addi16sp   sp, -16
                  xor          t6, a2, t3
                  sra          s5, t6, a5
                  c.and        a0, s1
                  c.add        s11, t1
                  c.or         a1, s0
                  mul          t5, t4, t1
                  srl          t4, s1, t5
                  andi         t0, s11, -1924
                  xor          s0, a7, a2
                  andi         t2, s9, 1380
                  slli         t2, t1, 29
                  c.addi4spn   a4, sp, 208
                  add          t1, s6, t5
                  slt          t5, a6, t1
                  mulhsu       t2, s5, s4
                  c.lui        a4, 16
                  mulh         s8, s1, a3
                  sltu         a1, gp, s7
                  c.add        tp, t0
                  c.or         s1, a3
                  auipc        s5, 633275
                  c.srli       a0, 11
                  sra          a4, a0, a6
                  srl          s2, a1, ra
                  div          s2, ra, s5
                  sub          a3, s0, s6
                  srl          s4, s0, ra
                  mulh         a7, a2, t0
                  add          s5, a6, t4
                  c.mv         s2, s9
                  remu         s10, t4, zero
                  sub          t4, a4, s2
                  sltiu        s8, tp, 608
                  srli         a4, s6, 0
                  c.xor        s1, a3
                  sll          s4, a2, a0
                  xori         s2, s2, -768
                  xori         sp, t5, 1113
                  auipc        sp, 534627
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 560
                  div          s1, sp, tp
                  srai         zero, s0, 8
                  sra          sp, t1, s1
                  c.add        a3, t2
                  andi         t4, t5, 561
                  c.mv         s11, a1
                  slti         s4, t6, 30
                  divu         a7, a1, ra
                  srl          a5, t6, s6
                  or           tp, t1, a4
                  sltu         a3, s3, tp
                  c.xor        s1, s0
                  sub          s8, t2, a3
                  slt          s0, a3, s2
                  srai         s2, a4, 4
                  andi         a4, s7, -669
                  sra          s8, a0, s5
                  ori          s3, s10, 652
                  slt          a3, s11, zero
                  c.srli       a0, 17
                  nop
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_33
                  li           t4, 0x29bfacc7
                  li           t5, 0x607d2b37
                  li           s0, 0xffffffff
                  li           a0, 0x0
                  li           tp, 0xffffffff
                  li           s1, 0x80000000
                  li           gp, 0x80000000
                  li           a5, 0x0
                  li           a7, 0xb230e9e
                  div          a5, t5, gp
                  mulh         tp, tp, s1
                  lui          gp, 179725
                  remu         t4, a6, a5
                  mulhu        a6, s1, a0
                  sub          gp, tp, t5
                  lui          gp, 231749
                  mulhu        t5, a5, s0
                  add          tp, tp, a0
                  div          a5, gp, s0
                  addi         gp, a7, 1351
                  add          a6, a5, t4
                  rem          t5, t5, a0
                  mulh         t5, t5, a6
                  sub          a7, gp, a0
                  sub          t5, tp, s1
                  rem          a5, tp, a5
                  mulhu        a7, s0, s1
                  divu         gp, a5, s0
                  remu         gp, a7, s0
                  mulhsu       tp, a7, s0
                  divu         gp, s1, t4
                  addi         a5, t4, -156 #end riscv_int_numeric_corner_stream_33
                  c.nop
                  c.addi4spn   s0, sp, 64
                  c.li         a5, 20
                  sub          gp, s10, a4
                  c.andi       s1, -1
                  remu         a4, a6, a5
                  c.addi4spn   a5, sp, 112
                  addi         tp, t4, 934
                  addi         sp, t2, -164
                  andi         s10, tp, -1138
                  divu         s5, t3, gp
                  srl          s0, s11, t0
                  divu         s3, t5, s11
                  mulhsu       sp, a7, s0
                  srli         t1, s10, 29
                  add          a3, s0, s3
                  c.andi       a5, 22
                  sra          t2, t4, t2
                  nop
                  c.andi       s0, 30
                  nop
                  srli         tp, t1, 19
                  mul          s4, s0, s11
                  li           t6, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           t5, 0xffffffff
                  li           a7, 0xffffffff
                  li           s3, 0x6907da1a
                  li           s4, 0x80000000
                  li           s1, 0x900c1399
                  li           a0, 0x979a14d9
                  li           s11, 0x80000000
                  li           ra, 0x80000000
                  li           s2, 0x3c9d5721
                  auipc        s2, 803012
                  divu         s4, s1, s11
                  auipc        a0, 533763
                  remu         s1, a0, s4
                  add          t5, s4, s2
                  mulhu        s4, ra, s11
                  addi         t5, s3, -1691
                  rem          a7, s2, s3
                  mul          s4, ra, t6
                  auipc        a7, 922726
                  mulh         s2, s1, t5
                  nop
                  mulh         t5, s11, s4
                  mulh         s4, ra, s2
                  mulh         s1, t6, a0
                  auipc        ra, 220325
                  add          a7, t5, s11
                  sub          ra, s2, a0
                  mul          a7, ra, t6
                  nop
                  rem          ra, t6, a7
                  divu         t5, s3, t6
                  add          s11, t5, s1
                  rem          s3, t5, a0
                  lui          ra, 412160
                  remu         s1, s2, a7
                  mulhsu       s11, s11, a7 #end riscv_int_numeric_corner_stream_18
                  slti         s1, t0, -1609
                  mulhsu       t6, t4, s8
                  ori          s8, a2, -935
                  srli         t6, a7, 9
                  c.addi4spn   a3, sp, 960
                  srli         a6, s3, 15
                  c.lui        a1, 20
                  or           s5, t0, a7
                  divu         s2, s1, t5
                  xor          s7, s7, a3
                  sub          s4, s11, a1
                  xori         s7, s4, 1700
                  c.andi       a5, -1
                  c.lui        s1, 8
                  sltiu        s1, s3, -1622
                  divu         s6, s5, a4
                  nop
                  c.srai       a1, 6
                  slli         t4, a2, 10
                  c.mv         ra, a7
                  c.or         a3, a4
                  sltu         zero, s0, s6
                  and          t5, t2, t6
                  c.lui        s2, 6
                  sub          s4, s9, t6
                  c.sub        s0, s1
                  lui          s2, 570373
                  sra          t4, t5, s6
                  sra          a6, s8, t0
                  addi         gp, s3, 108
                  c.nop
                  slt          s8, s11, s10
                  sltu         a4, s9, t2
                  c.xor        a3, a1
                  srai         a6, t6, 6
                  c.mv         t2, s8
                  and          zero, a0, gp
                  div          s7, zero, s3
                  c.sub        a5, a5
                  c.xor        a0, s1
                  xori         a7, t3, 1901
                  c.srli       s0, 31
                  sra          s2, t0, s6
                  srai         s6, s10, 26
                  srli         t5, a7, 5
                  sltu         a1, ra, a2
                  c.slli       s0, 7
                  c.li         a5, 29
                  c.and        s1, a0
                  mulhsu       s7, zero, sp
                  sltiu        s6, tp, 493
                  auipc        s11, 223957
                  c.or         a4, a1
                  c.slli       ra, 13
                  c.srli       a0, 20
                  c.andi       a3, 7
                  c.xor        s0, a5
                  c.lui        s3, 18
                  c.addi16sp   sp, 416
                  c.addi       a4, 31
                  nop
                  and          ra, t2, a7
                  c.srai       s0, 28
                  sltiu        s11, t2, -1234
                  c.srli       s0, 21
                  add          sp, sp, s7
                  and          t4, tp, gp
                  sltiu        a3, t2, 1677
                  mulh         s10, s8, s3
                  sltiu        a6, s7, -1985
                  c.addi4spn   a5, sp, 384
                  lui          ra, 704298
                  slli         a3, gp, 22
                  sll          s4, s11, a2
                  or           s8, a6, t3
                  or           a7, ra, t5
                  or           ra, s2, t5
                  srai         s3, t5, 0
                  remu         t2, gp, t5
                  c.addi16sp   sp, -16
                  or           t5, t2, s4
                  xor          s10, t6, s5
                  srai         s2, t3, 0
                  nop
                  c.srli       s0, 30
                  c.slli       s6, 23
                  sll          s8, s2, s10
                  c.addi16sp   sp, 464
                  add          a5, a1, s6
                  add          ra, s0, t2
                  sltiu        gp, s5, -1317
                  or           t0, t1, s0
                  sub          s6, s6, t0
                  div          s11, t0, a2
                  mulh         t5, t2, a7
                  c.srli       a4, 2
                  andi         s2, s6, 1432
                  c.and        s1, a3
                  c.add        s8, s6
                  mulh         zero, s11, a3
                  divu         s2, t5, ra
                  mulh         s1, t1, s7
                  c.andi       a5, -1
                  sll          s1, t0, t6
                  remu         a5, t3, sp
                  or           s10, s0, a5
                  rem          ra, ra, s7
                  xori         s1, s8, 850
                  rem          s5, t2, s11
                  srai         tp, t0, 22
                  xor          sp, t0, sp
                  sra          tp, a4, t0
                  c.addi4spn   a1, sp, 944
                  c.li         s10, -1
                  c.sub        a0, a5
                  c.srli       s1, 28
                  ori          t1, s6, 494
                  c.andi       s0, 1
                  c.li         t6, 26
                  c.and        s0, a2
                  sltu         s7, a4, a5
                  sll          s4, s11, s5
                  div          s5, s3, t5
                  c.mv         t2, a6
                  rem          s7, a7, s5
                  c.sub        a4, a1
                  ori          s7, s8, -262
                  mulh         s5, a2, s6
                  slt          t1, t5, s11
                  remu         s3, a7, ra
                  sra          t4, tp, t3
                  mulhsu       a3, gp, t4
                  mulhsu       a5, sp, t0
                  sll          s8, a2, t4
                  sub          s5, s3, t6
                  slti         t0, s0, 1616
                  remu         s7, s0, t5
                  rem          s1, a0, t1
                  xori         t1, s9, -633
                  sll          s7, s3, t5
                  c.and        s1, a0
                  mulh         s0, a7, tp
                  c.lui        tp, 3
                  c.addi16sp   sp, -16
                  sub          sp, s9, t4
                  divu         zero, t6, a0
                  c.xor        a4, a3
                  sltiu        s3, t6, 1610
                  c.nop
                  c.sub        a0, a3
                  c.addi       a3, -1
                  lui          ra, 926759
                  or           s0, s4, s11
                  mul          s4, sp, s8
                  remu         a7, sp, ra
                  div          zero, s11, t2
                  c.sub        a3, s0
                  c.srli       a0, 12
                  mulhsu       zero, t0, t0
                  srai         s7, t4, 21
                  c.mv         t1, a3
                  c.slli       ra, 31
                  remu         s6, s11, ra
                  remu         a1, tp, t0
                  divu         s8, s4, s3
                  lui          a5, 273654
                  c.add        a7, a0
                  c.addi16sp   sp, -16
                  c.add        s3, s6
                  c.srli       a1, 14
                  mulhu        a6, t5, s8
                  ori          a3, s2, 1122
                  rem          t4, ra, a5
                  c.addi       a5, 6
                  sll          s4, gp, s0
                  srl          s8, s11, a1
                  sra          t1, sp, s0
                  c.li         ra, 21
                  or           t2, a0, a0
                  slli         s4, a0, 13
                  slli         s1, t0, 14
                  ori          s6, gp, 1755
                  c.srli       s0, 5
                  c.slli       a6, 4
                  c.sub        a3, s0
                  mulhsu       a5, s3, a5
                  sltiu        s0, s11, 1518
                  slli         a6, s11, 24
                  c.srli       s0, 4
                  c.or         s0, a3
                  slt          sp, a6, s3
                  c.sub        s1, a1
                  mulhsu       s2, a6, s4
                  c.li         t6, 16
                  srai         s5, a0, 3
                  sub          t1, s10, a7
                  c.and        a3, a3
                  rem          tp, s4, s10
                  c.or         a3, a1
                  srl          s10, t5, tp
                  and          a1, zero, s0
                  or           s0, s1, a1
                  xor          t4, a6, tp
                  srai         zero, s8, 13
                  slt          s10, a3, s5
                  mulh         s2, s5, ra
                  slt          s8, s3, t0
                  c.nop
                  c.nop
                  mulhsu       t0, a3, a0
                  mulh         t1, gp, t1
                  c.add        s3, a1
                  ori          gp, s10, -1808
                  slli         t0, t2, 24
                  c.addi16sp   sp, 80
                  and          sp, t5, s2
                  xori         a0, zero, -949
                  mul          t4, t5, a6
                  slt          tp, t5, t3
                  and          gp, s10, s1
                  or           a6, t2, t3
                  sltiu        s4, a0, 1473
                  c.andi       a3, -1
                  sra          s10, s0, a3
                  remu         tp, s5, gp
                  c.addi16sp   sp, -16
                  c.or         a0, s1
                  mulhsu       s0, a2, t4
                  sltu         sp, a5, s7
                  mul          s2, tp, s0
                  slt          s4, a0, a5
                  c.or         s0, a1
                  srli         a6, s1, 20
                  mul          t4, s4, s8
                  divu         s5, t3, t5
                  slli         s5, t2, 9
                  xori         s8, sp, -1636
                  xori         a3, a1, 247
                  c.sub        a4, a1
                  sll          a4, s8, s3
                  divu         t6, s9, t4
                  c.and        s1, s0
                  add          s5, s6, sp
                  nop
                  c.andi       s1, 14
                  slt          s6, a2, s0
                  c.srai       a3, 8
                  mulhsu       tp, a2, a0
                  rem          a4, gp, a0
                  mulhsu       t2, s1, a5
                  sra          zero, s5, a6
                  xor          gp, s3, s2
                  slti         s5, s10, -283
                  c.addi16sp   sp, -16
                  c.or         a1, s1
                  c.addi       s0, -1
                  srai         gp, t4, 30
                  c.mv         s4, s10
                  c.or         a3, a5
                  div          a0, s6, a7
                  sltiu        gp, a3, 202
                  c.and        a3, a0
                  slli         s0, t4, 26
                  c.lui        a4, 6
                  c.sub        a5, a0
                  c.lui        t1, 9
                  mulhsu       t5, t0, a6
                  srl          t2, t5, a3
                  remu         t1, s9, s8
                  c.add        a6, a6
                  slli         s4, t2, 25
                  c.or         s1, a1
                  c.lui        tp, 8
                  remu         a6, s10, a0
                  c.srai       a5, 22
                  mulhsu       s1, s5, s11
                  sub          s4, t2, s5
                  or           a7, s7, s1
                  mul          t0, s9, a4
                  rem          s8, tp, a5
                  c.sub        a4, a0
                  c.addi       ra, -1
                  add          s4, t6, t1
                  div          s6, tp, s1
                  add          a7, s7, tp
                  c.slli       sp, 13
                  c.lui        a6, 3
                  c.addi       a6, 24
                  c.xor        s0, a2
                  c.mv         a0, s8
                  c.or         s0, a1
                  sra          a0, t4, t1
                  sltu         t4, s4, s7
                  slti         t4, a7, -1843
                  sub          a3, a5, a0
                  auipc        tp, 446465
                  sra          s10, a5, a3
                  mul          s8, t4, ra
                  c.and        s0, s0
                  sub          s2, s9, ra
                  c.addi16sp   sp, -16
                  c.addi4spn   a3, sp, 272
                  xori         a1, s11, -889
                  div          s5, s7, a5
                  srli         tp, sp, 27
                  c.and        s0, a0
                  c.addi       s8, -1
                  mulhsu       s8, a2, s2
                  sll          s0, s6, s10
                  mul          a3, t3, s8
                  c.mv         s1, s2
                  sltiu        s0, s6, 1927
                  slli         zero, a4, 12
                  andi         a6, zero, 1784
                  xori         a3, s1, -839
                  and          s1, s7, s10
                  sra          s10, ra, t0
                  mulh         a6, a4, a7
                  c.srai       a0, 12
                  c.mv         s1, t2
                  divu         a6, a1, s3
                  xor          s5, t5, s0
                  c.li         ra, -1
                  auipc        s8, 743569
                  nop
                  c.or         a1, a0
                  sra          a3, ra, s5
                  sll          a4, zero, a2
                  nop
                  lui          t2, 892297
                  ori          a4, a0, 1913
                  auipc        a1, 239101
                  andi         t0, s2, 409
                  c.nop
                  c.or         a3, a0
                  c.and        a3, a0
                  div          s3, s7, s7
                  mulhu        s8, t4, s6
                  xori         t4, t4, 1594
                  xor          a0, ra, a1
                  srl          a6, a0, s10
                  c.slli       s8, 4
                  ori          t6, s11, -738
                  slli         s4, s6, 14
                  c.xor        s1, a5
                  slti         s5, s2, -1272
                  slli         tp, s8, 27
                  c.addi       s1, -1
                  addi         s10, s9, -760
                  c.xor        a5, a2
                  add          t5, a6, a4
                  c.slli       s5, 5
                  srai         a5, s11, 19
                  andi         s10, s11, 1399
                  mulhsu       s10, a4, s1
                  c.li         t2, -1
                  c.srli       a5, 19
                  c.xor        a1, a4
                  slt          s10, a7, a4
                  c.add        s11, t5
                  auipc        s6, 923714
                  c.andi       s1, 13
                  c.or         s0, s0
                  sltu         s3, t2, gp
                  auipc        tp, 388116
                  andi         gp, s3, 75
                  mulh         a7, t6, sp
                  addi         s8, t0, 663
                  sra          s8, t2, s2
                  c.lui        s4, 15
                  c.or         s0, a2
                  lui          a4, 246882
                  mul          a3, t5, t0
                  remu         a0, t6, t3
                  mul          a7, a6, t2
                  srl          s3, a2, a5
                  remu         a1, ra, tp
                  c.andi       a3, -1
                  c.slli       t2, 30
                  ori          a5, t4, -1769
                  c.xor        s1, a4
                  c.mv         s1, a5
                  sub          t6, a4, s6
                  addi         a7, s10, 1417
                  ori          s2, s9, -911
                  c.add        gp, ra
                  xor          t5, a2, s3
                  sltiu        s10, a1, -315
                  c.lui        a6, 28
                  c.nop
                  mulhu        s2, a3, a6
                  slti         s1, s3, -1112
                  sll          a0, s6, ra
                  xori         t1, s11, 335
                  andi         sp, t2, 762
                  add          tp, s10, t5
                  andi         s5, s8, -1108
                  remu         s4, s7, s7
                  c.addi       a7, -1
                  addi         a3, s9, 1518
                  add          s7, s2, gp
                  c.addi16sp   sp, 96
                  c.srli       a0, 10
                  addi         s6, a5, 1475
                  c.mv         a1, tp
                  c.srai       a3, 27
                  mul          a4, tp, t4
                  sltu         a7, s0, tp
                  c.addi       s3, 1
                  addi         a4, a2, 497
                  c.li         tp, -1
                  sra          t5, t2, a4
                  xori         s8, s4, -1358
                  and          s7, gp, t4
                  lui          t2, 679927
                  xor          s10, t4, s0
                  c.srai       s1, 4
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           s0, 0x30cb10a
                  li           a4, 0xc599af01
                  li           ra, 0xffffffff
                  li           t0, 0x80000000
                  li           s5, 0x80000000
                  li           a6, 0xffffffff
                  li           t4, 0x56a4eaf
                  li           t6, 0xffffffff
                  li           s7, 0x9ddf45c9
                  lui          a6, 704012
                  sub          s5, s5, s1
                  div          t0, t4, s5
                  auipc        a4, 660481
                  nop
                  mulhu        s1, s0, s0
                  addi         t4, s0, 1733
                  mulhu        s1, t0, s7
                  lui          a4, 147292
                  divu         t4, s0, t0
                  sub          s1, t0, s1
                  rem          a4, t4, s1
                  sub          s7, s7, ra
                  auipc        s0, 618699
                  divu         a6, s1, ra
                  divu         ra, a4, s1
                  remu         a4, s0, t0
                  nop
                  auipc        a4, 760652
                  div          t6, a6, t0
                  lui          s7, 469924
                  remu         t4, t4, a6
                  divu         a4, a6, s1
                  add          ra, t6, s1
                  addi         s7, a6, 1632
                  rem          t0, t4, t6
                  div          s7, s0, s5 #end riscv_int_numeric_corner_stream_30
                  slli         t6, s4, 20
                  sltiu        a4, t6, -676
                  sub          t4, t1, a7
                  c.xor        a4, a1
                  or           t5, sp, tp
                  srl          tp, s10, s10
                  sltiu        s5, a6, 989
                  mulhsu       s1, t2, s1
                  sub          s11, tp, s9
                  sra          a3, tp, sp
                  sub          s5, t0, a4
                  c.addi       s6, 15
                  c.xor        a1, a2
                  mulhu        s10, a5, ra
                  div          s4, s0, s2
                  xori         s2, s6, -703
                  xor          s7, a2, ra
                  mulh         a7, a0, t6
                  c.addi16sp   sp, 352
                  slt          t6, s5, gp
                  ori          a3, s8, -268
                  ori          ra, s10, 1298
                  xor          a5, ra, a5
                  c.xor        a1, a1
                  or           a1, zero, s3
                  and          tp, t6, a3
                  slti         s4, s9, 636
                  sltiu        tp, t1, -1637
                  c.mv         t6, s1
                  c.li         t4, -1
                  mulhu        t0, s11, s6
                  c.xor        a3, a1
                  xor          s1, s1, s10
                  slli         s8, s7, 8
                  li           t4, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           a5, 0x80000000
                  li           ra, 0x80000000
                  li           t0, 0x80000000
                  li           t2, 0x80000000
                  li           t1, 0x80000000
                  li           a0, 0x80000000
                  li           s8, 0x80000000
                  li           s0, 0xf4856b25
                  li           gp, 0xffffffff
                  nop
                  mulhsu       t0, s8, t1
                  addi         a5, ra, -1288
                  divu         t1, gp, t0
                  nop
                  sub          s8, a5, ra
                  lui          s8, 93851
                  mul          t4, t1, t4
                  add          ra, t1, s0
                  mulh         s0, gp, gp
                  nop
                  mul          a5, s8, t0
                  divu         ra, t1, t4
                  nop
                  mulhsu       a0, gp, s8
                  mulhu        s8, a0, ra
                  remu         t1, ra, a0
                  mulhsu       a0, t2, ra
                  mul          t2, gp, s0
                  add          t1, s8, t2
                  mul          t0, s8, t1
                  remu         s8, ra, s8
                  add          t4, gp, s0
                  lui          gp, 632448
                  divu         t0, a0, ra #end riscv_int_numeric_corner_stream_5
                  c.addi       s1, -1
                  srai         a7, a2, 10
                  mul          s0, sp, a3
                  and          s11, a4, tp
                  add          s10, s8, t1
                  and          gp, s6, t3
                  slti         s11, a5, 827
                  c.srli       a5, 8
                  and          s7, s7, s5
                  add          s4, s11, s6
                  sltu         t1, t0, t4
                  c.lui        gp, 24
                  sra          a0, t0, s5
                  srli         gp, a3, 0
                  c.srli       a3, 12
                  mulh         t2, s3, ra
                  slti         s1, t6, -1322
                  c.srai       a4, 27
                  div          a1, a4, s1
                  c.lui        s3, 18
                  xor          s0, a1, ra
                  c.addi4spn   s1, sp, 112
                  srai         s3, a6, 20
                  srli         s1, ra, 4
                  sltiu        s6, zero, -98
                  nop
                  c.lui        gp, 30
                  c.addi4spn   a3, sp, 672
                  c.nop
                  sltu         s5, s8, a2
                  sub          s11, a2, s8
                  slti         s4, t3, 1494
                  c.mv         t5, tp
                  nop
                  sra          t6, s3, s0
                  rem          s3, s4, s8
                  c.lui        s4, 2
                  mulh         s5, t0, s10
                  c.and        a5, s0
                  addi         s2, s1, 15
                  c.srli       s0, 24
                  c.srai       s0, 21
                  sra          t1, s2, a1
                  mulh         s5, a0, tp
                  c.addi       s0, 19
                  c.li         a7, 19
                  slt          a7, s10, zero
                  ori          s0, a4, -925
                  srai         t5, a2, 30
                  sra          s0, s2, s9
                  sra          s5, t6, tp
                  c.srli       a0, 13
                  c.add        a3, sp
                  and          s8, a5, s6
                  c.addi4spn   a1, sp, 384
                  c.lui        a1, 5
                  c.addi4spn   a0, sp, 208
                  slt          a5, s2, ra
                  add          t5, zero, t4
                  c.xor        a5, a4
                  c.and        a3, a0
                  c.addi4spn   a1, sp, 720
                  mulh         tp, s0, a1
                  remu         a5, ra, s3
                  c.nop
                  andi         s4, s4, 1311
                  c.sub        a4, a2
                  srli         s0, t3, 5
                  slli         a7, s2, 21
                  c.slli       a4, 12
                  mulhu        a5, sp, a0
                  nop
                  c.srli       a5, 2
                  c.andi       a3, -1
                  xor          s7, sp, a1
                  c.addi       sp, -1
                  c.li         a4, -1
                  mul          t4, s0, a2
                  srli         a4, a5, 3
                  slli         s10, s10, 19
                  andi         a5, gp, -1997
                  c.add        s2, t1
                  div          s4, t4, t1
                  c.mv         a6, a7
                  mulhu        zero, a1, a6
                  mulh         a0, a2, a7
                  c.addi16sp   sp, -16
                  nop
                  c.addi4spn   a3, sp, 400
                  c.addi16sp   sp, 416
                  remu         t4, a4, a4
                  srli         s0, s10, 31
                  c.srli       a1, 27
                  srl          tp, t5, s7
                  c.srai       a1, 8
                  mulhu        s1, a6, a3
                  ori          t6, a5, 1101
                  divu         t0, a4, t1
                  slli         s4, a3, 18
                  c.add        t4, s11
                  c.or         s0, a3
                  xori         s1, t5, 774
                  c.lui        t5, 29
                  c.addi       gp, -1
                  lui          s1, 394011
                  remu         s0, s4, s9
                  c.addi       s6, -1
                  c.addi       s0, 19
                  sltiu        t4, a6, -104
                  c.srai       a4, 21
                  remu         s6, t6, ra
                  c.addi       a3, -1
                  c.and        s0, a5
                  c.sub        s0, a4
                  c.li         s4, 4
                  c.addi       t2, 21
                  addi         s8, a2, 1950
                  c.and        a4, a2
                  c.lui        a1, 6
                  add          gp, s6, a5
                  mulhsu       a4, t6, a0
                  add          s10, t1, a7
                  lui          s2, 503857
                  slli         a7, a4, 31
                  sub          s3, a6, ra
                  c.srli       a1, 16
                  mulh         a5, a5, t1
                  c.slli       t4, 16
                  slti         s10, t4, 720
                  remu         s4, t1, t6
                  sll          s0, t6, zero
                  c.li         gp, 9
                  and          a7, s3, ra
                  c.lui        a3, 11
                  remu         ra, t1, a4
                  rem          gp, a2, t5
                  nop
                  ori          a4, s6, -1070
                  lui          s2, 7330
                  rem          a3, s8, s5
                  auipc        s10, 874140
                  c.addi16sp   sp, -16
                  c.and        s0, a3
                  c.addi4spn   s1, sp, 80
                  mulhsu       s1, s7, s6
                  c.andi       a1, -1
                  mulhu        a6, s2, sp
                  mul          s5, s7, a2
                  andi         zero, ra, -83
                  divu         s2, s8, s3
                  c.andi       a4, 4
                  slli         sp, s0, 17
                  sll          s4, t6, s11
                  c.add        a6, s6
                  c.addi16sp   sp, -16
                  mulhu        t6, s3, sp
                  srli         a7, tp, 4
                  or           ra, t4, s6
                  sltu         a4, t2, zero
                  auipc        s0, 582350
                  mulhu        t2, t4, a0
                  slti         sp, s0, 594
                  mul          s4, gp, t0
                  srli         s6, s3, 23
                  or           a0, sp, t6
                  ori          t0, s2, -605
                  sll          s7, a1, ra
                  srai         ra, s7, 4
                  sltiu        t6, s9, -1327
                  c.add        s5, tp
                  or           s1, a1, s2
                  slt          t0, a4, t0
                  xor          sp, t1, zero
                  or           s1, t6, t1
                  mul          sp, t6, tp
                  slli         t4, t1, 7
                  c.srli       a5, 28
                  sra          gp, ra, s8
                  c.addi16sp   sp, -16
                  c.nop
                  ori          zero, a6, 1899
                  add          a3, t5, s7
                  rem          zero, t0, tp
                  mul          a0, s10, a3
                  c.srli       a1, 14
                  c.and        a5, a3
                  c.or         a1, a2
                  div          s7, sp, t5
                  c.xor        a0, a4
                  sltiu        zero, s2, 738
                  c.li         s7, 24
                  or           s0, a2, s6
                  div          gp, t3, s3
                  and          t4, a6, s1
                  sltiu        s7, a7, 1958
                  c.addi       s1, 17
                  srli         a5, t1, 29
                  auipc        zero, 564177
                  auipc        t6, 56917
                  c.addi       t6, 30
                  c.srai       a5, 12
                  sltiu        gp, t4, -354
                  div          a1, t3, t6
                  mul          a3, t6, a6
                  c.nop
                  c.xor        a0, a2
                  c.slli       t6, 4
                  sltu         a1, a2, a1
                  lui          sp, 693657
                  auipc        t0, 675929
                  nop
                  nop
                  mulh         t6, tp, t2
                  c.xor        a0, a2
                  c.lui        a7, 15
                  remu         t1, t3, a1
                  c.sub        a3, s0
                  c.li         t5, -1
                  c.mv         s4, t3
                  sltiu        a4, t1, 1759
                  srai         t6, s1, 0
                  c.slli       a1, 3
                  c.and        s0, a2
                  sltu         s6, a2, s11
                  auipc        s2, 1025655
                  c.slli       ra, 21
                  andi         s1, a1, 876
                  c.sub        a3, s1
                  sra          s1, s6, s4
                  divu         a6, s7, zero
                  or           s5, s5, sp
                  c.lui        s8, 2
                  c.li         t1, -1
                  c.lui        a6, 29
                  divu         t1, a0, s0
                  rem          a7, tp, sp
                  c.or         s1, a1
                  divu         s4, s3, a2
                  mul          s1, s6, a7
                  addi         s3, tp, -1536
                  c.addi16sp   sp, 80
                  sltiu        a5, t4, 1622
                  c.addi       s4, -1
                  srl          t0, s5, s4
                  srai         t1, s8, 29
                  sltiu        s5, a3, 413
                  auipc        t6, 330577
                  srai         s3, a7, 31
                  c.srai       s0, 9
                  ori          s4, a4, -1217
                  remu         s5, t3, zero
                  mulhsu       s10, s10, t2
                  c.nop
                  c.xor        s0, a4
                  mulh         a4, s10, s9
                  xor          a4, t6, sp
                  c.srai       s1, 8
                  srai         a4, a4, 20
                  addi         s0, s5, 370
                  sltiu        t4, s11, 1855
                  c.andi       a3, -1
                  slt          sp, a5, s7
                  rem          s1, sp, t3
                  lui          t5, 1000396
                  addi         s4, zero, 1593
                  addi         s0, a7, 1214
                  nop
                  and          a3, t3, s4
                  sra          s0, s1, a3
                  srai         tp, t5, 12
                  srli         tp, s10, 17
                  mulhu        a5, tp, t4
                  mulhsu       a7, s8, t3
                  srai         a4, ra, 2
                  c.xor        s0, a4
                  slli         s7, s11, 12
                  c.addi16sp   sp, -16
                  rem          t5, t1, s4
                  mul          s4, t1, sp
                  c.and        a0, a4
                  slti         zero, s2, 917
                  slt          s3, a5, s3
                  add          zero, s1, s1
                  or           s4, a3, t5
                  c.sub        a0, a5
                  srai         tp, a4, 22
                  xori         tp, s9, -844
                  slli         t0, zero, 1
                  c.addi16sp   sp, -16
                  mulhu        s1, s11, a0
                  c.add        t5, gp
                  add          t4, gp, s11
                  mulhsu       a1, s1, s1
                  c.sub        a4, a0
                  sltiu        s8, t3, -1229
                  andi         t5, t3, 1575
                  slt          ra, t1, t4
                  sltiu        s3, s4, -1578
                  xori         ra, t1, -916
                  c.addi       a7, -1
                  c.or         a4, s1
                  c.or         a3, a4
                  slli         a1, tp, 23
                  slt          s7, ra, s8
                  ori          s6, a0, 797
                  addi         s3, s8, -150
                  c.addi       t4, -1
                  sll          a0, t0, a3
                  sltiu        s3, t6, -160
                  c.sub        a5, a3
                  xor          a5, t6, a2
                  mulhsu       s6, s3, s1
                  c.lui        s6, 4
                  nop
                  sltiu        a5, a1, -191
                  c.andi       a3, 19
                  c.addi       s7, 24
                  c.addi16sp   sp, 80
                  srai         t4, a6, 4
                  mulhsu       t4, a4, tp
                  c.or         a1, a3
                  auipc        tp, 593151
                  and          t1, t6, s0
                  rem          s11, a1, t3
                  sra          a1, t4, a7
                  remu         t4, t0, gp
                  xor          s4, s3, s3
                  c.and        a1, a3
                  c.and        a1, s0
                  lui          s8, 456115
                  divu         a1, zero, a7
                  mul          t5, t2, a4
                  c.addi       a3, -1
                  c.andi       a4, -1
                  mulhsu       a3, s6, s5
                  mul          t0, t3, t0
                  and          zero, t5, s6
                  add          s7, a4, t3
                  remu         a5, a3, s4
                  c.addi4spn   s1, sp, 672
                  rem          t1, a1, sp
                  c.xor        s0, a1
                  mul          s1, s3, t6
                  sra          a7, a1, ra
                  divu         a7, a2, s7
                  mul          ra, s9, a5
                  ori          ra, s11, 37
                  or           s6, s7, s3
                  c.or         s0, a0
                  slt          t0, s5, a7
                  slli         s7, s5, 5
                  mulhu        s10, s10, s5
                  c.addi       s4, -1
                  remu         sp, s9, s0
                  auipc        a1, 617588
                  c.li         a6, -1
                  and          s3, s6, a6
                  c.andi       a3, 5
                  rem          t0, t2, t3
                  or           s1, a7, s1
                  c.xor        a4, a0
                  srai         s5, s5, 23
                  c.li         s5, -1
                  c.addi4spn   a1, sp, 464
                  c.srli       a0, 4
                  c.lui        s4, 31
                  c.add        a3, sp
                  andi         s10, s9, 1511
                  c.or         a4, a2
                  c.xor        a5, a0
                  mulh         s0, s7, s0
                  c.lui        t2, 9
                  and          t1, s2, t3
                  or           tp, s1, s5
                  andi         t5, t3, 627
                  srl          sp, t0, s5
                  sub          s0, a6, t4
                  slli         t5, a6, 4
                  sltiu        s0, s8, -1026
                  c.addi       a5, -1
                  sltiu        t1, s7, 1073
                  c.addi       t0, 24
                  c.lui        a3, 20
                  c.addi       t4, 28
                  srai         s10, s10, 15
                  c.srli       a1, 6
                  srl          s0, t1, t5
                  c.addi16sp   sp, -16
                  remu         t5, t1, a0
                  lui          tp, 679809
                  rem          t6, s4, t3
                  c.andi       a4, 21
                  c.srli       a5, 19
                  srli         s11, t3, 28
                  auipc        s8, 70547
                  srli         s11, t6, 25
                  c.mv         s8, t5
                  c.li         t6, 0
                  c.xor        a4, a3
                  addi         s7, t6, -1831
                  c.slli       s7, 22
                  c.nop
                  divu         t2, t6, s8
                  ori          t0, t4, -263
                  c.or         s0, a4
                  mulh         s3, sp, a3
                  c.sub        s1, a3
                  ori          a1, s3, -808
                  remu         t6, s3, t2
                  c.or         a1, a0
                  srl          t6, s4, a6
                  c.li         t2, -1
                  or           a3, zero, t1
                  add          a1, tp, s11
                  lui          a0, 206642
                  slli         s4, sp, 18
                  sltiu        s8, a4, 212
                  c.srli       a0, 6
                  nop
                  or           s0, t6, s2
                  remu         s1, s6, a0
                  mul          a1, t4, a3
                  sll          s11, a3, s7
                  and          t4, a1, s9
                  c.add        s7, a5
                  sra          s7, s8, a6
                  xor          tp, a1, s1
                  div          s4, tp, s7
                  andi         a3, t3, 1771
                  c.xor        a5, a0
                  nop
                  and          a5, a7, gp
                  srai         t6, s4, 19
                  div          t4, t3, s0
                  c.add        a0, s5
                  div          tp, a4, zero
                  c.and        s0, a3
                  c.nop
                  c.addi4spn   s0, sp, 464
                  xori         t2, gp, 993
                  c.and        a4, s0
                  c.and        a0, a3
                  c.and        s1, s0
                  sltiu        s8, a6, 1306
                  addi         a3, t1, -1858
                  sltiu        s1, a2, -171
                  xori         tp, t2, 1495
                  slt          s5, gp, a0
                  c.xor        a4, a1
                  mulhsu       s3, s3, a1
                  div          a3, s8, sp
                  rem          s8, ra, a1
                  mulhsu       sp, zero, t2
                  addi         s1, a0, 584
                  c.lui        s7, 24
                  c.and        s1, a3
                  and          a5, a1, ra
                  or           t2, sp, tp
                  andi         a7, t3, 309
                  c.andi       a3, -1
                  slt          s1, t1, a1
                  mulh         t0, zero, a7
                  c.or         a0, s0
                  add          t5, s0, a7
                  c.or         a5, a4
                  ori          a7, a3, -1651
                  c.add        t4, a6
                  sub          t2, ra, a7
                  mulhsu       t2, s7, a5
                  srl          a3, zero, s10
                  slti         s5, s8, -277
                  sra          s11, s7, a5
                  slli         a5, a5, 9
                  c.li         s1, 29
                  c.slli       s3, 20
                  div          gp, s1, a7
                  slli         a1, s11, 31
                  slli         s3, gp, 19
                  mulhsu       s6, tp, s5
                  mulhu        a0, s4, a3
                  mulhu        s8, s9, t5
                  xor          a5, s3, a5
                  c.sub        a4, s0
                  srai         a3, a7, 16
                  sra          a6, s6, a0
                  c.slli       s0, 27
                  lui          s8, 451978
                  c.lui        t1, 21
                  c.addi16sp   sp, -16
                  slli         s11, s1, 27
                  c.andi       a1, -1
                  srai         sp, a4, 27
                  c.addi16sp   sp, -16
                  c.add        tp, t5
                  xor          a4, s8, a3
                  addi         s2, t2, 2014
                  srai         a6, tp, 3
                  add          s8, gp, a1
                  andi         s2, gp, -1786
                  sll          zero, a1, zero
                  c.srli       a1, 18
                  auipc        s6, 250225
                  auipc        s10, 238792
                  div          a4, sp, zero
                  or           s3, a1, t3
                  or           t5, s9, t3
                  slli         s5, s9, 5
                  nop
                  remu         t0, s1, s6
                  xori         s8, a7, 2044
                  c.or         a3, s0
                  c.srai       s0, 28
                  sub          t1, t1, tp
                  lui          a1, 630757
                  or           t4, s11, a3
                  sll          s11, s10, a2
                  c.and        a5, a0
                  c.addi16sp   sp, -16
                  slli         s4, a5, 27
                  and          a5, a6, tp
                  remu         a3, a7, t5
                  auipc        s11, 764468
                  c.or         a3, a5
                  div          a5, a1, s7
                  xori         s10, gp, 1532
                  srl          s8, a0, a7
                  c.add        a0, s10
                  sub          zero, zero, sp
                  srai         t5, s2, 16
                  c.add        a3, a3
                  c.or         s0, a4
                  c.lui        t5, 24
                  sub          a3, t5, s6
                  slti         s6, a6, -2036
                  andi         a5, t0, -1356
                  div          s5, s4, gp
                  xor          a5, s11, zero
                  srai         s0, t6, 6
                  c.addi       s2, 31
                  c.addi4spn   a1, sp, 368
                  sltiu        a1, s1, -232
                  slli         s8, s11, 14
                  mulh         a5, s0, gp
                  sltiu        t6, a4, 339
                  add          a3, sp, gp
                  c.addi16sp   sp, 384
                  c.addi4spn   a3, sp, 688
                  c.slli       a1, 29
                  addi         t0, ra, 1917
                  c.srli       s1, 12
                  srli         a4, s5, 3
                  ori          t6, t5, 1549
                  c.li         s10, -1
                  mulh         tp, a1, gp
                  slt          tp, a0, s1
                  sltiu        s0, s0, -1013
                  auipc        t5, 660371
                  andi         zero, ra, 1225
                  c.addi16sp   sp, 288
                  or           a7, sp, a2
                  mulhu        a6, s4, t5
                  c.addi       s4, 5
                  xori         a5, s0, -1199
                  and          s2, a1, a3
                  addi         t0, s3, 1836
                  lui          s5, 248225
                  andi         tp, s11, 1044
                  add          t2, ra, ra
                  sll          s6, a1, t2
                  sub          t5, a4, s2
                  c.slli       s2, 23
                  c.lui        t1, 18
                  divu         a4, a4, a0
                  c.addi16sp   sp, 16
                  mul          s5, t2, s6
                  nop
                  sll          s8, s5, t1
                  xori         a3, s10, -235
                  sltu         t5, t5, s1
                  sra          a0, t3, a7
                  slt          zero, t6, s10
                  and          a7, a5, s2
                  addi         s1, t4, 800
                  sltu         a3, ra, sp
                  divu         sp, t6, t0
                  c.xor        a1, s1
                  add          s11, a6, s8
                  lui          a0, 79122
                  c.xor        s0, a3
                  div          s8, zero, zero
                  srai         sp, gp, 31
                  sltu         s3, s4, s3
                  c.mv         s3, tp
                  remu         a3, s5, s4
                  c.addi       a6, -1
                  xor          s4, s8, gp
                  xori         a1, sp, -682
                  mulhu        s10, s5, a1
                  mulhsu       tp, s10, a0
                  c.addi4spn   s1, sp, 464
                  sub          ra, s11, s5
                  c.or         a3, a1
                  rem          a1, a7, t4
                  c.nop
                  or           s3, s7, s4
                  c.andi       a1, -1
                  xor          t5, a2, a2
                  xori         s4, a7, 1861
                  c.lui        s6, 18
                  divu         t5, t2, a0
                  c.srli       s1, 7
                  andi         a6, s6, -1224
                  c.srli       a1, 22
                  xor          s3, sp, t3
                  c.addi       t4, -1
                  c.addi4spn   s0, sp, 384
                  add          a7, gp, t4
                  c.lui        s8, 24
                  c.slli       s2, 12
                  div          a4, s5, a5
                  srl          a3, s11, s9
                  c.add        ra, a6
                  slli         s1, s1, 24
                  sltu         tp, s5, tp
                  mulh         sp, s8, s5
                  sll          s5, s5, a3
                  mulh         t0, s6, s5
                  c.mv         s6, t3
                  c.nop
                  srai         a4, t2, 26
                  ori          t2, tp, 2037
                  sltu         s4, a3, t0
                  c.mv         s7, s10
                  xori         s5, a4, 1389
                  sra          t0, a6, ra
                  c.li         s7, 21
                  c.add        s2, a6
                  sltiu        zero, t0, 1810
                  srli         a1, ra, 26
                  mulhu        s2, a7, s8
                  c.nop
                  c.mv         s5, t4
                  c.addi       a4, -1
                  srli         t5, t0, 29
                  c.slli       s0, 20
                  mulhu        t0, s1, t3
                  c.nop
                  c.sub        a0, s0
                  xor          a0, s2, ra
                  sltu         t6, s7, t3
                  add          t0, s9, s7
                  mulhsu       sp, t6, s0
                  c.slli       a3, 11
                  xori         s3, s11, 1087
                  xor          s10, zero, s8
                  xor          s2, a2, a1
                  addi         sp, t1, -1775
                  slti         t5, t5, 1379
                  c.andi       a4, 23
                  xori         zero, s1, -1050
                  rem          tp, t2, s6
                  c.and        a4, s0
                  and          s3, s0, sp
                  sltu         tp, t1, s11
                  and          s3, gp, t5
                  c.slli       a0, 19
                  srli         a4, a1, 27
                  c.li         s6, -1
                  remu         t4, s0, s1
                  or           ra, s0, zero
                  sltiu        a0, s8, 1683
                  c.li         s6, -1
                  add          s5, a6, t2
                  srl          s0, t1, s9
                  mulhu        t0, s6, s10
                  sll          a6, t5, s8
                  and          a7, s7, a4
                  mulh         t5, a1, s7
                  mulhu        a6, sp, a6
                  sltu         s11, s3, s9
                  c.srai       s1, 17
                  c.xor        s0, a4
                  auipc        t4, 607872
                  remu         a4, a1, t5
                  addi         t4, s6, 466
                  c.sub        a5, a2
                  sra          tp, sp, a0
                  sra          a1, a5, zero
                  sltu         s10, s2, t3
                  c.addi       a4, -1
                  nop
                  mulh         s10, t1, t3
                  c.mv         a6, t3
                  sltu         gp, a5, s5
                  c.li         ra, 24
                  sll          s11, t0, gp
                  srl          s8, t5, t3
                  c.srai       a5, 26
                  addi         s11, a2, 399
                  c.add        s10, gp
                  rem          t2, tp, s10
                  slli         tp, s7, 29
                  ori          s1, a5, -1238
                  c.srli       s1, 24
                  mul          gp, s11, s5
                  c.lui        a3, 29
                  c.nop
                  srli         s0, a4, 16
                  sltu         s10, s4, t5
                  remu         a5, a6, ra
                  mul          t2, s6, t5
                  c.mv         a5, a2
                  add          sp, s11, sp
                  c.lui        a3, 23
                  sltu         s6, t0, t1
                  and          t0, s6, tp
                  c.srli       a4, 15
                  srl          t2, a5, a1
                  lui          a4, 765992
                  andi         s11, a0, 488
                  mul          a0, a4, s2
                  divu         t0, sp, s2
                  xor          s8, s7, s7
                  srai         a1, t6, 10
                  sra          s4, a0, a2
                  c.li         s3, 10
                  and          gp, s7, s6
                  auipc        gp, 283025
                  mul          t4, s9, t0
                  slt          s11, t2, t0
                  slli         s3, s8, 5
                  divu         a4, t5, a0
                  c.add        t4, s2
                  slt          s3, t3, a3
                  slli         a7, a2, 2
                  srli         tp, t4, 31
                  c.or         a3, a2
                  slti         t1, ra, 250
                  slt          a5, a3, s8
                  auipc        s8, 889198
                  srli         s2, zero, 22
                  c.and        a0, a5
                  sll          a5, a5, a4
                  slt          s2, t3, s7
                  div          sp, t1, s2
                  srli         a1, t1, 28
                  c.lui        s0, 18
                  sltu         t6, t0, zero
                  c.li         s11, -1
                  c.mv         s3, a3
                  c.nop
                  lui          s3, 724399
                  sll          zero, a1, a5
                  auipc        s8, 794306
                  c.and        a1, a0
                  divu         s2, s11, t6
                  sll          a4, a4, t1
                  srli         zero, t5, 16
                  mulh         s11, s11, t1
                  xor          ra, s0, a7
                  c.xor        s0, a3
                  divu         s3, a2, s0
                  ori          s11, t5, -822
                  sra          s1, s4, t4
                  c.and        a4, s1
                  andi         s8, t1, -98
                  c.or         s1, a4
                  li           a1, 0x103731be #start riscv_int_numeric_corner_stream_36
                  li           s6, 0xffffffff
                  li           t0, 0xffffffff
                  li           t2, 0x6fc12a58
                  li           s2, 0x205fe380
                  li           t1, 0x80000000
                  li           t5, 0xffffffff
                  li           t6, 0x6b527edc
                  li           s4, 0x108f4406
                  li           a6, 0xffffffff
                  mulh         a1, t6, s2
                  nop
                  mulh         a6, s2, s2
                  auipc        s4, 903080
                  mulh         s4, a1, s2
                  mulhsu       a6, a1, a6
                  auipc        t1, 763565
                  div          t2, a6, t2
                  lui          a6, 307284
                  mul          a6, t1, t6
                  add          t0, t1, t5
                  addi         t1, s4, 926
                  mul          a1, t5, t2
                  sub          t0, t1, s4
                  mulhsu       a1, s4, s4
                  auipc        t0, 3689
                  mulhsu       a1, s6, a1
                  nop
                  div          t5, s6, a1
                  add          t0, a6, s6
                  sub          a6, t6, s2
                  lui          s4, 651136 #end riscv_int_numeric_corner_stream_36
                  sltu         t5, t1, a3
                  slt          zero, a5, s0
                  c.xor        s0, a2
                  c.addi4spn   a0, sp, 368
                  srai         sp, t4, 7
                  remu         a4, s5, s1
                  slt          a3, s1, sp
                  sll          tp, t6, t2
                  ori          zero, gp, 1736
                  c.addi       tp, -1
                  remu         t2, s11, zero
                  sub          zero, a2, t4
                  auipc        a4, 294928
                  slt          a5, t3, s2
                  divu         t6, t6, s10
                  c.addi       a4, -1
                  c.or         a4, a5
                  srli         t4, s8, 7
                  mul          t0, s2, s11
                  srai         s8, s10, 20
                  c.slli       sp, 9
                  slli         ra, s9, 31
                  c.srli       a0, 27
                  c.or         a3, a2
                  mulhsu       s0, s1, a7
                  c.lui        t2, 19
                  c.and        a4, a3
                  sltu         a7, a3, t0
                  remu         a4, s5, t6
                  xor          s11, a3, a2
                  c.srai       a3, 19
                  and          a4, s10, a1
                  c.addi       ra, 21
                  andi         sp, a2, -60
                  sra          s5, s3, a2
                  auipc        s7, 1034125
                  srli         a3, s11, 14
                  sub          s1, s11, s4
                  auipc        s0, 888245
                  andi         s3, sp, 1792
                  srli         t0, s11, 14
                  sltu         s5, s6, s9
                  xor          s5, a7, t4
                  c.addi4spn   a4, sp, 16
                  mulhu        a1, s3, s11
                  c.mv         a7, t1
                  rem          s3, t3, s4
                  addi         t1, a1, -1320
                  srli         a1, s10, 27
                  sra          a7, s7, a6
                  sub          a4, a5, sp
                  lui          a6, 882302
                  c.srai       s1, 28
                  c.nop
                  c.xor        a3, a2
                  sltu         a4, gp, s11
                  srl          a5, t1, s6
                  slli         s4, a4, 4
                  c.srai       a0, 11
                  c.addi       s5, -1
                  slt          a1, s9, s3
                  ori          tp, s9, -573
                  and          tp, sp, a6
                  ori          s10, sp, 560
                  c.srai       s1, 31
                  mul          a6, t3, sp
                  rem          t0, ra, a2
                  ori          ra, s4, 868
                  or           a1, s0, t6
                  c.lui        a4, 13
                  c.addi4spn   a1, sp, 816
                  div          s0, a4, t0
                  mul          t5, gp, sp
                  c.andi       a0, 29
                  c.srai       a4, 20
                  and          s4, s9, tp
                  slli         a6, gp, 31
                  c.mv         a0, a3
                  mulhu        tp, s11, a1
                  c.add        a7, s8
                  xor          t1, t2, s7
                  addi         a1, s10, -742
                  c.addi16sp   sp, 176
                  srl          gp, a4, s3
                  addi         s11, t5, 929
                  lui          s11, 522857
                  nop
                  add          t5, t1, s1
                  sub          tp, a7, s2
                  sra          s1, s5, s0
                  remu         s0, a3, t1
                  add          a5, t5, s4
                  c.li         s3, 30
                  slt          a5, t1, t2
                  slt          t5, s9, a6
                  sltiu        a7, t4, 1298
                  sra          a6, s4, t5
                  sltu         t4, t6, a0
                  c.sub        s1, a5
                  nop
                  sll          zero, a2, a7
                  c.and        a4, s1
                  c.xor        a0, a3
                  mulh         t4, s3, t2
                  remu         a3, t0, t2
                  c.li         s7, -1
                  divu         a7, zero, s9
                  slt          t2, s11, t6
                  sll          t1, s5, t2
                  c.xor        a0, s1
                  c.mv         a4, t6
                  srl          t0, ra, s3
                  srl          gp, a4, s5
                  div          a3, t6, s4
                  c.lui        s3, 17
                  sll          s7, s0, s6
                  c.addi       t0, -1
                  sltiu        a4, t4, 964
                  sltiu        tp, t1, -335
                  c.srli       a0, 30
                  xor          t1, a2, s3
                  divu         zero, t3, a6
                  c.add        tp, a0
                  sub          s11, s4, sp
                  c.or         s1, a3
                  c.addi       s0, -1
                  c.add        a3, s5
                  addi         s6, a7, 968
                  c.sub        a0, a4
                  c.and        a4, a5
                  addi         gp, t0, 1197
                  slti         a7, s1, 1668
                  ori          a7, a7, 592
                  sltiu        s8, t5, -878
                  c.addi       t0, -1
                  ori          s10, s6, 1848
                  c.mv         tp, t2
                  addi         s4, a4, 1503
                  c.or         s0, a0
                  slti         s8, a4, 1505
                  nop
                  slti         s6, s3, 1638
                  mul          s5, a3, s8
                  addi         a6, s1, 289
                  c.xor        a4, a1
                  c.add        t1, s11
                  c.xor        s1, s1
                  c.slli       a4, 16
                  sra          s7, a3, t3
                  c.li         s2, 9
                  mulhu        ra, s4, s2
                  sltu         a4, a0, s0
                  c.lui        a3, 25
                  c.srli       a0, 9
                  c.and        a4, s1
                  c.or         a5, a0
                  lui          t6, 287251
                  lui          t1, 1034060
                  c.nop
                  xor          ra, tp, a5
                  c.mv         s1, a3
                  div          s3, a5, s10
                  sll          t0, s6, s11
                  c.srli       a5, 27
                  c.nop
                  c.andi       a5, 0
                  sll          t4, a4, s4
                  c.sub        a0, a1
                  mulhsu       t5, a0, t2
                  c.li         s8, -1
                  auipc        s11, 672762
                  ori          s4, gp, -669
                  srli         s10, t1, 2
                  nop
                  mulhsu       a7, a6, s5
                  sub          t4, a3, s1
                  ori          s7, s9, 191
                  srli         s1, t1, 17
                  xor          s3, s8, s1
                  srl          t6, t2, s10
                  nop
                  srli         s6, t3, 22
                  c.li         tp, -1
                  c.srli       s0, 22
                  sub          t1, s0, a5
                  and          s10, s4, t3
                  sltu         ra, a3, tp
                  remu         sp, ra, tp
                  mulhsu       gp, s8, a3
                  c.lui        t6, 21
                  c.addi4spn   a3, sp, 48
                  c.srai       a5, 10
                  srl          a3, t3, s2
                  c.or         s1, a1
                  xor          a3, t4, a4
                  nop
                  srli         t5, t1, 0
                  sltiu        ra, s1, 896
                  lui          a7, 147153
                  srai         s4, a5, 0
                  c.addi16sp   sp, -16
                  c.sub        a1, a1
                  xori         s10, t3, -1035
                  xori         s10, t1, -193
                  sra          s1, a2, a5
                  add          a4, s7, s9
                  mulhsu       a3, gp, s0
                  ori          a5, s11, 1371
                  add          a6, s1, a6
                  c.mv         s2, t2
                  ori          s1, a2, 274
                  lui          s11, 951442
                  divu         t1, s4, a5
                  c.sub        a1, a1
                  c.addi4spn   a0, sp, 16
                  and          a7, s2, t6
                  c.add        a6, a3
                  c.add        s8, s9
                  sra          t1, s0, t6
                  c.add        t1, s4
                  c.andi       a5, -1
                  sra          s6, s4, a3
                  mulhsu       a5, tp, zero
                  mulhu        a0, s11, s11
                  c.nop
                  c.nop
                  li           ra, 0x80000000 #start riscv_int_numeric_corner_stream_6
                  li           tp, 0x97f93c5c
                  li           s3, 0x94e1ccbe
                  li           s5, 0xffffffff
                  li           s2, 0x0
                  li           t4, 0x80000000
                  li           a3, 0x80000000
                  li           t0, 0x80000000
                  li           s10, 0xffffffff
                  li           t2, 0x6c717415
                  divu         t4, t2, s10
                  mulh         s10, s3, s10
                  auipc        tp, 644704
                  add          t2, s2, t2
                  rem          s10, tp, a3
                  lui          s2, 132568
                  mulhsu       s10, a3, a3
                  divu         t4, ra, ra
                  add          s10, s10, a3
                  sub          s5, a3, s3
                  addi         tp, t0, -311
                  addi         s3, t4, 1174
                  div          s3, t4, t2
                  addi         s10, t2, 1060
                  remu         tp, s2, s10
                  lui          t0, 721726
                  add          t4, t4, t4
                  rem          t0, t4, s2
                  mulhu        ra, s2, a3
                  remu         tp, ra, s10
                  mulh         ra, t4, s2
                  sub          ra, s2, s3
                  nop
                  addi         s10, ra, 415
                  nop
                  auipc        s5, 526113 #end riscv_int_numeric_corner_stream_6
                  sltiu        tp, s8, -1648
                  mulhsu       t5, s7, t3
                  slti         s2, s2, 1427
                  c.and        a3, a4
                  slti         s1, s6, -347
                  slt          t2, s6, t2
                  c.addi4spn   a3, sp, 32
                  c.srai       s1, 25
                  slli         s7, s11, 21
                  sub          a3, s10, a6
                  sll          t2, a2, a2
                  c.or         a4, s1
                  xori         t6, a5, -589
                  c.lui        t0, 25
                  slti         t4, t3, 704
                  c.nop
                  c.srli       a3, 27
                  c.addi16sp   sp, -16
                  slli         a1, s5, 3
                  c.and        a3, a4
                  c.sub        a5, s0
                  c.srai       a0, 11
                  slti         t6, tp, 289
                  divu         t0, a1, t5
                  slli         a5, s8, 12
                  addi         s3, s4, 1120
                  c.add        s11, t5
                  slt          s10, a0, zero
                  addi         s1, s2, 1466
                  sltiu        ra, a0, -728
                  srai         t4, t3, 16
                  addi         a4, s3, -2043
                  add          a6, t4, t5
                  sltiu        sp, a4, 830
                  c.add        s6, gp
                  xori         s8, t6, -1022
                  div          s10, t3, s5
                  auipc        ra, 923600
                  and          t2, s5, a6
                  rem          s8, zero, s4
                  mulh         t0, sp, a6
                  sll          a0, t4, t1
                  srli         a1, s3, 1
                  sltiu        t0, t3, 834
                  div          a0, a4, s4
                  addi         a7, a5, 1129
                  sltiu        s2, a3, -1347
                  mulhsu       a4, a2, a0
                  mulhu        a5, a3, t5
                  slti         a7, a5, 1584
                  c.lui        t5, 25
                  andi         a4, s9, 1438
                  remu         t4, ra, s6
                  addi         sp, sp, 1378
                  c.lui        s0, 7
                  divu         s10, zero, s1
                  c.andi       a0, -1
                  c.srai       a1, 11
                  c.addi       gp, 19
                  c.srli       s0, 30
                  c.xor        s0, s1
                  c.add        s4, s1
                  c.lui        a7, 21
                  srl          a3, s10, t1
                  mulhsu       a6, s9, t3
                  mulhsu       a7, a4, zero
                  c.mv         s5, s8
                  c.addi16sp   sp, 432
                  c.slli       s1, 1
                  c.sub        s1, a1
                  rem          zero, a3, a1
                  mul          a4, sp, t6
                  div          s7, s8, s4
                  c.or         a3, s0
                  ori          s0, s9, -143
                  c.srli       s1, 6
                  mulh         s8, t3, tp
                  c.li         a5, -1
                  rem          tp, gp, s5
                  slt          s6, a0, s1
                  c.andi       s1, -1
                  c.mv         t4, a0
                  slti         s3, s3, -1502
                  sub          s6, a0, t1
                  c.and        a4, a1
                  sll          a7, tp, s8
                  c.mv         s8, a1
                  remu         s5, t2, s10
                  add          s1, ra, s10
                  c.li         s7, 27
                  ori          s5, s10, -1424
                  divu         a3, s0, t4
                  c.sub        s0, s0
                  and          t0, s11, t2
                  c.nop
                  ori          s1, a2, 386
                  c.xor        a0, a2
                  c.sub        s1, a0
                  mul          zero, a5, s3
                  sra          a3, t5, s4
                  c.xor        s0, a4
                  and          a7, zero, a0
                  or           s3, a4, s6
                  sra          a1, s7, s4
                  mulhu        tp, ra, t1
                  c.sub        s0, a2
                  c.addi4spn   a0, sp, 224
                  slti         s8, s9, -1721
                  sll          tp, t3, s1
                  andi         a5, s2, 1848
                  remu         s10, s10, a0
                  xor          t6, a2, s4
                  c.xor        a0, a3
                  or           a4, s0, s11
                  andi         a4, s5, -1691
                  slli         s3, sp, 21
                  slti         zero, s10, -666
                  c.li         s5, 5
                  sub          s2, s9, a5
                  slt          t0, sp, s1
                  c.addi4spn   a4, sp, 112
                  c.nop
                  c.srai       s1, 23
                  divu         t4, a6, a7
                  xori         gp, a0, -410
                  c.srai       a1, 29
                  rem          a6, s10, a7
                  andi         t6, gp, 299
                  nop
                  nop
                  mulh         t4, ra, a2
                  c.srai       a0, 6
                  mulhsu       s7, s9, s6
                  remu         a1, zero, t0
                  c.addi       a7, -1
                  andi         t0, a2, 1530
                  c.or         a5, a3
                  rem          s2, s4, sp
                  nop
                  remu         s5, s8, a5
                  c.xor        a1, a1
                  remu         s1, a6, s2
                  c.or         s0, a2
                  sra          s11, a3, zero
                  andi         t5, s5, -953
                  srl          gp, a0, zero
                  slli         s10, s4, 19
                  c.mv         s3, tp
                  c.andi       a0, -1
                  c.addi4spn   a3, sp, 528
                  auipc        tp, 354612
                  and          a7, t6, a2
                  c.srai       a5, 22
                  srli         t4, a4, 17
                  nop
                  c.addi16sp   sp, 368
                  srli         tp, s4, 0
                  or           a5, s10, s8
                  sltu         a4, s4, a2
                  xor          a6, tp, a5
                  mul          t2, a2, a0
                  and          s0, s9, s7
                  rem          a7, s0, s1
                  c.xor        a3, a3
                  slti         t4, t2, 507
                  c.srli       s0, 27
                  ori          t6, t2, -1524
                  c.add        s2, t1
                  srai         t0, ra, 2
                  ori          s3, sp, -889
                  c.nop
                  slti         s5, s11, -2034
                  ori          t1, s6, 1124
                  c.xor        a0, s1
                  mul          a5, s9, t1
                  rem          a4, s8, s5
                  c.andi       a0, 29
                  slli         zero, t3, 11
                  andi         gp, a6, -220
                  auipc        zero, 60544
                  c.srai       a5, 18
                  xori         s8, s9, 433
                  mulhsu       s1, zero, a6
                  c.addi4spn   s1, sp, 560
                  mulh         t6, tp, tp
                  add          tp, s7, s11
                  mul          s0, zero, s10
                  sltu         s3, a1, t1
                  addi         a6, s7, -205
                  add          tp, s0, s10
                  c.srli       s0, 26
                  remu         tp, a1, t3
                  divu         t2, s11, a5
                  srl          t5, a2, gp
                  rem          a7, a1, s9
                  c.mv         t1, a4
                  c.andi       a1, 15
                  sub          t6, s8, sp
                  or           a3, s4, s10
                  c.xor        s0, s0
                  c.addi       s3, -1
                  c.xor        a3, a4
                  c.andi       a3, 28
                  srli         t4, s2, 7
                  rem          t6, s5, s3
                  mulhu        gp, t4, s0
                  divu         zero, s1, s6
                  lui          s0, 1018189
                  divu         s5, s2, t2
                  c.li         t1, -1
                  sll          gp, s1, t5
                  sra          a7, a7, s0
                  c.add        a5, a2
                  c.andi       a3, -1
                  c.srli       a4, 27
                  sll          a1, t1, t5
                  xori         s7, s0, -1357
                  c.srai       a0, 26
                  c.and        a3, s1
                  c.add        a7, a7
                  xori         s11, a6, -478
                  c.li         s11, -1
                  c.add        a1, gp
                  c.lui        tp, 11
                  lui          t0, 491880
                  c.andi       a1, -1
                  sub          t4, zero, tp
                  sub          s7, t5, sp
                  andi         t6, s8, 760
                  sub          s7, a0, s9
                  c.addi4spn   a3, sp, 864
                  c.or         a4, s1
                  mulhu        s2, s0, s4
                  remu         a3, a4, a2
                  c.addi       ra, 11
                  divu         a7, t6, s2
                  c.addi       a7, -1
                  slli         a3, a4, 0
                  c.mv         a4, s1
                  c.xor        a5, a4
                  c.xor        a4, s1
                  c.addi       t4, 18
                  addi         s7, t5, -1841
                  slt          s0, s6, tp
                  nop
                  c.addi4spn   a0, sp, 240
                  lui          t1, 918838
                  srai         zero, s3, 11
                  nop
                  ori          sp, gp, -183
                  mulhsu       s1, a7, t6
                  mulhu        tp, a2, s11
                  c.addi       s11, -1
                  sll          s0, s3, t4
                  c.slli       s7, 16
                  c.and        a4, a4
                  c.srai       a1, 16
                  mulhsu       a0, t2, s3
                  sltu         s3, sp, s2
                  and          s0, sp, t6
                  c.addi       a6, -1
                  rem          s0, s3, s9
                  srli         gp, s9, 30
                  c.andi       a3, 11
                  addi         t0, t0, 1198
                  remu         sp, t1, s4
                  c.srli       a4, 28
                  c.lui        gp, 28
                  c.srai       a5, 2
                  sll          zero, a5, s9
                  lui          s11, 539630
                  sltu         ra, s9, t6
                  mul          a0, s4, s10
                  mul          s7, s10, t5
                  c.sub        a4, a1
                  ori          a3, gp, 1724
                  mulh         s4, s3, s11
                  auipc        s4, 633607
                  c.mv         a6, s11
                  c.lui        t0, 18
                  xor          ra, a7, a7
                  sra          t5, a0, a4
                  xori         a6, t5, -1111
                  andi         t2, a2, -1519
                  c.li         t1, -1
                  c.lui        a5, 26
                  c.srai       a5, 9
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_12
                  li           s4, 0x508fe412
                  li           ra, 0xa9ea9279
                  li           t6, 0xffffffff
                  li           t5, 0x0
                  li           tp, 0x80000000
                  li           s2, 0xffffffff
                  li           s11, 0x0
                  li           a7, 0x80000000
                  li           s10, 0x31cf401
                  mul          s11, a7, s4
                  mulhu        s10, s2, t6
                  mul          s10, ra, t5
                  mulhu        t0, t5, t5
                  mulhsu       tp, s10, ra
                  mul          s4, t5, s11
                  add          t6, tp, s10
                  sub          s4, s10, s11
                  rem          s11, tp, ra
                  mul          t6, t6, t5
                  mul          s2, t0, ra
                  lui          s10, 723729
                  mul          tp, ra, t6
                  auipc        s10, 299559
                  nop
                  mulhsu       s10, s10, a7
                  rem          t5, a7, s10
                  nop
                  divu         ra, a7, t5
                  rem          s2, s11, t6
                  rem          ra, t6, s4
                  mulhu        s4, tp, t0
                  addi         s11, s4, -1895
                  rem          t6, t0, t6
                  auipc        t5, 77988 #end riscv_int_numeric_corner_stream_12
                  lui          a7, 870940
                  and          a5, s6, gp
                  xori         s1, zero, -1947
                  ori          s4, zero, 1950
                  c.li         t2, 25
                  sub          t6, t1, s5
                  srai         t0, a5, 23
                  c.xor        a4, a2
                  mulh         a6, a0, t6
                  c.srai       a3, 28
                  and          a7, zero, s6
                  c.add        a7, s4
                  ori          t4, t3, -116
                  mul          s0, t6, t0
                  mulhsu       a0, ra, s7
                  sub          sp, ra, ra
                  c.srli       a3, 16
                  sra          t2, ra, s11
                  srl          t0, t0, t3
                  c.mv         a0, a3
                  c.lui        a6, 9
                  auipc        s0, 463835
                  divu         a3, t2, a5
                  c.and        a3, a2
                  mulh         s0, a0, s3
                  c.srli       a4, 24
                  c.mv         s10, a2
                  divu         s8, t3, a5
                  sra          tp, a1, s6
                  mulhsu       tp, s8, a6
                  div          t2, s10, s4
                  sltiu        ra, sp, -1145
                  mulh         s10, a5, s11
                  c.add        s8, a5
                  c.addi       a6, 16
                  xor          s8, t4, s10
                  c.srai       a1, 30
                  nop
                  lui          s0, 1003953
                  and          t5, t5, t5
                  c.mv         s0, t5
                  c.nop
                  c.sub        a3, a1
                  ori          t5, a3, -887
                  c.andi       a5, 27
                  ori          a1, t5, -154
                  srl          s2, s6, a5
                  slti         tp, s1, 1611
                  sltu         s1, s0, a0
                  remu         s0, s10, ra
                  c.addi       s5, 5
                  c.and        s0, a0
                  c.srli       a3, 31
                  c.mv         a3, s6
                  c.addi       s7, -1
                  andi         sp, a6, 883
                  c.li         s3, 19
                  sltiu        s3, s4, -1071
                  or           s8, ra, gp
                  ori          a7, a7, 1518
                  c.mv         a7, a7
                  sub          s1, a2, a0
                  c.srai       a0, 29
                  ori          a1, t4, 457
                  sub          s0, gp, s0
                  c.slli       s0, 8
                  c.slli       t0, 21
                  c.addi4spn   s0, sp, 64
                  c.li         s0, 19
                  c.slli       t2, 10
                  srli         a4, a5, 27
                  c.srai       a1, 24
                  mulhu        zero, s11, s11
                  c.or         a0, a4
                  add          s2, a1, a7
                  c.addi       sp, -1
                  andi         t4, a6, 1801
                  xor          gp, a2, gp
                  c.xor        a5, a2
                  slt          t1, a0, a6
                  lui          t1, 408837
                  c.mv         t1, a5
                  c.srli       s1, 3
                  sll          t2, a0, s7
                  c.slli       s2, 1
                  c.addi4spn   a4, sp, 112
                  or           sp, s5, s3
                  mul          s6, a5, a4
                  slti         a6, sp, 1700
                  auipc        s7, 872390
                  add          a5, sp, s7
                  mulh         ra, a3, s3
                  nop
                  mulh         s1, gp, a4
                  sltiu        s3, s1, 1767
                  c.li         a7, -1
                  sltiu        a1, a3, 623
                  c.or         a0, a4
                  xori         s5, s10, -668
                  mulhu        a4, a0, a7
                  sltu         t2, sp, gp
                  c.nop
                  remu         s3, s7, s5
                  rem          t4, s11, t5
                  slti         a4, a7, -37
                  addi         a3, t0, -277
                  addi         s1, t4, -114
                  c.and        a5, a1
                  sll          t1, a5, s10
                  c.mv         tp, a0
                  ori          s11, t5, -167
                  c.srli       a0, 30
                  c.addi       a4, 26
                  and          a4, t4, gp
                  sltu         a1, s3, s0
                  sltiu        a3, s2, 1483
                  c.andi       s1, 10
                  sltu         s10, zero, s9
                  mulhu        s8, s10, s2
                  c.slli       s11, 15
                  or           t4, a1, s9
                  c.addi       t5, -1
                  slti         s4, s10, -657
                  c.nop
                  c.or         a0, s1
                  mulh         s10, t6, s0
                  auipc        gp, 171592
                  nop
                  mul          a7, s4, a5
                  c.srai       a0, 7
                  and          s3, t2, ra
                  sll          gp, s5, s9
                  sltiu        s5, s10, 1024
                  c.andi       s1, 12
                  c.addi4spn   a4, sp, 352
                  c.add        t6, a4
                  srai         t1, ra, 12
                  and          s1, t4, t2
                  add          t5, s7, s7
                  sub          a3, a4, s4
                  auipc        tp, 284487
                  auipc        a0, 894492
                  c.srli       a1, 9
                  srli         a7, t3, 1
                  xori         s6, gp, -36
                  c.srai       a0, 27
                  c.or         s0, a4
                  div          t2, s3, a4
                  c.addi       a3, -1
                  remu         s3, tp, a1
                  c.addi       s8, -1
                  c.srli       s1, 19
                  sltu         s4, s10, tp
                  c.andi       a4, -1
                  ori          a7, s7, -1084
                  ori          s6, t0, 1347
                  c.and        a1, a4
                  or           a5, s1, a7
                  slt          s0, a3, s9
                  and          a7, s5, s8
                  remu         s7, a0, t0
                  rem          zero, t5, s11
                  c.andi       s1, 24
                  c.slli       t5, 7
                  add          s10, s9, s8
                  slti         a3, s10, 1599
                  slt          s3, s5, s8
                  srai         t2, a4, 6
                  c.srai       a1, 13
                  sll          s1, s4, ra
                  c.srli       s0, 26
                  ori          s2, ra, -733
                  divu         s1, s11, ra
                  c.slli       s10, 11
                  slli         a6, t4, 1
                  srl          t4, a2, s2
                  c.lui        s1, 6
                  c.or         a3, a4
                  add          tp, s4, a7
                  remu         a4, s7, t5
                  sltu         a0, a0, t1
                  c.mv         ra, gp
                  auipc        zero, 198784
                  divu         t2, t0, t6
                  sltiu        s4, s4, 725
                  c.mv         s5, t0
                  c.or         a5, a2
                  sll          t2, t0, s4
                  andi         a1, a7, 766
                  slti         t2, gp, 397
                  remu         s8, s0, zero
                  c.mv         s5, a3
                  c.addi       s2, 18
                  addi         a3, s0, 579
                  c.andi       a0, -1
                  c.lui        s5, 3
                  srl          s8, s10, a1
                  div          t5, s8, a3
                  c.lui        t0, 12
                  add          s10, gp, s1
                  c.srai       s0, 31
                  slli         t6, ra, 15
                  c.and        a3, a4
                  c.or         s0, s1
                  c.nop
                  c.andi       a3, -1
                  c.sub        a0, a1
                  c.add        t4, a6
                  srai         a7, t2, 15
                  c.srli       a1, 23
                  sub          s8, t1, a6
                  nop
                  auipc        s4, 353354
                  add          a0, s9, s2
                  divu         s11, a0, t6
                  c.nop
                  c.addi16sp   sp, -16
                  c.and        a4, s1
                  andi         s6, s11, -1589
                  la x25, test_done
                  jalr x0, x25, 0
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
.align           2
mtvec_handler:    
                  addi x28, x28, -4
                  sw  x12, (x28)
                  add x12, x28, zero
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x28, x12, zero
                  csrr x21, 0x300 # MSTATUS
                  csrr x21, 0x342 # MCAUSE
                  srli x21, x21, 31
                  bne x21, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x21, 0x341 # MEPC
                  csrr x21, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x21, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x21, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x21, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x21, x27, ecall_handler
                  li x27, 0x1
                  beq x21, x27, instr_fault_handler
                  li x27, 0x5
                  beq x21, x27, load_fault_handler
                  li x27, 0x7
                  beq x21, x27, store_fault_handler
                  li x27, 0xc
                  beq x21, x27, pt_fault_handler
                  li x27, 0xd
                  beq x21, x27, pt_fault_handler
                  li x27, 0xf
                  beq x21, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x21, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x21, _start
                  sw x0, 0(x21)
                  sw x1, 4(x21)
                  sw x2, 8(x21)
                  sw x3, 12(x21)
                  sw x4, 16(x21)
                  sw x5, 20(x21)
                  sw x6, 24(x21)
                  sw x7, 28(x21)
                  sw x8, 32(x21)
                  sw x9, 36(x21)
                  sw x10, 40(x21)
                  sw x11, 44(x21)
                  sw x12, 48(x21)
                  sw x13, 52(x21)
                  sw x14, 56(x21)
                  sw x15, 60(x21)
                  sw x16, 64(x21)
                  sw x17, 68(x21)
                  sw x18, 72(x21)
                  sw x19, 76(x21)
                  sw x20, 80(x21)
                  sw x21, 84(x21)
                  sw x22, 88(x21)
                  sw x23, 92(x21)
                  sw x24, 96(x21)
                  sw x25, 100(x21)
                  sw x26, 104(x21)
                  sw x27, 108(x21)
                  sw x28, 112(x21)
                  sw x29, 116(x21)
                  sw x30, 120(x21)
                  sw x31, 124(x21)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  add x28, x12, zero
                  lw  x12, (x28)
                  addi x28, x28, 4
                  mret

load_fault_handler:
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  add x28, x12, zero
                  lw  x12, (x28)
                  addi x28, x28, 4
                  mret

store_fault_handler:
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  add x28, x12, zero
                  lw  x12, (x28)
                  addi x28, x28, 4
                  mret

ebreak_handler:   
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  add x28, x12, zero
                  lw  x12, (x28)
                  addi x28, x28, 4
                  mret

illegal_instr_handler:
                  csrr  x21, 0x341
                  addi  x21, x21, 4
                  csrw  0x341, x21
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  add x28, x12, zero
                  lw  x12, (x28)
                  addi x28, x28, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x21, 0x300 # MSTATUS;
                  csrr  x21, 0x304 # MIE;
                  csrr  x21, 0x344 # MIP;
                  csrrc x21, 0x344, x21 # MIP;
                  add x12, x28, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  add x28, x12, zero
                  lw  x12, (x28)
                  addi x28, x28, 4
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
