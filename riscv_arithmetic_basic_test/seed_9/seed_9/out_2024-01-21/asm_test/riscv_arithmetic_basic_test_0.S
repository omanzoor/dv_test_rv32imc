.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x25, 0x40001104
                  csrw 0x301, x25
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  li x25, 0x0
                  csrw 0x304, x25 # MIE
                  mret
init:             
                  li x0, 0xf5d0f96b
                  li x1, 0x0
                  li x2, 0x3a198f84
                  li x3, 0x80000000
                  li x4, 0xaa4c6c64
                  li x5, 0x0
                  li x6, 0x1
                  li x8, 0xf2322a24
                  li x9, 0xf747ee2e
                  li x10, 0x0
                  li x11, 0xb
                  li x12, 0x0
                  li x13, 0x4e9049ad
                  li x14, 0xc
                  li x15, 0x80000000
                  li x16, 0xfaa8d175
                  li x17, 0x5
                  li x18, 0xfea7cf9d
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0xd7c2d6bf
                  li x24, 0x80000000
                  li x25, 0xd
                  li x26, 0x9
                  li x27, 0xf26bd464
                  li x28, 0x85f4501b
                  li x29, 0xf8dea0f1
                  li x30, 0x8
                  li x31, 0xf49c1969
                  la x19, user_stack_end
main:             li           a0, 0x32c86c00 #start riscv_int_numeric_corner_stream_6
                  li           s8, 0x80000000
                  li           s5, 0x80000000
                  li           s0, 0x80000000
                  li           s10, 0xffffffff
                  li           s2, 0x80000000
                  li           t6, 0x81033024
                  li           gp, 0x80000000
                  li           s9, 0x0
                  li           s1, 0xe7d0b194
                  mulhu        t6, t6, a0
                  nop
                  remu         s1, t6, s0
                  addi         s8, s5, 1938
                  add          gp, s10, t6
                  auipc        s9, 124521
                  addi         t6, gp, 1916
                  remu         s2, gp, t6
                  sub          t6, gp, gp
                  sub          s8, gp, a0
                  mulh         gp, s1, s10
                  lui          a0, 715610
                  mulh         s5, s5, s0
                  rem          a0, s5, s2
                  addi         s5, s0, 1421
                  remu         t6, t6, s5
                  rem          s2, s8, s8
                  remu         s9, s8, s5
                  addi         s10, s1, -498
                  mulhu        s5, s5, gp
                  mul          t6, s0, s0
                  rem          s10, t6, s8
                  nop
                  mulh         s5, s8, s8
                  lui          s1, 223046
                  lui          s2, 147237
                  remu         s10, s5, s5
                  divu         t6, t6, a0
                  mulhsu       s5, s8, a0 #end riscv_int_numeric_corner_stream_6
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_9
                  li           a3, 0x8a7e2431
                  li           t3, 0x80000000
                  li           sp, 0xa126b51d
                  li           t0, 0xffffffff
                  li           a1, 0x80000000
                  li           t1, 0xac41f7f7
                  li           ra, 0x0
                  li           s5, 0xffffffff
                  li           s8, 0x80000000
                  div          ra, t1, a3
                  mulhu        sp, a1, t1
                  divu         t3, a1, t1
                  mulhsu       t3, t3, a1
                  divu         t1, a1, sp
                  nop
                  nop
                  remu         t3, t1, s5
                  addi         a1, a1, 152
                  sub          a1, sp, s8
                  sub          s6, sp, s8
                  nop
                  div          sp, s5, a3
                  addi         sp, ra, 436
                  divu         t3, s5, t3
                  rem          ra, a1, a1
                  mul          a1, a3, a1
                  rem          t0, a1, s8 #end riscv_int_numeric_corner_stream_9
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_2
                  li           s4, 0x80000000
                  li           t3, 0xffffffff
                  li           a5, 0x80000000
                  li           tp, 0x466f0af5
                  li           a6, 0x0
                  li           s1, 0xdcece1c2
                  li           ra, 0x76173cb2
                  li           s7, 0x63cec18d
                  li           s6, 0x0
                  add          ra, a5, a6
                  rem          sp, sp, a5
                  lui          sp, 504870
                  divu         s1, a6, s6
                  nop
                  mulhsu       sp, s6, tp
                  divu         a5, s6, sp
                  div          t3, t3, tp
                  remu         t3, s7, a5
                  mulhsu       a6, s1, ra
                  rem          sp, s1, s6
                  lui          sp, 1042150
                  divu         s6, a5, tp
                  divu         sp, s1, s4
                  mul          tp, a6, t3 #end riscv_int_numeric_corner_stream_2
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           s7, 0x6d8fd659
                  li           sp, 0xffffffff
                  li           s11, 0x0
                  li           t6, 0x80000000
                  li           a3, 0x135ffbbd
                  li           t5, 0x80000000
                  li           t4, 0xdeca9b05
                  li           a5, 0xffffffff
                  li           s5, 0x0
                  remu         t4, s11, t4
                  lui          sp, 836558
                  nop
                  mulhu        t5, s11, t4
                  addi         s5, s5, 684
                  add          sp, t6, t5
                  add          t4, sp, s11
                  mulhu        a3, sp, s7
                  add          gp, s11, s11
                  mulhsu       gp, s7, gp
                  mulhsu       a5, s5, t5
                  remu         s7, t5, s5
                  divu         t5, t6, gp
                  mul          t6, s5, gp
                  div          a5, sp, gp
                  mulhu        s11, s5, a3
                  remu         sp, s5, t5
                  add          s7, sp, a5
                  mulhsu       t5, sp, a5
                  add          gp, t4, a3
                  mul          sp, s11, gp
                  remu         t4, t5, sp
                  nop
                  div          t5, s7, t5
                  nop
                  add          sp, s11, s7
                  rem          sp, s7, t6
                  mulh         s11, s11, s5 #end riscv_int_numeric_corner_stream_21
                  li           s10, 0xffffffff #start riscv_int_numeric_corner_stream_36
                  li           t4, 0xc4289c03
                  li           t3, 0x80000000
                  li           s1, 0x80000000
                  li           s0, 0xc58f1dfd
                  li           a0, 0x80000000
                  li           gp, 0xe2d71336
                  li           a7, 0x682b4e33
                  li           t0, 0x80000000
                  li           s9, 0x80000000
                  divu         s0, t0, s10
                  mulhu        t0, s10, t4
                  mul          gp, gp, t4
                  mulhsu       gp, t3, s9
                  add          s0, s0, s9
                  nop
                  mulhsu       t3, t0, s10
                  remu         s10, a0, s1
                  rem          a7, s10, a0
                  mulh         a0, s0, t0
                  lui          s1, 591809
                  sub          t4, s10, gp
                  div          gp, t3, gp
                  add          t0, s1, t3
                  mulhsu       a0, gp, a0
                  nop
                  lui          gp, 233197
                  mulhu        s0, a7, s0
                  mulh         a0, t0, s0
                  mulhu        t4, t3, a0
                  mulhsu       t3, s1, t3
                  mulh         s1, a7, s9
                  sub          a0, s0, gp
                  mul          t0, gp, t0
                  mulhsu       s10, s9, t3 #end riscv_int_numeric_corner_stream_36
                  li           t4, 0x0 #start riscv_int_numeric_corner_stream_29
                  li           a7, 0xbf892101
                  li           a3, 0x80000000
                  li           s2, 0x0
                  li           s7, 0x0
                  li           s5, 0xde11ffc9
                  li           a6, 0x80000000
                  li           t5, 0x80000000
                  li           s0, 0x0
                  li           s11, 0x0
                  mulhu        s2, a6, s5
                  mulh         s0, a7, a6
                  mul          a3, s7, s11
                  mulhu        t4, a3, s5
                  rem          s5, a7, s2
                  nop
                  mulhsu       t5, s0, s7
                  sub          s0, s11, s5
                  lui          s5, 626566
                  remu         s11, s2, a6
                  mulhsu       a3, t5, a3
                  mulhu        s2, t5, a7
                  mulhsu       t5, s2, a7
                  lui          s5, 460636
                  mul          s2, s11, s0
                  add          t5, s2, s11
                  mulhsu       a6, t5, t5
                  nop
                  auipc        a7, 277005
                  mulh         a7, t5, a3 #end riscv_int_numeric_corner_stream_29
                  li           a6, 0x0 #start riscv_int_numeric_corner_stream_26
                  li           a3, 0xffffffff
                  li           s5, 0xba65c556
                  li           s9, 0x8f08b370
                  li           s4, 0xffffffff
                  li           a5, 0x99b85d5c
                  li           t0, 0xf5010ad1
                  li           s1, 0x471473fa
                  li           ra, 0x2947dee3
                  li           s11, 0xb5ed3624
                  auipc        s11, 655991
                  rem          a5, s9, a3
                  add          ra, s9, s5
                  add          ra, s5, a5
                  sub          s5, s11, s5
                  lui          s4, 631458
                  remu         s4, s9, s1
                  lui          ra, 592404
                  addi         s1, s11, 1160
                  mulhsu       a5, ra, s5
                  nop
                  divu         s1, s4, a3
                  sub          t0, s4, a5
                  nop
                  rem          a5, a5, s5
                  rem          a5, s4, a3
                  sub          s4, s11, a3
                  auipc        s9, 142426
                  add          a6, s4, a6
                  mulh         a5, a5, t0
                  lui          s5, 32772
                  add          ra, s11, s9
                  div          s11, s11, s4
                  divu         s11, s5, s9
                  divu         t0, s1, ra
                  div          s4, t0, s5
                  nop
                  div          a5, t0, s11 #end riscv_int_numeric_corner_stream_26
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_37
                  li           t0, 0x80000000
                  li           a3, 0x80000000
                  li           sp, 0xffffffff
                  li           s6, 0x0
                  li           a7, 0x0
                  li           a5, 0x38e9c8cb
                  li           t1, 0x80000000
                  li           ra, 0xffffffff
                  li           a0, 0x0
                  mulhu        s6, s6, ra
                  lui          sp, 616391
                  add          a6, a3, sp
                  div          s6, a0, a6
                  auipc        sp, 606717
                  mulhu        a5, a7, ra
                  remu         a0, s6, t1
                  mul          s6, s6, ra
                  nop
                  mulhu        s6, a6, a3
                  lui          a6, 538295
                  div          a6, s6, t0
                  div          s6, t1, ra
                  nop
                  auipc        ra, 588633
                  addi         s6, a6, 545
                  nop
                  div          a5, s6, a7
                  rem          t0, ra, ra
                  sub          a6, a0, t0
                  add          a5, a7, s6
                  addi         a7, a5, 1182
                  mulh         a5, s6, a5
                  remu         a6, sp, a5
                  auipc        a6, 439245
                  lui          a7, 343582
                  div          a7, a3, s6
                  add          a0, a5, a3
                  addi         a5, a0, 838 #end riscv_int_numeric_corner_stream_37
                  li           t6, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           s11, 0x80000000
                  li           a4, 0xe5273907
                  li           s9, 0x1d0cef79
                  li           a3, 0x80000000
                  li           s2, 0x0
                  li           a1, 0x80000000
                  li           gp, 0xffffffff
                  li           a5, 0xffffffff
                  li           ra, 0xffffffff
                  remu         s9, a4, gp
                  mulhu        s9, a1, s11
                  remu         s2, a3, s2
                  mul          a3, s9, a4
                  rem          a4, s9, a4
                  lui          s2, 839527
                  mulh         a4, s2, s2
                  div          a4, ra, s11
                  nop
                  div          a4, gp, ra
                  divu         s9, a5, a5
                  sub          s2, ra, s2
                  mulh         a4, a3, s9
                  rem          s11, t6, t6
                  rem          t6, s11, a4 #end riscv_int_numeric_corner_stream_10
                  li           t3, 0x0 #start riscv_int_numeric_corner_stream_24
                  li           sp, 0x2a9f9275
                  li           s8, 0x0
                  li           a3, 0x8c88cec9
                  li           s11, 0x1fcc7584
                  li           s5, 0x80000000
                  li           s6, 0xffffffff
                  li           a4, 0x0
                  li           a5, 0x0
                  li           t4, 0x688196f7
                  add          sp, a5, a3
                  mulhu        s6, a3, s5
                  mulh         a3, a5, t3
                  addi         s11, s8, 447
                  auipc        sp, 917958
                  sub          sp, t3, sp
                  mulh         s5, s5, s5
                  rem          a5, s5, s11
                  lui          a4, 826968
                  div          s11, s11, s5
                  addi         s11, s6, 1678
                  mul          t3, a5, sp
                  div          s6, a5, a5
                  rem          s6, s5, t3
                  mul          s8, t4, s8
                  mulhu        s6, sp, a3
                  nop
                  lui          a4, 746206
                  sub          s11, s11, a5
                  divu         a5, s11, a3
                  auipc        sp, 132445
                  auipc        s8, 819568
                  mulhu        sp, s8, a5
                  mulhsu       s6, s11, sp
                  remu         s5, a4, a4
                  mulhu        a4, sp, s11
                  mulh         a5, s5, s6
                  add          a5, s5, t3 #end riscv_int_numeric_corner_stream_24
                  li           a7, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           tp, 0x80000000
                  li           a1, 0xffffffff
                  li           gp, 0x80000000
                  li           s0, 0x0
                  li           sp, 0x80000000
                  li           t6, 0x0
                  li           s4, 0xffffffff
                  li           t3, 0x80000000
                  li           s2, 0x0
                  remu         sp, gp, a7
                  sub          sp, t6, gp
                  remu         s0, tp, gp
                  sub          a1, t6, s0
                  rem          a1, t3, t6
                  divu         a7, tp, sp
                  mul          sp, s2, sp
                  add          a1, s4, t6
                  nop
                  sub          t3, t6, t3
                  mulhsu       a1, gp, t3
                  addi         a7, gp, 953
                  rem          t6, sp, t6
                  mul          tp, a7, sp
                  lui          sp, 90562
                  mulhu        tp, s0, s0
                  auipc        a7, 788223
                  lui          t3, 7691
                  lui          a1, 747038
                  div          a7, s2, a7
                  remu         sp, t3, tp
                  sub          s2, tp, sp
                  auipc        s0, 815287
                  rem          gp, s0, s4
                  rem          tp, tp, gp
                  mulh         gp, sp, tp
                  rem          tp, s0, sp
                  add          s0, s0, s0
                  mulhu        a1, t6, gp #end riscv_int_numeric_corner_stream_0
                  li           s7, 0x80000000 #start riscv_int_numeric_corner_stream_34
                  li           t1, 0x7173726d
                  li           s5, 0xffffffff
                  li           t6, 0x0
                  li           s0, 0x0
                  li           a4, 0xffffffff
                  li           s11, 0x0
                  li           s1, 0x80000000
                  li           a5, 0xc3aa0dd
                  li           s4, 0x1d10411
                  auipc        a4, 143019
                  mulhsu       s1, s11, t1
                  sub          t1, s5, s1
                  nop
                  mul          s0, s4, t6
                  divu         s4, s11, a5
                  auipc        s1, 770177
                  sub          s1, s11, s0
                  mulhu        s4, a4, s1
                  add          s5, a4, s5
                  div          s0, s11, s0
                  mulh         s7, a5, t6
                  mul          s7, s0, s4
                  auipc        t1, 57539
                  lui          s0, 877954
                  mul          s5, s0, a4
                  remu         s4, a5, s7
                  nop
                  nop
                  div          t1, s4, s11
                  nop
                  addi         s0, s5, -455
                  lui          s11, 941596
                  auipc        s4, 280308
                  mulh         s11, a4, a5
                  sub          s11, t1, s11
                  add          s4, a5, s4
                  add          s1, s5, a4
                  auipc        s4, 730593
                  mul          s5, s11, s7 #end riscv_int_numeric_corner_stream_34
                  li           s4, 0x65516529 #start riscv_int_numeric_corner_stream_1
                  li           a5, 0x0
                  li           a0, 0x78e72140
                  li           t1, 0x0
                  li           a4, 0x80000000
                  li           s6, 0x0
                  li           s9, 0xffffffff
                  li           ra, 0x80000000
                  li           s0, 0x0
                  li           s7, 0xffffffff
                  addi         s6, a5, 1705
                  nop
                  remu         s7, a0, a5
                  mulhsu       s9, a5, t1
                  addi         s6, s7, 1875
                  mulhu        s0, a4, s4
                  lui          s9, 623194
                  mul          ra, t1, s9
                  mul          ra, s0, s4
                  mulhsu       a5, t1, s0
                  add          s0, s4, s7
                  auipc        s7, 659142
                  addi         s9, ra, 584
                  mulh         a0, s4, s9
                  nop
                  lui          ra, 312200
                  mul          s6, s9, t1
                  divu         s9, a0, s6
                  mulh         a4, s9, ra
                  remu         ra, s4, a4
                  addi         s0, ra, 1345
                  addi         a5, ra, -707 #end riscv_int_numeric_corner_stream_1
                  li           s4, 0x0 #start riscv_int_numeric_corner_stream_30
                  li           a7, 0x0
                  li           a3, 0xffffffff
                  li           s9, 0xffffffff
                  li           t4, 0x949ec896
                  li           a1, 0xd9ae0e9f
                  li           s6, 0xffffffff
                  li           a6, 0x2fba58f6
                  li           a4, 0xffffffff
                  li           s2, 0xffffffff
                  remu         a1, s4, s6
                  addi         t4, s6, -266
                  divu         a3, a4, s6
                  rem          s9, a1, a6
                  rem          a6, a7, a4
                  add          a1, a1, a1
                  mulhu        a4, a1, a4
                  mulhsu       a7, a7, s6
                  divu         t4, s2, s2
                  addi         a3, s6, -498
                  mulhsu       a6, s4, t4
                  addi         a6, s4, 1677
                  addi         a7, a3, -1307
                  add          a1, a1, a6
                  div          a3, s4, a4
                  div          a3, a7, a6
                  lui          s9, 57352
                  nop
                  mulhu        a3, s6, s2
                  rem          t4, s2, s9
                  lui          a1, 143630
                  mulhsu       s9, t4, s6
                  auipc        s6, 1006010
                  mulhu        t4, t4, a7
                  remu         a1, a1, a4
                  add          a1, a4, s4
                  mulhu        s4, s4, s6 #end riscv_int_numeric_corner_stream_30
                  li           tp, 0x80000000 #start riscv_int_numeric_corner_stream_22
                  li           t0, 0x80000000
                  li           a4, 0xec2ec147
                  li           s2, 0x80000000
                  li           gp, 0xe85add2d
                  li           s6, 0x60e3a4af
                  li           s8, 0x80000000
                  li           t3, 0x18beb8fc
                  li           s0, 0x80000000
                  li           s10, 0xffffffff
                  mulhu        tp, t0, gp
                  lui          t3, 750813
                  addi         s0, s8, 919
                  mulh         s0, s2, s6
                  nop
                  divu         t3, t3, s6
                  lui          t3, 418306
                  add          gp, a4, s2
                  sub          s0, tp, gp
                  mulhu        a4, tp, s8
                  addi         t3, s0, 963
                  mulhu        gp, t0, tp
                  remu         t0, t3, s8
                  div          t3, s6, s10
                  mulhu        t0, t3, t0
                  rem          t3, s8, gp
                  mul          s10, a4, t0
                  add          t3, tp, s2
                  rem          s8, t0, s8
                  sub          t0, s8, s0
                  divu         t3, t3, t0
                  addi         tp, a4, -1481 #end riscv_int_numeric_corner_stream_22
                  li           a7, 0x80000000 #start riscv_int_numeric_corner_stream_13
                  li           t1, 0xffffffff
                  li           a1, 0x80000000
                  li           s2, 0x0
                  li           s4, 0x80000000
                  li           s7, 0x0
                  li           a4, 0x32ea8e82
                  li           s0, 0xffffffff
                  li           a3, 0x2eadc13f
                  li           t5, 0x0
                  lui          s2, 1009713
                  addi         s0, s2, 1979
                  div          s4, s0, a1
                  mulhsu       t5, s2, s0
                  mulhsu       s4, s0, s4
                  mulh         a7, s0, s4
                  div          s0, a3, s4
                  addi         s2, s2, -1938
                  div          a7, a1, a1
                  mulhu        s7, t5, s0
                  div          s4, t5, s4
                  sub          a1, s4, a1
                  mulhsu       a1, a1, t5
                  nop
                  add          a3, a1, a7
                  mul          a3, a7, s0
                  rem          a1, s7, s7
                  addi         a7, a1, -421
                  mulhu        s7, a3, a4
                  nop
                  mulh         t1, a1, a1
                  mul          t5, s2, a1
                  nop
                  addi         s7, a3, 651
                  nop
                  lui          a3, 1022565
                  nop
                  lui          s4, 458146
                  lui          t1, 709807 #end riscv_int_numeric_corner_stream_13
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_33
                  li           t4, 0xffffffff
                  li           t6, 0xffffffff
                  li           a4, 0x49a366d7
                  li           a0, 0xffffffff
                  li           s9, 0x80000000
                  li           a6, 0x0
                  li           s10, 0x0
                  li           a1, 0x0
                  li           s2, 0xe1f45e54
                  div          a4, a0, s2
                  nop
                  auipc        s2, 117933
                  rem          a4, a4, a1
                  auipc        s2, 743975
                  mulhu        a6, a6, t4
                  mulhsu       s2, s2, a1
                  rem          a4, s9, s10
                  mulhsu       s9, a1, a1
                  rem          a1, a4, a0
                  mulh         s10, t6, a0
                  auipc        a4, 407454
                  addi         t6, s2, 299
                  divu         a1, t6, a0
                  mul          s2, a1, t4
                  rem          a6, t6, a6 #end riscv_int_numeric_corner_stream_33
                  li           gp, 0xb03b9048 #start riscv_int_numeric_corner_stream_18
                  li           a6, 0x80000000
                  li           ra, 0xffffffff
                  li           t6, 0x0
                  li           t0, 0x80000000
                  li           s10, 0x80000000
                  li           s9, 0x80000000
                  li           tp, 0x80000000
                  li           sp, 0x80000000
                  li           t1, 0x0
                  nop
                  addi         s10, s9, 1134
                  mulh         t1, s9, sp
                  sub          ra, s10, ra
                  addi         s9, a6, 366
                  nop
                  sub          s10, sp, s9
                  mulh         s10, tp, t0
                  divu         ra, a6, gp
                  mulhsu       a6, s10, gp
                  mulhsu       gp, t6, gp
                  addi         t1, s9, 1997
                  lui          s10, 851409
                  addi         t1, s10, 1271
                  mulhsu       sp, t6, ra
                  add          gp, a6, t0
                  rem          t6, sp, t1
                  remu         t1, t6, sp
                  addi         t6, a6, 2019
                  sub          tp, t6, ra
                  auipc        ra, 68907
                  mul          ra, sp, s10
                  mulh         t0, s9, gp
                  rem          s9, t0, sp
                  remu         s9, tp, t0
                  rem          gp, ra, s10
                  add          s9, a6, t0
                  sub          gp, s9, ra #end riscv_int_numeric_corner_stream_18
                  li           t5, 0xffffffff #start riscv_int_numeric_corner_stream_31
                  li           tp, 0xa06f5c15
                  li           s8, 0xffffffff
                  li           t6, 0x80000000
                  li           sp, 0xcc103179
                  li           a0, 0x1291b18b
                  li           t1, 0x80000000
                  li           s11, 0x27f2ff9a
                  li           t0, 0xffffffff
                  li           s7, 0xe9fd953b
                  remu         s11, t5, t1
                  rem          a0, t0, s7
                  add          tp, a0, tp
                  mulhsu       a0, tp, sp
                  mul          s11, t6, sp
                  addi         s7, t6, 467
                  lui          t0, 525005
                  remu         tp, s7, t1
                  lui          t6, 282116
                  remu         t5, t0, t5
                  mulhsu       a0, tp, sp
                  addi         t1, s7, -1263
                  mulh         sp, t6, t1
                  mulh         s7, tp, s7
                  mulhsu       s7, s11, t1
                  mulhu        tp, s11, s7
                  remu         t1, a0, sp
                  addi         s7, s11, -1004
                  nop
                  remu         sp, t6, t5
                  add          a0, t6, sp
                  mulhu        t6, s7, s8
                  rem          t5, s8, s7
                  add          s7, tp, t1
                  add          tp, t5, t0
                  divu         s7, t0, a0
                  addi         s11, tp, -898
                  divu         tp, s8, s7
                  mul          t6, t6, t0 #end riscv_int_numeric_corner_stream_31
                  mulh         a1, s2, s5
                  addi         ra, t1, -1705
                  divu         a1, s6, s6
                  c.mv         t4, ra
                  ori          a4, t1, -1100
                  and          gp, s6, s7
                  ori          tp, a5, -229
                  srai         sp, a3, 8
                  slt          s10, a2, t3
                  xor          s1, a5, t2
                  c.and        a3, a3
                  c.or         a4, a4
                  mulhsu       t0, s4, a3
                  sltiu        sp, t5, 374
                  andi         tp, a3, -1175
                  addi         tp, sp, -958
                  c.lui        t4, 3
                  slli         a3, s1, 16
                  div          s5, t0, s6
                  mulhu        s5, s2, tp
                  sltiu        gp, s2, 174
                  c.slli       s0, 9
                  divu         a5, t1, t6
                  c.add        a0, a0
                  sltiu        s11, t0, 2009
                  c.srai       s1, 5
                  sltiu        a7, s8, 74
                  mul          a6, s2, s3
                  c.and        s1, a3
                  c.lui        gp, 19
                  c.nop
                  c.addi4spn   s1, sp, 416
                  addi         s5, t6, 1611
                  or           t3, s10, s5
                  sub          t0, s5, t3
                  or           t5, a4, s9
                  srli         ra, sp, 11
                  c.nop
                  nop
                  sltu         s8, s11, s4
                  c.addi16sp   sp, -16
                  sll          a6, s2, a2
                  c.nop
                  slli         s5, tp, 17
                  mulhsu       s9, ra, a1
                  sltu         s10, a3, s7
                  c.lui        t6, 25
                  sltu         s4, a0, s9
                  andi         s4, sp, -2041
                  mul          gp, s5, s7
                  divu         s2, a5, t6
                  mulh         t6, a6, s1
                  xori         zero, a5, 1678
                  auipc        s11, 861478
                  c.nop
                  c.or         s1, a1
                  srl          t1, tp, a0
                  sll          s7, s4, a4
                  srli         s8, ra, 30
                  addi         s9, a6, 1549
                  sltiu        s7, a2, -1614
                  c.nop
                  rem          t0, a2, s6
                  c.slli       s7, 12
                  andi         t6, s8, 728
                  rem          s7, s8, zero
                  sltiu        t1, s0, 988
                  srli         ra, a6, 21
                  slt          a5, a7, a5
                  lui          t1, 708940
                  divu         tp, s10, s8
                  c.srli       a3, 14
                  xor          s7, a2, s0
                  auipc        a7, 351010
                  c.srai       a3, 30
                  c.andi       a1, -1
                  nop
                  c.lui        s6, 13
                  c.xor        a4, a5
                  nop
                  andi         s7, a4, 128
                  slt          s11, a3, t1
                  c.addi       a5, 25
                  nop
                  c.lui        s2, 30
                  sub          s2, a3, s0
                  sll          ra, t0, s5
                  sltu         s0, t6, s9
                  divu         t0, s3, s9
                  sltu         a0, t0, sp
                  remu         zero, a1, sp
                  mulh         t6, t3, s1
                  nop
                  and          t4, t6, t6
                  sltu         t5, ra, a6
                  c.sub        a3, a2
                  c.sub        a1, a3
                  div          s4, a4, zero
                  c.andi       s0, 31
                  xori         s9, a5, 197
                  or           t6, s4, tp
                  lui          a4, 832244
                  or           a0, a5, ra
                  auipc        t4, 881011
                  sra          a5, s10, a4
                  sltiu        t6, s2, -1975
                  xor          s6, s2, ra
                  c.addi       tp, -1
                  mulhu        s0, gp, s3
                  mulhu        t1, s5, t2
                  or           t5, s4, tp
                  c.sub        a4, s0
                  c.srai       a3, 27
                  c.and        a4, a5
                  auipc        a3, 591020
                  sltiu        t0, a7, 268
                  ori          gp, s0, -282
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 176
                  c.mv         t6, a5
                  c.addi16sp   sp, 208
                  c.nop
                  c.srli       a5, 30
                  divu         a6, s6, a1
                  nop
                  addi         s10, t3, -750
                  sltiu        s4, t2, 542
                  mulhu        s4, s6, s8
                  c.add        s11, a5
                  c.or         s0, a5
                  srl          tp, s7, s9
                  nop
                  sll          t5, a5, a7
                  c.nop
                  slt          tp, t4, s4
                  add          a1, s10, t2
                  or           zero, gp, s7
                  c.addi4spn   a3, sp, 544
                  c.srli       a4, 19
                  slti         sp, s8, 257
                  c.li         s8, 15
                  or           s11, a0, a5
                  sltu         s10, zero, s6
                  srai         s8, s8, 29
                  c.addi4spn   s1, sp, 800
                  slli         s1, s1, 17
                  ori          s10, t5, -1191
                  sltu         a5, s1, s4
                  c.sub        a1, a1
                  mulhu        a1, t5, sp
                  xor          s0, zero, a7
                  or           a7, s1, sp
                  c.mv         t0, a0
                  mulhsu       t3, a5, s1
                  c.or         a1, a5
                  c.andi       s1, -1
                  srli         s5, a5, 21
                  sltu         s10, t4, a4
                  mulhsu       s0, t0, gp
                  c.xor        a5, s1
                  ori          s4, zero, -1906
                  sltu         s0, s11, s2
                  c.addi4spn   a4, sp, 528
                  mulhsu       tp, a5, s11
                  ori          s7, a4, -247
                  c.or         a5, s0
                  rem          s1, gp, ra
                  xori         s5, a3, -1769
                  mulhu        t6, t0, s7
                  c.mv         a5, t4
                  slli         s9, t2, 14
                  mulhsu       t0, a7, s6
                  c.li         a6, -1
                  c.and        a0, a1
                  c.addi       s2, -1
                  c.nop
                  rem          t6, s11, s0
                  addi         s10, t3, 1775
                  c.and        a3, a1
                  mul          t0, s5, a4
                  slli         a3, a3, 11
                  div          a4, s10, s11
                  c.lui        tp, 19
                  xor          s7, a6, a7
                  mul          a7, a2, zero
                  c.andi       s1, 21
                  and          s4, s6, t3
                  rem          t3, s5, a6
                  mulhu        s6, s10, s5
                  andi         s11, a4, 195
                  c.xor        a3, a0
                  addi         a6, s3, -1922
                  c.nop
                  slti         a3, sp, -41
                  c.li         a4, 20
                  c.lui        s5, 6
                  c.xor        s0, a0
                  add          s2, a4, sp
                  andi         s7, s10, 418
                  add          a4, s3, s5
                  auipc        s8, 739382
                  c.addi       tp, 8
                  nop
                  sltiu        a5, s3, -1642
                  sltiu        s11, sp, -990
                  c.addi16sp   sp, -16
                  c.and        s0, s1
                  divu         s11, a2, t5
                  c.mv         s0, s9
                  c.addi4spn   a5, sp, 848
                  nop
                  slt          s5, s3, t4
                  sltu         a4, t6, s2
                  divu         gp, s8, s4
                  c.sub        a5, s1
                  sub          a0, gp, t5
                  slti         t0, sp, 1310
                  lui          a7, 1017154
                  add          a7, s0, s6
                  sltiu        s1, tp, -162
                  sra          t0, a6, a0
                  srai         gp, a5, 30
                  nop
                  c.add        s8, s2
                  remu         s7, s11, a0
                  or           s0, tp, t5
                  mulh         tp, s5, s2
                  ori          tp, t5, 1036
                  slt          a5, s8, t0
                  c.addi16sp   sp, -16
                  c.srai       s0, 17
                  srl          t4, a5, a3
                  sltu         s6, s5, zero
                  c.and        a3, a2
                  lui          t4, 127084
                  auipc        s8, 129317
                  sll          s11, zero, s6
                  mulhsu       t1, t6, a3
                  sltu         s4, a2, gp
                  li           a1, 0x80000000 #start riscv_int_numeric_corner_stream_27
                  li           s6, 0xe2c738d7
                  li           a5, 0x124ae155
                  li           s0, 0xd25c2206
                  li           a3, 0x80000000
                  li           gp, 0x0
                  li           a6, 0x0
                  li           s9, 0xffffffff
                  li           sp, 0x80000000
                  li           ra, 0x80000000
                  mulhsu       s0, s6, s6
                  rem          gp, s9, gp
                  auipc        s6, 432623
                  auipc        sp, 863672
                  sub          ra, a6, a1
                  div          s9, gp, s6
                  rem          a5, s0, a1
                  lui          a3, 220636
                  add          a3, s6, a1
                  rem          gp, ra, a1
                  mulhu        s6, a6, gp
                  lui          gp, 516544
                  sub          s0, s6, a3
                  add          s0, a5, a6
                  nop
                  divu         a6, a5, ra #end riscv_int_numeric_corner_stream_27
                  sra          tp, a4, a7
                  or           t3, a7, s10
                  c.add        sp, a1
                  c.slli       t4, 27
                  sltiu        s2, sp, -848
                  c.and        a4, a5
                  c.lui        s11, 16
                  divu         a7, t2, s9
                  mulhu        t0, s6, s3
                  c.srai       a3, 25
                  lui          t4, 202476
                  c.mv         ra, s0
                  divu         gp, s4, a5
                  c.add        s1, sp
                  srai         s1, t6, 20
                  sra          a0, zero, s9
                  sll          a5, ra, t5
                  c.srli       a3, 12
                  xor          s4, a0, t0
                  xori         a7, s1, 1385
                  xori         t0, a6, -895
                  and          a7, a4, t4
                  andi         gp, t5, 1535
                  sltu         zero, a7, t2
                  c.nop
                  slli         tp, a4, 4
                  sltiu        a6, t3, -433
                  slt          a1, a2, s10
                  rem          ra, s3, a1
                  sll          a7, a5, s6
                  c.add        t5, gp
                  c.srli       s1, 16
                  nop
                  c.add        s10, s10
                  c.li         s10, 27
                  mulhsu       s0, s11, t0
                  remu         t6, s3, a3
                  mulhu        a0, gp, t5
                  c.slli       s5, 2
                  c.li         a3, 31
                  c.addi4spn   a4, sp, 816
                  div          s11, s2, t5
                  slli         t1, ra, 15
                  c.lui        t1, 22
                  ori          t5, s6, -1718
                  mulh         a4, t5, a1
                  ori          gp, a4, -276
                  srli         gp, s3, 31
                  sub          gp, a1, gp
                  c.add        a3, a1
                  slti         s7, t4, -1692
                  c.srli       a5, 6
                  remu         s9, a4, zero
                  divu         t6, t4, a1
                  slt          a0, ra, s2
                  div          s11, t2, a4
                  c.xor        s1, a0
                  c.slli       sp, 24
                  sub          a0, t5, t1
                  srli         a5, s10, 14
                  remu         s0, a4, s11
                  slti         ra, a2, 1839
                  rem          t4, a0, s1
                  srl          t1, s3, t3
                  c.addi       ra, 11
                  sll          gp, s8, t1
                  sll          s8, s1, zero
                  c.addi4spn   a5, sp, 352
                  c.or         a5, a3
                  divu         s7, t5, a2
                  andi         s8, gp, -973
                  mulh         t5, a7, t2
                  mulhu        s4, t2, s6
                  c.li         a7, -1
                  sub          a7, sp, ra
                  c.and        s0, a1
                  c.slli       s5, 8
                  add          t1, s5, s0
                  xori         gp, t5, -412
                  add          a5, gp, s7
                  slt          s10, s8, tp
                  c.srli       a4, 25
                  mulh         s6, t5, s7
                  andi         s6, a6, 312
                  c.slli       s5, 16
                  lui          gp, 244313
                  c.add        s10, a2
                  c.sub        a4, a2
                  c.andi       a3, 11
                  c.xor        s1, a1
                  srl          zero, s3, t1
                  srai         a3, s3, 19
                  andi         zero, zero, -449
                  mulh         t4, s2, s8
                  c.lui        a0, 23
                  slli         a1, gp, 17
                  c.srai       a5, 15
                  c.or         s1, a2
                  srli         s7, zero, 12
                  or           t4, t3, a3
                  c.li         a7, 21
                  nop
                  sll          s4, s9, zero
                  c.slli       s4, 10
                  c.slli       sp, 6
                  sltu         t6, a6, ra
                  c.srai       a4, 11
                  c.li         ra, 20
                  c.xor        a1, a3
                  sub          s10, s11, s8
                  divu         s0, t1, s5
                  remu         a5, t5, a7
                  c.add        sp, gp
                  xori         s7, t5, 913
                  c.srli       a3, 30
                  mulhsu       s8, t4, t6
                  srai         s8, a6, 7
                  xor          tp, a6, t1
                  rem          tp, a4, s11
                  c.sub        a1, s1
                  c.srai       a5, 6
                  srli         s11, t4, 25
                  srli         a5, zero, 17
                  and          s8, s10, s2
                  nop
                  c.or         a1, s1
                  c.li         s0, 17
                  c.addi4spn   s0, sp, 800
                  mulhsu       s4, s3, t2
                  slt          a3, t1, s4
                  add          tp, sp, a0
                  sra          zero, t4, a5
                  srli         tp, a7, 1
                  c.addi4spn   s1, sp, 832
                  c.slli       t5, 10
                  sub          s6, zero, t0
                  mulhsu       t1, t1, s1
                  ori          t4, a5, 1225
                  add          t3, t6, a2
                  c.add        a5, s3
                  mul          zero, a3, s2
                  sra          a0, a3, s11
                  srli         t4, s7, 20
                  xori         gp, s0, 1372
                  xor          s7, a7, s5
                  c.addi       ra, -1
                  mulh         ra, t6, t1
                  c.addi       s8, 9
                  mulhu        a3, a0, a6
                  srai         a4, s3, 1
                  sub          t5, s10, t2
                  mulhsu       t6, a1, ra
                  xor          s8, s11, ra
                  c.slli       t1, 9
                  c.slli       s10, 7
                  nop
                  c.xor        s0, s0
                  c.andi       a0, 3
                  c.lui        a0, 14
                  c.li         t1, -1
                  add          s6, t3, s10
                  nop
                  c.addi16sp   sp, -16
                  srl          zero, sp, a5
                  slt          t3, a1, a1
                  slti         a5, a1, -1428
                  mul          s4, t0, t2
                  c.or         a3, a4
                  and          s4, a1, a4
                  sub          t3, a1, t0
                  ori          s7, s10, 1203
                  c.li         t0, 14
                  c.xor        a4, a2
                  auipc        s0, 417128
                  mulhsu       s10, a5, t0
                  div          tp, s9, s11
                  c.addi       gp, -1
                  c.andi       a3, -1
                  srli         a3, t2, 29
                  mulh         s0, s7, t1
                  c.nop
                  mul          sp, s10, s6
                  addi         a1, t4, 1927
                  or           a7, a2, t0
                  sltiu        t1, t1, 1757
                  mulh         a5, s9, s7
                  c.slli       a6, 10
                  xori         s11, s3, -1297
                  c.mv         a3, a6
                  mulhsu       s7, ra, zero
                  ori          t3, a3, 1133
                  c.sub        a3, a2
                  xor          s2, sp, t6
                  c.or         a4, a2
                  ori          a0, tp, 1285
                  slt          s5, zero, a4
                  srai         s7, a4, 8
                  c.nop
                  srli         a7, gp, 16
                  srai         a0, a7, 30
                  ori          tp, s3, -2
                  ori          a5, a6, 1891
                  sra          t5, t1, a7
                  ori          a7, gp, 652
                  addi         s5, s3, 119
                  c.and        a4, s0
                  sll          s1, t0, ra
                  c.addi4spn   a4, sp, 400
                  sll          s11, s7, zero
                  c.and        a5, a1
                  lui          a7, 779971
                  ori          a0, a0, -856
                  div          a3, t1, tp
                  c.srli       s1, 7
                  c.nop
                  c.add        a0, s8
                  nop
                  c.slli       a7, 23
                  srl          s2, s5, a2
                  add          a4, s7, s2
                  c.addi16sp   sp, 16
                  div          a1, t0, t6
                  c.nop
                  c.addi       s2, -1
                  c.nop
                  ori          s4, a0, 1950
                  remu         s4, t4, zero
                  c.add        s7, s9
                  lui          a7, 1042579
                  lui          t1, 991823
                  sltiu        s1, s0, 329
                  or           s8, s6, t5
                  c.mv         sp, s1
                  c.add        a7, s0
                  c.addi       a4, 7
                  and          t1, t3, tp
                  sltiu        s1, gp, -535
                  lui          s6, 466398
                  remu         a6, s3, zero
                  nop
                  mul          ra, t1, s6
                  srli         s8, a6, 0
                  c.or         a1, a4
                  sra          a7, s3, s2
                  sub          t0, s10, t6
                  sub          a6, s8, s11
                  c.slli       a6, 2
                  andi         a1, s1, -223
                  c.or         a4, a0
                  andi         a0, a3, -593
                  remu         ra, sp, a6
                  c.li         a6, 10
                  c.srai       a4, 12
                  xori         s6, s10, -1232
                  slti         s5, s1, 257
                  c.sub        a4, a1
                  c.mv         sp, a4
                  slt          s4, gp, a4
                  c.add        a4, sp
                  xor          s8, s11, a4
                  mul          s4, ra, s10
                  addi         a5, a3, -112
                  srl          s4, zero, t1
                  srl          t0, t2, a0
                  c.addi       s8, -1
                  add          s0, a4, s11
                  c.addi       s9, 26
                  c.mv         s1, s5
                  sltu         zero, s0, t1
                  srli         t4, t1, 18
                  c.nop
                  c.addi       s5, -1
                  lui          t0, 8171
                  c.lui        a5, 3
                  srai         a1, a2, 23
                  ori          tp, t3, -204
                  srai         t4, a1, 24
                  sltiu        s5, s4, 1
                  c.lui        a3, 9
                  xori         s7, s3, -1965
                  sltu         t5, t0, s3
                  or           a0, t0, s0
                  divu         t0, t4, a1
                  c.srai       s0, 16
                  rem          s2, t1, t2
                  xori         s11, a3, -401
                  c.sub        a1, s0
                  c.addi4spn   a4, sp, 704
                  c.srli       a0, 21
                  c.nop
                  sltiu        ra, t5, -2031
                  c.addi16sp   sp, -16
                  c.addi       s5, -1
                  c.andi       a5, 6
                  c.mv         t4, s0
                  and          a3, a6, tp
                  c.nop
                  addi         a7, a6, -1363
                  c.srai       a1, 25
                  auipc        tp, 761342
                  sll          t0, a7, s2
                  srai         s7, a2, 4
                  rem          a4, a6, t2
                  mulhsu       gp, s4, t0
                  nop
                  slli         t1, t1, 15
                  ori          s8, s11, -1471
                  mulhu        s0, t5, s9
                  c.addi16sp   sp, -16
                  c.addi       s1, 1
                  sltu         s6, s10, a7
                  srl          s11, s7, a2
                  mulhu        s5, s6, s7
                  c.addi4spn   s0, sp, 688
                  remu         a7, t5, a7
                  slt          s10, tp, s3
                  addi         s0, t3, -136
                  or           a4, s8, a1
                  ori          a6, t6, -700
                  mulhu        s10, s0, s1
                  c.lui        a6, 14
                  sra          s7, s6, a0
                  srl          s0, a5, a6
                  sltu         s4, t2, s5
                  sltu         s10, s11, a4
                  nop
                  slli         s9, t4, 16
                  ori          t4, tp, -724
                  xori         a3, t1, 1925
                  c.xor        s0, a3
                  slt          t0, a7, t4
                  xori         a5, a2, 1352
                  rem          a3, a0, ra
                  xori         s4, t2, -1374
                  mulhu        s11, s9, t6
                  mulhu        a0, t3, s5
                  addi         a7, s5, -717
                  ori          a7, a5, -580
                  c.xor        a0, s1
                  c.nop
                  c.or         a0, a5
                  xor          a3, s2, a5
                  c.sub        a3, s0
                  divu         s7, s3, zero
                  c.srai       s0, 2
                  c.nop
                  c.add        s10, s1
                  slt          s8, tp, s7
                  or           t0, s1, gp
                  srai         a5, a3, 24
                  c.and        a0, a4
                  or           a5, s10, s10
                  auipc        s7, 878456
                  divu         a3, s10, a0
                  or           s7, t6, t5
                  c.mv         s1, a4
                  sltu         s7, s8, s6
                  sub          a4, t6, t0
                  c.or         a4, a2
                  c.addi16sp   sp, -16
                  c.mv         a3, a0
                  slti         s2, gp, 1775
                  slt          a5, s2, s6
                  rem          s0, s3, s5
                  srli         s0, s5, 0
                  add          gp, s9, s4
                  xor          s4, zero, t1
                  c.sub        a0, a1
                  div          s10, t5, s3
                  addi         s5, s5, 139
                  mulhu        s0, tp, a2
                  xor          ra, gp, s8
                  slli         a3, t4, 6
                  c.nop
                  srli         s8, a1, 31
                  c.srli       a1, 20
                  xori         gp, a6, 151
                  c.add        s9, t0
                  divu         a4, s6, tp
                  mul          t1, s4, t0
                  sll          s10, a1, zero
                  div          ra, t2, zero
                  c.addi       s7, 12
                  c.mv         a1, t0
                  srl          a7, t4, s7
                  sltu         t6, s2, tp
                  andi         tp, t5, 528
                  and          s9, a7, gp
                  slti         s7, a4, -1156
                  xori         s1, gp, -42
                  sra          t4, t3, zero
                  sltiu        t4, t4, 1841
                  c.xor        a5, a5
                  xor          s11, s1, s5
                  c.mv         tp, s8
                  slli         t3, s9, 11
                  add          a6, tp, t2
                  and          a3, t2, a3
                  c.li         sp, -1
                  divu         s11, a1, s3
                  srl          zero, t5, s11
                  sra          a1, a0, t6
                  add          s9, a4, a1
                  c.addi4spn   a0, sp, 672
                  auipc        t3, 347444
                  c.lui        s9, 4
                  sltu         s1, s6, s1
                  c.li         s1, 31
                  c.xor        s1, a4
                  mul          s10, ra, t0
                  c.xor        s1, s1
                  div          s2, ra, t3
                  c.sub        a0, a1
                  c.addi16sp   sp, -16
                  xor          t1, s5, a6
                  mulhsu       t0, t3, tp
                  c.slli       a4, 13
                  srai         a6, s9, 2
                  c.sub        s0, a4
                  rem          s5, sp, s1
                  nop
                  andi         s0, t3, 218
                  c.and        a1, a2
                  div          s2, a0, s11
                  srai         a7, gp, 31
                  nop
                  slli         gp, t5, 28
                  slli         s1, t4, 16
                  add          ra, s4, s1
                  c.slli       a7, 7
                  c.li         s6, 9
                  ori          s6, s0, -1639
                  mulhsu       tp, s0, a1
                  sltiu        t1, s0, 1107
                  div          a6, ra, s3
                  divu         s1, s11, t1
                  or           t6, a5, s10
                  c.srai       s0, 11
                  remu         a3, t0, s9
                  sltiu        t4, a4, -383
                  ori          t4, zero, 1225
                  sll          ra, t4, s8
                  mulhsu       t3, a6, s3
                  xor          s7, s0, s5
                  c.lui        a1, 17
                  srai         s2, a3, 17
                  remu         a5, s0, s3
                  xor          s10, zero, s2
                  add          t1, t3, zero
                  srli         s1, s1, 14
                  srl          s11, tp, a7
                  addi         t6, a1, -735
                  xor          a7, tp, sp
                  sltu         s1, gp, s7
                  c.addi       s2, 27
                  remu         zero, zero, sp
                  mul          a0, gp, s6
                  sltu         s8, zero, s1
                  c.addi4spn   a1, sp, 96
                  mul          gp, t4, tp
                  ori          a5, s3, -581
                  srai         a5, a3, 30
                  auipc        zero, 578804
                  xor          s0, s0, s10
                  add          a0, s9, s4
                  mulh         gp, a3, t5
                  ori          a6, a6, -1186
                  and          a6, s0, s2
                  c.srai       s1, 12
                  addi         s9, a7, 298
                  andi         zero, s5, 1147
                  c.addi4spn   s0, sp, 32
                  c.or         s0, a3
                  c.and        a3, a2
                  slt          s9, s2, a3
                  srai         s2, a7, 28
                  andi         tp, a5, -299
                  c.srli       a4, 15
                  add          gp, a5, t6
                  sll          s1, a6, s11
                  srli         zero, sp, 22
                  sub          sp, s9, s9
                  and          a3, a3, s8
                  mulhu        tp, a1, a3
                  srli         s4, a5, 19
                  lui          s1, 417065
                  c.mv         s5, t0
                  c.addi       sp, -1
                  c.srai       s1, 28
                  xor          s4, s10, s7
                  sra          gp, s2, ra
                  slli         s5, s7, 5
                  slli         s11, a5, 10
                  c.xor        s0, a3
                  or           s2, a2, t5
                  auipc        t3, 23667
                  c.mv         s0, ra
                  sll          s7, t5, a3
                  sra          a7, s2, a5
                  c.addi4spn   a3, sp, 208
                  c.xor        s0, a1
                  sll          a3, a5, a7
                  add          t6, zero, s5
                  mul          ra, s2, a7
                  c.srai       s0, 30
                  sub          s10, a2, s8
                  srai         a3, s7, 16
                  c.srli       s0, 16
                  rem          t1, zero, t5
                  slti         s6, s4, -1688
                  divu         a5, a6, s0
                  slti         s0, t4, -1425
                  slli         t0, s5, 31
                  mulh         t6, s10, a7
                  div          gp, s6, a0
                  slt          a6, t1, s3
                  slti         s2, a4, -1308
                  c.addi4spn   s0, sp, 160
                  sll          s6, s2, a5
                  c.or         a4, a5
                  nop
                  addi         t1, s6, 14
                  sub          gp, s1, s6
                  auipc        a4, 558795
                  sltu         t4, t4, a4
                  c.andi       s0, -1
                  lui          s8, 134596
                  auipc        t3, 554823
                  c.srai       a5, 23
                  and          s8, tp, s6
                  div          a5, s0, s10
                  srai         s2, s0, 19
                  c.addi4spn   a4, sp, 640
                  c.slli       s1, 26
                  xori         s5, tp, 697
                  remu         a4, s9, t3
                  and          t6, a7, s8
                  nop
                  c.lui        s8, 6
                  sll          s11, s3, t0
                  xori         s7, s3, 1227
                  mul          sp, s6, tp
                  sra          s7, s9, a2
                  div          ra, s1, s6
                  c.addi16sp   sp, 176
                  xori         s6, t0, 493
                  c.addi4spn   a3, sp, 240
                  c.addi       gp, 10
                  mulhsu       s2, s5, s0
                  mul          a0, s10, a5
                  c.xor        s1, a4
                  or           a7, s8, t3
                  sltiu        tp, t4, 1200
                  rem          s4, a4, s2
                  slti         a4, a1, 682
                  mulhu        a7, s1, ra
                  auipc        t4, 494272
                  srai         a0, s6, 7
                  c.srai       s0, 3
                  sub          t5, t3, sp
                  div          a0, s5, s1
                  mulhsu       s0, sp, s0
                  c.addi       a7, 12
                  c.nop
                  c.and        s0, s1
                  mulh         t6, s5, a5
                  srli         s0, t5, 1
                  c.or         s1, a1
                  div          gp, s5, tp
                  c.lui        a7, 31
                  slli         zero, s4, 13
                  srai         s7, t5, 16
                  sll          ra, t5, t3
                  srli         s7, gp, 17
                  srai         s7, s11, 0
                  srai         zero, s6, 9
                  sltu         a7, a1, s10
                  c.or         a1, a4
                  c.add        sp, gp
                  divu         a1, a4, a6
                  remu         gp, s7, t4
                  mulh         s4, t4, a6
                  mul          a0, s0, a6
                  mulhsu       s11, zero, t5
                  c.lui        s2, 20
                  sll          s10, sp, a5
                  div          a1, t2, t6
                  srli         tp, s11, 8
                  c.or         a0, a4
                  mul          t1, s3, a3
                  sll          s0, a5, s10
                  div          a1, a5, gp
                  c.xor        a4, s1
                  c.addi16sp   sp, 384
                  addi         a6, a1, 1881
                  mul          zero, a1, s11
                  c.or         a4, a3
                  c.nop
                  mulhu        s10, a5, t3
                  divu         s4, sp, gp
                  sltiu        s11, s11, -805
                  sub          s9, s8, a6
                  c.slli       a1, 14
                  rem          a1, a3, a4
                  or           s2, t6, s9
                  c.addi       t5, -1
                  and          ra, s11, t1
                  ori          t6, s11, 242
                  mul          t3, a3, ra
                  c.addi       s11, 20
                  c.addi4spn   a0, sp, 96
                  c.add        gp, a5
                  mulhu        t6, t6, s7
                  c.addi16sp   sp, 432
                  srli         sp, zero, 7
                  or           s9, t4, t4
                  c.srai       a4, 23
                  addi         zero, s8, 126
                  c.nop
                  c.andi       a5, 24
                  xori         a7, s0, 607
                  nop
                  srl          s2, a3, s3
                  sltiu        a5, zero, -2016
                  xori         t4, s3, -170
                  sub          s0, tp, a1
                  divu         sp, t4, s0
                  c.addi       t3, 8
                  mulhu        sp, a6, t5
                  c.sub        a4, a3
                  lui          t0, 667219
                  slti         a4, t6, -191
                  c.nop
                  srl          s2, a4, s5
                  c.addi4spn   a4, sp, 528
                  c.or         a3, a0
                  c.mv         a5, a7
                  srl          t5, zero, s3
                  c.nop
                  or           a5, a3, s10
                  c.addi16sp   sp, 384
                  sub          t5, t1, s3
                  c.sub        a3, s1
                  c.or         a3, a1
                  mulhu        s5, s3, s5
                  mul          s4, t5, s6
                  xori         a3, s4, 127
                  slli         a4, s2, 22
                  c.xor        a4, s0
                  ori          t3, s11, -1053
                  sra          a4, s1, s0
                  andi         s10, s8, -1130
                  srli         t4, s1, 0
                  rem          s4, gp, ra
                  c.srli       s0, 10
                  xori         s2, t1, -1418
                  c.srai       s0, 15
                  rem          gp, s5, ra
                  slti         s8, s1, 1029
                  c.li         sp, -1
                  c.li         s8, -1
                  or           s7, s7, a7
                  sll          s2, s6, t0
                  srai         s8, gp, 1
                  mul          t4, a7, a6
                  add          s4, s4, zero
                  c.andi       a0, 27
                  slli         a5, a6, 30
                  srai         a5, t5, 12
                  c.andi       a3, 19
                  c.add        tp, a5
                  slli         s0, s5, 16
                  c.addi16sp   sp, 224
                  c.andi       a4, 15
                  remu         gp, t1, a6
                  div          a1, s7, t2
                  c.xor        a3, a1
                  c.slli       a1, 19
                  mulh         t3, a7, s7
                  slt          a6, a6, tp
                  nop
                  andi         a5, sp, 1731
                  c.li         s4, -1
                  or           s8, ra, s6
                  c.xor        a3, a2
                  sltu         a6, s7, t1
                  and          tp, s7, t1
                  c.and        s1, s1
                  lui          a3, 591770
                  sll          tp, tp, s3
                  divu         s11, a0, a0
                  nop
                  c.addi       gp, -1
                  addi         a0, s7, 819
                  slti         s0, s8, -1657
                  c.addi4spn   a5, sp, 112
                  slti         t6, s0, 1980
                  c.lui        t1, 3
                  c.li         s6, -1
                  xor          s11, t5, a7
                  srli         t1, s6, 4
                  c.sub        s0, a3
                  rem          a7, a0, a2
                  c.li         s4, -1
                  slt          ra, a1, a3
                  slt          s9, s4, s6
                  xori         s4, t0, 1720
                  add          s6, a4, s2
                  add          s5, s3, t2
                  slli         s11, t6, 3
                  addi         a5, a5, -1579
                  remu         s2, tp, a6
                  rem          a3, t5, s9
                  c.slli       t1, 19
                  mul          zero, a7, s10
                  auipc        a7, 656173
                  xor          a7, s8, s1
                  slti         ra, a6, -377
                  remu         tp, s7, s3
                  c.slli       tp, 15
                  xori         s1, tp, 948
                  srl          a3, t6, s11
                  c.andi       a4, 21
                  mulhu        sp, s5, s9
                  c.sub        a4, s0
                  addi         a6, ra, 1662
                  and          s8, t3, t3
                  and          a5, s2, tp
                  and          t1, t1, a1
                  div          tp, t3, a0
                  rem          tp, t6, s10
                  c.slli       t1, 4
                  add          a0, t4, t4
                  sra          t1, zero, zero
                  c.sub        a0, a4
                  srai         t4, gp, 22
                  mul          t5, t5, t3
                  mulhu        s9, tp, tp
                  or           t0, s4, a5
                  sra          s8, a1, s4
                  addi         tp, t4, 2031
                  srai         s9, a0, 15
                  c.andi       s0, 12
                  mulhu        zero, ra, t4
                  c.mv         sp, s5
                  mulh         s10, t6, s0
                  nop
                  divu         t5, s11, s10
                  slt          t1, zero, s6
                  sll          s6, sp, a3
                  addi         t0, s6, -455
                  c.sub        a3, a0
                  mulh         a3, s11, a6
                  c.add        sp, t0
                  c.andi       a3, -1
                  sll          s2, gp, tp
                  addi         s8, s0, 319
                  mulhu        s11, s3, s7
                  sra          a3, s0, t0
                  divu         s5, a6, s7
                  xor          s11, s10, t4
                  c.mv         s7, t2
                  slti         t3, a5, 1176
                  c.li         ra, 28
                  slt          tp, t6, s1
                  and          gp, a4, a0
                  sub          s10, ra, a1
                  c.addi       s1, -1
                  srai         t0, a2, 12
                  srai         a7, s11, 14
                  auipc        t4, 226585
                  sub          t1, s6, t6
                  remu         s1, s1, s4
                  xor          a5, s9, a2
                  c.andi       a4, 9
                  mulhsu       s11, s11, s0
                  c.addi4spn   s1, sp, 64
                  lui          a7, 603593
                  and          s11, a4, s6
                  slli         t0, s6, 22
                  auipc        zero, 246168
                  srl          s11, t0, t3
                  slti         s7, t5, -2011
                  xori         t0, s11, -396
                  or           s8, s4, t4
                  c.andi       s1, -1
                  c.slli       t1, 10
                  addi         a7, t3, -1207
                  slti         s0, s2, 1100
                  c.lui        ra, 10
                  mulhsu       ra, t5, a2
                  c.xor        s0, a0
                  slti         a5, s2, -8
                  c.nop
                  ori          t4, t0, 402
                  auipc        s4, 837550
                  sltu         s1, gp, t0
                  sltu         s8, s1, t1
                  divu         s2, s10, t6
                  div          t1, zero, a0
                  mulhu        t6, t6, s5
                  xor          s4, s11, t2
                  c.addi       a4, -1
                  c.andi       a3, -1
                  c.andi       a0, -1
                  slti         s8, a1, 434
                  c.srai       a1, 30
                  slli         tp, s10, 15
                  c.srli       a4, 8
                  c.srai       a0, 2
                  c.lui        t1, 26
                  c.nop
                  sltu         s10, s0, s5
                  mulhu        s10, t3, s7
                  sll          zero, sp, s0
                  mul          tp, a6, s1
                  div          t4, s6, sp
                  or           a1, s6, t4
                  c.sub        a3, a4
                  c.addi       a6, 4
                  add          a5, tp, s11
                  sltu         s1, s2, t3
                  div          s6, t2, a5
                  mulh         s2, ra, s6
                  xori         t4, a2, 1117
                  c.li         s2, -1
                  c.srai       a4, 25
                  c.xor        a3, a1
                  c.andi       a3, 0
                  xori         a0, t2, -1626
                  xor          a1, ra, s11
                  c.sub        a1, a3
                  remu         s9, s2, a4
                  remu         t3, t4, s8
                  c.srli       a0, 7
                  div          s11, a3, t5
                  lui          t6, 256188
                  c.mv         gp, ra
                  srli         s11, t4, 3
                  c.or         a4, a4
                  c.and        a5, a5
                  add          s5, s9, s0
                  sltiu        s2, sp, -1261
                  mulhsu       s9, s3, a3
                  addi         a1, s0, 1694
                  lui          s7, 8659
                  slli         s2, t4, 12
                  c.or         s0, s1
                  c.li         a3, -1
                  ori          a7, t3, -928
                  c.or         s0, a1
                  auipc        t5, 641285
                  slli         a7, zero, 31
                  srai         gp, t3, 1
                  nop
                  c.slli       a1, 18
                  sltu         s9, s3, a5
                  xor          s7, s11, gp
                  slli         t3, t5, 5
                  c.srli       s0, 27
                  c.addi       s0, -1
                  and          s9, a2, a4
                  c.nop
                  mulhu        tp, a1, s7
                  sub          s0, s1, t0
                  c.slli       a3, 22
                  c.li         t1, -1
                  div          s2, t4, a5
                  c.mv         gp, s3
                  addi         ra, s0, 642
                  c.andi       s0, -1
                  div          tp, a5, s3
                  c.li         s1, 4
                  sll          sp, t1, s10
                  c.nop
                  auipc        zero, 37968
                  c.add        s8, t0
                  c.addi4spn   s0, sp, 528
                  xor          t0, s6, t3
                  srai         a1, ra, 28
                  mul          s1, t5, s0
                  slti         a1, a3, -1823
                  c.mv         a5, t4
                  add          t3, a7, s6
                  slli         a3, zero, 22
                  c.lui        t1, 13
                  sub          s1, gp, zero
                  c.addi4spn   s0, sp, 800
                  c.and        a1, a4
                  mulhu        a6, s11, t4
                  c.addi4spn   s1, sp, 368
                  srai         s6, s0, 8
                  or           a5, a7, t2
                  slt          gp, t5, s11
                  sub          ra, ra, a6
                  rem          s9, a2, ra
                  c.mv         t3, s8
                  c.and        a3, a2
                  lui          s1, 41627
                  c.or         a3, a3
                  sub          t1, a7, s7
                  rem          a6, sp, t1
                  auipc        t6, 23132
                  srai         s11, s11, 12
                  auipc        s11, 294356
                  c.add        sp, ra
                  slli         s4, t2, 11
                  divu         t1, t6, a1
                  divu         a4, s5, a5
                  sra          a6, t4, t5
                  srl          ra, s9, a4
                  srai         sp, a0, 15
                  or           s5, a1, a7
                  c.add        s5, tp
                  c.sub        a4, a5
                  add          a7, s6, a4
                  auipc        s4, 893705
                  c.nop
                  c.and        a5, a1
                  rem          s11, a3, sp
                  srli         s7, tp, 26
                  srl          sp, a5, sp
                  divu         t3, s3, t0
                  c.add        t1, a5
                  slti         tp, s7, -482
                  c.add        a6, t5
                  c.addi       a3, -1
                  slli         a4, s6, 29
                  add          s11, s3, s7
                  xori         a1, t3, 704
                  remu         sp, s8, t1
                  remu         s9, t5, a6
                  div          s10, zero, a7
                  auipc        s6, 394508
                  sll          a7, t6, sp
                  srli         a3, s2, 31
                  mulhu        s2, t0, s6
                  xori         a4, a3, -918
                  c.nop
                  remu         tp, a5, t6
                  rem          a7, t0, ra
                  c.nop
                  remu         s11, t5, s7
                  rem          t6, a2, t0
                  and          t4, t0, s3
                  sub          s10, s11, tp
                  divu         t5, tp, s4
                  c.addi       t0, 7
                  xori         s2, s8, -1530
                  c.nop
                  c.xor        a1, a0
                  slli         a7, a3, 19
                  sub          s11, t0, a7
                  sltu         s6, gp, s6
                  slli         t1, s9, 2
                  addi         gp, t3, 1385
                  or           a5, a6, a1
                  c.srli       a4, 10
                  slli         s6, s6, 30
                  c.addi       ra, 10
                  ori          sp, s5, 1421
                  ori          a6, a6, -1566
                  c.or         a1, a0
                  c.sub        s0, s1
                  mulhu        s8, a7, t2
                  c.andi       s1, 1
                  remu         a0, s6, s6
                  c.sub        a4, a5
                  c.and        s0, a0
                  mulhsu       a0, s11, a7
                  slti         zero, a3, 1175
                  slt          ra, sp, s9
                  c.slli       t4, 4
                  c.li         t0, -1
                  lui          t3, 760135
                  mul          t1, a3, a3
                  c.srli       s0, 1
                  lui          a0, 368511
                  and          s7, a4, t2
                  srli         t1, t6, 26
                  c.mv         s2, t2
                  addi         a1, t2, 1833
                  c.srai       a3, 30
                  c.srli       a1, 2
                  slti         a5, t5, 1245
                  c.andi       s0, 11
                  slti         s4, tp, 393
                  add          t0, sp, s6
                  sltiu        s9, a2, -1961
                  rem          t6, s4, t5
                  srai         a7, s6, 25
                  srai         zero, s5, 31
                  mulhu        gp, s3, t2
                  sra          s7, a3, s6
                  ori          a5, gp, -1748
                  mul          zero, t6, a6
                  c.nop
                  and          s1, gp, s8
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_39
                  li           s5, 0x80000000
                  li           a6, 0xc19cf3e2
                  li           s8, 0x144b5f32
                  li           s1, 0x80000000
                  li           s0, 0x80000000
                  li           s10, 0x80000000
                  li           s4, 0x2152adff
                  li           gp, 0xffffffff
                  li           a0, 0x0
                  div          gp, s10, s8
                  mulhsu       s10, s0, s0
                  div          s4, s0, s8
                  addi         s1, a6, 1391
                  nop
                  auipc        tp, 179379
                  auipc        s1, 405683
                  lui          s10, 312707
                  sub          s1, s5, s0
                  sub          gp, s1, gp
                  mulhsu       gp, a6, s4
                  rem          s1, s10, s1
                  auipc        a0, 122744
                  mulh         s8, gp, gp
                  mul          s0, s5, s5
                  addi         s1, s1, 951
                  addi         a0, a6, -838
                  mul          a6, s1, a6
                  add          a6, s10, s5
                  div          gp, gp, s1
                  mul          a0, s5, s8
                  rem          s10, s8, s8
                  mul          s5, tp, a6
                  mulhu        s10, s5, tp #end riscv_int_numeric_corner_stream_39
                  c.andi       s0, 12
                  slt          tp, a2, s11
                  c.and        a3, a2
                  divu         gp, t0, gp
                  div          a5, sp, s10
                  c.mv         s10, t4
                  c.mv         s2, s5
                  slt          a0, a1, s9
                  c.slli       a5, 13
                  sll          s7, s4, t6
                  mul          t1, a1, s1
                  c.andi       a4, 28
                  mul          s4, t5, t6
                  mulh         s1, a1, gp
                  sub          s8, s7, s6
                  mul          s7, t0, a3
                  srli         s10, t1, 26
                  c.add        a6, s1
                  c.li         gp, 14
                  c.and        a3, a1
                  mulhu        s7, t2, s3
                  mul          a4, a7, t4
                  remu         s7, t3, s9
                  divu         s11, s7, a0
                  andi         s6, t3, -1368
                  slt          a3, t1, t3
                  c.lui        t0, 25
                  sra          t0, t6, a4
                  div          sp, s7, s4
                  mul          s0, zero, t6
                  c.and        s1, a1
                  srai         s11, gp, 2
                  c.nop
                  sra          s11, a3, a0
                  sltu         a6, a1, a4
                  c.srai       a0, 25
                  mulhsu       tp, s6, s0
                  c.addi4spn   a1, sp, 944
                  c.addi       s10, 12
                  slti         t4, zero, 1837
                  c.srai       a1, 19
                  c.li         a6, 2
                  c.and        a3, a3
                  xori         s10, t5, -51
                  c.mv         s4, s3
                  c.or         a5, a2
                  sll          s7, a0, a3
                  auipc        a7, 923051
                  slti         s1, t0, -631
                  div          ra, gp, t0
                  c.srai       a5, 25
                  slt          t4, t5, ra
                  sra          a6, s3, s10
                  auipc        t4, 532600
                  c.srli       a4, 25
                  xor          t0, t6, t3
                  sltiu        t1, s9, -1616
                  sll          a4, s0, t4
                  div          gp, zero, s7
                  sltiu        s9, a4, -35
                  mul          s10, s8, t2
                  srai         tp, s4, 10
                  xori         s5, tp, 340
                  xori         s2, a6, -406
                  c.xor        a1, a3
                  sll          tp, a7, s6
                  sll          t0, t3, a6
                  mulhsu       a0, zero, t3
                  remu         s7, s10, t2
                  c.mv         s9, a2
                  c.srai       a3, 31
                  c.slli       t4, 26
                  c.addi16sp   sp, -16
                  srl          s11, s4, t2
                  sra          t4, s5, tp
                  nop
                  mul          ra, sp, t6
                  c.addi4spn   a4, sp, 384
                  rem          s4, t0, t2
                  remu         t0, a2, a1
                  remu         s2, a0, s4
                  srai         s8, t1, 25
                  sra          a7, s7, s8
                  div          s1, a0, t5
                  addi         t3, t6, -1598
                  slti         t1, a3, -824
                  sub          s0, a2, a0
                  c.xor        a4, a2
                  lui          gp, 35192
                  c.add        a6, t0
                  slti         s0, s8, 772
                  slt          a4, ra, zero
                  and          t1, t3, a3
                  c.addi       a7, -1
                  sltiu        t5, ra, -858
                  auipc        a6, 45144
                  div          s5, s10, t0
                  xor          t1, t4, s11
                  mulhu        tp, s6, s8
                  c.addi4spn   a4, sp, 272
                  c.or         a4, a1
                  mulhsu       t1, t1, s3
                  mulhu        t0, t4, gp
                  mulhsu       s9, t1, tp
                  c.addi16sp   sp, -16
                  mulh         s5, a3, s7
                  c.slli       t0, 28
                  add          s7, gp, t1
                  srli         gp, sp, 6
                  slt          s4, t5, s6
                  srl          s11, a7, s10
                  slti         a7, s3, -929
                  c.nop
                  auipc        s5, 641357
                  srl          a7, a3, sp
                  c.srli       a3, 2
                  div          a7, gp, a1
                  c.addi       s1, -1
                  c.andi       s0, -1
                  slt          s10, s10, tp
                  xor          t6, zero, t2
                  mulh         t3, t6, s7
                  c.and        a5, a1
                  remu         a1, s4, a3
                  lui          a7, 791191
                  remu         s5, s7, a0
                  c.addi4spn   a3, sp, 16
                  mulhsu       t5, t0, s3
                  c.sub        a3, a2
                  srai         s7, a4, 26
                  c.mv         s4, a5
                  divu         t6, a1, s11
                  auipc        s1, 878141
                  c.srai       a5, 14
                  andi         t1, a1, 311
                  c.or         a5, a3
                  sll          s8, sp, a6
                  remu         s7, a1, s0
                  sra          s8, s4, t5
                  c.slli       tp, 6
                  sub          s5, t6, t5
                  c.addi       a7, -1
                  c.nop
                  ori          gp, t5, -494
                  c.mv         t4, s0
                  remu         s7, ra, s8
                  c.slli       t3, 14
                  c.sub        a4, a4
                  or           tp, t0, s10
                  mulh         a1, t1, a0
                  mulhsu       t3, s7, a0
                  sra          s0, s5, a4
                  xori         s6, a1, 565
                  sub          ra, t0, s3
                  srl          s8, zero, zero
                  slti         s10, t5, 192
                  and          a5, t3, a7
                  mulhsu       t4, tp, s4
                  mulhu        s11, s3, s8
                  c.slli       s5, 13
                  slli         s0, s10, 28
                  c.mv         a7, a0
                  xor          t1, zero, zero
                  c.add        t4, s4
                  c.sub        a4, s0
                  c.mv         s9, s8
                  mul          s1, gp, t0
                  c.xor        a5, a2
                  xori         s0, a6, 1327
                  srai         s6, t0, 18
                  and          a5, s6, gp
                  ori          a7, t0, 780
                  c.add        s0, a2
                  lui          t5, 505882
                  srai         t0, gp, 28
                  mulh         a4, s3, t3
                  andi         a5, tp, -1666
                  sub          s7, zero, t6
                  xor          s7, t5, s4
                  c.andi       a3, -1
                  slt          a3, s3, s5
                  c.and        a5, a1
                  srai         a1, s9, 9
                  c.srli       a4, 10
                  andi         a4, a3, 1116
                  sltiu        s10, a5, 1331
                  srl          s11, a5, t5
                  ori          a4, sp, 339
                  sltiu        s11, s8, 193
                  auipc        s11, 420477
                  and          s9, s6, s0
                  sltu         s9, t0, a5
                  mul          a7, sp, ra
                  auipc        s9, 796797
                  sra          a7, t2, a2
                  auipc        a5, 499914
                  c.nop
                  c.sub        a0, a5
                  c.and        a1, s0
                  mul          s1, s8, s2
                  c.or         a3, a1
                  slli         a5, a0, 16
                  srli         s8, s5, 0
                  c.add        s1, a7
                  ori          sp, s9, 1586
                  c.add        sp, a4
                  c.srli       a1, 21
                  c.addi4spn   a3, sp, 496
                  c.sub        a5, a1
                  srai         a6, s10, 31
                  c.add        sp, ra
                  mul          a1, zero, a0
                  srai         gp, a7, 12
                  or           t0, ra, t6
                  c.add        s8, t6
                  xori         t6, t5, -301
                  mulhu        sp, s9, gp
                  add          a6, s9, s3
                  nop
                  div          t4, s8, ra
                  c.or         a4, a1
                  c.andi       s0, -1
                  sltiu        a0, sp, -82
                  rem          t0, gp, s9
                  c.addi16sp   sp, -16
                  div          s11, s9, t1
                  divu         s4, tp, a4
                  c.add        gp, t6
                  c.addi       a1, -1
                  srl          t3, a4, ra
                  andi         t3, s3, -1563
                  srai         t0, a7, 22
                  c.add        s6, a4
                  xor          t4, a4, s6
                  mulhu        a1, sp, tp
                  xori         s9, s8, -278
                  slt          s5, a0, a2
                  addi         s11, t4, -1889
                  sltu         s7, s8, a0
                  addi         a0, a2, -927
                  c.srli       a0, 18
                  srai         t3, a3, 28
                  slli         s8, tp, 19
                  lui          t0, 684849
                  c.mv         s10, t3
                  c.xor        s1, a1
                  c.addi16sp   sp, 336
                  lui          s7, 346033
                  c.or         a1, a4
                  c.mv         a5, a5
                  srli         tp, t6, 5
                  c.addi4spn   a0, sp, 848
                  slti         t3, ra, 929
                  c.sub        a4, a0
                  c.srai       a3, 21
                  c.li         s1, 18
                  slt          gp, ra, s3
                  xor          ra, t0, a5
                  xor          s1, t4, zero
                  srl          s9, ra, a1
                  andi         s1, s0, 165
                  lui          t1, 404251
                  c.andi       a1, -1
                  c.lui        tp, 15
                  slti         t4, s7, -29
                  c.srli       a5, 20
                  mulhsu       s6, tp, a7
                  xori         s4, s3, -158
                  sltiu        tp, s6, -1065
                  slt          t4, s2, s7
                  or           t0, zero, s11
                  slti         s11, s2, -1962
                  mulh         gp, a7, s2
                  c.li         a3, 8
                  add          s4, t6, sp
                  srl          t3, s4, t3
                  and          s0, s9, t5
                  sll          tp, a6, a4
                  and          t1, s4, tp
                  c.xor        a1, s1
                  c.srai       a0, 16
                  or           s0, gp, gp
                  div          s1, a7, gp
                  c.lui        t4, 22
                  sub          a4, a4, s6
                  c.add        s7, a5
                  slti         s1, s0, 417
                  divu         t3, tp, s0
                  slt          a4, a4, t5
                  c.nop
                  c.addi       a1, 4
                  lui          tp, 468849
                  mulh         a0, t3, sp
                  sub          s1, t4, s1
                  ori          s4, a0, 278
                  mulh         a7, s3, a6
                  addi         s8, s6, 180
                  mulh         ra, a4, gp
                  add          a7, sp, s7
                  c.addi4spn   s0, sp, 704
                  sra          s6, s9, s2
                  remu         s8, a0, ra
                  xor          s7, s6, t0
                  c.srai       a3, 20
                  c.mv         s11, sp
                  xori         sp, t0, -394
                  mul          gp, a5, s8
                  lui          s9, 661766
                  sra          a6, t3, s9
                  c.sub        s1, a2
                  slt          a7, s4, s2
                  xori         s4, s4, 1067
                  sltiu        a4, s2, -304
                  sltiu        s11, s4, 411
                  remu         a1, s4, ra
                  nop
                  addi         a5, s10, -1146
                  ori          zero, s6, -241
                  and          gp, sp, a7
                  ori          s9, s5, -287
                  add          s2, tp, t1
                  c.addi       t4, -1
                  c.li         t6, 31
                  lui          s0, 906755
                  sltiu        t4, s4, 1054
                  c.andi       a4, -1
                  c.li         t1, -1
                  rem          a4, s1, a3
                  slti         s4, gp, 1184
                  sll          t0, a1, a2
                  nop
                  srai         tp, gp, 15
                  sltu         a5, t6, s11
                  c.slli       sp, 30
                  nop
                  c.and        a1, a5
                  c.addi       t6, -1
                  c.addi16sp   sp, -16
                  div          a4, a0, t2
                  addi         s7, s0, -313
                  c.lui        t3, 10
                  and          a3, t2, t5
                  add          a6, t5, s6
                  c.addi16sp   sp, 464
                  c.mv         s10, s2
                  ori          tp, sp, 877
                  srl          a4, s3, t4
                  mulhsu       s1, s0, s8
                  slli         s8, s7, 22
                  sub          a7, a5, t5
                  c.addi4spn   s1, sp, 384
                  lui          a5, 821512
                  or           ra, s7, a4
                  c.mv         t3, a1
                  sltiu        s0, s6, 668
                  c.andi       a4, -1
                  c.addi       t4, 10
                  c.addi       t0, 10
                  srl          a1, s11, a0
                  sltiu        a6, s6, -153
                  srli         s8, a2, 25
                  mulhu        t0, t3, s9
                  c.addi       a1, -1
                  addi         a5, a1, -1971
                  srli         s0, s11, 16
                  sll          s8, a2, s11
                  sltiu        s0, a4, -1502
                  mulh         s11, a6, s0
                  and          t1, a0, s1
                  c.srai       a3, 22
                  srl          s1, s0, ra
                  c.addi4spn   s1, sp, 672
                  xor          t3, s11, a1
                  c.slli       ra, 11
                  c.addi       s11, 23
                  srai         a6, s9, 16
                  div          t5, s10, t1
                  c.slli       a6, 12
                  slli         t0, s9, 10
                  rem          a0, t3, s10
                  xor          s7, a6, t4
                  div          sp, zero, a1
                  or           s7, s3, sp
                  sltu         gp, s5, t5
                  c.nop
                  c.slli       t1, 3
                  auipc        a4, 670
                  mulhu        a7, a2, t6
                  c.mv         t6, a7
                  auipc        a3, 377118
                  xor          zero, a3, s10
                  c.addi4spn   a5, sp, 896
                  nop
                  c.andi       s0, -1
                  c.xor        s1, a3
                  c.srai       s0, 24
                  c.nop
                  c.or         a4, a4
                  lui          s1, 347089
                  srai         s4, s8, 1
                  c.addi       a6, 9
                  div          t1, a6, t0
                  nop
                  c.andi       a3, -1
                  c.mv         ra, a0
                  mulhu        a4, s1, s7
                  c.slli       t6, 8
                  c.addi16sp   sp, 384
                  c.slli       a4, 3
                  xor          t1, t1, a4
                  xor          tp, s5, a4
                  mulhu        a7, s7, s0
                  xor          t5, s6, a5
                  slti         s8, gp, 1054
                  c.li         s5, -1
                  c.addi       a5, 8
                  mulh         t6, s10, t0
                  nop
                  add          ra, a7, a4
                  or           a7, ra, t5
                  add          a0, a1, s9
                  c.and        a0, a5
                  c.addi4spn   a3, sp, 400
                  andi         tp, a1, 419
                  nop
                  add          s11, t0, s10
                  srli         t6, t2, 9
                  or           a0, s7, t2
                  mulhu        t4, s5, s8
                  slti         s4, s4, -1341
                  c.andi       a4, -1
                  c.andi       s1, -1
                  slti         t0, s5, 781
                  c.srai       s1, 20
                  mulh         t6, a0, s10
                  c.addi16sp   sp, 128
                  andi         s8, ra, -187
                  nop
                  add          a5, a2, a5
                  mul          a7, s4, s11
                  c.addi16sp   sp, 352
                  mulhu        t1, s8, a0
                  c.andi       s0, 12
                  slt          s2, t6, s10
                  c.srli       a3, 11
                  addi         sp, t3, -1822
                  c.andi       s0, 6
                  c.addi       gp, -1
                  divu         a5, s8, s3
                  srl          t5, a4, s5
                  nop
                  mulh         a3, s3, s8
                  c.and        a4, s0
                  xor          t6, s8, a2
                  slt          a6, s5, s3
                  slli         a0, ra, 24
                  add          a5, s5, t3
                  srl          a1, a6, tp
                  c.nop
                  addi         s0, a0, 1532
                  c.addi16sp   sp, -16
                  add          gp, ra, tp
                  c.sub        a3, a5
                  or           a7, a0, s10
                  c.addi4spn   s1, sp, 736
                  c.srai       s0, 7
                  c.xor        a4, s0
                  c.add        a7, sp
                  slli         s9, a3, 30
                  sltiu        a0, s9, -607
                  rem          a6, a6, a6
                  mul          ra, a7, a1
                  sltiu        s10, s9, 1474
                  mul          gp, zero, sp
                  c.li         a7, 8
                  sll          t4, a4, s9
                  sll          s7, t3, t1
                  c.addi       t0, -1
                  ori          s4, s10, 1545
                  srli         s2, a6, 2
                  and          a6, s0, s8
                  remu         t5, s9, a5
                  slti         ra, ra, -1053
                  srai         a0, sp, 25
                  c.addi       a6, 3
                  c.slli       t6, 18
                  nop
                  divu         s11, t4, gp
                  c.slli       t4, 22
                  sll          s0, a3, s3
                  nop
                  c.nop
                  c.mv         a3, s6
                  c.add        ra, a0
                  c.addi4spn   a1, sp, 736
                  mulh         t0, a4, s6
                  slli         s4, s6, 25
                  c.srli       a3, 21
                  c.or         a4, s0
                  c.addi16sp   sp, 144
                  sltiu        a3, t4, -1757
                  remu         a1, s7, sp
                  slli         t6, t3, 21
                  mulhu        gp, s2, s5
                  div          s6, s10, t3
                  mulh         s7, s0, s9
                  srai         a7, t3, 21
                  c.sub        a1, a0
                  xori         a0, t4, 1039
                  c.li         t4, 19
                  rem          s1, t5, t1
                  nop
                  c.li         sp, -1
                  mulhsu       s7, t4, t1
                  srli         s2, a5, 28
                  mulhu        zero, gp, s5
                  c.addi16sp   sp, 16
                  c.add        s5, a5
                  mulhsu       sp, a6, t1
                  slli         s0, tp, 24
                  xor          t5, s8, t4
                  mulhsu       a6, t2, s1
                  add          s2, s2, s9
                  sub          a0, a1, t3
                  sltiu        s11, s2, 1906
                  divu         t0, s9, a1
                  c.addi       a6, 7
                  addi         t5, s3, 253
                  mulhu        s8, gp, s8
                  c.add        s0, s3
                  xor          s1, a6, a7
                  nop
                  rem          ra, s7, t5
                  nop
                  or           a4, s10, sp
                  sra          s6, a6, zero
                  and          s1, s6, s3
                  c.addi16sp   sp, -16
                  mulh         s11, s9, a1
                  c.addi16sp   sp, -16
                  c.srai       a3, 4
                  and          s5, s1, t1
                  mulhu        zero, a6, s1
                  slli         sp, a1, 12
                  slt          t0, zero, t5
                  c.sub        a0, a5
                  slt          t4, s2, a0
                  mulhu        s4, a6, ra
                  slli         s8, t6, 14
                  slti         s0, s1, 1137
                  c.addi16sp   sp, -16
                  divu         a7, s0, s5
                  rem          zero, t1, a3
                  c.mv         a3, a0
                  xor          s2, a3, a4
                  nop
                  slti         t6, a3, 1235
                  c.nop
                  c.andi       a3, 16
                  rem          ra, tp, tp
                  c.xor        a0, a1
                  add          s7, s5, gp
                  add          a3, s10, a6
                  rem          s7, s1, t4
                  slli         gp, s0, 0
                  slt          a4, s5, t2
                  sub          t0, s4, s9
                  c.and        s0, a4
                  xori         s11, tp, -1925
                  c.lui        tp, 29
                  mulhsu       t4, zero, a1
                  sltiu        tp, s1, -1989
                  c.li         a5, -1
                  divu         t5, t3, a1
                  slt          s11, zero, a1
                  srai         s11, tp, 24
                  c.nop
                  sltiu        s4, t0, -1296
                  mulhsu       s1, t1, sp
                  c.add        s1, s10
                  addi         s10, a1, 819
                  c.andi       a0, -1
                  sltu         a0, t2, a2
                  nop
                  rem          tp, a1, a6
                  c.and        a5, a5
                  c.xor        a4, s1
                  slli         s7, a7, 25
                  c.or         a0, a1
                  sra          a1, t3, sp
                  c.mv         s7, s6
                  nop
                  c.xor        a5, a5
                  divu         s9, s8, s4
                  rem          a6, t6, s10
                  srl          s0, a6, s11
                  remu         s5, t0, a0
                  sra          a0, a4, t0
                  c.lui        s11, 8
                  c.and        a0, s1
                  mulhu        s7, a0, s9
                  div          a1, zero, t2
                  c.xor        a3, a0
                  or           a5, s0, a6
                  slli         a7, s0, 15
                  add          t3, s6, a7
                  ori          s7, s11, 445
                  c.lui        a1, 29
                  rem          t4, a1, a0
                  slli         t4, a6, 12
                  nop
                  nop
                  lui          tp, 699192
                  divu         s7, t4, s10
                  lui          gp, 701454
                  slti         s8, tp, 756
                  xori         a1, sp, 1279
                  c.lui        s0, 17
                  rem          a3, s6, s6
                  andi         s6, t3, -1423
                  c.slli       sp, 22
                  c.srai       a4, 27
                  mulh         s11, a4, t0
                  div          s6, a5, t0
                  srli         ra, a6, 6
                  c.addi       a5, -1
                  and          a0, zero, a6
                  c.and        a5, a4
                  mul          s8, s1, t1
                  xori         t6, s11, 446
                  mulhu        gp, a6, s3
                  c.srli       a3, 29
                  slti         a3, gp, -1992
                  divu         s1, t6, a4
                  mulhsu       a0, s2, s10
                  lui          gp, 896046
                  c.lui        s5, 9
                  andi         t1, a3, 1011
                  mul          t5, t2, t5
                  c.srai       a5, 1
                  mul          s5, t0, s11
                  div          tp, s2, a0
                  c.srli       s0, 12
                  srai         s8, s4, 1
                  addi         s2, s3, 1084
                  sltu         s9, a1, s5
                  c.addi4spn   a3, sp, 384
                  rem          s8, t1, s0
                  and          a1, a0, a3
                  c.sub        a1, a2
                  mulhsu       s11, a2, gp
                  c.or         s1, s0
                  c.srai       a1, 19
                  c.xor        a0, a1
                  mulhu        s7, s0, s3
                  c.mv         s5, s2
                  add          s2, a5, a1
                  c.andi       a4, -1
                  sra          a7, s9, t0
                  sll          s1, a1, a0
                  mulhu        s9, s10, s4
                  andi         t3, t4, 1576
                  srli         s2, a5, 24
                  div          a7, s5, t6
                  sll          t6, s0, ra
                  c.addi4spn   s0, sp, 832
                  divu         a5, s6, s5
                  mulhsu       t5, s11, s4
                  mulhsu       t6, s6, zero
                  sll          a5, s4, t3
                  c.li         a7, 31
                  c.addi16sp   sp, 112
                  c.lui        s7, 2
                  c.add        s6, s0
                  c.addi16sp   sp, -16
                  sll          s2, t2, a1
                  add          a4, a6, a3
                  and          t1, a5, s6
                  xor          s5, s4, s6
                  and          t4, tp, s7
                  auipc        s9, 361272
                  add          s9, gp, s0
                  auipc        a3, 486272
                  c.xor        a0, a5
                  srl          gp, t3, a0
                  slt          a3, t2, s2
                  mulhsu       s10, t1, s8
                  lui          a0, 975368
                  xor          a5, a0, s11
                  c.lui        s11, 23
                  c.addi16sp   sp, 192
                  mulh         a1, s0, t5
                  sll          s9, a3, a7
                  rem          a5, s3, t0
                  mulhsu       s10, tp, t5
                  sub          s7, a7, s5
                  mulh         a5, tp, s10
                  c.and        a1, a3
                  mul          s6, gp, a2
                  remu         s9, s10, a2
                  mulhu        s0, s10, s7
                  srai         t5, t2, 15
                  nop
                  c.and        a0, a5
                  andi         a6, tp, -680
                  c.slli       tp, 22
                  xor          gp, s5, t4
                  c.srai       a5, 19
                  c.mv         s8, s11
                  c.addi4spn   a0, sp, 864
                  rem          s0, s5, a0
                  andi         a3, a7, 888
                  srli         a6, a3, 26
                  add          a4, t3, t5
                  c.li         gp, 31
                  sra          s2, a7, a0
                  mul          a7, sp, s10
                  slti         a7, t4, 1984
                  sltu         t1, a1, t3
                  c.sub        a5, a3
                  c.andi       s0, 11
                  sltiu        a5, gp, -883
                  c.nop
                  sll          t4, s8, t4
                  lui          s9, 1044255
                  sub          s4, s0, s7
                  slli         t0, s0, 18
                  c.srli       a1, 3
                  sltu         t3, s3, a0
                  add          s10, tp, zero
                  addi         t0, t0, 960
                  xor          ra, a4, a5
                  ori          t4, a3, -100
                  lui          t0, 873823
                  c.addi16sp   sp, -16
                  c.addi       s2, -1
                  c.addi4spn   s1, sp, 320
                  mul          s0, zero, s9
                  c.srli       s0, 15
                  c.mv         t0, t2
                  lui          a1, 142260
                  and          t1, tp, tp
                  c.add        s5, s8
                  or           t1, s11, a0
                  srl          s10, t3, ra
                  or           a5, t1, s7
                  c.nop
                  lui          s9, 39403
                  li           s11, 0xbd73ac30 #start riscv_int_numeric_corner_stream_7
                  li           s10, 0xffffffff
                  li           s4, 0x0
                  li           a0, 0x0
                  li           s5, 0xffffffff
                  li           t3, 0x80000000
                  li           s6, 0x0
                  li           t4, 0x1e8b3bdf
                  li           a4, 0x80000000
                  li           a7, 0xffffffff
                  mulhsu       a4, t4, t3
                  mulhsu       s6, t3, a7
                  mul          a7, s6, s6
                  nop
                  nop
                  nop
                  divu         a7, s5, a0
                  divu         s10, s11, a7
                  mulh         t3, s6, s5
                  auipc        s11, 1005817
                  addi         a7, s6, -528
                  nop
                  mulh         a7, t3, s5
                  mul          s6, a7, s4
                  mul          a4, s10, s10
                  addi         s4, a0, -1300
                  remu         s4, s6, s5 #end riscv_int_numeric_corner_stream_7
                  srl          a1, t3, t2
                  or           s6, t4, t3
                  srli         s1, a6, 12
                  c.mv         a0, a6
                  sra          s0, a1, s1
                  slti         s7, a4, 532
                  mulhsu       gp, s8, a7
                  slli         s2, a3, 26
                  sra          s8, zero, s3
                  andi         t3, t6, -912
                  srli         ra, a3, 11
                  c.srai       a0, 24
                  sltu         s9, t0, s5
                  xor          a0, a1, tp
                  addi         zero, t4, 371
                  c.addi4spn   a3, sp, 192
                  mulhsu       a4, s3, s9
                  xori         a7, s4, 1329
                  divu         a0, t6, sp
                  c.slli       s10, 8
                  c.xor        a1, s1
                  mulhsu       gp, t5, a2
                  c.addi4spn   s1, sp, 576
                  mulhsu       a4, s2, t3
                  add          s8, a2, tp
                  c.lui        s0, 19
                  srai         t3, s9, 15
                  addi         a6, s6, -1495
                  srli         a6, t5, 12
                  mulh         ra, a5, s3
                  c.xor        a1, a5
                  c.nop
                  xori         t3, t4, 1451
                  mul          gp, s3, t6
                  mulhsu       s9, sp, t5
                  mulh         sp, s11, s4
                  divu         t3, t0, s8
                  c.li         a4, 16
                  c.xor        a5, a0
                  c.sub        s0, a2
                  c.mv         t0, t2
                  c.sub        s1, a3
                  lui          t3, 705501
                  nop
                  srli         a0, a4, 16
                  c.and        a3, a1
                  auipc        s4, 583547
                  srl          s6, s3, t1
                  mul          t4, a6, t5
                  mulhsu       s2, t0, t3
                  c.srli       a1, 31
                  and          a5, t5, a3
                  srli         t0, a3, 10
                  c.addi       s7, 12
                  srl          s11, a6, s6
                  or           a0, s11, t5
                  c.nop
                  sltu         ra, a5, ra
                  sltiu        tp, t3, 865
                  add          ra, s1, t2
                  c.srli       a4, 2
                  sltu         s4, t2, t5
                  c.srai       s1, 30
                  c.srai       a5, 27
                  mulh         t1, gp, s4
                  sltu         s7, s5, a3
                  sll          a6, s8, t0
                  c.slli       tp, 29
                  c.and        a0, s0
                  xori         a5, s8, 1663
                  andi         t3, a5, -1247
                  and          gp, s8, s0
                  srl          s10, s8, t1
                  and          a4, tp, t3
                  c.and        s1, s1
                  mulhsu       s4, s7, t4
                  c.addi16sp   sp, 336
                  c.lui        gp, 15
                  slti         s7, t4, 23
                  c.xor        a4, a0
                  c.lui        s2, 25
                  xor          t5, s7, s6
                  slt          s7, a0, tp
                  ori          a1, t0, 1520
                  div          a7, s0, a6
                  c.or         a0, s1
                  mulhu        s9, t6, s6
                  c.xor        s1, a1
                  ori          s7, s0, 1255
                  lui          t6, 216499
                  add          tp, t6, tp
                  andi         t5, a3, 1906
                  c.addi4spn   a5, sp, 528
                  sll          t4, gp, gp
                  c.addi4spn   a3, sp, 736
                  sub          zero, tp, t4
                  mul          s9, t1, s7
                  c.xor        a0, a2
                  addi         s9, s3, 1613
                  or           s6, s5, s6
                  xor          t3, a6, s1
                  addi         s6, a4, -1039
                  srli         a5, s8, 21
                  srai         a3, t4, 1
                  add          s2, t2, s2
                  mulhsu       a4, gp, t6
                  sll          s2, ra, s6
                  slti         a6, gp, 856
                  or           gp, zero, a2
                  add          a3, s11, s6
                  sltu         t6, s9, t5
                  add          sp, tp, a6
                  c.srai       a5, 19
                  srai         gp, a7, 9
                  mulhu        a5, s4, s10
                  remu         sp, t5, a6
                  andi         s4, s9, -2004
                  remu         s5, zero, a1
                  mul          s6, t2, a3
                  srli         s1, a3, 23
                  c.slli       s10, 9
                  c.nop
                  c.addi4spn   s1, sp, 784
                  div          s9, s8, s5
                  c.and        s0, s1
                  remu         s4, gp, s3
                  ori          t3, t2, 1978
                  and          a1, t6, t0
                  and          s7, t5, gp
                  ori          a4, a5, 1217
                  c.srli       s1, 13
                  c.srai       a3, 11
                  c.sub        a4, a4
                  c.and        s1, a2
                  srli         a1, t3, 23
                  mulhu        gp, t3, a4
                  divu         s10, t4, t1
                  c.sub        a4, a2
                  add          a0, s5, s1
                  nop
                  c.sub        s1, a4
                  c.add        a5, s7
                  c.or         a0, a3
                  or           a5, a6, s6
                  sltiu        s7, a6, 770
                  srl          t1, a7, zero
                  slti         t4, a5, -1539
                  sltu         a3, a1, t3
                  c.and        a0, a0
                  nop
                  c.srai       a3, 12
                  div          t5, t2, s3
                  mul          t6, a0, s1
                  sltu         t3, s0, s5
                  c.andi       a3, 0
                  or           gp, zero, s5
                  c.and        a0, a3
                  div          s0, t2, tp
                  remu         zero, t2, tp
                  divu         zero, a0, sp
                  slli         s1, s5, 2
                  srai         a7, s0, 19
                  sll          tp, tp, a3
                  c.li         a5, -1
                  lui          tp, 347402
                  mul          s0, gp, s4
                  div          s7, s7, t3
                  divu         a5, s9, t6
                  mulh         a3, a0, t2
                  slti         a6, t0, 1621
                  ori          a6, t1, 908
                  xori         s1, t6, -1658
                  c.nop
                  srai         s0, t5, 13
                  sltiu        sp, s3, 497
                  sltiu        t3, s4, -1555
                  sltiu        s7, t4, 99
                  div          s5, a4, t3
                  auipc        s5, 580613
                  mulhsu       s11, s3, s5
                  srli         zero, a6, 18
                  addi         s5, s10, -1354
                  remu         t1, s3, t0
                  c.lui        tp, 30
                  slti         t4, t6, 1229
                  slti         a1, gp, -606
                  sltiu        s0, a4, 1332
                  c.srai       s1, 30
                  andi         a7, a1, -880
                  c.sub        a1, a2
                  add          s0, s4, a3
                  sltu         t3, a3, s10
                  sra          s1, s11, tp
                  slti         t0, sp, -1256
                  c.addi       s9, -1
                  c.addi       t5, -1
                  c.addi16sp   sp, 304
                  c.slli       sp, 9
                  add          s6, a6, a3
                  add          t6, t5, t6
                  add          a7, s4, t2
                  slti         s11, a4, 1394
                  lui          s7, 737119
                  srai         gp, s0, 21
                  mulhu        s0, s4, t1
                  srli         gp, s3, 31
                  mulhsu       s5, zero, s7
                  mul          sp, s10, s5
                  srai         s0, t4, 14
                  addi         s0, s11, 1530
                  srai         gp, s0, 23
                  c.srai       a1, 3
                  c.addi       s8, -1
                  srl          s8, a0, zero
                  sub          a6, s2, t1
                  ori          s4, a3, -1324
                  c.slli       s7, 3
                  mulhsu       t3, s7, s5
                  auipc        t6, 534469
                  c.add        s6, t2
                  div          s1, a0, s11
                  sra          t1, s6, s9
                  rem          t3, t3, t4
                  mul          s10, s2, tp
                  sub          s10, zero, s4
                  c.srai       a3, 22
                  srai         t6, t6, 16
                  slli         sp, a7, 28
                  slti         s9, t3, 506
                  slti         s1, s10, 1941
                  slt          s10, s1, s10
                  c.lui        s9, 8
                  c.and        s0, a1
                  mulh         a4, tp, s8
                  sra          gp, s6, s2
                  c.srli       s0, 2
                  c.andi       a0, -1
                  c.add        t1, s9
                  addi         s4, s5, -418
                  c.li         a4, -1
                  c.slli       a5, 24
                  rem          s6, t1, t5
                  add          t4, t0, sp
                  sll          s8, zero, s4
                  slt          s7, s5, s1
                  c.li         s7, 27
                  c.and        a1, a4
                  remu         t5, t2, s3
                  c.xor        a3, s1
                  c.addi4spn   s0, sp, 992
                  c.sub        s0, s1
                  c.slli       s9, 28
                  c.nop
                  remu         a0, sp, a3
                  mul          a7, t3, t4
                  nop
                  xori         t1, sp, 1104
                  lui          s1, 169662
                  nop
                  sra          t5, ra, tp
                  or           a1, s5, t5
                  slli         tp, s5, 15
                  add          tp, a6, s0
                  c.lui        tp, 10
                  remu         s9, a0, tp
                  lui          tp, 131358
                  rem          a3, s11, a4
                  remu         s9, s0, t1
                  c.or         a3, s0
                  rem          a1, s11, s8
                  rem          s8, a1, t6
                  add          sp, t2, t6
                  addi         gp, a1, 955
                  c.sub        a1, a1
                  c.or         s0, s0
                  lui          s6, 112673
                  addi         t3, t0, -129
                  nop
                  srli         s6, s0, 11
                  c.srli       a4, 9
                  sra          t0, sp, s4
                  c.addi16sp   sp, 416
                  c.nop
                  div          t0, s0, t2
                  slli         s11, s6, 25
                  c.mv         t6, t2
                  sltiu        zero, s6, -880
                  slti         t5, s3, -1363
                  remu         ra, s5, s9
                  lui          a3, 148240
                  sra          a7, a1, t2
                  nop
                  c.andi       a4, -1
                  or           s1, t6, s1
                  mul          s5, t5, a3
                  srai         a5, a1, 28
                  xori         tp, gp, -1503
                  c.addi16sp   sp, -16
                  c.and        a3, s1
                  rem          tp, sp, t6
                  sra          tp, s4, s1
                  sub          a7, s7, s8
                  and          a6, a5, s9
                  auipc        s9, 1039045
                  sra          zero, s3, s5
                  c.and        a1, a1
                  slti         t5, a6, 2032
                  c.and        a3, s1
                  div          s1, tp, a3
                  slti         t1, t3, -424
                  ori          s1, t1, -1949
                  rem          s0, s4, s0
                  c.add        s9, a0
                  srli         t3, s11, 17
                  c.sub        a5, a0
                  c.or         a5, a1
                  c.addi16sp   sp, -16
                  slt          a4, t6, a2
                  add          a0, a3, a2
                  sra          s6, t1, s11
                  xor          a3, tp, ra
                  sltu         gp, a1, t0
                  nop
                  mulhu        s11, t0, s11
                  srai         t3, sp, 18
                  c.addi16sp   sp, -16
                  c.sub        a4, a3
                  sub          a6, a1, ra
                  ori          gp, s9, 608
                  andi         s8, s1, 1805
                  c.sub        a5, a0
                  auipc        s4, 393677
                  c.xor        a0, a4
                  c.addi4spn   s0, sp, 496
                  slti         tp, s2, -2046
                  c.srai       s0, 9
                  c.nop
                  auipc        a5, 500940
                  c.mv         s0, t6
                  c.andi       a3, -1
                  and          s4, s7, s5
                  c.or         a5, a4
                  mulhu        s9, a7, s8
                  and          tp, s11, gp
                  c.nop
                  remu         s1, s10, zero
                  lui          t1, 207714
                  c.or         s1, a1
                  mul          a3, t5, a2
                  lui          a6, 702069
                  c.srli       s0, 17
                  slt          s8, s1, s4
                  c.mv         s7, a1
                  sltu         ra, s3, sp
                  slt          s1, a1, s0
                  mulhsu       t5, s0, t4
                  c.lui        s0, 19
                  c.addi       t1, -1
                  slt          s9, a7, a4
                  c.srai       s0, 13
                  addi         s7, s7, -1389
                  c.srai       s0, 24
                  c.addi4spn   s1, sp, 272
                  c.nop
                  c.srai       a1, 24
                  c.andi       a0, 24
                  sub          s9, a1, s7
                  c.or         s1, s1
                  andi         s11, s7, -1047
                  c.slli       a6, 11
                  mul          a1, a3, s8
                  sltiu        zero, t0, -252
                  slt          a5, s1, gp
                  c.sub        s0, a3
                  and          a3, t6, a3
                  srli         s6, s4, 21
                  c.andi       a4, 17
                  xor          t1, s9, a1
                  c.andi       s0, -1
                  rem          s2, t5, a2
                  slt          s2, s8, sp
                  c.sub        a1, a1
                  c.slli       a6, 2
                  c.addi4spn   s1, sp, 64
                  lui          s1, 272185
                  mulhu        a7, s6, a3
                  c.srli       a3, 5
                  c.mv         sp, tp
                  slti         gp, a4, 505
                  and          a3, t2, ra
                  c.addi16sp   sp, 96
                  sll          s11, s5, s0
                  mulhu        s9, gp, s3
                  remu         t6, t2, t5
                  slt          a7, s3, s9
                  c.lui        t5, 19
                  and          a4, s6, t4
                  divu         s10, t1, t6
                  add          a6, a2, s10
                  addi         s5, gp, -1230
                  c.slli       s7, 1
                  slt          a5, t6, a2
                  mulhu        sp, a0, a2
                  remu         t0, s6, a4
                  c.nop
                  divu         s11, a5, gp
                  c.srli       a0, 30
                  c.addi16sp   sp, 112
                  addi         t3, a2, -511
                  and          s5, a3, t3
                  c.addi4spn   a0, sp, 912
                  c.li         s7, -1
                  c.or         a1, s1
                  and          s0, s2, s4
                  sltu         a3, t6, t5
                  c.or         a0, a3
                  c.li         t4, -1
                  slli         t6, a5, 12
                  srai         t4, s10, 9
                  c.andi       a5, -1
                  c.mv         a4, a7
                  rem          t6, a4, a6
                  srli         t5, s2, 22
                  sltu         a5, t6, a0
                  c.andi       a5, -1
                  c.addi4spn   a1, sp, 672
                  srl          a3, a7, s9
                  c.addi4spn   s0, sp, 848
                  mul          s10, a4, s11
                  sltiu        s9, gp, 733
                  sll          t1, tp, zero
                  c.srai       a1, 27
                  or           t6, t4, s11
                  c.addi4spn   a0, sp, 432
                  mulh         gp, tp, t5
                  slli         a4, a6, 28
                  sltu         s5, t3, a7
                  c.sub        a4, a5
                  and          t4, s5, s11
                  div          t3, t5, a7
                  c.addi16sp   sp, 240
                  xor          s11, s11, tp
                  c.andi       a1, 23
                  c.andi       s0, -1
                  c.slli       a4, 16
                  c.xor        s0, a3
                  slti         tp, s2, 1731
                  sub          tp, a0, a1
                  ori          t6, zero, -195
                  mulh         s5, s1, gp
                  sll          a4, tp, s4
                  c.or         a5, s1
                  c.add        s0, s3
                  divu         t1, s3, t4
                  addi         t4, t2, 1802
                  mulhsu       s2, t3, s1
                  c.add        t5, a0
                  auipc        a3, 23439
                  c.addi       s2, 27
                  ori          s10, t0, 1876
                  slli         s8, s1, 14
                  mul          a3, s7, a1
                  or           a3, t3, t6
                  c.addi16sp   sp, 320
                  mulhsu       t5, zero, s10
                  mulhu        zero, a4, tp
                  c.xor        a4, a1
                  mulhsu       a1, gp, a1
                  srl          s1, t5, s10
                  mulh         s5, t5, s3
                  xori         s1, s1, 672
                  srl          t6, s5, s4
                  c.or         a3, s0
                  slt          t5, s2, t2
                  srai         s1, a7, 2
                  xor          t0, a0, a7
                  or           t3, s7, s8
                  c.slli       s7, 23
                  auipc        t1, 665441
                  sltiu        zero, s3, -1407
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_11
                  li           t4, 0xffffffff
                  li           sp, 0x80000000
                  li           ra, 0x4f44c4b6
                  li           t3, 0x1b180f31
                  li           s4, 0x0
                  li           gp, 0x468aa485
                  li           s1, 0xffffffff
                  li           s0, 0x0
                  li           a4, 0x80000000
                  divu         sp, s4, a4
                  mulhsu       ra, s4, s1
                  remu         s0, sp, t3
                  mulh         t4, s6, s4
                  div          s0, s0, a4
                  divu         s4, s4, s1
                  sub          t4, gp, s6
                  mulh         s6, sp, gp
                  remu         s4, s1, s4
                  div          sp, s4, t4
                  sub          s6, s4, ra
                  auipc        s4, 665337
                  divu         s1, s4, t3
                  addi         ra, a4, -1012
                  div          gp, sp, s4
                  mulhsu       gp, ra, s0
                  divu         ra, s0, t4
                  mulhsu       t4, s6, a4
                  auipc        gp, 203508
                  addi         ra, a4, -986
                  auipc        ra, 44735
                  remu         s6, s1, ra
                  addi         s6, ra, -71
                  nop
                  mulhsu       s1, t3, ra
                  add          gp, s4, t3
                  mulhsu       a4, s1, sp
                  sub          s0, s1, ra
                  add          t4, s0, sp #end riscv_int_numeric_corner_stream_11
                  or           a1, a7, s6
                  c.li         s0, -1
                  c.lui        s11, 12
                  srai         sp, t2, 24
                  srl          s7, s10, s0
                  c.add        a5, a4
                  remu         s9, t3, tp
                  nop
                  rem          s1, a2, s9
                  andi         t5, t3, 351
                  c.lui        t1, 29
                  div          s9, a0, a7
                  or           t6, sp, a1
                  sll          s5, t4, zero
                  mul          s0, t5, t6
                  remu         s10, a3, s6
                  andi         s4, t0, 433
                  c.xor        a0, a1
                  c.add        s2, ra
                  xori         s2, s4, -551
                  c.addi       sp, 27
                  ori          sp, a3, 564
                  srai         ra, a5, 2
                  c.add        s1, s2
                  and          a6, a0, a3
                  c.or         s0, a4
                  sltu         ra, s9, a4
                  c.add        a4, s7
                  sub          t4, t1, s8
                  ori          a3, s3, 700
                  srai         s7, a4, 27
                  srl          s0, s7, t6
                  andi         s0, t2, -487
                  remu         a1, s1, tp
                  lui          t0, 84763
                  c.or         a5, a0
                  sub          gp, zero, a1
                  slti         t1, a6, -1873
                  div          s6, a1, a1
                  mulh         a0, t5, tp
                  mulhsu       gp, ra, tp
                  mulhu        s2, gp, s9
                  sra          s5, s8, ra
                  remu         s11, a1, tp
                  divu         s11, t1, s4
                  slt          s11, s9, ra
                  c.addi4spn   a3, sp, 224
                  sltiu        a0, s11, 1551
                  c.add        a3, s6
                  c.xor        s1, a5
                  c.addi16sp   sp, 464
                  divu         sp, t5, s2
                  slli         s8, a2, 13
                  andi         tp, a7, -1474
                  mulhu        a7, a6, t6
                  ori          a1, a1, -1307
                  div          t4, tp, zero
                  c.srli       a5, 12
                  srl          s8, a4, a1
                  c.addi16sp   sp, -16
                  srli         a7, s2, 15
                  or           t6, t4, a4
                  mul          a6, a5, a4
                  srl          zero, a3, a5
                  c.sub        a4, a0
                  c.mv         t0, a0
                  c.li         t1, -1
                  lui          a7, 1024731
                  c.or         a4, s1
                  sltiu        t6, gp, -1245
                  slli         t1, t3, 3
                  xori         zero, s7, -1867
                  slti         t3, s1, 914
                  xori         s9, s0, -1670
                  c.add        s9, sp
                  c.nop
                  mulhu        sp, s8, a6
                  mul          a3, a4, s7
                  slt          s6, t4, s5
                  srli         a7, t1, 17
                  c.xor        s0, a3
                  sltiu        t3, t5, 1139
                  c.sub        s1, a2
                  mulh         a4, t5, a4
                  remu         t6, s0, a0
                  mulhu        a4, s11, s2
                  c.nop
                  rem          s0, s9, s0
                  sub          tp, t1, a5
                  c.sub        a4, a3
                  div          s2, a6, a5
                  mulh         s2, s9, s11
                  srl          s7, s6, a6
                  srl          t0, a3, s5
                  slti         ra, s8, 457
                  add          s4, a2, s1
                  div          s4, ra, s0
                  auipc        s5, 240190
                  mulhsu       a7, s11, a5
                  c.srli       a5, 17
                  c.mv         ra, a7
                  mulhu        zero, a5, sp
                  c.add        s0, s10
                  slli         t4, t4, 0
                  lui          a4, 925136
                  nop
                  add          a4, s11, a3
                  remu         a3, s9, t1
                  c.xor        a0, a3
                  c.or         a4, a3
                  lui          t0, 249296
                  c.or         a5, s0
                  srl          a7, a5, a6
                  div          tp, s0, t3
                  and          s2, s1, s0
                  div          a3, s2, s3
                  c.srai       a3, 25
                  c.addi       a1, -1
                  lui          s6, 63235
                  c.lui        t0, 21
                  divu         a0, t6, a4
                  add          t0, s11, zero
                  c.sub        a1, s1
                  ori          a7, tp, -775
                  nop
                  c.xor        a0, a5
                  c.addi4spn   a5, sp, 816
                  srai         t6, a3, 12
                  c.srli       s0, 26
                  srai         a3, t4, 3
                  c.addi16sp   sp, 480
                  c.srai       s0, 22
                  c.add        t0, t5
                  c.or         s0, a4
                  srai         s8, s5, 12
                  c.addi4spn   s0, sp, 240
                  ori          a6, t5, -724
                  srli         a4, s4, 23
                  ori          a1, t2, 748
                  addi         s7, a0, -197
                  xor          ra, t0, t2
                  xori         a5, zero, -606
                  c.lui        s9, 28
                  c.nop
                  srl          a3, t5, a7
                  auipc        t0, 99835
                  mulh         t1, zero, a2
                  slli         t0, a2, 6
                  divu         gp, sp, a2
                  sltiu        s5, s7, 1548
                  c.addi16sp   sp, -16
                  mulhsu       s11, s8, a1
                  divu         s8, s7, s10
                  sub          a7, ra, s10
                  slt          s5, s4, ra
                  c.srli       a5, 23
                  c.slli       s10, 15
                  c.lui        gp, 10
                  c.mv         gp, s10
                  c.or         a0, a5
                  xori         a0, gp, 1724
                  c.nop
                  c.srli       s1, 8
                  sltiu        s5, t6, 1285
                  auipc        s10, 175666
                  c.xor        a3, a4
                  add          s6, s1, zero
                  slt          s9, s7, t2
                  c.addi       t3, -1
                  c.and        a5, a3
                  sub          a0, s3, sp
                  sll          gp, s0, s8
                  or           a5, t6, t5
                  mul          s0, s7, zero
                  mulhu        s4, a0, s10
                  c.mv         a4, tp
                  c.addi16sp   sp, 432
                  sltiu        a1, s0, 1189
                  c.li         t4, 27
                  andi         tp, s1, -1653
                  slli         sp, t5, 25
                  mul          a3, s3, t2
                  c.xor        a1, a3
                  c.lui        s1, 7
                  sub          zero, a7, sp
                  slli         s7, s3, 8
                  mulh         s1, s9, t5
                  c.andi       s1, -1
                  srli         s5, s4, 12
                  mulh         s6, a7, t4
                  xori         a3, a1, 858
                  sub          t6, a7, zero
                  sra          zero, t6, t1
                  nop
                  c.srai       a1, 31
                  c.li         a1, -1
                  c.xor        a5, a2
                  or           tp, gp, ra
                  andi         s7, s3, -1208
                  andi         a4, s3, -1614
                  c.srli       a5, 9
                  srl          a6, a5, s3
                  sltiu        s6, t2, 120
                  c.or         a4, s1
                  mul          s6, t6, t0
                  or           t1, s5, t0
                  c.nop
                  sll          ra, s2, a4
                  auipc        gp, 649289
                  c.and        a3, a1
                  xor          s1, a7, t0
                  c.addi       s7, 29
                  andi         sp, t1, -805
                  mulh         s8, s2, t0
                  mulh         a5, s8, s8
                  c.sub        a3, a4
                  remu         a7, t0, t2
                  slt          a4, t2, a3
                  addi         zero, t5, 1630
                  c.or         a5, s1
                  c.or         a1, s1
                  c.li         gp, 5
                  slli         s5, a4, 24
                  and          a5, s5, t3
                  add          s10, t5, t6
                  or           sp, t2, sp
                  c.andi       a4, -1
                  nop
                  mul          gp, a6, s9
                  sltu         s8, t6, s11
                  nop
                  xori         t3, t6, 502
                  c.addi       s8, -1
                  sltiu        tp, t0, -1104
                  lui          t3, 144183
                  mulh         t6, s2, gp
                  remu         a3, gp, s9
                  div          t3, s10, t5
                  mulhsu       gp, t0, s4
                  sub          t3, gp, s1
                  ori          tp, t6, -346
                  srli         a5, a4, 29
                  c.addi16sp   sp, -16
                  c.sub        a4, a1
                  or           s1, a6, s8
                  c.addi       a0, 31
                  c.andi       s0, -1
                  mul          a1, s5, s11
                  srli         gp, ra, 22
                  c.andi       a4, 7
                  xor          a4, s10, a0
                  c.srai       s1, 4
                  div          s11, t2, t4
                  srli         sp, sp, 21
                  c.add        tp, ra
                  srli         a0, s4, 23
                  sra          s6, s8, s3
                  c.nop
                  rem          t0, t5, zero
                  and          t0, s4, tp
                  c.sub        a3, a1
                  andi         s8, a2, -1461
                  srl          s10, a4, s11
                  add          t5, a5, t5
                  c.slli       s11, 7
                  sltu         a0, s9, t4
                  addi         tp, t6, 1405
                  srli         t6, s10, 16
                  c.srai       a3, 15
                  srli         s11, a1, 30
                  mul          t3, a4, s5
                  c.add        t0, s5
                  ori          a5, s9, 432
                  sltiu        s7, t3, 785
                  c.addi       t5, 28
                  remu         gp, zero, zero
                  remu         ra, t5, a3
                  mulhsu       s2, t2, s4
                  mulhsu       s5, s8, t6
                  lui          tp, 510387
                  mulhu        zero, s7, t3
                  divu         tp, zero, s11
                  c.sub        a0, a5
                  sub          a1, s9, a4
                  lui          t4, 85615
                  sll          s5, a6, s8
                  c.add        s11, gp
                  c.sub        a4, a2
                  c.addi       t5, -1
                  c.slli       s11, 17
                  c.addi4spn   s0, sp, 896
                  sltu         t6, s8, a4
                  sltu         a4, s5, t3
                  auipc        s8, 757609
                  c.lui        s7, 29
                  mulhu        t3, s1, s0
                  sll          sp, t3, a2
                  slti         a5, s4, 1259
                  and          s5, s8, s0
                  lui          s4, 397790
                  sltiu        a7, t3, 1649
                  c.or         a4, a0
                  c.slli       gp, 15
                  c.lui        a1, 8
                  c.or         a3, a4
                  sltu         a5, a2, t6
                  mulhsu       t6, t6, sp
                  sltu         s1, gp, s4
                  rem          t0, s0, sp
                  add          s8, s7, s0
                  div          s10, s5, s1
                  lui          s11, 643924
                  c.addi4spn   a1, sp, 912
                  c.or         a4, a1
                  srl          a0, t1, s5
                  andi         s11, a6, 1939
                  div          a3, s11, a7
                  mulh         s9, a6, gp
                  c.xor        a1, a5
                  addi         a7, t5, 1870
                  div          t3, ra, tp
                  lui          s4, 683408
                  remu         s9, t4, tp
                  srai         a4, s8, 11
                  c.or         a3, a2
                  c.addi16sp   sp, -16
                  ori          s7, a1, 650
                  c.sub        a5, a2
                  c.mv         t1, s2
                  c.sub        a4, a5
                  sub          a4, t2, a1
                  sltu         s0, a0, a0
                  c.srai       s0, 16
                  c.lui        s5, 7
                  rem          s9, a7, s5
                  c.addi16sp   sp, 128
                  c.andi       a1, 29
                  sll          a0, s0, t1
                  sltu         a6, a0, a5
                  lui          s4, 80720
                  c.addi       gp, -1
                  c.addi       ra, 16
                  or           ra, gp, t1
                  c.or         s0, a2
                  c.xor        a4, a1
                  sub          t1, t0, gp
                  c.srai       a1, 24
                  xor          s5, a5, s4
                  srli         a1, t1, 13
                  slli         t4, a4, 26
                  slti         s8, a0, -979
                  c.add        a5, s3
                  c.add        a1, a0
                  add          s11, t6, a0
                  srli         a3, s3, 16
                  c.addi4spn   a4, sp, 144
                  sltu         tp, a3, a6
                  or           gp, t3, s3
                  c.nop
                  sltu         a3, t6, a1
                  and          gp, tp, s11
                  sll          t0, tp, t6
                  c.add        s8, t5
                  addi         s0, t5, -378
                  slti         gp, ra, 642
                  add          a7, t6, t0
                  c.li         s1, 12
                  srl          s4, t5, s2
                  c.slli       a4, 12
                  c.and        a3, a4
                  addi         s11, t2, 1011
                  c.addi16sp   sp, 144
                  xor          s9, s3, gp
                  mulhu        s5, t0, s11
                  c.sub        a3, a5
                  nop
                  nop
                  srl          a3, s2, s6
                  mul          t0, s8, a6
                  mulhu        t1, s7, a5
                  xori         zero, s7, -1687
                  c.li         s8, 23
                  rem          s1, t5, t3
                  c.mv         s10, a6
                  sra          a0, s1, t1
                  c.mv         s11, a0
                  c.and        a4, a0
                  c.srai       a3, 24
                  addi         a4, ra, -1840
                  c.andi       a3, -1
                  srl          s8, s3, t3
                  sra          zero, t2, t5
                  slli         ra, t0, 21
                  c.li         t3, -1
                  c.addi4spn   a4, sp, 784
                  c.nop
                  sltu         a7, t1, a6
                  mulhu        a6, a1, a3
                  ori          s11, t5, -778
                  ori          s8, t5, -1342
                  c.addi       a0, -1
                  andi         ra, s4, 1127
                  add          ra, a5, a6
                  xor          t3, s3, t4
                  rem          s11, t5, sp
                  srai         s9, gp, 9
                  divu         zero, tp, t0
                  c.srli       a0, 11
                  nop
                  and          s8, t0, a4
                  andi         t4, a1, -23
                  remu         ra, ra, t4
                  c.or         a1, a5
                  slt          s11, s6, a0
                  c.or         s1, a1
                  srli         zero, s5, 19
                  c.sub        a3, s1
                  c.slli       s2, 29
                  slt          gp, s0, s1
                  sra          s0, a0, a6
                  c.xor        s0, a2
                  c.lui        a6, 18
                  c.and        a3, a5
                  c.srai       s1, 23
                  c.srli       a0, 5
                  mulhu        s0, t1, t3
                  srai         s9, a4, 21
                  or           gp, zero, a2
                  c.and        a1, a1
                  c.and        a3, a5
                  sll          s5, t4, a6
                  srai         s9, t2, 27
                  remu         s4, s6, s0
                  c.sub        a1, a3
                  lui          a3, 535205
                  and          a7, zero, s0
                  c.srai       a0, 5
                  c.lui        t6, 29
                  c.srli       a3, 7
                  c.addi       s7, 17
                  xor          s9, s4, t6
                  c.srai       s0, 24
                  lui          t4, 568203
                  c.nop
                  ori          a1, a1, 1348
                  c.lui        a7, 27
                  rem          s8, sp, t0
                  xori         s9, t3, 653
                  sltu         zero, t3, ra
                  c.addi4spn   s1, sp, 352
                  c.srai       s0, 3
                  or           a1, a2, s7
                  lui          s6, 742075
                  c.xor        a4, a4
                  mulhu        s4, a3, t2
                  and          a4, s7, sp
                  c.lui        s4, 23
                  lui          s8, 180885
                  sll          a6, s1, s6
                  c.or         a1, a3
                  slt          s5, s5, gp
                  sra          s11, t6, s3
                  c.addi       t0, -1
                  xor          s0, t4, a3
                  c.addi16sp   sp, -16
                  c.srai       s0, 9
                  sub          a3, t5, a0
                  slli         a0, gp, 17
                  c.mv         s5, a4
                  sltu         s5, t2, t2
                  sltiu        s6, t4, -1924
                  addi         s8, s2, -1685
                  slli         s4, t3, 25
                  srai         a7, gp, 18
                  slli         t3, t4, 11
                  mulhu        t3, s9, s2
                  srl          a6, s8, a2
                  sub          s0, a6, t5
                  mulhsu       a4, s11, a7
                  c.addi16sp   sp, -16
                  srai         s11, s4, 20
                  c.andi       s0, -1
                  c.lui        tp, 13
                  c.or         a3, a5
                  c.and        a0, a3
                  mulh         s10, s4, a3
                  add          sp, t4, s0
                  mulh         s11, t6, a1
                  auipc        t0, 556437
                  c.add        s2, s10
                  slli         s0, s1, 11
                  slli         s1, t1, 15
                  c.slli       s2, 29
                  or           t5, s5, t1
                  slt          gp, s1, zero
                  c.addi       sp, -1
                  mulhsu       s8, s9, s11
                  ori          t0, a6, -538
                  slt          s6, a2, t2
                  slti         a4, s3, 488
                  c.and        s0, a1
                  lui          sp, 855449
                  remu         t5, a6, sp
                  c.addi4spn   s0, sp, 320
                  sltiu        s2, s3, 1566
                  c.addi4spn   s0, sp, 800
                  c.slli       sp, 27
                  c.xor        s1, a0
                  c.add        t1, s8
                  auipc        tp, 857502
                  c.lui        a1, 9
                  c.mv         t4, s2
                  c.addi16sp   sp, -16
                  srl          a0, s0, t6
                  rem          t0, s9, s7
                  mul          s5, s5, a5
                  c.xor        a3, a0
                  ori          t5, t0, -1113
                  c.li         s4, 1
                  c.li         t4, 31
                  mulhsu       s7, t3, t1
                  c.add        t4, gp
                  c.and        s1, s0
                  srai         s2, s1, 1
                  add          s7, t2, t6
                  c.srli       a4, 17
                  srli         a0, s0, 17
                  sra          a6, a5, a3
                  divu         s1, t5, t1
                  sub          s5, t0, t5
                  xori         s4, s6, -1332
                  remu         t5, tp, t0
                  c.srai       s1, 29
                  sll          zero, s2, s7
                  xori         a6, a4, 558
                  c.slli       tp, 5
                  c.and        s1, s0
                  and          s8, s7, s0
                  add          s11, a0, a4
                  c.srli       s0, 28
                  andi         a6, s10, -1126
                  sll          s0, s0, a2
                  sltu         t4, a4, a3
                  c.and        a3, a5
                  mulhsu       t5, s3, s7
                  c.or         a0, a3
                  srai         a7, s1, 9
                  c.addi4spn   a4, sp, 144
                  c.srli       a1, 18
                  c.addi4spn   a4, sp, 752
                  c.mv         s7, tp
                  andi         a5, s5, -590
                  slti         t3, s0, -1090
                  nop
                  mulh         s5, t1, s11
                  xori         s8, a7, -27
                  ori          s0, t1, -740
                  andi         a3, s6, 275
                  sub          a3, s5, a1
                  sub          s8, t0, t6
                  add          a7, t5, a7
                  c.li         s8, 29
                  srl          s11, t1, a0
                  c.xor        a3, s0
                  slti         s11, s4, -338
                  mulhu        t6, s7, a3
                  slti         s5, gp, -233
                  c.sub        a0, a2
                  xori         s4, t3, -1211
                  mul          a5, t3, a3
                  remu         a4, s6, s3
                  srli         s9, t5, 13
                  rem          a4, s6, s11
                  slti         a6, gp, -1366
                  sub          sp, a7, a0
                  divu         s0, a4, s0
                  lui          ra, 827819
                  div          t3, a4, a5
                  xor          t1, s7, zero
                  sltiu        s11, tp, 1157
                  c.srli       s1, 13
                  auipc        a4, 399491
                  add          s0, a6, t6
                  c.xor        a3, s1
                  c.srai       s0, 14
                  and          ra, t2, t4
                  c.mv         a7, sp
                  divu         s10, s0, s2
                  andi         t0, a7, 854
                  c.mv         s9, t3
                  c.srli       a1, 27
                  slti         a5, t2, -1605
                  mulhsu       ra, a7, a6
                  c.xor        a5, a2
                  c.xor        s0, a3
                  c.li         a3, 14
                  c.xor        s0, a2
                  c.andi       s1, 24
                  c.andi       s1, 26
                  ori          s10, t5, -1497
                  c.add        a5, s0
                  c.add        gp, t5
                  c.mv         a5, a6
                  c.srli       a1, 9
                  c.mv         tp, s4
                  lui          tp, 311856
                  sll          s4, s1, s4
                  mul          sp, ra, s5
                  and          a0, t4, s10
                  c.nop
                  c.srli       s1, 4
                  c.addi       ra, -1
                  mulhsu       a0, s4, a1
                  add          s5, a3, s8
                  c.li         tp, 22
                  sub          zero, t1, s9
                  c.and        a0, a5
                  c.sub        s0, a1
                  c.lui        s4, 20
                  c.addi       s2, -1
                  nop
                  add          ra, t5, ra
                  and          gp, s4, a4
                  c.or         a3, s1
                  addi         s9, a5, -1676
                  lui          tp, 767344
                  and          s7, s9, t4
                  mul          a0, t0, a3
                  slt          s2, t3, t3
                  srli         s0, s11, 9
                  divu         s0, gp, sp
                  slt          ra, s4, ra
                  c.lui        s7, 13
                  c.addi       t3, 27
                  c.srli       s0, 19
                  slti         t5, t2, 1857
                  c.andi       a3, 2
                  c.or         a5, a0
                  or           t4, t0, a4
                  or           s6, t2, t1
                  c.and        s0, a4
                  add          zero, zero, sp
                  xor          a0, t4, a6
                  remu         s10, a4, t2
                  xori         t4, s4, -1393
                  slt          s8, s6, t5
                  sltiu        s5, a6, -567
                  sll          s9, a3, a6
                  divu         a4, s10, s1
                  sub          s9, s10, s9
                  ori          zero, t4, 1425
                  srai         t5, t1, 25
                  sll          a0, t1, s4
                  c.addi       s8, -1
                  remu         t3, sp, s4
                  srl          t5, t5, s4
                  mulh         s1, s10, s1
                  nop
                  c.and        a4, a1
                  add          s5, s9, s1
                  mulh         t6, s11, t3
                  c.addi4spn   s0, sp, 576
                  c.slli       s1, 7
                  mulh         a0, a2, s1
                  or           tp, t1, a5
                  c.or         s0, a5
                  sltu         s9, a5, s11
                  c.lui        gp, 6
                  mulh         s0, t0, a5
                  add          ra, s6, s2
                  ori          s7, s4, 1806
                  sltu         s10, s7, t1
                  addi         s7, a1, -1397
                  divu         t0, tp, t2
                  div          a5, tp, gp
                  addi         a5, a3, -1062
                  c.srli       s0, 5
                  c.addi16sp   sp, -16
                  sub          a5, t6, s3
                  c.nop
                  c.li         t1, -1
                  c.addi16sp   sp, 352
                  sll          a6, s4, s5
                  c.andi       a1, 30
                  divu         a1, s5, s8
                  xori         tp, gp, 459
                  sll          t5, ra, s0
                  c.li         t4, -1
                  c.srai       a3, 13
                  c.addi4spn   s0, sp, 224
                  c.srai       a4, 19
                  xor          a5, s9, a0
                  remu         a5, t3, sp
                  andi         t5, a6, 37
                  or           t4, a7, zero
                  rem          s6, s0, s6
                  sltu         t4, gp, s7
                  and          a0, t1, s0
                  c.andi       a3, -1
                  c.srai       a4, 28
                  auipc        s1, 713789
                  sra          t1, s10, t5
                  srai         s10, s10, 12
                  c.slli       a0, 31
                  remu         gp, a0, a3
                  c.srai       a4, 13
                  slti         a3, a3, -2012
                  c.lui        a0, 12
                  slt          s4, s8, s6
                  addi         sp, s0, -577
                  or           s0, t6, a5
                  addi         s5, t0, 1525
                  remu         s6, t4, a2
                  div          a0, t2, sp
                  nop
                  c.addi16sp   sp, -16
                  c.addi16sp   sp, -16
                  remu         s2, s6, s4
                  remu         s6, ra, s2
                  sub          tp, a3, s10
                  c.srli       s0, 19
                  c.xor        a3, a3
                  ori          s10, a2, -1125
                  remu         t3, ra, t6
                  sltu         tp, s9, s2
                  sra          s9, s7, s2
                  mulhu        s1, t2, gp
                  mulh         s2, gp, a2
                  rem          tp, t6, zero
                  c.addi16sp   sp, 400
                  slti         t3, s8, -1009
                  div          a0, sp, s6
                  lui          s5, 721812
                  c.lui        s4, 31
                  or           a5, s8, a5
                  xori         s9, s6, -1196
                  mulh         tp, s2, ra
                  srli         a7, s0, 23
                  auipc        s0, 876762
                  c.mv         gp, a4
                  xori         s10, a3, 1738
                  sra          t3, t1, s0
                  slt          tp, s3, tp
                  mulh         a0, zero, t6
                  srli         a7, s4, 17
                  slti         sp, a3, -421
                  or           t0, a3, tp
                  ori          a3, t5, -1011
                  mulh         a7, a5, a4
                  srai         s4, gp, 0
                  mulh         s11, t4, a6
                  mulh         s4, s6, a7
                  c.add        s1, s11
                  srai         zero, a5, 10
                  c.or         s0, a2
                  mulhu        a7, s6, zero
                  andi         s8, t5, 849
                  slti         s7, sp, 270
                  rem          s5, a1, t6
                  c.nop
                  sltiu        gp, t1, -371
                  c.lui        s2, 2
                  srl          s6, ra, t6
                  sltu         s7, a1, a5
                  or           a4, ra, s10
                  mul          tp, s2, a3
                  or           sp, s8, a6
                  c.xor        s1, a3
                  c.addi4spn   a4, sp, 192
                  mulh         s10, gp, s2
                  mulhu        t5, s9, a0
                  xori         s0, s4, -1079
                  srl          a5, s0, t5
                  c.srai       a4, 26
                  ori          ra, gp, 372
                  lui          a0, 866451
                  mulh         a0, a0, s11
                  mul          s0, s9, a2
                  mulh         s0, s0, s0
                  c.addi       a0, -1
                  div          a7, t2, a0
                  slti         sp, s6, -1159
                  add          gp, zero, t3
                  c.and        a5, a3
                  lui          a0, 660983
                  rem          s2, t4, gp
                  sltu         s10, a6, s8
                  xor          s1, s11, tp
                  c.xor        a3, a4
                  mulhu        s1, s8, a4
                  c.andi       a4, -1
                  c.nop
                  c.mv         t3, s6
                  c.addi4spn   a1, sp, 976
                  or           s6, s11, sp
                  add          a3, ra, t6
                  auipc        t3, 850240
                  mul          a0, s6, s3
                  c.andi       a0, 10
                  srai         a5, a3, 30
                  c.sub        a5, a4
                  srl          s4, a0, s9
                  c.mv         s4, s3
                  remu         ra, a4, a2
                  sra          s4, s2, t0
                  mul          t0, ra, t5
                  mulh         s9, a7, a3
                  remu         s6, a6, sp
                  lui          t4, 156861
                  c.srli       a1, 2
                  c.li         s10, 6
                  srai         s6, gp, 15
                  srl          t5, s6, s4
                  sra          s7, s3, t6
                  c.add        s10, a1
                  srl          t0, s6, s4
                  srl          a3, t2, s1
                  c.srai       a0, 1
                  c.addi4spn   a3, sp, 928
                  c.srai       s0, 27
                  c.nop
                  xori         t1, s10, -780
                  xori         tp, tp, 1674
                  srai         s8, a7, 20
                  sub          a5, s11, s11
                  srai         gp, ra, 9
                  srl          t4, a6, a3
                  rem          sp, s11, a1
                  c.addi4spn   a0, sp, 688
                  srli         ra, t1, 27
                  remu         t0, sp, t6
                  ori          t4, s0, -21
                  add          a1, a0, a4
                  c.and        a5, a4
                  c.slli       s2, 25
                  slti         a6, t0, -1995
                  sltu         ra, t0, t2
                  c.addi4spn   a1, sp, 448
                  rem          t0, ra, s8
                  remu         gp, a5, a3
                  xor          a6, zero, s5
                  slti         gp, ra, -1031
                  remu         t1, s8, a5
                  c.srai       a0, 4
                  rem          zero, t2, s8
                  slli         a1, t4, 9
                  or           s7, gp, s1
                  sra          s1, t1, a0
                  xor          a4, a2, a6
                  c.xor        a5, a5
                  srli         s6, t0, 19
                  divu         s1, t3, s11
                  and          ra, tp, t4
                  c.and        s1, a2
                  c.sub        a3, a1
                  srl          s6, ra, t3
                  srai         s5, tp, 21
                  auipc        s7, 825963
                  c.nop
                  c.addi16sp   sp, -16
                  sub          a3, s6, a0
                  sub          t1, sp, s8
                  lui          s2, 542789
                  mulhu        a0, s4, s2
                  c.srli       a0, 17
                  srai         s0, s5, 5
                  rem          a7, a5, t1
                  nop
                  c.srai       s0, 2
                  divu         s1, a6, tp
                  srli         a5, a4, 24
                  slli         t0, s8, 28
                  andi         t0, a5, -164
                  remu         tp, a0, s4
                  c.and        s0, s0
                  divu         a6, t6, a5
                  mulhsu       s4, s7, a3
                  divu         a0, s11, a2
                  or           a3, s10, t0
                  add          s2, t3, s1
                  c.addi16sp   sp, -16
                  sltiu        a1, a2, 1003
                  sub          s0, t5, zero
                  andi         a5, s10, -1440
                  srli         a1, s8, 16
                  sltu         a6, gp, sp
                  c.addi4spn   a4, sp, 368
                  c.add        a3, s7
                  c.sub        a5, a2
                  c.srli       a0, 6
                  c.xor        a3, a5
                  mulhu        zero, tp, a6
                  srai         s4, zero, 25
                  mulhu        s11, s11, a3
                  mul          t6, zero, s10
                  c.addi16sp   sp, 240
                  and          a3, s6, a1
                  c.addi       s0, -1
                  sltu         s6, zero, sp
                  c.srai       a3, 26
                  nop
                  c.xor        a4, a5
                  mulhu        s4, s0, tp
                  div          a0, s10, s1
                  sub          a6, s2, s8
                  or           a4, t1, s5
                  c.srli       a1, 18
                  mulhu        a7, t6, t0
                  mulh         a4, sp, s11
                  c.mv         s8, s2
                  c.add        s5, s8
                  c.andi       a4, -1
                  c.or         a5, s0
                  rem          a7, ra, sp
                  srai         t1, a3, 2
                  c.addi16sp   sp, -16
                  divu         sp, t3, t5
                  c.xor        a4, s1
                  c.mv         s5, t3
                  c.srli       s0, 12
                  c.srli       a4, 11
                  srl          a3, s1, s1
                  remu         s11, t3, t6
                  c.addi4spn   a4, sp, 16
                  slti         a3, ra, -1502
                  srl          t1, ra, a6
                  slli         a0, s5, 29
                  c.andi       s0, 31
                  c.and        s1, a2
                  srli         gp, s0, 6
                  nop
                  mulh         t4, ra, s5
                  mulh         s8, zero, a2
                  mulh         t0, t2, tp
                  add          t5, a7, s7
                  c.mv         ra, ra
                  srai         t6, s7, 19
                  sltiu        s0, s10, 1259
                  c.srli       a4, 1
                  add          t0, ra, a4
                  ori          t0, s11, -86
                  sub          a4, s11, t2
                  add          s1, sp, s6
                  c.slli       t0, 1
                  sltu         s6, a2, t1
                  lui          s6, 532036
                  auipc        a3, 42673
                  c.add        ra, s0
                  add          t6, a6, a3
                  mulhsu       s5, s7, s9
                  c.mv         s8, s1
                  div          s10, s8, t1
                  add          s9, a6, s5
                  c.addi       a0, -1
                  sra          a1, s9, s8
                  nop
                  c.xor        a1, a0
                  rem          a5, s2, s4
                  sub          a1, s6, t3
                  and          t5, a6, t4
                  sltiu        tp, s3, 1222
                  c.andi       a1, -1
                  lui          t4, 669355
                  srai         s2, s4, 21
                  rem          t6, a4, tp
                  c.addi       t4, 17
                  ori          t4, s11, -1572
                  srl          a0, t5, ra
                  c.srai       s0, 9
                  sub          s10, s9, s0
                  remu         a0, t2, zero
                  srai         a3, s2, 15
                  rem          ra, s4, t0
                  remu         t5, s2, a7
                  nop
                  xori         s0, a0, 1889
                  auipc        t6, 562703
                  c.li         s1, 4
                  c.or         a4, a2
                  srli         s1, t5, 28
                  srl          a4, s2, t5
                  add          zero, a0, t6
                  c.addi4spn   a4, sp, 880
                  slli         s0, t1, 28
                  sra          s0, s10, s10
                  srl          s1, t6, t3
                  and          s8, ra, t4
                  slli         t4, a5, 9
                  rem          t0, t5, s5
                  sll          a6, t5, s9
                  sll          s0, ra, t1
                  lui          zero, 598232
                  c.li         a5, 15
                  sltiu        tp, a1, 1696
                  remu         t3, t6, a7
                  c.add        sp, s2
                  srli         t6, a5, 23
                  and          tp, a4, t3
                  c.slli       s2, 15
                  or           t1, s11, s8
                  addi         t0, t2, 146
                  add          s0, a1, t3
                  nop
                  c.lui        s6, 5
                  mulhsu       s10, t5, t1
                  andi         a5, s1, 1423
                  mulh         s4, a7, s2
                  c.andi       a5, -1
                  c.and        a5, s1
                  c.addi16sp   sp, 64
                  sra          sp, t2, s0
                  srai         s5, a5, 1
                  c.mv         s10, s5
                  add          sp, s4, s0
                  c.addi16sp   sp, -16
                  slti         s11, a3, -313
                  nop
                  c.mv         a4, t0
                  nop
                  c.li         t6, -1
                  c.srli       a0, 29
                  slti         s1, s9, 1813
                  sra          t1, t5, a4
                  xori         s7, s1, -2013
                  auipc        t1, 741778
                  srli         s4, a0, 7
                  srl          s10, zero, a2
                  slt          a5, s7, s11
                  c.mv         s1, s7
                  c.sub        a3, a5
                  mulhu        s11, s10, a5
                  sub          t1, a0, t1
                  div          t1, s10, t3
                  c.li         s9, 2
                  divu         s7, s1, s0
                  c.li         s0, -1
                  slti         sp, a1, 339
                  sltu         t0, a3, s7
                  c.xor        a3, a0
                  sra          t6, s9, t4
                  nop
                  srli         s4, a1, 9
                  c.slli       s1, 31
                  mulhsu       s11, zero, t6
                  c.or         a4, a2
                  slti         t3, t2, -85
                  c.addi16sp   sp, 48
                  ori          t0, s10, 30
                  sltiu        t6, s0, 1233
                  srl          s9, s5, s0
                  slt          s0, s0, s0
                  ori          sp, t1, 1000
                  slt          ra, zero, s10
                  mulh         t3, s10, t0
                  slli         s4, ra, 15
                  sra          s2, tp, s6
                  c.addi       t4, 29
                  div          a5, t5, s11
                  srai         tp, s6, 20
                  sltu         s5, a6, a7
                  c.slli       s11, 12
                  addi         gp, a7, -882
                  c.li         a5, -1
                  c.add        a3, t6
                  addi         s11, gp, 562
                  slt          a5, s1, a3
                  auipc        zero, 648635
                  nop
                  mulh         tp, gp, t4
                  c.addi16sp   sp, 432
                  sra          t0, s10, t1
                  srai         s0, a2, 22
                  xori         s1, s1, 898
                  mul          t3, s0, s8
                  divu         gp, s4, s5
                  slti         s7, t2, -1416
                  sll          s8, t5, t5
                  or           s10, s7, a7
                  c.addi16sp   sp, -16
                  c.li         sp, -1
                  c.lui        a7, 22
                  c.mv         a7, s5
                  ori          a3, t2, -135
                  sra          t6, t5, a7
                  c.andi       s1, 2
                  addi         s0, s1, -172
                  auipc        sp, 560854
                  lui          a4, 1010545
                  sltiu        s11, s9, 1507
                  c.srai       a5, 29
                  c.addi16sp   sp, 480
                  sll          t5, s3, a3
                  ori          a4, a5, 1777
                  slti         a7, s7, -396
                  srl          a4, t5, zero
                  c.addi16sp   sp, 224
                  c.andi       a4, -1
                  rem          a1, a3, s10
                  c.add        s7, a0
                  c.srli       s1, 26
                  c.sub        s1, a1
                  add          a5, a7, a0
                  addi         a7, sp, -126
                  addi         s4, a2, 890
                  mulhsu       a0, a4, s6
                  c.sub        a1, a3
                  mulh         a7, s8, s7
                  slti         s9, a5, 1348
                  c.add        t0, a1
                  sub          a0, gp, a4
                  slli         s11, s2, 25
                  sll          a4, a5, tp
                  nop
                  c.sub        a4, a4
                  sra          t0, s5, s5
                  srl          s1, s10, t3
                  add          s6, t0, s7
                  or           zero, s5, gp
                  c.srli       a4, 22
                  c.or         s1, a3
                  sltu         s6, t4, a0
                  c.and        a0, a1
                  c.xor        a5, a1
                  c.xor        a4, s0
                  c.lui        s4, 31
                  c.andi       a5, 13
                  slti         s6, t1, 1753
                  lui          a4, 118253
                  xori         t6, a7, 1516
                  addi         s9, t3, -159
                  mulhsu       t6, t1, t3
                  srli         a7, s5, 9
                  div          gp, a5, t6
                  nop
                  sub          t5, t1, t3
                  mulh         a4, gp, s9
                  c.addi       sp, 23
                  c.mv         a3, s3
                  remu         t1, a0, s1
                  slti         t5, s3, 923
                  nop
                  c.andi       s1, -1
                  c.mv         t4, s4
                  rem          t6, t5, a7
                  c.nop
                  remu         s5, a6, t0
                  nop
                  c.andi       a1, -1
                  c.sub        a1, a1
                  c.nop
                  c.or         a5, a2
                  srli         t0, a7, 16
                  c.srai       a5, 18
                  slli         s1, s0, 13
                  mul          s11, t3, t5
                  add          a6, a5, sp
                  mulhsu       t0, a5, a0
                  srli         ra, s6, 21
                  addi         a4, s3, -1471
                  add          ra, ra, gp
                  c.and        a0, a2
                  c.sub        a4, s0
                  c.lui        a4, 19
                  c.andi       a3, -1
                  c.srai       s1, 2
                  sub          t6, s9, t0
                  srl          tp, s9, s5
                  slli         s9, a5, 20
                  mulhu        s8, s4, a7
                  and          s0, s4, s3
                  c.addi       a7, -1
                  xor          zero, s4, a2
                  slli         s10, gp, 29
                  c.add        a6, s2
                  c.mv         t6, a6
                  remu         t5, s4, zero
                  xori         a3, s11, -1428
                  slt          t3, s10, ra
                  sll          s2, t6, a7
                  sub          gp, s9, s6
                  slti         tp, t4, 189
                  sltu         s5, s1, t3
                  c.addi       gp, 16
                  c.sub        a5, a3
                  c.and        a4, s1
                  c.addi4spn   a0, sp, 144
                  rem          a7, s9, ra
                  c.addi       t6, 27
                  c.xor        a3, a2
                  c.addi       s2, -1
                  c.mv         s1, t1
                  sll          t4, t2, sp
                  slt          tp, sp, a2
                  sra          zero, s4, s9
                  sra          a7, s10, ra
                  sra          s9, a5, s6
                  srai         t1, t5, 28
                  addi         a3, a2, -1561
                  div          gp, a2, s9
                  sltu         gp, t0, s1
                  lui          tp, 119882
                  add          s2, a4, a7
                  addi         s9, zero, 1389
                  c.li         s11, 31
                  c.xor        s1, a1
                  srli         s8, t0, 20
                  remu         gp, s11, t4
                  remu         t4, t1, t5
                  slti         t0, t0, -204
                  c.xor        a3, a3
                  or           t0, t2, tp
                  addi         t3, t3, 1735
                  sltiu        s2, zero, -991
                  lui          sp, 738107
                  slli         s8, gp, 26
                  c.add        a4, s2
                  c.add        a5, a1
                  sll          sp, t1, a3
                  c.xor        a4, a4
                  c.slli       a1, 25
                  srli         a7, a0, 18
                  addi         a4, t6, 1828
                  srli         tp, t5, 18
                  div          s9, t6, s6
                  slti         sp, t0, 1243
                  mulhsu       tp, s3, s6
                  mulhsu       a3, s1, t4
                  mul          t1, t6, t5
                  sltiu        s8, t6, -557
                  c.nop
                  c.andi       a3, -1
                  srai         t4, s1, 23
                  c.srli       a1, 7
                  or           t5, a6, s8
                  c.addi16sp   sp, -16
                  ori          t1, t0, -589
                  add          a6, s1, t3
                  srai         t0, zero, 7
                  srl          s2, s10, s1
                  sub          a5, t0, s2
                  nop
                  lui          t3, 158142
                  rem          a5, zero, sp
                  addi         a7, sp, -963
                  auipc        gp, 179740
                  add          t4, s4, t2
                  sll          s8, s11, s2
                  c.slli       t4, 28
                  c.and        a4, a3
                  sra          gp, t3, a3
                  lui          s9, 306137
                  srli         s5, t4, 31
                  c.slli       a0, 11
                  srli         s7, a6, 27
                  andi         s8, s6, 529
                  ori          s2, s5, 1702
                  auipc        a6, 933911
                  nop
                  divu         s4, ra, s3
                  c.add        t5, s5
                  c.addi4spn   a4, sp, 288
                  divu         s8, t2, t3
                  or           tp, a7, a7
                  srli         a7, t1, 26
                  mulhsu       a0, s3, sp
                  c.andi       s0, -1
                  c.addi4spn   a3, sp, 704
                  sltu         sp, s7, s8
                  c.and        s0, s1
                  xor          ra, zero, sp
                  c.add        a1, s6
                  add          s7, a7, a7
                  mulhu        t6, s8, t2
                  c.slli       a6, 24
                  c.nop
                  c.mv         s6, t4
                  slli         sp, a2, 19
                  c.addi       t4, 15
                  mulh         t3, s3, sp
                  sub          s5, t6, gp
                  srli         s10, a5, 1
                  c.add        s9, t5
                  mul          zero, ra, zero
                  lui          s8, 63574
                  and          a7, s5, ra
                  c.add        s9, s10
                  mulhu        a6, t6, s7
                  c.or         a4, a2
                  c.and        s1, a0
                  c.and        s1, a3
                  sltiu        t6, a0, -746
                  c.srli       a3, 25
                  sra          a4, t6, a1
                  c.xor        a3, s0
                  c.sub        a5, s1
                  or           t4, s8, a1
                  sll          s1, s11, s6
                  c.addi       s6, -1
                  c.srli       a4, 13
                  mulhsu       s5, s5, t0
                  c.addi16sp   sp, -16
                  c.slli       t5, 16
                  xor          t3, s5, a4
                  div          s8, a2, ra
                  sra          s7, a6, t6
                  c.srai       a1, 18
                  c.mv         t3, a1
                  c.lui        s6, 6
                  add          zero, ra, t6
                  xor          s10, s3, tp
                  mul          a0, tp, tp
                  c.srli       s1, 15
                  divu         s8, t5, tp
                  div          s7, t6, t1
                  c.srai       a5, 27
                  srl          s6, s0, t1
                  c.add        s1, a2
                  and          a4, s11, s3
                  srli         s6, s2, 3
                  mulh         s2, a2, s5
                  mulhsu       a1, a3, gp
                  mul          s8, a6, a6
                  c.srai       a1, 26
                  c.li         a5, 14
                  c.andi       a0, -1
                  c.add        a1, s0
                  divu         s9, t2, tp
                  addi         sp, tp, 1079
                  mulhu        a5, a1, s0
                  c.add        s2, a6
                  andi         t3, zero, -414
                  lui          t6, 454624
                  mulhu        s7, s1, t3
                  c.slli       s1, 31
                  mulh         a3, ra, a7
                  lui          s5, 292316
                  slti         s9, tp, -1664
                  c.mv         tp, s7
                  c.slli       s5, 11
                  sll          t3, s6, s3
                  andi         a4, ra, -1382
                  c.srli       a1, 8
                  mulh         a1, s8, a6
                  slti         s4, s5, 918
                  c.addi       sp, -1
                  or           s10, t6, s1
                  xori         a0, s1, -83
                  rem          t6, a2, t0
                  c.nop
                  sll          a4, gp, s0
                  srli         a3, a5, 12
                  c.slli       s0, 19
                  c.sub        a0, a4
                  slli         a1, s10, 6
                  slt          a6, t6, t5
                  remu         s11, s10, s4
                  c.addi4spn   a1, sp, 720
                  slli         s10, s8, 9
                  nop
                  mulhsu       s6, tp, t3
                  rem          s1, s3, t4
                  ori          a1, s1, -1893
                  c.sub        s0, s0
                  sll          s2, t5, a4
                  ori          s6, s2, -746
                  c.addi16sp   sp, 400
                  xor          sp, a6, a1
                  c.add        s5, t5
                  or           tp, t3, t6
                  mul          a4, zero, a6
                  ori          s4, t4, -593
                  and          a6, s0, ra
                  c.or         a1, s0
                  nop
                  c.mv         s4, gp
                  c.xor        a1, a5
                  c.nop
                  and          s10, a1, t1
                  c.srli       a4, 24
                  sub          s4, a0, s5
                  srai         a1, a3, 29
                  srli         s0, sp, 22
                  srl          s4, s1, s6
                  c.and        s0, a5
                  srai         a7, zero, 4
                  divu         s4, ra, a1
                  c.andi       a1, -1
                  mulh         a0, s7, sp
                  andi         sp, t5, 1956
                  rem          gp, s4, t4
                  sra          gp, t6, tp
                  c.srai       a0, 25
                  mulhsu       t4, a1, a1
                  c.xor        a5, s1
                  addi         a4, t2, 1233
                  c.and        a0, a0
                  sra          t0, tp, a7
                  c.srli       a3, 7
                  c.sub        s0, s1
                  mulhu        s2, s11, t6
                  srl          s2, t1, zero
                  c.srli       a0, 16
                  sub          sp, a0, sp
                  mul          zero, s6, t3
                  c.xor        a4, a5
                  add          a4, a2, t1
                  addi         t5, s8, 407
                  addi         s8, s0, -1775
                  addi         t3, s11, 191
                  auipc        s2, 350341
                  c.nop
                  c.or         a3, a5
                  addi         s6, a4, 1433
                  sll          ra, a3, s0
                  mul          s4, sp, s9
                  c.mv         a4, s7
                  c.addi16sp   sp, -16
                  mulh         s2, s8, a3
                  c.or         a1, a5
                  mulh         a1, s7, s8
                  or           tp, sp, s2
                  srli         gp, t4, 21
                  c.lui        s8, 13
                  xori         s5, sp, 506
                  add          t1, s7, a7
                  c.xor        s0, a5
                  c.srai       a3, 16
                  c.or         s1, a0
                  mulhsu       s9, s2, s11
                  c.addi4spn   s0, sp, 608
                  slt          t6, s10, s5
                  c.addi       s6, 4
                  or           s11, t0, sp
                  srl          a0, t3, s9
                  c.li         s6, -1
                  srli         tp, s0, 28
                  c.sub        a1, s0
                  c.addi4spn   s1, sp, 304
                  sra          gp, s10, s10
                  div          tp, s6, s5
                  c.li         s6, 8
                  div          a0, sp, zero
                  xori         a1, a6, -957
                  c.andi       a3, -1
                  c.and        a1, a3
                  c.mv         gp, ra
                  lui          t3, 537808
                  srli         s8, gp, 11
                  c.sub        a4, a3
                  c.sub        a4, a2
                  andi         a0, a5, 664
                  rem          s11, s6, s5
                  andi         a5, a4, -1615
                  sra          t6, gp, s8
                  mulhsu       s0, a4, ra
                  sll          tp, a2, t3
                  c.slli       gp, 3
                  addi         tp, a0, -19
                  slli         t1, s3, 12
                  c.addi4spn   a0, sp, 656
                  c.addi       a5, -1
                  sub          a0, sp, s6
                  c.srai       a5, 17
                  ori          t4, s6, 798
                  add          t1, s8, s2
                  mulhu        t3, a3, t3
                  ori          t5, s9, 1689
                  sltu         t6, t3, t0
                  or           ra, a1, zero
                  c.and        s1, a2
                  sltu         s8, a7, s6
                  andi         a3, a3, -1739
                  sltiu        a4, t5, -392
                  remu         a7, s6, s6
                  xori         a6, a3, -1694
                  sll          a7, a3, a4
                  sltiu        a7, t5, 1106
                  sltu         a3, t4, s9
                  c.addi       a4, 7
                  nop
                  sll          tp, a5, s0
                  add          a4, t6, t3
                  and          s5, a6, s10
                  remu         s6, s0, s10
                  mul          s6, s6, a6
                  c.lui        t6, 3
                  c.or         a0, a0
                  divu         ra, t0, s8
                  auipc        t0, 98440
                  c.srli       s0, 5
                  c.sub        a3, a3
                  c.sub        a4, s1
                  c.andi       a0, 2
                  slt          s7, tp, s4
                  slt          a7, a0, s4
                  auipc        a0, 1002959
                  mulhsu       s5, tp, a4
                  divu         a0, s10, t0
                  ori          t1, t2, 449
                  c.slli       t5, 15
                  or           t1, t4, s7
                  andi         tp, s5, 896
                  c.addi16sp   sp, 400
                  c.add        t1, s5
                  andi         ra, t0, -618
                  c.srai       a5, 23
                  auipc        a5, 978768
                  xor          s10, zero, s3
                  c.addi4spn   s1, sp, 464
                  mul          a3, s11, t0
                  divu         a7, s3, tp
                  lui          s2, 79593
                  add          a5, a4, s0
                  c.addi16sp   sp, 160
                  sltiu        a7, t5, 242
                  slli         s9, a2, 9
                  sra          tp, t4, s0
                  xori         t4, a2, -1019
                  rem          s8, a1, a6
                  slli         s11, s7, 23
                  div          s1, tp, s10
                  mulhu        s9, a7, a0
                  c.andi       a1, -1
                  add          a6, s7, s10
                  and          a1, a7, ra
                  slli         s10, a3, 10
                  remu         t0, t4, sp
                  and          t6, s6, a5
                  remu         s0, s4, a7
                  and          gp, t1, s7
                  sltu         sp, t0, tp
                  nop
                  ori          s11, a6, -1666
                  andi         s6, s9, -1200
                  nop
                  c.add        t3, a1
                  auipc        s8, 419583
                  c.xor        s0, s0
                  slt          gp, s11, a5
                  divu         gp, s0, sp
                  sltiu        t3, s11, 408
                  c.xor        s0, a1
                  c.addi       ra, 19
                  srli         s9, s8, 14
                  srl          t1, a3, t1
                  slti         a7, sp, 1923
                  xori         s1, t2, -1747
                  mulhsu       t4, t6, t3
                  add          s9, s8, s9
                  sra          a7, t1, a3
                  nop
                  slli         t5, s11, 22
                  c.andi       a5, -1
                  c.addi       s9, -1
                  c.mv         s10, sp
                  c.xor        a1, a3
                  lui          a5, 31212
                  andi         zero, a6, 868
                  c.slli       tp, 2
                  and          t0, t1, t5
                  divu         s7, t0, a5
                  auipc        gp, 838168
                  c.sub        s0, a3
                  sltiu        a0, a2, 392
                  rem          s0, s10, s1
                  sll          t6, s3, a4
                  c.lui        s1, 8
                  lui          a1, 870256
                  c.add        s10, s6
                  c.add        tp, s7
                  ori          a7, a4, 2007
                  c.xor        s0, s1
                  c.or         a0, a0
                  c.addi16sp   sp, -16
                  c.mv         s10, a6
                  c.sub        a3, a3
                  c.or         s0, a5
                  c.xor        s1, s0
                  auipc        a5, 725091
                  or           sp, s1, a1
                  c.andi       s1, -1
                  slt          s6, t6, t3
                  rem          t0, s8, a5
                  ori          a7, zero, -644
                  remu         s4, t6, t3
                  c.nop
                  c.slli       s5, 9
                  srl          s4, s1, a0
                  sltu         zero, t3, s4
                  divu         a3, a2, ra
                  c.xor        s0, s0
                  srai         s2, s3, 29
                  c.lui        a6, 14
                  c.lui        a7, 21
                  sub          t0, s9, t0
                  mulhsu       t3, t3, s11
                  c.lui        t5, 20
                  sub          a3, s1, s9
                  c.add        ra, a5
                  slti         a1, t6, -517
                  mul          a0, s11, a1
                  mulh         t4, t4, s8
                  div          s8, a6, tp
                  c.srli       a0, 2
                  c.srli       s0, 28
                  c.addi       s5, -1
                  srli         s2, s11, 5
                  mulh         s10, a3, a0
                  divu         s0, a4, a4
                  c.srli       s1, 18
                  auipc        t5, 740383
                  addi         s7, s7, 657
                  remu         tp, zero, s7
                  xor          t5, t6, a0
                  or           t6, s3, s10
                  c.addi       s0, -1
                  mulh         s2, s6, t3
                  ori          a1, a3, -1859
                  c.mv         s8, s6
                  slt          s11, s6, s11
                  mulh         a7, s1, sp
                  nop
                  xori         a4, t3, -1183
                  sltu         a3, t1, s7
                  andi         s0, a0, -1447
                  sltu         zero, tp, s3
                  mul          s10, a6, s6
                  andi         s11, t5, 666
                  rem          sp, t0, ra
                  mulhsu       a0, a6, s4
                  c.addi16sp   sp, 160
                  mulhsu       s11, sp, s9
                  c.addi4spn   a4, sp, 992
                  mulh         zero, s11, a7
                  sll          t5, a2, s1
                  c.mv         s9, t2
                  and          s5, t0, s4
                  c.addi16sp   sp, 80
                  nop
                  c.slli       s4, 7
                  srl          s1, s0, s9
                  c.add        a1, a4
                  srl          t1, s6, s6
                  remu         s9, t2, gp
                  c.add        s0, s11
                  rem          a1, s8, t5
                  srl          a7, a3, a7
                  or           s11, s8, s3
                  divu         s5, gp, t3
                  c.slli       s7, 8
                  mulh         t3, t3, s4
                  ori          s9, s8, -1668
                  andi         t6, a5, 1173
                  rem          s0, a7, s4
                  add          a0, s5, ra
                  c.li         t4, 30
                  lui          a3, 692501
                  c.add        a4, a2
                  c.sub        s1, s1
                  slt          s5, t3, t5
                  sra          s6, a7, s5
                  andi         t3, a7, 459
                  add          s4, s6, a7
                  add          a4, a4, sp
                  mulhsu       gp, s5, s2
                  andi         t5, a5, 1971
                  or           a4, s8, s7
                  srli         a5, gp, 11
                  lui          s4, 1026751
                  c.li         t0, -1
                  divu         t6, s5, sp
                  c.lui        t4, 21
                  c.mv         s2, t5
                  c.li         s4, 7
                  and          tp, gp, s6
                  sll          s5, sp, s11
                  c.addi16sp   sp, -16
                  divu         a1, t3, s4
                  sltu         zero, a1, t0
                  slt          s5, a0, a0
                  andi         s9, s2, 257
                  auipc        t1, 893600
                  ori          s7, ra, -947
                  sltu         a4, t2, s1
                  c.xor        a4, a2
                  sltiu        ra, s9, -2031
                  div          a5, s1, t0
                  add          a1, s5, s5
                  ori          s0, zero, 279
                  srli         a4, s4, 14
                  xori         t4, ra, 960
                  andi         s7, t1, 1969
                  mulh         t4, s8, t1
                  addi         ra, s6, -1128
                  c.li         a3, -1
                  sub          a3, t5, t5
                  c.slli       t0, 17
                  mulh         s8, t3, a5
                  and          s11, a5, a0
                  mul          t4, s0, tp
                  c.xor        a3, s0
                  auipc        t0, 214643
                  or           a5, a4, t1
                  c.lui        t4, 3
                  nop
                  slli         t5, s7, 26
                  c.and        a1, s1
                  mulhu        a3, t3, tp
                  sra          t1, t2, a5
                  remu         a6, a1, s9
                  slti         a3, s10, 80
                  remu         a7, s1, t2
                  lui          zero, 141315
                  xori         t4, t3, -1635
                  mul          t1, t0, a3
                  c.sub        a5, a4
                  c.lui        a3, 31
                  xori         s4, s7, -423
                  divu         t0, s7, t1
                  lui          s4, 605058
                  c.lui        s1, 23
                  c.nop
                  ori          s11, gp, -132
                  c.sub        a0, s0
                  xori         s7, gp, -1537
                  sra          s10, t2, a4
                  sll          a3, tp, s6
                  c.slli       ra, 24
                  sra          t1, t5, a0
                  c.lui        a6, 6
                  c.addi4spn   a1, sp, 944
                  or           s10, s2, t4
                  c.li         t0, -1
                  add          zero, a6, s6
                  slli         s5, a7, 3
                  and          a6, s7, s1
                  slti         s9, zero, 232
                  c.addi4spn   s1, sp, 464
                  c.lui        t1, 8
                  c.sub        a3, s0
                  sltiu        zero, t2, 977
                  and          a0, t6, t0
                  add          s9, a1, s3
                  c.and        a4, a1
                  xor          s4, tp, s3
                  c.slli       s9, 17
                  and          s6, a4, s2
                  xor          a4, a3, a0
                  srl          t0, sp, s0
                  c.mv         s8, t3
                  slt          a4, s6, s1
                  slti         s0, s4, 1961
                  c.addi16sp   sp, 80
                  mulhu        t0, a6, a0
                  mulhsu       t0, sp, s10
                  c.or         a4, a2
                  rem          a6, s3, s8
                  srai         s7, s1, 25
                  mulhsu       a7, t2, t1
                  andi         t6, s11, -935
                  mulhsu       t6, ra, a4
                  c.lui        a1, 22
                  nop
                  sltu         a0, s5, s1
                  sub          gp, a4, s3
                  add          s0, t1, s8
                  c.srli       a4, 23
                  nop
                  c.nop
                  c.mv         s11, s11
                  c.add        a4, s7
                  c.add        t3, s6
                  divu         tp, tp, t2
                  sll          a7, a2, sp
                  lui          a6, 200411
                  and          a4, s5, s3
                  mulh         s11, t6, t1
                  c.xor        a4, a0
                  slti         tp, s7, -1999
                  slti         a7, s9, 1737
                  ori          s11, t5, 1350
                  c.li         s7, -1
                  slti         a0, a1, -567
                  c.lui        t3, 27
                  c.and        a3, a4
                  srl          a6, s10, a1
                  srai         t0, t0, 18
                  c.mv         t1, t2
                  c.lui        t0, 7
                  sra          s2, s2, s4
                  and          tp, s9, a1
                  c.xor        a1, a4
                  sra          s4, t2, a3
                  c.srli       a3, 17
                  xor          t6, a1, s8
                  xor          s2, tp, zero
                  mul          s7, t2, s1
                  andi         s0, t4, 1534
                  c.lui        s9, 24
                  and          s2, a6, s8
                  mul          t5, a0, sp
                  c.slli       a7, 21
                  c.addi       t5, 24
                  mul          s7, s2, a3
                  andi         tp, a6, 1683
                  nop
                  and          s11, a7, s0
                  and          t0, s3, s9
                  c.and        s0, a1
                  c.sub        a5, s0
                  c.addi4spn   s0, sp, 448
                  c.or         s1, a4
                  c.srli       s1, 23
                  c.srai       a1, 26
                  c.add        s11, a2
                  sltiu        s1, a4, 633
                  sub          s8, a1, a7
                  c.and        s0, a5
                  c.nop
                  and          s1, sp, s5
                  c.andi       a3, -1
                  c.xor        a3, a5
                  c.add        s9, a1
                  mulhsu       t4, t2, ra
                  c.addi4spn   a3, sp, 224
                  c.nop
                  c.lui        s4, 16
                  mulh         s6, ra, s9
                  c.srli       a1, 5
                  c.srli       a5, 20
                  c.srli       a4, 3
                  c.addi4spn   s0, sp, 816
                  srl          sp, sp, s1
                  srai         s7, s3, 2
                  c.slli       t6, 16
                  c.srai       s0, 15
                  c.add        a4, s8
                  srli         s11, a4, 14
                  sltu         a1, sp, s9
                  c.addi16sp   sp, -16
                  add          tp, t5, a0
                  sltu         t3, t0, s2
                  c.lui        s10, 22
                  c.add        sp, ra
                  c.srli       a1, 11
                  c.srli       s0, 5
                  c.and        a1, a0
                  c.srai       a3, 18
                  slti         ra, t3, -894
                  srl          s2, gp, s8
                  c.xor        a3, a0
                  sll          s2, t0, tp
                  c.nop
                  auipc        s8, 648229
                  slt          a4, s9, a5
                  add          ra, s1, t5
                  xori         tp, s2, 896
                  mulhu        s6, s4, s3
                  c.addi       t6, -1
                  c.srai       s0, 18
                  divu         t1, s4, t2
                  and          tp, s4, a1
                  slti         t4, s1, 737
                  c.slli       gp, 30
                  c.mv         ra, a2
                  mulhsu       a5, t5, s7
                  addi         a7, s2, 684
                  remu         a3, s3, t0
                  and          t3, a7, s6
                  srl          t6, t6, s6
                  c.addi4spn   a5, sp, 80
                  and          s9, s6, a0
                  mulhsu       a1, a1, t2
                  lui          ra, 474000
                  auipc        s2, 784515
                  c.mv         tp, a0
                  c.andi       a0, 13
                  srli         gp, a1, 18
                  c.nop
                  sll          tp, t5, zero
                  c.addi       t6, 13
                  sra          a7, a3, s3
                  andi         t3, s6, 1142
                  slt          s0, a2, s4
                  nop
                  c.addi16sp   sp, -16
                  xori         s11, a2, 1084
                  c.addi       s8, 20
                  or           t3, s8, s0
                  sll          t6, t4, a6
                  c.addi4spn   a5, sp, 32
                  slt          a3, s11, s0
                  lui          t1, 1014314
                  srli         a4, t2, 25
                  mulhu        t6, a5, zero
                  sra          sp, t4, sp
                  c.slli       s2, 19
                  rem          s8, s1, s8
                  sltu         a3, a1, t3
                  rem          ra, a7, t4
                  c.addi4spn   a3, sp, 864
                  c.or         a1, a5
                  srli         zero, a3, 5
                  sub          s0, a0, s9
                  sll          t1, sp, a5
                  c.srai       a1, 15
                  c.sub        a4, a3
                  remu         s6, a2, t2
                  c.addi       s5, -1
                  mulh         tp, s5, t5
                  mulhu        s9, s10, t4
                  sltu         t0, a2, tp
                  add          s6, tp, a3
                  c.lui        tp, 2
                  sra          a0, s9, a1
                  andi         t0, sp, -452
                  c.nop
                  c.add        s0, a3
                  ori          a3, s0, -342
                  c.srai       a4, 24
                  c.or         a3, a4
                  c.slli       a5, 9
                  c.addi4spn   s0, sp, 704
                  and          s0, t5, a2
                  c.lui        gp, 25
                  slli         t5, s3, 1
                  div          t4, a6, a0
                  lui          a7, 134964
                  mulhsu       a4, t2, s9
                  andi         s8, zero, 1072
                  lui          a3, 684797
                  srli         a5, s10, 11
                  and          s10, t4, s2
                  sll          s6, gp, s8
                  srli         gp, s9, 10
                  c.andi       a3, 3
                  lui          s4, 660527
                  div          t5, s1, a7
                  srl          s1, s8, a4
                  c.srai       a1, 22
                  or           t6, s4, s5
                  c.addi4spn   s0, sp, 176
                  c.or         s1, s0
                  and          s4, s4, a0
                  or           zero, a0, t3
                  mul          t3, s4, a7
                  mulhu        ra, a2, t2
                  c.addi       a0, 10
                  divu         s11, s10, s4
                  andi         s5, t0, 924
                  c.add        s7, s1
                  add          a0, zero, t5
                  srl          s11, t2, a4
                  c.xor        a3, a2
                  c.mv         a5, t0
                  sll          zero, gp, t6
                  slli         t3, s5, 23
                  c.and        s0, s1
                  lui          s9, 574192
                  c.andi       s1, 10
                  mulh         a7, t0, s9
                  c.and        s0, a0
                  mulhsu       sp, t2, t5
                  sltiu        a3, s4, -5
                  remu         a0, t4, s0
                  c.and        a3, a4
                  c.or         s1, s1
                  add          t0, t1, gp
                  c.lui        s9, 26
                  auipc        s4, 30996
                  srli         s8, sp, 22
                  c.and        a5, a2
                  mulhu        t5, s10, a2
                  c.andi       a3, 17
                  c.slli       t3, 27
                  slt          s1, s8, s1
                  addi         s5, a5, 2028
                  sub          t0, a7, s1
                  c.addi16sp   sp, 96
                  c.slli       s8, 29
                  srli         s5, t3, 5
                  div          sp, ra, a1
                  srai         tp, s11, 3
                  sltu         t6, s4, t4
                  remu         s2, s7, s7
                  slt          zero, a7, s4
                  sra          t0, s0, sp
                  mulhsu       a7, ra, t0
                  c.srli       a3, 13
                  xori         s4, s6, -768
                  add          t3, a7, t1
                  slt          s7, a7, tp
                  or           s6, t5, a1
                  c.add        t1, t1
                  c.li         a0, -1
                  ori          t0, s1, -2012
                  srl          s6, a4, s6
                  slti         s4, a4, -155
                  or           s7, t3, s10
                  c.addi4spn   s1, sp, 928
                  srl          s1, t2, t4
                  rem          a7, sp, t0
                  sltu         s8, a3, s7
                  addi         s2, t2, 1722
                  mulh         a0, zero, t2
                  c.lui        s2, 14
                  c.xor        a4, s0
                  div          s1, t4, s4
                  add          s11, s2, a5
                  c.lui        a6, 27
                  add          t3, ra, s11
                  mulhu        gp, s2, gp
                  c.li         s9, -1
                  andi         s7, zero, 20
                  nop
                  rem          a3, a2, s7
                  sra          s10, a0, s6
                  sltu         tp, t4, s7
                  sub          a3, t5, t6
                  xori         zero, s11, -700
                  c.xor        a0, a5
                  div          s10, a7, t5
                  c.lui        a4, 11
                  srl          s9, t4, s10
                  xor          t4, s8, s0
                  sll          a6, a7, sp
                  mulhu        ra, s6, sp
                  ori          a1, a5, -326
                  c.or         a3, s0
                  c.srli       s1, 24
                  and          gp, a3, s3
                  c.addi       s7, -1
                  remu         s8, a1, a4
                  andi         t1, t2, 264
                  c.addi16sp   sp, -16
                  srai         t6, tp, 25
                  sltiu        a1, t3, -1620
                  sltiu        a6, a6, -1110
                  ori          a4, s4, -827
                  xori         s2, a6, 1589
                  slt          s0, s9, t4
                  c.lui        s10, 31
                  c.nop
                  c.add        gp, s3
                  slti         s6, a5, -531
                  auipc        t0, 43159
                  c.nop
                  slt          t3, t0, t2
                  srai         a4, s0, 25
                  sll          a7, a1, s0
                  c.lui        ra, 6
                  add          a1, s10, t5
                  add          t5, s7, a6
                  slti         a1, s7, -821
                  div          a1, s6, s11
                  sub          s11, a6, a2
                  slti         t6, s1, 683
                  auipc        ra, 506186
                  lui          s7, 129209
                  sll          s0, tp, t5
                  and          a4, t0, ra
                  srli         tp, s8, 26
                  c.and        a1, a4
                  add          a7, a1, a1
                  c.li         s11, -1
                  mul          t3, t3, ra
                  c.li         s2, 6
                  rem          s5, a7, a3
                  c.mv         a3, s3
                  srli         t1, s11, 11
                  slli         s7, a4, 5
                  c.or         a3, a3
                  slti         s7, a7, 1773
                  ori          s10, s11, -674
                  c.nop
                  add          t1, a4, s6
                  xori         tp, t6, -963
                  xori         s10, s3, 1094
                  add          s8, a0, s8
                  ori          t0, t3, -517
                  nop
                  sll          gp, t6, a7
                  c.li         t5, 29
                  c.sub        s0, a4
                  xor          t5, a1, t0
                  srai         s7, sp, 6
                  mulhu        sp, s0, s3
                  srl          t0, t3, a6
                  nop
                  remu         a1, s11, t0
                  c.xor        a0, a3
                  c.add        s7, s11
                  c.mv         t4, t0
                  div          t3, s0, t2
                  c.andi       a5, -1
                  c.andi       s1, 19
                  srl          s4, s2, gp
                  sra          s0, a4, s0
                  xor          a5, t3, s10
                  sltiu        s1, t4, -1097
                  c.srai       s0, 6
                  c.xor        s1, a5
                  sub          sp, a6, ra
                  c.lui        s0, 17
                  auipc        t3, 255606
                  c.nop
                  xori         s6, t0, 1992
                  add          a3, s6, a0
                  sub          a5, t6, a3
                  c.addi       ra, 25
                  sll          s0, a6, a3
                  srai         a1, a3, 22
                  c.and        a4, s0
                  c.addi4spn   a5, sp, 432
                  c.xor        s0, a2
                  c.lui        gp, 31
                  c.and        a0, a4
                  c.addi4spn   a0, sp, 640
                  c.addi       ra, 25
                  xori         a6, a2, -223
                  c.addi4spn   a5, sp, 416
                  mul          s0, s7, s5
                  c.andi       s0, 24
                  add          s2, a2, sp
                  c.andi       s1, -1
                  c.lui        a3, 18
                  sub          a6, t4, s2
                  add          s2, a3, a7
                  c.andi       s1, 27
                  xori         t4, t1, -1816
                  c.slli       t4, 17
                  c.slli       t1, 24
                  rem          s7, s11, s4
                  mulh         s5, s3, sp
                  rem          s11, a2, a7
                  sltu         s11, a2, a4
                  divu         zero, t4, t5
                  sub          t5, a3, tp
                  or           s4, a1, zero
                  c.li         sp, -1
                  ori          a6, s4, -1938
                  divu         t6, t6, a2
                  c.and        s0, a5
                  mulh         tp, t2, a0
                  c.andi       s0, 2
                  c.addi       a7, -1
                  addi         t3, t1, 1972
                  mul          gp, s9, t0
                  c.addi       a3, -1
                  sltu         s0, a0, s7
                  c.slli       s9, 9
                  xor          gp, s8, a3
                  c.sub        a4, a4
                  mulhu        s2, a4, t6
                  add          s10, s7, t5
                  mulh         tp, tp, s1
                  c.addi16sp   sp, -16
                  addi         ra, s4, -2018
                  andi         a0, s1, 1483
                  ori          s2, s1, -817
                  c.addi       s4, -1
                  mulh         a1, a2, s2
                  c.or         a5, s1
                  addi         a6, t4, -1388
                  xor          s4, s9, gp
                  mulhu        a3, a6, t3
                  c.xor        a0, a0
                  xor          sp, t1, s6
                  c.mv         gp, a0
                  c.addi       s6, 27
                  c.lui        t1, 19
                  or           s11, s3, s6
                  c.xor        a3, a1
                  c.lui        s11, 25
                  divu         t0, s1, s6
                  slli         t0, a4, 25
                  sll          t4, a1, s4
                  srli         t0, s4, 6
                  c.sub        a4, a3
                  add          s0, a5, a6
                  c.nop
                  srli         a6, tp, 31
                  srai         s0, t5, 28
                  c.li         gp, 24
                  sra          a6, a7, a0
                  c.li         a6, 9
                  c.or         s0, a1
                  nop
                  or           t5, s11, a2
                  c.addi4spn   a4, sp, 816
                  c.lui        a7, 7
                  mulhu        s11, t4, t4
                  c.and        a4, a3
                  srli         s9, s9, 21
                  srli         s5, s9, 30
                  divu         t0, t3, a1
                  rem          zero, a4, t2
                  or           ra, t4, a7
                  sll          tp, tp, a6
                  c.slli       a3, 31
                  mul          s0, tp, s10
                  c.addi16sp   sp, -16
                  div          t5, s11, s4
                  div          t6, s2, zero
                  c.slli       a0, 7
                  c.li         t4, 12
                  addi         ra, s11, 572
                  rem          t0, ra, gp
                  c.lui        a0, 2
                  c.addi4spn   a5, sp, 848
                  slt          t0, tp, s7
                  sra          s10, t4, a6
                  c.nop
                  c.slli       a5, 29
                  addi         t3, s6, -750
                  or           tp, s0, a6
                  sll          s8, ra, t2
                  or           a4, a0, sp
                  slt          t0, a5, a7
                  c.slli       t0, 6
                  c.srai       a5, 6
                  slti         t0, s2, 1206
                  sll          t1, s6, s5
                  c.addi4spn   a1, sp, 528
                  c.add        t3, ra
                  mul          a3, a3, s5
                  slti         s0, s8, -667
                  div          a0, s8, t3
                  auipc        a7, 264992
                  addi         zero, a2, 1441
                  c.srai       a3, 27
                  sll          zero, zero, t3
                  c.addi       t5, 24
                  xor          tp, tp, s0
                  srl          a1, s7, t2
                  andi         ra, s2, 171
                  srli         a0, a2, 1
                  mulh         gp, gp, s6
                  andi         s0, s2, -519
                  addi         a0, s9, 2004
                  mulh         s4, t1, sp
                  c.slli       a3, 2
                  mul          a7, s6, a2
                  slti         zero, a0, 1543
                  srli         s10, s10, 8
                  and          gp, s3, tp
                  c.srai       a4, 10
                  c.or         s1, a2
                  sltu         s6, s5, a3
                  sub          a4, a0, t3
                  remu         ra, s6, a7
                  sltiu        s11, t2, -534
                  sll          t3, a5, a0
                  divu         s6, a7, a0
                  addi         s11, s5, -1749
                  mul          s4, t3, s7
                  c.addi4spn   a1, sp, 704
                  c.li         s5, 22
                  sltiu        t6, tp, -156
                  srl          t3, a4, sp
                  sltiu        t6, t1, -1932
                  mulhu        sp, s7, t1
                  remu         s11, s5, gp
                  xor          s8, s0, a7
                  andi         t5, s2, 1497
                  c.sub        a4, a5
                  li           sp, 0xc5aa14ba #start riscv_int_numeric_corner_stream_20
                  li           s2, 0xffffffff
                  li           s11, 0xffffffff
                  li           s1, 0x80000000
                  li           a0, 0x0
                  li           tp, 0x80000000
                  li           a4, 0x0
                  li           s4, 0x80000000
                  li           s0, 0x80000000
                  li           t0, 0x0
                  auipc        s4, 18726
                  rem          s4, tp, s0
                  addi         s1, t0, -1875
                  mulh         s2, a4, a0
                  mulhsu       a4, a0, s11
                  div          s1, s2, s0
                  mulhsu       t0, a4, s11
                  mulh         t0, s11, s0
                  mulh         s1, s2, s0
                  remu         s11, s1, t0
                  add          s1, a0, t0
                  nop
                  mulh         t0, a0, tp
                  mul          tp, s2, sp
                  mulhsu       t0, a0, s1
                  nop
                  sub          s4, s4, sp
                  addi         t0, s11, 1194
                  add          tp, s0, a4
                  divu         s0, a4, tp
                  addi         sp, a4, -1221
                  mulh         s0, s0, sp
                  mulhu        s2, sp, s0
                  addi         s1, s4, -109
                  sub          s11, a4, a0
                  mulh         s0, s1, s0 #end riscv_int_numeric_corner_stream_20
                  c.srai       s1, 5
                  and          t4, a6, a7
                  mulhu        s5, s11, a5
                  div          a7, sp, ra
                  c.slli       t1, 24
                  c.and        a0, a3
                  sub          t0, t1, t6
                  slti         s8, s5, 654
                  sltu         s11, s9, a0
                  sltu         s0, a5, s9
                  c.addi4spn   a3, sp, 912
                  nop
                  c.mv         a3, s1
                  c.mv         a3, tp
                  c.xor        a3, a5
                  div          t1, t2, s3
                  slt          s2, a6, a5
                  addi         a5, gp, 833
                  c.add        a4, s0
                  rem          a4, tp, a2
                  srl          s5, s7, a2
                  lui          a6, 76611
                  sra          s0, t3, t3
                  c.add        sp, t4
                  c.mv         a7, s8
                  c.nop
                  xor          t0, s9, t3
                  xor          a6, a3, s5
                  andi         t6, t5, 423
                  c.srai       a5, 18
                  slt          s9, s3, a2
                  c.andi       s0, 3
                  xori         tp, a2, -1939
                  rem          s10, a5, t4
                  srli         s6, a6, 1
                  c.lui        t4, 15
                  xori         s2, a3, -1249
                  srli         a7, s6, 7
                  nop
                  addi         sp, t4, -886
                  lui          s5, 356346
                  sltiu        tp, a6, -1039
                  srl          t0, tp, t3
                  slti         zero, a3, -766
                  and          zero, s7, s9
                  c.addi4spn   a5, sp, 960
                  c.srai       a0, 12
                  c.add        s9, a6
                  c.addi16sp   sp, -16
                  c.mv         s4, t0
                  or           s0, a0, ra
                  and          s2, s0, s6
                  mulhsu       a0, a5, s2
                  li           s5, 0x0 #start riscv_int_numeric_corner_stream_32
                  li           s6, 0xd4daabe0
                  li           ra, 0xd9c88c5d
                  li           a4, 0xffffffff
                  li           t4, 0xffffffff
                  li           t3, 0x0
                  li           t6, 0x95c9c7d3
                  li           t1, 0x708b60b6
                  li           s2, 0x80000000
                  li           t0, 0xffffffff
                  rem          t4, t6, a4
                  mulh         t1, a4, ra
                  add          a4, t6, t4
                  divu         t3, a4, s6
                  mulh         t0, ra, s6
                  nop
                  mulhsu       t0, a4, t4
                  nop
                  mulhsu       ra, ra, t1
                  addi         a4, t1, -1451
                  auipc        a4, 76788
                  remu         a4, t6, t6
                  mulhu        t6, t6, s6
                  divu         t1, ra, a4
                  mulhu        ra, t3, t4
                  remu         a4, s2, s2 #end riscv_int_numeric_corner_stream_32
                  rem          tp, a5, tp
                  c.srli       a4, 31
                  addi         s2, s6, 446
                  c.lui        t6, 27
                  ori          a5, s3, -507
                  srai         s7, s2, 24
                  c.or         s0, s0
                  srai         t6, a3, 27
                  ori          a1, t5, -675
                  c.nop
                  add          a5, a4, s0
                  div          s7, a6, t3
                  mulhsu       t5, s2, s5
                  mulhu        s10, a0, t1
                  c.srli       a3, 27
                  sub          sp, s6, a5
                  add          a3, ra, s3
                  mulh         a0, t2, tp
                  mulhsu       s11, s11, a0
                  divu         a3, a2, sp
                  ori          s4, a2, -1833
                  srai         sp, s5, 24
                  c.xor        a0, s0
                  c.slli       s7, 19
                  divu         a0, s1, t5
                  li           t4, 0xa8d1dd63 #start riscv_int_numeric_corner_stream_28
                  li           s4, 0x0
                  li           t0, 0x0
                  li           s5, 0x0
                  li           s8, 0x0
                  li           gp, 0x0
                  li           a3, 0x0
                  li           a5, 0xffffffff
                  li           s10, 0xffffffff
                  li           ra, 0x0
                  mulhu        s10, s4, a5
                  div          t4, s10, s10
                  remu         s4, gp, s8
                  remu         ra, s4, t0
                  mulhsu       a5, s10, s5
                  addi         ra, gp, -1255
                  mulh         a5, s4, a3
                  auipc        t4, 1045904
                  nop
                  divu         a5, s4, ra
                  sub          a5, s8, s5
                  mulhsu       s4, gp, s10
                  mulh         a5, t0, s10
                  mul          ra, s10, a3
                  mulh         s8, t0, gp
                  lui          gp, 111547
                  mulhsu       s10, ra, s5
                  addi         ra, ra, 771
                  mulhsu       a3, gp, ra
                  mulhu        t4, s4, s5
                  mulhu        a5, s4, a5
                  auipc        s4, 1027929
                  add          a3, a5, gp
                  mulhsu       s8, t0, a5 #end riscv_int_numeric_corner_stream_28
                  c.andi       a4, -1
                  andi         s11, a1, -1855
                  sll          t0, a0, sp
                  mulhu        s2, a1, a5
                  srl          a1, t0, t0
                  xori         s2, t2, -1256
                  and          s11, s4, a2
                  c.addi16sp   sp, -16
                  auipc        s4, 7568
                  c.sub        a1, a1
                  c.li         t0, -1
                  sltu         gp, a2, s3
                  mulhsu       s10, s2, s2
                  sra          s11, tp, a7
                  c.andi       a4, -1
                  div          t1, s1, zero
                  and          gp, s7, a4
                  sltiu        t3, a4, -1514
                  c.mv         a1, s10
                  sltu         s9, a7, a2
                  xor          s5, s10, s1
                  andi         s4, t2, -435
                  and          a6, t1, ra
                  nop
                  add          s9, t4, s5
                  auipc        a3, 174706
                  c.slli       s0, 3
                  c.addi4spn   s1, sp, 400
                  and          t1, t4, ra
                  c.slli       t5, 8
                  c.add        a6, s5
                  sltu         ra, gp, zero
                  mulhsu       s2, t5, gp
                  c.addi       s2, -1
                  and          a7, a1, s6
                  c.mv         s10, t0
                  c.xor        s0, a1
                  or           t4, s3, a7
                  slti         t5, tp, -167
                  slt          t0, s8, s8
                  srli         s2, s5, 1
                  xor          gp, t2, a0
                  mulh         t1, s3, s4
                  c.mv         a4, s4
                  c.lui        t5, 2
                  or           t0, t4, a0
                  c.or         a4, a4
                  or           s0, s9, a6
                  and          s0, zero, a6
                  srai         s0, s1, 28
                  add          s10, s11, s7
                  c.li         s1, 8
                  srai         s2, a0, 12
                  c.li         tp, -1
                  slti         t6, gp, -1148
                  slti         s6, a7, -62
                  sltiu        a6, a4, 597
                  nop
                  sra          s2, a0, t3
                  and          t5, t4, a7
                  srl          a4, s9, s2
                  sltu         s10, ra, t5
                  divu         a6, a4, s1
                  c.slli       s2, 15
                  c.nop
                  srai         s10, a3, 29
                  and          s4, t0, a6
                  addi         s0, a6, -1285
                  c.slli       t3, 9
                  c.srli       a1, 1
                  srai         ra, s11, 18
                  c.srai       a4, 3
                  c.srli       a4, 26
                  mul          s2, s2, t3
                  sltiu        t6, a1, -968
                  srli         sp, s10, 20
                  andi         s4, t4, -1854
                  c.srai       s0, 23
                  mulhu        s1, t1, s0
                  sltiu        t3, t6, 1073
                  c.sub        a1, a2
                  sltu         a5, s1, s1
                  c.xor        a4, a0
                  sra          gp, s7, s8
                  slt          s5, s8, gp
                  sll          zero, s5, s11
                  auipc        t1, 685191
                  c.andi       a3, -1
                  addi         a7, sp, -2047
                  c.and        a1, a4
                  slt          tp, zero, a5
                  rem          s7, zero, gp
                  and          s10, a2, s11
                  c.srai       s0, 7
                  c.srai       s1, 10
                  c.add        s4, a4
                  c.slli       t1, 20
                  c.addi4spn   a3, sp, 208
                  c.mv         t3, t3
                  sltiu        s6, s5, 1137
                  c.xor        a4, s0
                  sub          s2, s4, s10
                  remu         s8, a5, s0
                  ori          gp, s1, -1200
                  c.slli       a3, 12
                  c.mv         t4, a3
                  mulh         t0, t4, a7
                  slti         s9, t1, 1017
                  c.slli       s5, 25
                  mulh         s2, s2, t3
                  c.or         s1, a4
                  remu         a5, s4, s8
                  c.sub        s0, a2
                  sub          s4, a5, a1
                  c.addi16sp   sp, 320
                  c.addi4spn   s1, sp, 352
                  c.and        s0, s1
                  add          zero, s0, a7
                  c.srai       s0, 24
                  c.and        a4, a5
                  slli         a5, t2, 12
                  c.xor        a3, s0
                  c.lui        t1, 3
                  c.li         s4, -1
                  c.srai       s0, 1
                  c.mv         s7, s7
                  ori          t4, a1, 947
                  c.li         t3, 31
                  xor          zero, s11, t0
                  sub          tp, s5, s4
                  c.addi4spn   a4, sp, 752
                  c.slli       a6, 27
                  divu         t6, s6, s0
                  srl          t6, t1, s0
                  sub          t6, t1, s2
                  add          s5, zero, s10
                  xori         s8, a4, 1919
                  c.mv         gp, t6
                  or           ra, tp, s2
                  add          t5, sp, sp
                  mulhu        t5, tp, s1
                  c.addi4spn   a3, sp, 112
                  auipc        t4, 681835
                  c.sub        s1, a0
                  ori          s1, s2, -393
                  c.nop
                  c.srli       a0, 13
                  mulhsu       t3, s1, ra
                  srai         t1, s10, 9
                  c.addi4spn   a3, sp, 16
                  slt          s0, tp, t5
                  srli         s11, a7, 14
                  srai         s1, a0, 26
                  or           tp, sp, a5
                  sltu         a3, t6, s10
                  rem          a0, t0, s3
                  c.addi       s11, 22
                  c.slli       sp, 19
                  remu         s4, a0, s7
                  c.addi16sp   sp, -16
                  c.andi       s0, 26
                  slt          s11, s0, s9
                  lui          t3, 19059
                  add          a4, tp, a1
                  lui          t1, 470130
                  slt          s2, s0, s0
                  remu         t4, a5, s6
                  div          a3, ra, t1
                  nop
                  srli         t1, s2, 8
                  c.addi4spn   a1, sp, 224
                  mulhu        s1, s7, s1
                  c.slli       s10, 26
                  c.sub        a3, s0
                  c.add        s10, a4
                  srai         t3, sp, 25
                  nop
                  srli         a1, a0, 2
                  slti         s4, a6, -228
                  c.slli       ra, 26
                  add          a4, s5, s1
                  c.mv         t0, t1
                  and          s5, s10, t2
                  sra          a1, t6, a6
                  lui          s2, 316638
                  slti         s0, t4, 45
                  auipc        s6, 208649
                  slti         t4, s0, -907
                  c.addi16sp   sp, -16
                  c.li         t4, -1
                  srl          zero, a5, a5
                  slt          s2, s10, s0
                  addi         s6, ra, -142
                  addi         s9, s5, 1690
                  c.slli       a1, 7
                  add          a0, t3, sp
                  c.srai       a3, 12
                  c.lui        s2, 19
                  c.xor        s0, a0
                  c.and        a1, a3
                  c.li         s8, 6
                  sra          s11, ra, s5
                  c.or         a0, a5
                  slti         s4, a6, -942
                  c.addi4spn   a3, sp, 176
                  c.lui        s10, 8
                  or           t5, s6, a2
                  sll          t5, s4, t0
                  addi         ra, s5, -425
                  div          s1, t1, s3
                  slti         t3, s4, 783
                  srl          t3, s11, s9
                  lui          a5, 394913
                  c.andi       a3, 27
                  ori          gp, a1, -1122
                  c.srli       s0, 7
                  addi         a6, ra, -1182
                  c.slli       tp, 21
                  rem          t1, s7, a0
                  slti         s7, s3, -1169
                  sra          t4, a5, a5
                  mul          s9, t0, a0
                  c.addi16sp   sp, 224
                  c.addi       a1, -1
                  mulh         s4, a0, s1
                  srli         t1, a2, 22
                  divu         a5, a2, s7
                  srl          s9, a5, sp
                  srli         t6, a4, 9
                  auipc        s0, 64756
                  srl          s9, a0, a4
                  divu         t5, s4, t2
                  sltiu        s8, gp, -557
                  c.and        s1, a1
                  div          s4, a7, s11
                  c.nop
                  c.add        s4, ra
                  nop
                  c.addi16sp   sp, 496
                  remu         s1, gp, a0
                  c.xor        a5, a4
                  srl          t6, a4, t0
                  xori         s10, a5, -1963
                  lui          t3, 49899
                  auipc        tp, 631674
                  andi         zero, a4, -62
                  c.addi       s4, 19
                  sra          s10, t3, gp
                  slt          a1, a4, a0
                  c.srai       a0, 21
                  srai         tp, a3, 10
                  ori          t0, a5, -1955
                  nop
                  sra          s8, s2, ra
                  mul          t5, s7, zero
                  c.sub        s0, a1
                  slli         t6, a6, 28
                  mulhsu       ra, a7, t0
                  c.sub        a1, a0
                  div          t1, a1, s6
                  sub          t0, s8, a5
                  divu         s10, ra, a1
                  andi         t1, s7, 1155
                  c.andi       a3, 15
                  slli         a3, s2, 0
                  srl          gp, a0, t6
                  ori          s9, ra, -544
                  c.and        a5, s1
                  sll          t5, s6, s3
                  c.addi4spn   s0, sp, 880
                  mul          s0, a2, t2
                  c.nop
                  sltu         zero, sp, t6
                  div          s6, a1, s9
                  divu         s4, s4, a3
                  nop
                  mulhu        gp, zero, sp
                  rem          s10, s9, s1
                  slt          s7, a1, s3
                  c.srli       a4, 6
                  sra          s6, s5, s6
                  sra          s2, s5, s5
                  mulh         s1, t1, t6
                  sltiu        a5, a2, -30
                  remu         a4, a1, tp
                  mulhu        gp, a5, a4
                  sra          a4, s9, t3
                  sra          s11, t3, s10
                  c.addi       t1, -1
                  c.li         sp, -1
                  sltu         s10, a0, s4
                  c.nop
                  c.slli       t6, 31
                  add          s6, t0, s2
                  lui          gp, 555941
                  sltiu        a1, a7, -1797
                  sub          s6, s7, sp
                  slli         a1, s6, 31
                  c.addi4spn   s0, sp, 224
                  sll          a0, zero, t6
                  remu         a0, t1, ra
                  sltiu        s4, a1, 4
                  andi         t6, a6, 427
                  c.li         t4, 28
                  slti         s11, s10, -768
                  slli         tp, s1, 30
                  sltu         t6, s10, a3
                  srai         a3, tp, 10
                  c.addi16sp   sp, 480
                  remu         gp, a2, s10
                  c.sub        a4, a0
                  add          zero, a0, t6
                  rem          t3, a2, s9
                  slt          t6, a4, tp
                  c.and        s0, a3
                  rem          a7, a5, t2
                  auipc        t0, 585740
                  c.addi16sp   sp, 400
                  srli         s1, a6, 18
                  divu         a4, sp, a1
                  ori          t0, a6, 1771
                  sltiu        s0, a2, 565
                  mulhu        t1, s4, ra
                  lui          ra, 507588
                  c.mv         t1, a1
                  c.srli       s0, 2
                  andi         t0, ra, 837
                  c.mv         ra, t1
                  auipc        s10, 146780
                  c.add        s0, t4
                  c.lui        s1, 2
                  sltiu        t0, sp, 1973
                  c.andi       a0, -1
                  c.srai       a1, 12
                  c.or         a1, a5
                  c.addi16sp   sp, -16
                  c.addi4spn   s0, sp, 688
                  c.addi16sp   sp, 464
                  ori          a0, a3, 906
                  and          t1, t1, t6
                  nop
                  c.nop
                  slti         t3, t3, -1294
                  ori          s10, a7, -1480
                  ori          s10, zero, 1917
                  mul          tp, a3, s7
                  mul          t4, gp, s6
                  rem          tp, t5, s3
                  nop
                  sltu         a1, t0, a5
                  c.li         sp, -1
                  c.sub        s1, a0
                  c.xor        a3, a3
                  c.srai       s0, 20
                  nop
                  slli         t4, a7, 27
                  mul          s2, t3, t0
                  slt          t3, s10, s0
                  remu         s0, zero, tp
                  c.xor        a3, a4
                  mul          t4, t5, a1
                  xor          a0, t1, sp
                  c.and        s0, a4
                  c.mv         s2, s5
                  add          a6, s3, t5
                  xor          t4, t0, s4
                  sll          a6, gp, s6
                  andi         sp, a7, 1254
                  slli         zero, ra, 4
                  srl          a5, sp, tp
                  c.add        a5, a1
                  c.xor        a4, s1
                  c.and        a5, a1
                  div          s6, s7, t3
                  c.srai       a4, 15
                  c.nop
                  c.mv         s9, a5
                  rem          zero, a5, gp
                  mulhsu       t3, s10, s2
                  mulhu        s11, tp, a6
                  or           t0, a6, t4
                  c.xor        a4, a1
                  remu         s1, sp, s5
                  c.srai       s1, 26
                  andi         sp, t6, 298
                  sltiu        t6, s0, 334
                  or           a5, t5, a6
                  sltu         s0, t0, zero
                  c.add        s0, a3
                  srli         tp, s11, 20
                  mulhsu       a6, a0, s9
                  c.addi16sp   sp, -16
                  sll          s7, s9, s5
                  c.add        a7, tp
                  rem          a0, t6, sp
                  c.addi4spn   a4, sp, 144
                  auipc        a1, 872241
                  c.slli       t4, 13
                  c.srli       s1, 25
                  c.mv         a4, t3
                  lui          s0, 859405
                  c.lui        a1, 7
                  rem          s4, s6, s0
                  c.srai       s0, 20
                  mulhsu       a4, s5, zero
                  divu         tp, t4, gp
                  c.addi       a1, 15
                  mulhsu       t5, a4, s3
                  c.or         a5, a3
                  mulh         zero, a3, a4
                  c.or         s1, a0
                  sll          sp, t5, s4
                  slt          a4, s8, t5
                  mulhsu       tp, s7, s0
                  srai         a6, t3, 8
                  sra          s11, s5, s2
                  c.mv         a4, s9
                  auipc        sp, 423840
                  c.addi       t3, 20
                  or           a0, sp, s11
                  and          a3, tp, a3
                  srli         a5, a5, 3
                  sub          ra, s6, t6
                  c.andi       a1, 18
                  c.xor        a1, a0
                  div          s6, s6, a1
                  rem          t5, a1, t3
                  auipc        a7, 144669
                  mul          s11, tp, t3
                  and          t0, zero, a0
                  c.slli       ra, 7
                  nop
                  nop
                  mulhu        s2, a5, s10
                  mul          s11, s0, s3
                  c.li         t3, -1
                  c.addi       gp, 2
                  slti         a4, gp, 323
                  srli         gp, a2, 13
                  c.srai       s0, 8
                  c.srli       a5, 25
                  c.lui        tp, 8
                  xor          a3, tp, s11
                  c.addi16sp   sp, 112
                  mul          s6, s11, t2
                  c.add        s0, a4
                  xor          t1, ra, t6
                  c.srai       a0, 5
                  addi         t4, s9, 1957
                  sra          sp, s4, s1
                  c.andi       a5, -1
                  c.and        a1, s1
                  c.add        s11, t1
                  sra          a6, s0, s5
                  sltiu        gp, s8, -2025
                  c.nop
                  sra          t1, s8, s1
                  xori         t0, zero, -1749
                  c.srai       s1, 11
                  xor          gp, s9, ra
                  remu         s6, a1, zero
                  slt          a4, s6, a2
                  c.mv         gp, a6
                  rem          t4, a5, a6
                  srl          a6, s0, s3
                  c.and        a4, a3
                  c.srli       a0, 29
                  c.mv         a6, a4
                  and          s2, s5, t6
                  rem          gp, a3, sp
                  c.addi       a4, 27
                  mul          s10, s2, ra
                  sra          s4, s3, t2
                  remu         a5, s5, ra
                  c.srai       s0, 19
                  auipc        a5, 682810
                  c.add        a6, s5
                  c.nop
                  c.li         t0, 13
                  divu         s8, sp, a2
                  c.xor        s0, a5
                  c.or         a0, a4
                  c.sub        a5, a1
                  c.addi       a0, 10
                  or           t3, s5, a1
                  c.andi       a5, -1
                  c.andi       a5, 18
                  addi         s8, s6, 1350
                  sub          a4, s3, t6
                  c.and        a5, a3
                  c.or         a0, a5
                  div          s7, a0, s6
                  and          a1, s8, t4
                  c.andi       a4, -1
                  mulhu        a4, a6, t5
                  add          s10, s0, a2
                  xor          t1, s3, t1
                  andi         t1, s6, 1957
                  mul          t1, a2, s0
                  and          t3, s4, t1
                  remu         t1, a6, s0
                  srl          zero, t4, s3
                  xor          s8, s10, s10
                  nop
                  divu         gp, gp, t1
                  sltu         s9, ra, t0
                  c.slli       a7, 31
                  xori         s2, s4, 1134
                  c.or         a4, a4
                  div          s9, gp, s11
                  c.add        a3, sp
                  c.add        s6, t6
                  c.srli       a3, 24
                  sltiu        a5, gp, -1235
                  mulh         t1, s3, t3
                  xor          t6, a3, s2
                  c.lui        a1, 9
                  c.slli       gp, 3
                  div          a0, ra, t5
                  ori          t0, a3, 1441
                  xor          s4, zero, s10
                  sll          s0, a0, t0
                  sra          s7, t5, t6
                  ori          t3, s2, 1234
                  c.sub        s1, s0
                  c.lui        t3, 12
                  c.mv         s0, a0
                  rem          s7, s9, t2
                  srai         ra, a1, 6
                  c.nop
                  sltu         s4, tp, s1
                  sub          a0, a5, t4
                  c.addi       s0, 27
                  addi         s11, a7, 1822
                  mulhsu       ra, s4, t3
                  c.li         a5, 16
                  andi         s10, a1, -1190
                  andi         a7, a3, 167
                  c.srai       s0, 29
                  slli         s1, s3, 24
                  add          ra, t4, a2
                  ori          s11, a5, 28
                  ori          s7, s10, 702
                  sra          s9, s7, t0
                  sub          a5, a0, s6
                  slt          a1, a3, s1
                  c.slli       s2, 11
                  rem          a4, a5, a5
                  c.srli       s1, 2
                  c.addi16sp   sp, -16
                  sltu         s6, s8, t5
                  nop
                  slti         s10, s4, -453
                  sltiu        s6, a2, 57
                  remu         ra, s2, s4
                  c.addi       t4, -1
                  c.addi4spn   s1, sp, 304
                  mul          t3, s0, ra
                  c.or         s0, a2
                  mulh         a6, sp, s3
                  sra          s6, gp, t5
                  c.nop
                  or           s7, s2, t0
                  sll          a5, s9, tp
                  c.mv         s4, s10
                  xor          s7, t5, a1
                  xor          gp, s2, s2
                  c.addi4spn   s1, sp, 944
                  c.nop
                  srai         t4, t0, 22
                  divu         s9, a2, ra
                  mulh         s11, a3, s1
                  auipc        s10, 317081
                  mulh         sp, s3, t2
                  andi         s6, zero, 805
                  c.sub        a5, a4
                  srli         t5, tp, 19
                  c.nop
                  c.xor        s1, a5
                  addi         t4, s8, 144
                  addi         ra, sp, -12
                  and          a5, s7, a5
                  c.add        s7, a1
                  addi         s8, a4, -513
                  sra          t0, s7, s9
                  c.and        a0, a5
                  c.add        gp, a1
                  srli         t1, s8, 22
                  sub          zero, s3, a5
                  slli         s10, t0, 21
                  sll          t4, s9, sp
                  andi         tp, sp, -1618
                  c.mv         a6, tp
                  c.xor        a3, a0
                  slli         s5, t3, 6
                  sltiu        a4, tp, -1817
                  auipc        a0, 437259
                  sltu         s10, a3, s10
                  sub          s1, tp, s10
                  andi         s4, s1, 215
                  c.andi       s0, -1
                  c.or         s1, a4
                  c.li         a3, 27
                  mul          zero, s7, t2
                  divu         a5, s6, s2
                  srli         a7, s8, 11
                  srai         a7, s2, 1
                  remu         a1, t2, a2
                  remu         s2, s4, t2
                  srl          a7, t1, a6
                  c.nop
                  c.addi16sp   sp, 144
                  remu         s5, sp, s11
                  c.srli       a1, 10
                  div          t6, t2, s1
                  c.or         a0, s0
                  xori         t0, a1, 860
                  slli         gp, t0, 15
                  rem          gp, s11, s2
                  c.add        s4, t6
                  srai         a3, s4, 26
                  c.addi16sp   sp, 128
                  c.addi4spn   a1, sp, 736
                  srai         gp, tp, 31
                  or           gp, s7, zero
                  remu         s2, a3, a5
                  c.addi       tp, -1
                  remu         t1, gp, a3
                  c.addi4spn   a1, sp, 480
                  c.lui        a5, 11
                  srl          s1, s3, a6
                  and          s2, s11, sp
                  or           t1, t5, t2
                  slti         t5, zero, 1582
                  srl          s4, s9, a6
                  xor          s0, t5, t6
                  c.or         a1, s1
                  mulhsu       s2, s8, t6
                  mul          t1, s4, s8
                  c.nop
                  mul          s7, t2, s9
                  nop
                  c.mv         t4, a4
                  c.add        a3, t6
                  c.srli       a1, 3
                  addi         ra, ra, 102
                  sra          t6, a6, s7
                  c.addi       t6, -1
                  srli         s6, s0, 25
                  slli         s7, a3, 27
                  or           s11, ra, s1
                  c.slli       s7, 14
                  srli         t0, s3, 27
                  c.andi       a5, 22
                  xor          a0, s0, a2
                  c.slli       s7, 28
                  lui          t5, 1007790
                  srl          s0, a3, a4
                  c.and        a0, a3
                  sra          tp, a5, a0
                  mulh         t1, s8, t2
                  xori         s11, a1, 412
                  addi         t3, ra, -1447
                  mulhsu       gp, a5, s5
                  c.srli       s0, 23
                  divu         s6, a4, a2
                  or           t6, gp, s7
                  c.andi       a5, 4
                  c.mv         a7, s6
                  slt          t5, s3, a6
                  c.add        a6, s7
                  c.sub        a4, a2
                  xori         a6, s4, 662
                  c.add        s7, t3
                  sub          a4, a1, a3
                  c.addi16sp   sp, 416
                  lui          t5, 32588
                  lui          tp, 826690
                  c.addi4spn   a5, sp, 656
                  c.mv         t4, t3
                  mulhu        a0, tp, a3
                  sub          s1, t1, t3
                  c.add        t6, s5
                  c.sub        s0, a4
                  xor          t1, tp, a5
                  c.li         a1, -1
                  c.xor        s0, s1
                  c.mv         t4, s11
                  srli         t3, gp, 11
                  add          t1, t1, s6
                  lui          a3, 447510
                  slli         a5, a7, 13
                  divu         s8, s5, sp
                  c.or         a1, a4
                  c.lui        t5, 30
                  srl          s1, s9, zero
                  rem          a6, t4, s0
                  remu         ra, s0, s6
                  remu         a3, t3, t0
                  slt          t3, t6, s10
                  c.srli       a5, 22
                  auipc        a7, 635810
                  rem          s10, s0, a7
                  sub          a1, a5, zero
                  lui          gp, 469235
                  c.lui        tp, 2
                  xor          tp, a1, s11
                  c.srli       s0, 26
                  remu         s9, s9, a5
                  c.li         s9, -1
                  sra          s11, sp, s4
                  c.sub        s1, a3
                  c.srli       a4, 2
                  slt          s10, gp, t3
                  addi         t3, t3, -1262
                  mulh         s5, a5, a5
                  srli         a6, t1, 13
                  div          t4, s6, sp
                  c.srai       a5, 7
                  div          a3, a2, s1
                  c.andi       a0, 5
                  c.andi       a4, 20
                  c.srai       a4, 12
                  sra          s0, t6, t0
                  sra          zero, a2, gp
                  sll          t5, a5, sp
                  sltiu        a6, s1, 314
                  c.nop
                  add          t5, t2, t3
                  xori         s9, s3, -1383
                  srl          zero, s6, t2
                  slti         a3, s7, 2015
                  slli         tp, t3, 20
                  c.addi16sp   sp, 368
                  c.addi       a7, -1
                  sub          t0, s3, s11
                  sltiu        s2, s7, 295
                  xor          tp, t2, s6
                  c.and        a5, a2
                  sltu         s6, a0, t2
                  div          t5, a1, ra
                  lui          s1, 314358
                  div          s0, s4, s3
                  sltu         t1, t4, a7
                  c.addi4spn   s1, sp, 720
                  xor          tp, a7, zero
                  andi         s9, zero, -1745
                  slli         t1, t6, 15
                  or           s10, t1, t2
                  srai         s11, gp, 26
                  mulh         t5, s4, a4
                  sra          t0, s3, sp
                  andi         a6, a1, -408
                  or           s10, t0, s0
                  c.srli       a0, 30
                  add          t6, a6, a5
                  c.addi4spn   a4, sp, 560
                  ori          tp, s11, -1479
                  c.xor        a1, a4
                  slti         s5, a0, -35
                  srl          a7, s8, s1
                  div          gp, t0, t6
                  c.nop
                  ori          gp, t3, -1110
                  srai         gp, s5, 28
                  nop
                  slt          a7, s10, zero
                  c.add        a7, s9
                  c.addi4spn   a0, sp, 464
                  slli         s8, s7, 16
                  srli         t1, a4, 21
                  c.li         s7, 12
                  sub          a4, s8, a5
                  c.addi       s10, 19
                  c.nop
                  add          sp, zero, t4
                  or           t4, t5, s0
                  c.srli       a5, 12
                  c.li         a4, 16
                  c.addi4spn   a1, sp, 384
                  add          t1, a6, t5
                  sltiu        a0, t5, -210
                  c.addi4spn   s0, sp, 992
                  and          gp, s5, s9
                  mul          t0, a3, s0
                  sub          t5, a0, a7
                  srai         a1, a6, 10
                  slli         t1, a5, 31
                  divu         s2, s10, s4
                  c.sub        a1, a4
                  c.andi       a1, 6
                  c.mv         a5, s6
                  remu         s8, gp, s3
                  c.nop
                  mulhu        s2, t5, t4
                  xori         s7, s5, 843
                  div          tp, t2, t5
                  c.nop
                  nop
                  srl          s10, t3, t5
                  sltu         tp, t5, a0
                  nop
                  c.slli       t6, 24
                  srli         a0, t1, 27
                  srli         gp, a7, 9
                  add          s7, t6, s6
                  sll          a0, a0, s4
                  sll          ra, t5, tp
                  auipc        a5, 1022283
                  c.srai       a3, 23
                  srl          a7, t2, t0
                  sra          t1, tp, s9
                  slti         t5, s9, -1098
                  c.li         a4, 8
                  srl          t4, s1, a4
                  auipc        s11, 951782
                  c.nop
                  c.mv         gp, a6
                  divu         t4, a7, a4
                  xori         s8, t2, 1915
                  c.addi4spn   s0, sp, 32
                  slli         sp, s10, 22
                  auipc        a4, 897260
                  c.add        ra, t6
                  c.and        a3, s0
                  sra          s11, t4, a3
                  c.addi       a5, 20
                  c.addi       s11, -1
                  mulhu        t4, sp, zero
                  c.xor        a4, s1
                  mulhu        t4, t4, s8
                  ori          s5, t5, -665
                  slti         s4, t0, -1679
                  and          s1, t2, gp
                  slt          s4, a1, s7
                  rem          s9, s6, t3
                  mulh         t5, a3, s9
                  c.nop
                  c.lui        a6, 30
                  srli         s7, gp, 24
                  srl          s11, t5, s5
                  c.lui        s6, 27
                  slt          a4, a0, s2
                  mulh         s4, sp, t4
                  rem          t4, sp, tp
                  add          a4, t4, t2
                  c.andi       a3, -1
                  c.addi4spn   s0, sp, 896
                  nop
                  mulh         gp, a7, s9
                  c.addi4spn   s0, sp, 160
                  c.li         a0, -1
                  slli         s8, s7, 16
                  c.li         t3, 13
                  c.slli       s1, 9
                  sltiu        a5, s0, -1179
                  c.xor        a0, s0
                  c.srli       a0, 31
                  div          s8, t2, s7
                  sra          s7, a2, sp
                  c.addi16sp   sp, -16
                  c.or         a0, a0
                  li           t5, 0x444028c4 #start riscv_int_numeric_corner_stream_3
                  li           gp, 0x0
                  li           t6, 0x30e646ba
                  li           a1, 0x4ed4a1ce
                  li           a5, 0x80000000
                  li           sp, 0x80000000
                  li           s10, 0x80000000
                  li           ra, 0x80000000
                  li           t4, 0x80000000
                  li           s8, 0x3173ad57
                  div          t6, sp, a5
                  add          a1, s10, s10
                  nop
                  mulhsu       a1, ra, a1
                  add          t6, sp, sp
                  auipc        sp, 422302
                  mulh         t4, gp, t4
                  mulh         ra, gp, t4
                  mulhsu       sp, ra, t5
                  add          a1, s10, a1
                  divu         gp, sp, ra
                  mulh         t4, t5, gp
                  mulh         s8, a5, s8
                  mulh         ra, a5, ra
                  mulh         s8, s8, s10
                  auipc        sp, 874796
                  add          ra, t4, a5
                  lui          t5, 781505
                  remu         s8, ra, t4
                  addi         s10, ra, -1488
                  addi         t6, a1, -1776
                  mulhsu       s8, t6, gp
                  nop
                  sub          ra, ra, s8 #end riscv_int_numeric_corner_stream_3
                  divu         t6, tp, zero
                  mul          t1, a7, a5
                  mulhsu       ra, t5, t6
                  c.xor        a0, a2
                  c.lui        s7, 21
                  c.nop
                  c.add        ra, s7
                  mulh         s4, t6, s6
                  srl          a6, gp, s4
                  c.andi       a1, -1
                  c.lui        tp, 10
                  c.and        s0, a2
                  c.xor        a3, s0
                  srai         t1, s8, 27
                  and          s7, a3, t1
                  mul          s4, t5, a4
                  sltiu        a7, t1, 1611
                  rem          s0, sp, t3
                  sub          a5, t5, a7
                  srl          t5, s10, s8
                  sltu         gp, a7, s7
                  c.addi4spn   s0, sp, 960
                  slli         sp, ra, 15
                  mul          t1, s5, s9
                  xor          s1, t6, s4
                  mulhu        a6, sp, t0
                  or           s10, t5, t4
                  andi         a3, zero, -585
                  c.addi16sp   sp, -16
                  c.nop
                  ori          gp, s8, 1816
                  or           s10, a6, a4
                  srai         a0, a5, 3
                  c.srai       a4, 25
                  c.andi       a1, -1
                  slt          a5, s7, s8
                  c.or         a5, a3
                  sub          t3, ra, a4
                  c.srli       s0, 4
                  mul          t5, tp, zero
                  mulh         s6, t0, a6
                  c.slli       t5, 4
                  slti         s8, a1, 1422
                  c.slli       s6, 12
                  c.addi       s8, -1
                  mulh         a0, s8, t5
                  sra          t3, a4, sp
                  slli         s6, s8, 15
                  c.or         s0, a0
                  mulh         s5, t3, t1
                  sra          a4, s3, t4
                  xori         s6, s10, 1629
                  add          gp, a0, s1
                  mul          t1, zero, t5
                  sub          s6, a5, s7
                  c.andi       s0, -1
                  slti         t0, t2, 501
                  sll          a6, s11, a0
                  c.slli       s9, 11
                  c.sub        a4, s1
                  c.lui        s8, 31
                  xor          sp, t3, tp
                  c.or         a5, a2
                  remu         tp, t2, a1
                  c.srli       a1, 1
                  sll          s10, t1, a4
                  mul          t5, t5, tp
                  and          sp, s5, tp
                  add          zero, s11, s5
                  c.nop
                  c.nop
                  sll          s5, t5, s9
                  slti         tp, t0, 1224
                  c.and        a3, a4
                  nop
                  auipc        t0, 622968
                  c.and        a0, a5
                  c.add        tp, s0
                  xor          a6, a2, sp
                  mulhu        a4, t3, s4
                  c.addi       s5, -1
                  sll          s8, s0, a6
                  xor          s11, t3, s10
                  auipc        t5, 207984
                  mulh         t5, gp, a5
                  c.lui        s8, 1
                  mulh         a0, s11, t3
                  srli         t3, s7, 9
                  mulhsu       s0, a1, t2
                  sltu         t3, t6, ra
                  divu         a1, t1, s8
                  c.srai       a3, 10
                  c.srai       a1, 21
                  lui          s5, 942060
                  sub          a6, a2, sp
                  and          gp, t0, t4
                  slli         t3, zero, 23
                  div          s11, s2, t6
                  mulhsu       s11, s1, s11
                  addi         s9, tp, 1044
                  or           zero, t6, t6
                  srl          tp, t0, t2
                  slti         s8, s5, 941
                  c.addi4spn   a3, sp, 192
                  addi         a7, s11, -876
                  xor          s4, s9, gp
                  c.and        a3, s0
                  remu         tp, s6, s3
                  slt          a4, a4, a0
                  xori         s4, s7, 1982
                  div          a5, a0, s8
                  c.addi16sp   sp, 352
                  sra          a4, t3, t4
                  slli         s1, zero, 24
                  xor          t4, s0, a3
                  or           a6, a1, a7
                  c.andi       a1, 25
                  c.mv         t4, t6
                  rem          gp, t0, s8
                  auipc        s5, 767639
                  xor          tp, a4, s7
                  add          a3, t1, sp
                  slli         a6, s4, 3
                  mulhu        s1, t0, s3
                  sra          s8, a7, ra
                  sll          s5, a1, s10
                  rem          gp, tp, ra
                  c.addi       a6, -1
                  nop
                  c.srli       a3, 4
                  sltiu        sp, t4, -1909
                  sub          a4, t0, a2
                  sra          ra, tp, tp
                  c.addi       ra, -1
                  auipc        ra, 529077
                  c.and        s1, a1
                  c.add        t6, s10
                  c.nop
                  c.or         s1, s0
                  srl          ra, s11, t6
                  c.xor        a0, a1
                  remu         sp, s4, s6
                  slti         s7, gp, 858
                  c.addi4spn   s0, sp, 816
                  auipc        t3, 522016
                  srl          t1, s9, a2
                  srl          t1, ra, t2
                  and          s2, ra, a2
                  slti         t3, s5, 1013
                  c.sub        s1, a0
                  c.lui        s8, 5
                  lui          a0, 755781
                  c.lui        t5, 24
                  slli         gp, t6, 25
                  add          t4, a2, t1
                  srli         a4, t0, 31
                  mulh         t1, a0, t1
                  and          s9, ra, s1
                  c.srai       s1, 13
                  mulh         a4, t0, t0
                  sll          s11, a7, s11
                  c.nop
                  rem          a5, s9, s8
                  c.srli       s0, 12
                  c.addi4spn   a1, sp, 720
                  or           t1, s3, t4
                  xori         t3, zero, -1338
                  sltu         s7, tp, s5
                  mul          a4, t4, zero
                  c.li         t5, 18
                  mulhsu       a1, s8, a5
                  c.xor        a3, s0
                  and          t6, a6, s4
                  mul          t1, tp, s2
                  mulh         s1, t0, zero
                  srl          a4, s9, s7
                  and          s10, t5, sp
                  and          gp, a5, s0
                  c.srai       a4, 14
                  and          sp, s9, t2
                  divu         s8, s5, ra
                  c.addi4spn   a0, sp, 832
                  rem          t5, s6, a6
                  c.slli       s9, 14
                  c.slli       tp, 2
                  rem          a5, t5, t4
                  c.mv         tp, t3
                  rem          zero, s0, a6
                  slti         a4, a5, -1188
                  c.srai       a5, 30
                  sub          s10, s1, t3
                  c.and        a1, a2
                  c.mv         t4, a5
                  sll          sp, ra, t5
                  slti         a4, gp, 1696
                  c.srai       s0, 27
                  c.andi       a4, -1
                  divu         t4, t3, a1
                  c.slli       t6, 27
                  sltiu        s6, t4, -1677
                  add          s11, s3, a1
                  mul          t5, s6, s0
                  c.li         s9, -1
                  lui          s7, 388766
                  c.srai       a1, 5
                  c.or         s1, a3
                  srl          a6, t3, s5
                  c.srai       a0, 1
                  c.srai       s0, 26
                  auipc        t1, 37500
                  sltiu        t1, tp, 834
                  rem          s5, s0, ra
                  or           t3, s3, s10
                  srli         t1, s0, 27
                  c.addi       t4, -1
                  andi         t4, a0, -1357
                  xor          sp, sp, s4
                  and          s4, s11, s7
                  rem          s5, s0, s11
                  xor          t3, a0, gp
                  sltu         sp, s9, a4
                  sll          a6, s7, ra
                  srl          zero, s5, a2
                  c.add        gp, s8
                  or           s6, t6, a4
                  c.or         a3, a0
                  ori          t3, s8, -551
                  c.or         s0, a4
                  c.addi16sp   sp, 336
                  slti         t3, a5, 1774
                  addi         a1, a1, 897
                  mul          s5, a4, t4
                  mulh         s2, gp, tp
                  sll          s2, a2, t6
                  remu         s5, a4, s9
                  mul          s8, t4, s7
                  mul          ra, a5, t4
                  sltu         s10, t6, s4
                  c.add        t5, s8
                  rem          s11, t6, s11
                  slt          a7, s8, s3
                  slti         ra, a5, 1941
                  c.xor        s0, s1
                  c.mv         s7, s6
                  srli         sp, s10, 10
                  ori          t5, ra, -1180
                  sltu         a5, t2, t0
                  slti         zero, a0, -555
                  mulhu        a7, s1, zero
                  mulhu        s2, t2, sp
                  c.srli       a3, 5
                  c.mv         t3, t0
                  xor          a4, s10, s7
                  c.and        a4, a5
                  sltu         a3, s2, s2
                  srl          t6, s2, t5
                  c.addi16sp   sp, 320
                  lui          tp, 1035400
                  and          a4, s8, a2
                  srli         sp, sp, 1
                  c.andi       a1, -1
                  div          ra, a4, t2
                  c.slli       tp, 15
                  c.srai       s0, 3
                  mulh         sp, a5, s10
                  or           s4, s7, zero
                  sub          t3, s9, a0
                  srli         s8, s8, 29
                  c.and        a4, a5
                  c.and        s1, a5
                  c.or         a0, s1
                  c.mv         s11, sp
                  auipc        ra, 35284
                  slli         t1, gp, 2
                  and          s6, zero, t1
                  div          ra, t4, t1
                  and          sp, a2, s4
                  slt          t3, t6, s2
                  andi         t6, s10, 60
                  lui          s10, 830774
                  slli         s11, a2, 11
                  c.addi4spn   s1, sp, 208
                  slt          tp, s2, s9
                  c.addi4spn   a4, sp, 880
                  c.sub        s0, a4
                  addi         a0, zero, 1762
                  c.mv         a7, s6
                  c.sub        s0, a4
                  remu         gp, zero, a7
                  xori         ra, zero, 335
                  c.addi16sp   sp, 176
                  rem          a3, ra, a2
                  sub          ra, sp, a1
                  c.and        a3, a1
                  srli         t4, a2, 21
                  c.andi       a5, -1
                  c.xor        a4, s1
                  c.sub        a3, s0
                  srai         s11, s6, 8
                  and          t1, s7, s0
                  c.addi4spn   a0, sp, 976
                  srl          s4, a6, t2
                  or           s8, t6, t6
                  sub          s0, ra, s3
                  nop
                  lui          ra, 989726
                  c.slli       sp, 27
                  slli         s9, a4, 19
                  mulhsu       t4, s6, t3
                  c.or         s1, s1
                  remu         a1, tp, gp
                  divu         a6, t0, t6
                  mulhsu       a0, a6, s6
                  c.addi       a1, 9
                  add          gp, t0, s4
                  divu         t0, t0, t1
                  srai         a5, a0, 14
                  sltu         a7, t3, s1
                  slt          t1, s4, t3
                  c.addi4spn   a0, sp, 544
                  sub          s8, s3, t0
                  c.lui        t5, 12
                  c.or         a1, a0
                  add          a1, t0, s10
                  add          t1, s11, t1
                  c.slli       a3, 21
                  c.addi16sp   sp, -16
                  c.slli       a3, 21
                  mul          a6, s2, s7
                  c.nop
                  c.xor        a1, s1
                  or           s4, a4, a1
                  slt          s6, a6, a0
                  mulhsu       a6, a2, t0
                  c.add        a4, a5
                  slti         tp, s6, 1104
                  sltu         a3, s4, t4
                  c.nop
                  c.or         s1, s1
                  or           s2, t1, zero
                  c.lui        tp, 21
                  mulhsu       s10, tp, ra
                  c.addi16sp   sp, -16
                  slt          t0, s5, t4
                  c.srli       a4, 21
                  slti         s5, zero, -841
                  mulhu        zero, s11, a1
                  c.srai       a1, 21
                  c.lui        s5, 1
                  nop
                  srl          s0, a7, s5
                  slt          t5, t6, zero
                  lui          s0, 605243
                  c.lui        a7, 5
                  c.srli       a5, 18
                  c.mv         t6, s3
                  xori         s8, s10, -445
                  li           tp, 0xffffffff #start riscv_int_numeric_corner_stream_14
                  li           s4, 0x0
                  li           s11, 0x0
                  li           s9, 0x0
                  li           s10, 0x80000000
                  li           sp, 0xffffffff
                  li           a4, 0x1406ead8
                  li           s5, 0x80000000
                  li           a5, 0x4f0f37ff
                  li           t0, 0x36742620
                  auipc        sp, 251975
                  add          s5, s11, t0
                  remu         t0, t0, tp
                  mulhu        sp, a5, s11
                  mul          s4, tp, sp
                  mulh         a4, s9, s9
                  mulhu        sp, s9, a5
                  mulhu        sp, a4, s4
                  mulhsu       s5, a4, tp
                  divu         tp, s11, s9
                  lui          t0, 379064
                  mulhsu       s9, s5, s5
                  sub          tp, tp, s9
                  addi         s9, t0, -1631
                  mulhu        sp, a5, s9
                  nop
                  remu         a5, tp, s11
                  mulhu        t0, t0, s11 #end riscv_int_numeric_corner_stream_14
                  c.andi       a3, 17
                  mul          t1, s11, t0
                  c.addi4spn   a1, sp, 736
                  sra          t5, gp, tp
                  lui          t3, 589669
                  ori          t3, a5, -1823
                  c.andi       a4, 16
                  c.srli       a1, 17
                  c.or         a0, a3
                  sltu         s10, a5, s6
                  slt          s10, t3, a5
                  mulh         s4, a4, gp
                  add          a3, a1, s2
                  auipc        sp, 855519
                  mul          zero, a1, gp
                  li           s9, 0x0 #start riscv_int_numeric_corner_stream_38
                  li           a6, 0x80000000
                  li           a1, 0x80000000
                  li           s2, 0xd34d8e6b
                  li           s1, 0x0
                  li           t0, 0x926b6929
                  li           t5, 0xffffffff
                  li           t1, 0x80000000
                  li           a3, 0x0
                  li           s11, 0x0
                  mul          s2, a1, t5
                  auipc        t5, 911285
                  mulhu        t0, t1, s2
                  mulhu        a6, a1, s2
                  remu         t0, t0, t1
                  lui          t0, 606625
                  div          t5, s9, s1
                  divu         a3, s2, a1
                  addi         a1, t0, -1028
                  nop
                  mulhu        t1, t1, t0
                  remu         s2, a6, s2
                  add          t1, s2, t0
                  sub          a6, t5, a6
                  lui          s2, 134152
                  mulhu        s11, a1, a6
                  addi         a1, t5, -1891
                  mulhsu       s11, t5, s1
                  mulh         a3, t0, t0
                  divu         t1, t0, t5
                  rem          t1, s1, a3 #end riscv_int_numeric_corner_stream_38
                  sltiu        s7, s10, 1515
                  auipc        s11, 986894
                  c.srli       a3, 11
                  rem          t4, a2, a6
                  and          s10, s10, t1
                  sra          tp, s4, t1
                  c.mv         s4, s7
                  sra          s2, s6, t0
                  sltu         s0, a4, a1
                  andi         a5, t5, 1772
                  mulhu        s7, s9, s8
                  c.srai       a1, 8
                  ori          sp, ra, 1291
                  srai         t1, t3, 2
                  c.srai       a4, 30
                  sltu         s2, s2, a5
                  srl          t3, a6, t6
                  auipc        t0, 693737
                  c.addi       t6, 30
                  rem          t4, tp, t6
                  mulhsu       ra, ra, s5
                  div          tp, s9, ra
                  ori          s8, a0, 1129
                  div          a1, a1, a1
                  srli         ra, t3, 25
                  slti         a6, t6, -994
                  c.addi4spn   a3, sp, 1008
                  xor          gp, s8, tp
                  c.xor        s0, s0
                  addi         s8, s6, 2035
                  sra          a0, gp, tp
                  mulh         a4, t3, sp
                  c.addi4spn   s0, sp, 192
                  sltiu        t6, a3, 1558
                  srai         a0, t2, 0
                  sra          s0, s1, gp
                  xor          ra, s5, s9
                  c.mv         a4, a0
                  addi         s6, t4, 571
                  mulhsu       a3, a7, s0
                  sltu         a3, s2, a3
                  sll          a5, a3, t0
                  rem          t3, sp, gp
                  c.srli       a0, 2
                  xor          a0, a0, a0
                  andi         t0, s9, -1975
                  nop
                  c.and        a3, a3
                  c.addi16sp   sp, -16
                  c.li         a5, 25
                  c.srli       a0, 17
                  c.srai       a5, 12
                  c.srai       s0, 16
                  c.sub        a3, a5
                  c.or         a0, s1
                  andi         s10, tp, -1237
                  ori          s0, s4, -513
                  add          gp, t3, s6
                  lui          a6, 110366
                  c.mv         tp, ra
                  mul          a0, ra, s0
                  c.addi4spn   a3, sp, 624
                  c.andi       s0, 3
                  or           a6, a4, a7
                  slt          a1, t0, t1
                  c.andi       a3, -1
                  c.and        a5, a0
                  rem          a0, s7, s1
                  lui          a6, 324439
                  sll          t0, ra, s3
                  c.addi4spn   a5, sp, 208
                  xori         a7, t0, -2047
                  c.addi       tp, -1
                  mulhsu       gp, s1, a5
                  c.slli       a7, 29
                  c.or         a3, a4
                  c.addi16sp   sp, -16
                  c.srli       s0, 24
                  mulhu        ra, a1, s2
                  sll          t4, s2, a0
                  slti         ra, a6, -1497
                  or           s8, s11, s2
                  c.and        a5, a4
                  c.srli       s1, 6
                  mulhsu       s10, a4, t6
                  c.srai       a3, 16
                  c.srai       a1, 11
                  c.add        t5, s3
                  rem          s4, s6, a5
                  c.xor        a1, a5
                  add          s5, tp, a2
                  ori          s11, a3, 309
                  sltiu        t4, t4, 120
                  rem          gp, s9, t0
                  lui          t0, 244302
                  c.nop
                  c.mv         a0, s0
                  sll          zero, s2, ra
                  slli         t5, s11, 15
                  c.addi       s7, 10
                  auipc        gp, 197620
                  srli         s7, t3, 11
                  c.nop
                  c.addi       a4, 11
                  c.sub        s0, a2
                  srai         s11, s2, 25
                  c.addi16sp   sp, -16
                  nop
                  andi         a0, s2, 369
                  sra          a7, a7, a7
                  andi         t0, tp, -904
                  rem          s0, zero, t1
                  remu         tp, t6, t2
                  c.nop
                  auipc        s0, 140393
                  mul          s1, s10, t1
                  xor          t1, a1, t4
                  mulhu        a6, s10, a5
                  c.lui        t3, 26
                  c.add        a5, s1
                  c.addi       s5, -1
                  slt          tp, t6, s4
                  c.slli       s4, 24
                  c.srai       s1, 29
                  addi         s10, zero, 1963
                  srai         s4, t4, 2
                  c.li         sp, -1
                  nop
                  div          s7, tp, a2
                  c.addi4spn   a3, sp, 224
                  divu         zero, s2, a1
                  c.nop
                  andi         a4, s4, -473
                  c.srai       a5, 30
                  slt          a0, s1, gp
                  slt          a7, s5, s3
                  mulhsu       a4, s4, s0
                  andi         gp, a5, 1419
                  sltu         a3, a3, s1
                  addi         s9, a7, -1888
                  addi         t5, s9, 1161
                  c.srai       a0, 26
                  c.srli       a1, 11
                  c.srli       s1, 25
                  auipc        zero, 359070
                  c.andi       s0, 12
                  nop
                  c.srli       a3, 31
                  slt          t6, ra, a5
                  and          a5, s2, t4
                  c.srli       a1, 31
                  slt          s10, s2, t1
                  mulhsu       t0, t2, s9
                  auipc        s8, 250565
                  c.addi16sp   sp, 496
                  slli         a4, a7, 5
                  c.srli       s1, 14
                  and          s9, s4, s11
                  c.add        a1, a4
                  sll          a3, a5, s8
                  c.xor        a1, a2
                  slti         s5, a6, -127
                  slli         s0, a4, 22
                  or           tp, t0, t2
                  c.lui        t6, 21
                  c.slli       s0, 5
                  c.lui        t1, 2
                  or           t3, s11, gp
                  srai         s4, s0, 4
                  remu         s7, sp, s10
                  sltiu        a7, t6, 818
                  rem          sp, a0, a4
                  div          t1, a0, s3
                  mul          s1, t5, t5
                  c.andi       a0, -1
                  mulhsu       a7, s3, gp
                  ori          a3, s4, 1034
                  c.lui        s8, 31
                  srl          t0, ra, s4
                  nop
                  rem          s10, zero, s6
                  c.xor        a4, a4
                  andi         a6, s11, -1641
                  mulhu        s11, ra, s0
                  c.addi16sp   sp, 416
                  rem          a3, t5, t5
                  mulhsu       t6, t3, ra
                  lui          s10, 531131
                  c.or         a0, a3
                  xor          t0, s11, s8
                  xor          s8, s7, s1
                  c.addi16sp   sp, -16
                  srai         s1, a1, 8
                  or           a5, a7, a2
                  addi         t5, t6, 1990
                  sll          s11, s5, s11
                  div          gp, s10, s7
                  c.andi       s1, 9
                  xor          s4, t6, s7
                  rem          s9, a1, sp
                  sltu         a4, s11, s3
                  c.addi4spn   a4, sp, 976
                  auipc        a5, 755106
                  c.lui        a4, 28
                  sltiu        s10, s2, 1170
                  lui          s10, 78305
                  c.mv         tp, t2
                  c.li         s5, 17
                  c.srai       a5, 28
                  sra          t6, zero, s8
                  c.slli       s10, 27
                  sra          s5, s7, tp
                  c.lui        ra, 9
                  srli         a7, t2, 17
                  mulhsu       s10, t5, s11
                  c.addi       gp, 17
                  xori         tp, ra, 712
                  c.or         a4, a4
                  andi         s4, s2, 587
                  c.add        gp, a3
                  srai         s1, t0, 16
                  c.addi       s7, -1
                  c.mv         s4, a7
                  c.addi16sp   sp, 272
                  andi         a3, a7, 65
                  divu         s11, tp, s2
                  mulhu        s0, t0, t6
                  addi         t4, a4, 49
                  ori          a0, s3, 1098
                  slti         a5, ra, -1653
                  c.nop
                  sll          s7, a6, tp
                  c.mv         t6, s4
                  mulhu        a5, t4, t0
                  c.xor        s1, a5
                  add          sp, s2, s11
                  c.xor        s0, a4
                  c.and        a4, a2
                  andi         a0, a2, 299
                  mul          tp, a4, t0
                  nop
                  mulhsu       s11, gp, a1
                  sltu         s5, s10, s2
                  c.srli       s1, 9
                  c.addi       s0, -1
                  slt          s10, t2, t3
                  sltiu        s7, s11, 921
                  c.li         t4, -1
                  c.lui        t5, 5
                  sltiu        gp, s9, 1726
                  srli         s4, s2, 23
                  c.srli       a3, 3
                  c.add        s9, a0
                  add          s11, t4, t6
                  c.addi4spn   a0, sp, 192
                  slli         a4, s11, 3
                  nop
                  slt          a3, zero, sp
                  rem          gp, a7, a1
                  mulhsu       s9, a3, sp
                  slti         s7, a7, 1866
                  sub          t5, sp, t6
                  remu         s2, t3, t1
                  div          t3, s7, a1
                  c.li         sp, -1
                  srli         t3, a4, 23
                  sll          t5, a5, t6
                  sltu         s8, s9, zero
                  c.lui        a4, 29
                  sll          t3, t3, a7
                  c.and        a0, a3
                  divu         a3, s6, s8
                  c.sub        a4, a3
                  c.srli       a3, 29
                  c.lui        tp, 22
                  remu         a0, s3, s7
                  mulh         a1, a0, tp
                  addi         s5, gp, -1071
                  mulhsu       t1, s10, s10
                  mul          ra, t4, a4
                  srai         t3, a1, 27
                  mulhu        a1, a7, t1
                  c.or         a0, s1
                  div          a7, tp, s10
                  srai         a1, a2, 13
                  c.nop
                  sra          gp, t1, t4
                  slli         a7, a6, 17
                  xori         sp, s8, 1351
                  sub          a3, s9, a7
                  lui          a5, 1034597
                  slli         a4, s6, 11
                  auipc        gp, 394840
                  c.xor        a3, a2
                  mulh         t3, a4, a5
                  slli         t6, tp, 0
                  div          t3, ra, a5
                  c.li         gp, 9
                  mul          t5, sp, zero
                  c.slli       t3, 19
                  c.and        s1, a5
                  slt          gp, sp, zero
                  mul          t1, a1, s1
                  c.andi       a1, 29
                  sll          a1, a0, a1
                  slti         t0, s9, 955
                  c.and        a0, s0
                  c.lui        t1, 27
                  slli         s2, ra, 6
                  c.li         t6, 14
                  c.addi16sp   sp, 352
                  divu         zero, a4, s6
                  sra          a1, t4, a7
                  mul          a4, t6, s11
                  sra          t6, ra, t6
                  srl          a0, t2, s7
                  c.or         s1, a5
                  slt          s10, s3, a1
                  c.mv         a3, s0
                  and          s7, s5, ra
                  rem          a5, ra, s3
                  srl          s6, a6, a2
                  srai         s10, s1, 3
                  sll          a4, s4, s11
                  ori          a5, s6, -1810
                  c.li         s4, 30
                  divu         s4, t4, s1
                  slti         s7, gp, -753
                  srli         s0, zero, 27
                  rem          a6, a0, t5
                  mulhu        a7, sp, s5
                  auipc        s10, 333181
                  c.and        a0, a3
                  mul          t5, s5, t5
                  andi         s7, t6, 259
                  c.mv         tp, s9
                  sub          s6, a0, t0
                  srl          a3, a0, t5
                  rem          t0, a7, a2
                  div          t3, a3, gp
                  lui          s7, 79606
                  c.addi16sp   sp, 384
                  mulhu        t1, s11, a7
                  sll          s0, a4, ra
                  c.andi       a5, 17
                  sra          s4, s1, a3
                  c.andi       a3, -1
                  or           a1, t2, ra
                  addi         t1, tp, 1812
                  sltiu        s2, s0, 1489
                  or           t4, t2, s7
                  c.and        a5, a3
                  or           t1, t2, t0
                  c.and        s0, a0
                  addi         ra, s11, -457
                  sltiu        a5, s8, 756
                  mulhu        s0, gp, t0
                  mulh         a5, a1, s10
                  c.andi       s0, -1
                  sltu         s4, a0, sp
                  addi         a6, t3, -46
                  remu         s9, a4, s1
                  lui          a7, 112855
                  mulhu        s2, t5, a0
                  sll          ra, t1, ra
                  remu         a3, t6, s2
                  sub          a3, s10, a4
                  c.srli       s1, 20
                  c.addi4spn   a3, sp, 832
                  and          ra, s3, sp
                  c.sub        a5, a4
                  addi         t4, s1, -483
                  c.mv         a5, s9
                  sra          a4, s9, s2
                  ori          gp, a0, -889
                  c.srai       a4, 13
                  mulhu        t4, s5, zero
                  mulhsu       a1, s10, s7
                  mul          zero, a1, s1
                  slt          t6, sp, s4
                  c.addi       sp, -1
                  slt          t0, s10, a2
                  andi         s6, t1, -1460
                  c.and        s1, a4
                  remu         a1, a6, a6
                  sltu         zero, t6, a5
                  ori          a4, s9, 313
                  mulhsu       a5, a3, a0
                  srai         s2, s8, 27
                  sub          s4, t5, s6
                  c.add        t0, t3
                  c.nop
                  srl          s2, t2, s6
                  xori         ra, a1, 236
                  c.and        s0, a0
                  c.and        s0, a0
                  add          s10, s9, s7
                  sub          s7, s7, s2
                  c.mv         t3, a1
                  or           a7, s5, s10
                  c.lui        s7, 26
                  slli         s7, a7, 0
                  div          s2, a4, s9
                  c.andi       s0, 20
                  or           a4, s5, t2
                  slt          s2, s4, s11
                  div          s9, a0, tp
                  auipc        s0, 141945
                  c.srai       a5, 1
                  srl          zero, t5, gp
                  lui          s7, 960970
                  srai         s0, s3, 30
                  c.addi       gp, -1
                  c.or         s1, a0
                  c.srai       s0, 20
                  c.lui        ra, 20
                  c.and        a4, s0
                  divu         t6, s4, s1
                  c.srli       s0, 4
                  c.sub        s0, a2
                  mulh         s4, t1, tp
                  rem          s2, s1, t6
                  sltu         s8, a5, t4
                  c.srai       a5, 20
                  xori         s0, sp, -21
                  rem          s4, a1, a6
                  sltiu        s4, s2, 537
                  c.xor        a5, s0
                  c.nop
                  c.srli       a3, 11
                  slt          s10, a6, s4
                  addi         gp, s10, -985
                  slt          s2, s9, tp
                  mulhu        t4, t4, s8
                  c.mv         a6, s8
                  mulh         tp, t0, s3
                  sltu         s0, s7, a3
                  slt          t5, t2, t6
                  sub          a6, s3, tp
                  c.li         s9, 9
                  remu         a7, s8, t2
                  c.addi       s4, -1
                  c.slli       s5, 20
                  mulh         a0, t4, t3
                  mulh         t3, s11, s3
                  sra          s7, t1, s10
                  c.srai       s0, 12
                  sltiu        sp, a7, -1382
                  sll          a4, s1, a0
                  c.srai       a4, 30
                  c.or         a0, a2
                  sub          zero, t2, a1
                  c.xor        a1, a2
                  slli         t4, s8, 18
                  sltiu        a6, t6, 1597
                  addi         s7, t5, 995
                  addi         t0, t3, -774
                  mulhu        t6, a5, s5
                  sltu         a3, s4, sp
                  nop
                  c.and        s0, a3
                  slli         s2, sp, 7
                  c.and        s0, s0
                  add          s7, a2, s8
                  c.nop
                  c.addi16sp   sp, 432
                  and          a7, t6, a1
                  mulhu        s9, t5, a6
                  remu         t3, a4, a5
                  srai         s1, gp, 3
                  c.srai       s1, 17
                  slli         s8, a0, 20
                  slti         t6, a2, -912
                  lui          s6, 538528
                  mul          a3, s5, a5
                  c.slli       a0, 6
                  c.addi       ra, 15
                  xori         s0, s3, 1981
                  mulhsu       gp, a5, s9
                  sra          t4, t2, s10
                  c.sub        a3, a1
                  and          s9, a1, s6
                  c.srli       a4, 15
                  div          tp, a4, s10
                  sltiu        t1, a0, -901
                  sll          gp, s9, s5
                  c.li         sp, -1
                  divu         t4, s9, s8
                  sll          zero, t1, gp
                  remu         a5, a6, a2
                  c.and        s0, a4
                  add          tp, a1, a1
                  and          t5, sp, t0
                  mulhsu       s10, t2, s2
                  c.addi       t4, -1
                  c.xor        a0, s1
                  divu         s10, s9, t5
                  c.andi       s0, 27
                  lui          s0, 141536
                  slt          a0, s4, s9
                  nop
                  c.srli       a0, 17
                  c.xor        a5, s1
                  lui          a7, 809523
                  srl          s7, tp, a2
                  slt          s0, a3, a6
                  c.or         a3, a3
                  c.nop
                  c.xor        s0, a4
                  srl          s11, s1, s0
                  sltiu        t1, s4, -1447
                  mulhu        a4, t3, s10
                  andi         s2, s0, 1376
                  slti         gp, s7, -21
                  andi         a3, a5, -1287
                  c.addi4spn   s0, sp, 736
                  c.or         a4, s1
                  c.and        a5, s1
                  c.xor        a1, a1
                  slti         zero, s8, 190
                  c.mv         t5, a0
                  sltiu        a7, s7, -641
                  and          t0, t3, a7
                  c.addi16sp   sp, 432
                  ori          s4, a0, -910
                  nop
                  c.addi4spn   s0, sp, 32
                  c.slli       s2, 21
                  c.addi4spn   a0, sp, 368
                  nop
                  or           a6, a6, t2
                  c.addi4spn   a5, sp, 544
                  divu         a0, a3, s1
                  auipc        s6, 64688
                  c.srli       a1, 31
                  mulh         s10, s9, s4
                  xor          t4, ra, s6
                  slt          zero, s1, a5
                  mul          s7, a7, s4
                  sltu         a0, t5, a3
                  c.lui        s7, 12
                  div          a0, s2, s11
                  div          gp, sp, t5
                  sub          ra, s11, tp
                  nop
                  ori          t3, ra, -582
                  mulh         s8, ra, s1
                  divu         t1, zero, s10
                  andi         a3, a1, -158
                  andi         a5, a4, 1388
                  c.and        s1, a2
                  remu         s7, s10, a3
                  rem          t6, s7, s10
                  nop
                  sll          t5, sp, s5
                  srai         t0, t5, 31
                  addi         a6, s10, 400
                  mulhsu       s11, a1, s2
                  c.and        s0, a4
                  c.addi       s9, 7
                  xor          a6, t5, s5
                  sltiu        t0, s2, -613
                  nop
                  c.or         a0, a4
                  c.add        s10, ra
                  mulhsu       s5, t5, s2
                  or           zero, s4, t6
                  divu         s9, a1, a2
                  xor          s10, t4, s4
                  c.mv         a6, s3
                  mulhu        a4, t1, s4
                  sll          s9, s3, s9
                  sub          s6, a7, s9
                  addi         t4, s6, 2000
                  sltiu        a6, t3, -1077
                  divu         a6, a5, a3
                  andi         a5, t6, -962
                  mul          t5, s0, s2
                  add          ra, tp, t1
                  c.addi       t4, 8
                  c.li         gp, 22
                  sltiu        t6, s6, -649
                  xori         s5, s2, 693
                  c.nop
                  auipc        t0, 372369
                  rem          s5, ra, t1
                  add          a0, a0, s10
                  rem          s0, s7, s2
                  div          gp, a4, a7
                  andi         ra, s11, 1339
                  addi         zero, sp, -322
                  mulhu        a4, sp, a2
                  xori         a3, s11, 2007
                  divu         tp, a7, s8
                  addi         a5, s9, -717
                  mulh         sp, s0, a5
                  c.sub        a0, s1
                  c.nop
                  c.addi16sp   sp, -16
                  slli         s11, a5, 12
                  srl          s11, ra, a5
                  andi         s2, s11, 668
                  srli         t6, ra, 30
                  slti         s0, sp, 221
                  c.xor        a5, a2
                  xor          t4, t2, t2
                  srli         gp, t1, 1
                  c.add        t1, ra
                  sll          a0, s5, s3
                  c.lui        a4, 7
                  c.addi16sp   sp, 272
                  c.addi       s8, -1
                  sra          ra, t4, s6
                  c.xor        a3, a1
                  addi         a3, a0, 1076
                  c.nop
                  c.nop
                  remu         s11, a1, s7
                  addi         s0, zero, -1090
                  divu         s11, a2, t3
                  c.addi16sp   sp, 272
                  sll          gp, a3, a3
                  c.add        s8, a1
                  divu         a6, a1, s11
                  rem          s4, s10, t3
                  mulh         ra, a0, s4
                  andi         a3, tp, 616
                  c.sub        a3, s0
                  or           t6, a6, s0
                  add          s8, a4, t5
                  auipc        a7, 385061
                  mulh         s9, a1, s3
                  xor          s1, s10, a1
                  sub          a1, t2, t1
                  divu         s5, t2, t5
                  mulhu        t4, a7, t3
                  c.sub        a5, s0
                  xori         t6, s10, -896
                  ori          t1, sp, -1940
                  slt          gp, s11, a3
                  slli         t5, tp, 12
                  c.slli       tp, 4
                  sra          zero, s2, t4
                  c.addi16sp   sp, 496
                  sra          tp, t0, t0
                  c.xor        s0, s0
                  c.addi       s5, 22
                  mul          a7, tp, sp
                  ori          a4, s0, 1882
                  c.xor        s0, a2
                  srai         t6, t3, 8
                  c.addi16sp   sp, -16
                  divu         s11, t6, t3
                  c.mv         s2, s11
                  c.add        s11, s8
                  c.addi       gp, -1
                  ori          a4, a0, -1272
                  slt          tp, a1, t6
                  xor          t3, ra, a3
                  and          ra, a6, s6
                  c.lui        a6, 18
                  nop
                  rem          zero, tp, s1
                  div          a1, s1, s0
                  slli         sp, s5, 29
                  c.sub        a5, a4
                  srai         gp, s3, 25
                  sub          s11, a0, s7
                  lui          t0, 360827
                  sub          s2, s3, t1
                  c.sub        a3, a0
                  c.addi       a5, -1
                  or           a5, a7, t0
                  c.addi16sp   sp, 160
                  mulhu        s2, a6, t1
                  sub          a4, s1, a6
                  sra          a6, a4, t3
                  rem          a7, s3, tp
                  c.addi4spn   a1, sp, 96
                  c.srai       s0, 3
                  mul          s0, s8, a4
                  add          t6, a0, s3
                  slt          s5, s2, a5
                  mulhsu       t0, s2, a1
                  srl          t1, a7, s3
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_35
                  li           t4, 0x3d52e27f
                  li           t1, 0x80000000
                  li           tp, 0xcd8dd15f
                  li           sp, 0x7f328138
                  li           a0, 0xb959f2f5
                  li           a1, 0x80000000
                  li           ra, 0x0
                  li           a3, 0x80000000
                  li           s11, 0x80000000
                  mulhsu       t1, sp, sp
                  add          t0, s11, ra
                  mulhu        ra, t1, t0
                  lui          tp, 702262
                  mulh         t1, a1, t1
                  remu         t4, sp, sp
                  lui          s11, 231987
                  remu         t4, a1, a0
                  mul          s11, ra, a0
                  div          t0, tp, a0
                  auipc        t4, 808169
                  auipc        t1, 712767
                  nop
                  lui          t4, 439543
                  remu         t4, a3, sp
                  nop
                  rem          s11, t1, t4
                  add          s11, s11, ra
                  divu         tp, sp, a1
                  nop
                  remu         a3, a1, s11
                  mulh         s11, s11, a1 #end riscv_int_numeric_corner_stream_35
                  c.slli       t6, 1
                  add          s7, s1, s11
                  c.mv         t5, s11
                  c.andi       s0, 9
                  div          s9, s6, s3
                  sltu         s5, s6, s1
                  remu         s9, t2, s9
                  addi         s1, a6, 521
                  srai         a6, s7, 8
                  slli         s6, ra, 16
                  and          t5, a4, s9
                  srl          a0, s5, sp
                  mul          zero, a5, sp
                  c.addi       s9, 6
                  nop
                  c.sub        s0, a2
                  mul          t6, tp, a0
                  c.add        gp, t1
                  xori         a5, s7, -1610
                  sub          s9, s0, a6
                  slli         ra, a3, 21
                  ori          zero, t6, 129
                  c.mv         s10, t0
                  c.addi       s11, -1
                  c.srli       a5, 20
                  c.srli       s0, 8
                  mulhsu       t4, t5, t2
                  c.lui        t5, 17
                  andi         t6, s10, 976
                  c.li         s1, 28
                  auipc        zero, 293405
                  slt          s2, s5, sp
                  srli         s8, t1, 1
                  sltu         a0, a6, a5
                  sltiu        s8, t2, -89
                  xori         a1, s10, 208
                  c.lui        t4, 7
                  or           s7, a5, s1
                  c.lui        t0, 10
                  c.andi       a1, 26
                  andi         a0, a5, 350
                  c.li         sp, 29
                  or           t0, sp, t4
                  div          s11, s4, s7
                  mulhu        a3, s10, a4
                  andi         t4, t4, -982
                  sll          s10, s7, t0
                  auipc        s0, 145540
                  lui          a3, 315052
                  mulhu        t5, t5, t2
                  sltu         a6, tp, s2
                  srli         s8, s11, 1
                  c.lui        t4, 14
                  sra          a7, zero, t6
                  sll          a5, a3, a3
                  c.sub        s1, a0
                  divu         ra, a0, s1
                  mulh         zero, t2, a1
                  c.xor        a0, s0
                  ori          s8, t6, 176
                  c.add        a7, a4
                  c.addi       a5, 25
                  c.addi       s7, -1
                  c.andi       a3, -1
                  srl          tp, s0, s8
                  c.andi       a1, -1
                  c.andi       s1, 15
                  slti         t3, t2, -332
                  addi         gp, t6, -1097
                  nop
                  c.addi       s8, -1
                  sub          a7, gp, t3
                  xor          t1, s4, t5
                  xor          s7, tp, s10
                  mulh         a5, s7, sp
                  c.addi4spn   s0, sp, 816
                  slli         a3, t0, 21
                  c.andi       a0, -1
                  c.srai       a3, 21
                  xor          a5, s4, a1
                  or           a3, s6, s5
                  and          t4, t6, a6
                  srai         s5, t2, 13
                  sll          a3, s6, a5
                  c.srli       a1, 26
                  mul          s9, s0, t6
                  div          t6, a2, ra
                  c.addi4spn   a3, sp, 80
                  slt          tp, sp, s4
                  sll          tp, s10, t1
                  sra          t0, s0, t2
                  slli         s5, a1, 21
                  c.addi16sp   sp, -16
                  slti         a6, s10, 651
                  c.addi4spn   a5, sp, 448
                  c.and        a5, s0
                  xor          a3, s3, t1
                  add          tp, zero, s0
                  or           a1, t2, s9
                  c.lui        t3, 7
                  c.andi       s1, -1
                  mulhu        t1, t5, gp
                  srl          s6, s9, s2
                  divu         s2, s2, s6
                  divu         s10, sp, s2
                  nop
                  srl          s6, t3, s3
                  slt          s8, s0, s6
                  c.nop
                  c.slli       a4, 13
                  srai         t0, t6, 23
                  mul          a3, a2, s6
                  c.addi       t4, -1
                  mulh         a5, a3, tp
                  or           t6, t4, sp
                  c.srai       s1, 9
                  mul          t1, sp, a4
                  and          s10, sp, t1
                  sltu         a3, a6, s2
                  c.slli       t3, 19
                  mulh         t5, s10, s6
                  lui          tp, 599691
                  mulhu        a3, s4, a1
                  slti         a3, s2, -1088
                  div          gp, a1, a4
                  slt          a0, a2, a4
                  mulh         t0, s9, a5
                  c.add        a3, t4
                  srai         tp, t5, 9
                  add          s11, t6, s10
                  c.addi       s2, 14
                  c.addi4spn   a5, sp, 208
                  c.nop
                  xori         sp, ra, 1668
                  c.addi       s8, -1
                  slt          s10, s7, gp
                  lui          ra, 1015195
                  c.xor        a4, a2
                  mul          a7, t6, a2
                  c.addi       t1, 13
                  auipc        s0, 648550
                  mulhsu       t4, s4, s7
                  sra          sp, s1, s3
                  mul          zero, t6, t5
                  div          t0, s7, t5
                  slli         gp, gp, 22
                  lui          t3, 965425
                  c.lui        a0, 2
                  c.lui        tp, 19
                  c.andi       s1, 2
                  div          t6, s2, a5
                  c.addi4spn   s1, sp, 848
                  nop
                  c.mv         ra, a7
                  c.li         t6, -1
                  sltiu        t6, s1, -1319
                  div          t6, a1, a6
                  srl          sp, t1, s5
                  lui          t0, 925328
                  slt          a1, s5, t5
                  div          t0, s0, s9
                  addi         t5, s8, -1242
                  c.and        s0, a5
                  srli         s5, a5, 21
                  c.and        a5, s0
                  c.addi4spn   a4, sp, 960
                  remu         t5, a7, s6
                  mulh         a7, a6, s6
                  c.addi4spn   a3, sp, 48
                  slli         s7, a3, 15
                  srai         a7, tp, 1
                  srli         s10, a7, 10
                  or           s1, s11, gp
                  auipc        s7, 619139
                  xori         a7, tp, 1530
                  c.sub        s1, a5
                  slli         a5, s4, 10
                  c.slli       s5, 18
                  c.addi       t1, 1
                  nop
                  lui          a3, 14428
                  nop
                  c.xor        a1, a2
                  c.slli       s0, 22
                  c.lui        t3, 2
                  addi         a5, s8, -646
                  c.slli       a4, 12
                  andi         t4, sp, -1816
                  srl          s10, ra, a3
                  srai         t0, sp, 20
                  srai         tp, s7, 17
                  srl          t1, s0, s6
                  sltiu        zero, s8, 212
                  lui          t1, 916773
                  slt          s11, s5, s4
                  c.srli       a1, 22
                  mulhsu       s5, t3, s8
                  slti         a0, s10, -1411
                  srli         a5, s11, 1
                  srli         s6, t5, 21
                  c.and        a4, a1
                  mulhsu       t6, s5, a6
                  c.xor        a5, a5
                  div          a6, t0, s5
                  andi         gp, s1, -882
                  c.andi       s1, 18
                  srai         tp, s1, 9
                  nop
                  mulh         s4, tp, ra
                  and          ra, sp, s3
                  srl          a4, s6, s10
                  and          s4, a2, a0
                  c.slli       s7, 7
                  sltiu        a5, tp, 441
                  c.xor        a4, a2
                  andi         s2, s10, -1311
                  sltiu        a6, t2, 941
                  c.and        s0, s1
                  remu         zero, s5, sp
                  sll          a5, s9, a6
                  auipc        tp, 719737
                  ori          a3, t1, -1377
                  c.and        a4, a3
                  c.lui        t4, 5
                  addi         zero, s1, -2026
                  remu         gp, a7, s5
                  c.and        s0, s1
                  divu         s2, gp, t1
                  or           s5, s9, s6
                  ori          s4, a7, -587
                  c.add        t1, s0
                  auipc        t1, 545805
                  c.and        s1, a0
                  c.lui        s10, 9
                  srl          t4, a0, s2
                  andi         s0, s3, -1986
                  or           t6, t6, s10
                  remu         tp, s7, s6
                  nop
                  sltiu        ra, s10, 1910
                  sra          a6, s0, t5
                  mul          a5, s1, s7
                  remu         s10, a6, a4
                  nop
                  mulhu        a6, tp, s6
                  c.srli       a1, 16
                  mul          gp, s7, s3
                  c.nop
                  lui          t6, 938988
                  div          zero, a1, t1
                  mulhsu       s11, zero, t2
                  or           s11, t2, sp
                  sltiu        gp, s7, 567
                  nop
                  c.addi16sp   sp, -16
                  divu         s4, t3, zero
                  remu         s1, t6, t0
                  srli         s5, s4, 6
                  c.srli       a3, 17
                  c.srli       a3, 15
                  c.add        s10, s7
                  rem          t6, tp, t0
                  nop
                  srli         a3, ra, 13
                  sra          s4, s10, gp
                  auipc        s1, 290250
                  ori          s5, tp, -601
                  c.slli       t5, 3
                  slt          s10, a5, tp
                  xori         a6, s10, -245
                  c.addi16sp   sp, 224
                  div          tp, s7, ra
                  remu         s2, t5, t5
                  c.sub        a4, s0
                  mulhu        s11, s11, s8
                  remu         s1, t3, a1
                  divu         a0, t3, s2
                  srl          zero, s2, gp
                  xori         t5, s10, 364
                  lui          a0, 847201
                  add          s6, s3, s9
                  c.mv         ra, s5
                  mulhu        zero, a5, a0
                  c.or         a4, a5
                  c.sub        a4, a4
                  auipc        ra, 481740
                  c.and        a4, a1
                  sltiu        a0, a5, -137
                  mulh         s5, a2, s5
                  auipc        s0, 797445
                  c.slli       a0, 12
                  srli         s5, a1, 25
                  addi         a4, s5, 1121
                  div          s10, t0, t6
                  nop
                  divu         s9, sp, s8
                  auipc        t6, 237530
                  c.andi       a5, -1
                  divu         t5, t3, s8
                  slli         s1, a3, 23
                  c.li         tp, 9
                  sub          t0, t2, s7
                  c.or         s1, a4
                  sltu         t4, s6, t0
                  c.srai       a4, 20
                  srli         s9, sp, 17
                  ori          t4, s7, -1731
                  xor          sp, t2, t2
                  and          t3, s3, a6
                  c.add        t0, s8
                  andi         s9, a0, -1972
                  c.addi       t1, -1
                  sll          tp, t6, t3
                  mulhsu       zero, s1, s9
                  c.xor        a4, a1
                  mulhsu       s11, a0, ra
                  slt          s8, tp, t3
                  sll          t4, s9, s3
                  c.sub        a5, a1
                  xor          a0, a1, ra
                  sra          ra, t4, a1
                  slti         a4, a4, -447
                  xor          a3, t6, s8
                  c.addi4spn   a3, sp, 720
                  c.add        t6, s4
                  c.sub        a1, s1
                  div          gp, a1, s2
                  addi         a5, a5, -1619
                  slti         a0, s7, 472
                  sltu         s1, s0, zero
                  c.addi16sp   sp, -16
                  c.sub        s0, a0
                  c.srli       a1, 27
                  auipc        s4, 637815
                  sra          zero, s9, s8
                  lui          gp, 585730
                  div          s5, tp, s6
                  divu         s7, t2, ra
                  c.li         tp, 8
                  srl          s11, s11, s4
                  xori         sp, t4, -223
                  remu         ra, sp, s10
                  c.nop
                  c.lui        s6, 5
                  c.li         a1, 11
                  div          gp, s5, s3
                  c.sub        a5, a0
                  c.addi       t1, -1
                  slt          s5, s5, t2
                  andi         s1, t4, -116
                  mul          zero, t3, t4
                  slt          s10, a2, s7
                  c.addi16sp   sp, -16
                  remu         s11, a0, a7
                  c.andi       a3, 31
                  c.add        ra, ra
                  andi         t5, t5, 717
                  andi         a3, a4, -119
                  c.andi       a4, -1
                  c.srai       a4, 8
                  sltiu        a5, gp, -1140
                  auipc        t1, 219686
                  srl          s7, a6, s3
                  rem          s11, zero, s11
                  c.sub        a4, a0
                  andi         s9, a5, 823
                  c.srai       a1, 17
                  srai         t5, a7, 2
                  srl          t6, s8, a7
                  lui          s11, 265307
                  sll          a3, a6, s5
                  srai         s7, a2, 5
                  c.srli       a4, 6
                  slti         a4, s5, -503
                  c.slli       sp, 6
                  nop
                  xor          a7, t3, s3
                  c.li         a1, -1
                  sub          ra, gp, a4
                  c.lui        s2, 14
                  sltiu        t5, s1, 2024
                  mul          s6, t5, sp
                  c.sub        s1, a4
                  slti         tp, t2, 1678
                  srli         s8, a7, 16
                  xor          a3, t1, gp
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           s4, 0x80000000
                  li           a4, 0x80000000
                  li           s6, 0xffffffff
                  li           s11, 0x80000000
                  li           a3, 0x80000000
                  li           t5, 0xffffffff
                  li           s0, 0xffffffff
                  li           a7, 0xffffffff
                  li           s7, 0x4dfd490e
                  div          s11, s11, s4
                  auipc        s0, 30142
                  auipc        s7, 109564
                  lui          s0, 318939
                  divu         s11, s0, s6
                  div          a3, s0, a4
                  auipc        t5, 482092
                  remu         t0, s0, t5
                  sub          s11, a7, s4
                  add          s7, s11, a4
                  auipc        s11, 511071
                  rem          s7, s11, a4
                  auipc        s11, 131183
                  mulh         s7, t0, t0
                  divu         s6, s11, s6
                  add          t0, a3, t5
                  lui          s11, 824530
                  sub          s11, s0, a7
                  addi         a7, t5, 330
                  lui          s6, 921486
                  mulhsu       s4, s0, a7
                  mulhu        t0, s7, s0
                  lui          a3, 1041760 #end riscv_int_numeric_corner_stream_4
                  mulhu        a3, s6, s6
                  srl          tp, t6, sp
                  auipc        s11, 661607
                  mul          s10, tp, zero
                  c.srli       a0, 8
                  xori         t0, s6, -1626
                  sll          t3, s10, a6
                  srai         t0, t3, 5
                  c.nop
                  c.slli       t6, 13
                  c.slli       t0, 2
                  mul          t5, s4, a7
                  xor          t5, s11, s11
                  c.xor        a3, s1
                  c.addi       t5, 8
                  c.srai       a5, 19
                  xori         sp, s5, -1550
                  c.xor        a1, a0
                  slt          s2, gp, t2
                  srai         s11, s9, 5
                  sub          a5, a7, gp
                  mulhsu       s9, s6, t4
                  andi         s5, a3, 772
                  c.li         s0, 1
                  sra          s7, s7, s11
                  sltu         s8, sp, a6
                  divu         t5, t0, a1
                  lui          zero, 217955
                  slt          a5, s8, s11
                  mulh         a3, s6, a6
                  div          sp, s7, s6
                  srai         a6, s6, 13
                  ori          s2, t4, 255
                  srli         a6, s4, 30
                  c.addi       a7, -1
                  c.lui        a7, 27
                  mulhu        a3, s9, gp
                  add          a7, s8, s4
                  c.srai       a3, 13
                  sltu         t3, s4, a7
                  ori          a3, s11, -889
                  remu         s5, t5, t6
                  nop
                  xori         a5, a7, 1226
                  c.add        a0, ra
                  nop
                  c.nop
                  c.lui        s0, 10
                  srai         a1, s1, 11
                  add          tp, a2, s9
                  or           s2, s4, t3
                  ori          s6, zero, 203
                  c.addi4spn   a1, sp, 400
                  mulhu        t4, sp, a7
                  c.mv         t3, s4
                  c.srli       s1, 16
                  srai         zero, t4, 23
                  auipc        ra, 560140
                  mulhsu       a5, a6, s7
                  c.and        a5, s1
                  xor          t5, t2, s0
                  mulhu        t0, t5, a7
                  c.srli       s1, 29
                  c.slli       t5, 7
                  auipc        a4, 717125
                  mulhsu       a0, t0, s8
                  slt          a4, a0, s9
                  div          s4, t0, a1
                  srli         t3, s10, 31
                  c.srai       a1, 15
                  srl          t5, s0, sp
                  c.addi4spn   a3, sp, 688
                  c.slli       tp, 8
                  c.slli       t3, 2
                  and          a1, s7, a2
                  or           a3, zero, t5
                  divu         s0, t0, gp
                  div          s2, sp, s11
                  slt          a3, a5, s7
                  mul          a1, s0, s1
                  c.andi       a3, -1
                  andi         t4, s11, -843
                  srai         s11, s2, 18
                  c.addi4spn   a5, sp, 880
                  andi         s2, a5, 1140
                  xor          a4, tp, a2
                  c.addi16sp   sp, 304
                  sll          a3, t5, s9
                  xori         a3, gp, 1775
                  slt          gp, a0, a0
                  slti         t3, t6, 1800
                  addi         a3, s4, -1500
                  mulhsu       s4, s5, s2
                  c.addi       sp, 29
                  auipc        s7, 264819
                  divu         s8, a3, a6
                  remu         ra, a0, zero
                  c.addi16sp   sp, 96
                  c.addi16sp   sp, 112
                  c.li         s2, 24
                  slti         t1, t1, 1951
                  rem          s0, s8, a4
                  and          s2, a5, s10
                  sra          a7, s8, s0
                  or           a0, t0, s6
                  lui          t0, 587031
                  ori          t6, ra, -879
                  xor          t3, s6, t2
                  c.add        a5, sp
                  c.sub        a5, a1
                  div          s6, s2, s7
                  c.mv         sp, a7
                  sltu         ra, zero, s11
                  add          s10, t2, sp
                  slt          s10, ra, a5
                  c.nop
                  mul          a4, t5, t1
                  c.andi       a5, -1
                  xor          tp, tp, s4
                  srai         s2, s1, 30
                  mul          a1, t6, a4
                  c.and        a0, a1
                  c.li         tp, 9
                  nop
                  srli         s4, a4, 1
                  c.li         a7, 8
                  c.srai       a3, 23
                  c.lui        a7, 3
                  add          a1, sp, t6
                  xori         t6, gp, -1474
                  auipc        gp, 718299
                  mulh         s8, s0, gp
                  mulh         zero, t0, s8
                  c.slli       s1, 15
                  add          a4, t4, ra
                  addi         ra, sp, -998
                  c.and        a4, s1
                  c.lui        s2, 23
                  remu         t1, s5, s8
                  srai         sp, s4, 13
                  xor          tp, sp, s4
                  c.sub        s1, s1
                  c.lui        t1, 5
                  nop
                  c.lui        s7, 17
                  c.addi4spn   a1, sp, 464
                  c.addi4spn   a5, sp, 848
                  add          a3, s0, t1
                  srli         ra, s7, 24
                  andi         t0, s3, 329
                  remu         sp, s1, a1
                  or           t6, a3, t0
                  c.and        a0, a2
                  c.or         a4, s0
                  srai         t4, a5, 15
                  nop
                  c.and        a4, a3
                  c.nop
                  srai         a4, a5, 17
                  slti         s2, zero, -524
                  c.addi4spn   a3, sp, 800
                  divu         s10, t6, t4
                  c.sub        a0, a2
                  srli         t3, a5, 8
                  sll          s11, t3, a2
                  sra          t3, a3, a5
                  c.li         s2, -1
                  mul          t0, s3, a5
                  li           s9, 0x80000000 #start riscv_int_numeric_corner_stream_23
                  li           tp, 0x80000000
                  li           ra, 0x80000000
                  li           a1, 0x2a60413d
                  li           s4, 0x80000000
                  li           s6, 0x80000000
                  li           t4, 0x80000000
                  li           t6, 0x80000000
                  li           sp, 0x6de8e24a
                  li           a6, 0x80f5c915
                  mulhsu       a1, s4, s4
                  remu         s6, tp, tp
                  lui          sp, 570199
                  nop
                  add          sp, s4, tp
                  div          t4, ra, a6
                  mul          s9, s9, sp
                  mul          t6, t4, t4
                  lui          s9, 922188
                  mulh         a6, t6, tp
                  divu         ra, t6, s4
                  add          ra, sp, a6
                  mulh         sp, t6, s4
                  nop
                  nop
                  divu         s6, t6, sp
                  mulh         a1, t4, sp
                  mul          tp, tp, s9
                  div          t6, tp, s6
                  mulh         a1, t6, t6
                  sub          tp, a6, s6 #end riscv_int_numeric_corner_stream_23
                  c.addi       t3, 20
                  c.addi       t3, 22
                  xori         t0, a1, -300
                  sub          a3, s9, a4
                  c.srai       s1, 8
                  c.addi16sp   sp, -16
                  c.lui        gp, 24
                  c.addi16sp   sp, 48
                  slti         tp, s11, -709
                  c.add        a6, a5
                  c.li         s11, -1
                  srai         s4, t6, 21
                  slli         s0, a2, 31
                  c.addi4spn   a4, sp, 240
                  srli         a4, s7, 31
                  slt          s2, a3, s1
                  slli         a7, s3, 28
                  c.and        a5, a3
                  rem          ra, s5, t2
                  c.andi       a1, 16
                  srl          a3, s8, tp
                  divu         s2, s9, tp
                  c.addi4spn   a5, sp, 720
                  c.srli       s1, 7
                  add          a1, sp, t5
                  sll          a5, s1, t3
                  c.srai       a5, 16
                  div          ra, s10, a0
                  c.slli       s6, 17
                  slli         t1, a6, 26
                  c.add        a0, ra
                  c.xor        a0, a3
                  div          t1, a4, s0
                  auipc        tp, 924878
                  mulhu        a4, t4, t0
                  mul          t5, s2, t6
                  sra          s1, s5, s11
                  slt          sp, a2, a1
                  srli         s7, a1, 5
                  c.srai       s0, 16
                  div          s11, s11, t3
                  c.sub        a0, a5
                  c.mv         a6, s1
                  c.li         s2, -1
                  c.xor        a0, s0
                  slli         s0, t5, 3
                  andi         s6, s11, 1623
                  addi         sp, s6, 1486
                  sltiu        a1, t0, 1088
                  slt          s4, a3, s9
                  lui          s8, 716373
                  c.li         s1, -1
                  c.sub        a4, a1
                  ori          a3, t5, 351
                  ori          s9, t4, -315
                  c.addi4spn   a4, sp, 992
                  c.xor        a1, s0
                  c.li         a4, -1
                  c.srli       a4, 26
                  c.srli       a4, 27
                  addi         a1, t5, 882
                  mulhu        s1, t5, s5
                  xor          s4, s2, a5
                  c.srai       a1, 3
                  c.and        a0, a0
                  sll          tp, s3, a4
                  and          tp, s7, t0
                  mul          s2, a7, s7
                  c.and        s1, a0
                  c.lui        s6, 21
                  c.srai       s1, 18
                  nop
                  c.nop
                  and          t3, t0, t0
                  auipc        s11, 100048
                  slt          s11, tp, a1
                  c.sub        a4, a0
                  slt          a4, a2, a0
                  slli         a6, s5, 1
                  sub          a1, t0, a0
                  xori         zero, t1, -1064
                  nop
                  slti         a7, s4, -1602
                  c.addi4spn   s1, sp, 496
                  mulhu        t6, s2, s6
                  c.andi       s1, -1
                  mulhu        s1, s5, a1
                  ori          gp, s8, 430
                  xori         ra, a3, -1834
                  mul          t4, t0, t3
                  c.lui        s9, 19
                  c.addi16sp   sp, 368
                  add          t3, t5, s7
                  xori         a3, a4, 959
                  srli         s1, t1, 26
                  xori         t5, t3, 135
                  srai         s2, t0, 24
                  c.li         a3, -1
                  c.addi       s8, 2
                  c.mv         tp, t3
                  c.mv         t0, t2
                  c.nop
                  c.add        a0, s8
                  ori          s5, zero, -1225
                  remu         s10, s10, s8
                  nop
                  remu         s6, s1, a4
                  add          s1, t6, s7
                  ori          gp, a4, -1103
                  slli         s8, t2, 19
                  add          s8, s6, sp
                  andi         s9, t3, -1339
                  slti         a1, s8, 692
                  c.srai       s0, 5
                  c.li         a7, 6
                  c.or         a5, a5
                  nop
                  mulhsu       sp, tp, s7
                  and          s7, t4, s8
                  slt          s11, s3, t5
                  divu         s8, s2, sp
                  c.li         t4, 10
                  mulhsu       s7, tp, s5
                  or           s7, s7, s3
                  c.mv         a4, a1
                  c.slli       s5, 30
                  c.add        a1, a1
                  c.andi       s0, -1
                  c.sub        a3, a5
                  addi         s5, ra, -2038
                  mulhsu       s2, s1, s11
                  or           gp, a6, s4
                  mulhu        gp, s2, s8
                  xor          a4, s5, s10
                  c.or         a4, a1
                  c.lui        s7, 6
                  and          s5, a0, t2
                  or           t4, a3, s0
                  divu         s4, a6, t2
                  c.slli       t3, 19
                  srli         s10, t2, 14
                  c.lui        s4, 13
                  srli         s5, s9, 16
                  auipc        t0, 672636
                  c.or         s0, a2
                  slt          s11, s0, sp
                  mulhsu       s5, zero, gp
                  c.srli       a5, 3
                  c.srai       s0, 21
                  mulh         s2, a3, s11
                  andi         s1, s7, -1651
                  slt          a5, s0, a0
                  c.andi       a1, 28
                  sltu         gp, s11, t3
                  c.srli       a3, 30
                  c.lui        s1, 19
                  c.slli       s0, 6
                  slli         t4, t0, 2
                  c.and        a1, a1
                  slti         a4, s2, 237
                  sltiu        s5, tp, -845
                  c.xor        s0, s0
                  c.li         s4, -1
                  c.add        s11, a5
                  lui          t6, 251992
                  xor          ra, sp, s1
                  c.sub        s0, a3
                  c.addi16sp   sp, 432
                  andi         s2, s8, -1742
                  c.addi16sp   sp, -16
                  c.xor        a4, a5
                  c.srli       s1, 5
                  c.andi       a3, 13
                  slli         a0, gp, 18
                  c.andi       a0, -1
                  mulh         a5, s7, s4
                  c.li         s4, 16
                  c.slli       a5, 16
                  slt          s0, sp, s0
                  sltiu        t6, ra, -1995
                  c.lui        t1, 18
                  sll          t5, s10, t4
                  c.lui        a4, 6
                  c.andi       a3, -1
                  c.xor        a3, a3
                  slti         zero, s10, -1199
                  mul          s7, a3, t3
                  c.addi16sp   sp, -16
                  c.srai       a5, 4
                  c.srai       a3, 31
                  srl          s7, t1, a1
                  nop
                  sra          s6, s6, a6
                  c.slli       s11, 1
                  remu         t1, zero, tp
                  addi         sp, t0, -737
                  slti         a5, ra, -1181
                  slt          s4, tp, s3
                  add          s2, s2, sp
                  c.xor        a3, s0
                  c.sub        a1, a5
                  c.addi4spn   s0, sp, 336
                  mul          t0, a1, s3
                  nop
                  c.xor        a1, a1
                  divu         s2, ra, zero
                  auipc        s11, 537867
                  xori         t4, gp, 502
                  c.sub        a0, a1
                  divu         a5, tp, s11
                  c.srai       a0, 15
                  addi         gp, a7, -1607
                  sub          t3, a3, s2
                  addi         s2, a4, 993
                  addi         s1, a2, -1114
                  add          t1, zero, a3
                  c.mv         s6, t5
                  mul          s2, t3, zero
                  c.slli       a1, 9
                  slli         s0, a5, 2
                  lui          ra, 723617
                  remu         ra, a4, t2
                  c.addi16sp   sp, -16
                  mulh         t3, a4, s0
                  c.xor        s0, s0
                  c.srli       a0, 20
                  slti         zero, a6, -1776
                  c.or         a3, a0
                  divu         gp, t4, s1
                  slli         s11, t6, 10
                  xor          s10, a0, tp
                  sll          s7, a0, a5
                  c.xor        s1, a2
                  sra          tp, gp, t4
                  add          s2, a4, ra
                  c.lui        s5, 20
                  c.slli       a0, 4
                  slti         a4, a6, 1582
                  c.xor        a4, a2
                  c.or         a3, a0
                  mulhu        t5, s9, a6
                  divu         s6, t0, s6
                  srl          s2, t2, a4
                  c.srai       a4, 1
                  xor          s11, s10, a6
                  slt          a4, s6, a4
                  c.srai       a0, 16
                  mulhsu       s2, gp, s1
                  remu         s5, s5, a2
                  xor          s2, s4, t5
                  ori          s1, s3, 1784
                  c.and        s1, a0
                  divu         t4, s9, a5
                  xori         s0, gp, 763
                  andi         s10, s9, -1607
                  mulhsu       t3, t2, t5
                  c.sub        a3, s0
                  andi         s1, a7, 1786
                  sltiu        s5, s5, 723
                  srli         s11, t4, 27
                  remu         a6, a0, s1
                  c.andi       s1, -1
                  c.addi16sp   sp, 128
                  mul          s8, t3, s8
                  c.srli       a3, 28
                  c.addi       t4, -1
                  c.xor        a1, a4
                  c.mv         a5, t5
                  div          a6, sp, a0
                  mulh         t1, t2, s10
                  mulhu        s5, s4, sp
                  mulhu        s7, sp, s0
                  c.xor        s1, s1
                  srai         t4, t6, 25
                  addi         a7, gp, 1923
                  sra          s9, gp, t2
                  c.addi4spn   s0, sp, 816
                  c.sub        a1, a2
                  mul          a0, s7, s3
                  or           tp, t1, sp
                  c.or         a1, a0
                  div          s1, s7, t4
                  or           a1, s0, t0
                  srai         a6, ra, 22
                  mulhsu       ra, t3, sp
                  mulhu        tp, tp, tp
                  srai         s10, s0, 22
                  c.mv         a6, s7
                  divu         t1, s3, t4
                  c.srai       s1, 30
                  c.or         a1, a3
                  c.addi4spn   s1, sp, 176
                  andi         t6, t6, -795
                  c.xor        a4, a1
                  ori          s7, ra, 2004
                  add          a5, gp, s5
                  add          t4, s0, s3
                  rem          a5, s5, s11
                  srai         s4, tp, 9
                  and          tp, a2, s3
                  c.addi4spn   a0, sp, 544
                  c.addi4spn   a3, sp, 992
                  c.addi16sp   sp, -16
                  c.andi       a4, -1
                  xori         a5, tp, 2014
                  c.slli       s0, 26
                  mul          s8, s8, s11
                  xori         t1, ra, 653
                  slti         s0, t6, -112
                  slli         a0, a4, 16
                  mul          a7, s9, a4
                  c.sub        a4, a5
                  divu         a4, s5, s8
                  srai         s0, a5, 28
                  srai         s2, a1, 17
                  c.and        a5, a3
                  sltiu        a4, s11, -1561
                  sltu         a0, t4, s7
                  srli         s2, s10, 3
                  remu         s0, t6, s5
                  srl          a6, t3, a4
                  c.sub        s1, a1
                  mulh         tp, a7, tp
                  add          tp, s3, s3
                  and          s1, a5, a0
                  andi         t6, a3, -1374
                  or           s6, a4, sp
                  slt          t3, t3, t6
                  lui          t6, 668911
                  auipc        s11, 114228
                  c.add        tp, t1
                  addi         s4, a3, 2022
                  c.andi       a0, 31
                  slt          sp, a4, t4
                  li           s5, 0xffffffff #start riscv_int_numeric_corner_stream_17
                  li           tp, 0x4dfd8a73
                  li           a1, 0xcd10dda8
                  li           s9, 0x80000000
                  li           t5, 0x47fd9a1a
                  li           s8, 0xffffffff
                  li           s2, 0xffffffff
                  li           s7, 0xffffffff
                  li           sp, 0xd0c53808
                  li           a5, 0xffffffff
                  remu         s8, t5, s2
                  addi         a1, s9, -1505
                  mulhsu       a1, s9, s5
                  auipc        s7, 486014
                  nop
                  sub          s7, s5, a1
                  auipc        s7, 357653
                  mulhsu       a5, s8, s5
                  divu         sp, a5, s7
                  mul          tp, tp, t5
                  addi         s8, a1, 1163
                  nop
                  mulhu        t5, s8, s2
                  mul          t5, s2, s2
                  divu         tp, tp, s8
                  mulh         a5, a1, s7
                  rem          s7, s7, s7
                  auipc        s5, 151094
                  add          s8, a5, a1
                  divu         s9, s7, a1
                  mulhsu       s8, s8, s5
                  mulhu        s7, t5, s7 #end riscv_int_numeric_corner_stream_17
                  c.slli       a4, 22
                  ori          a1, a4, 1446
                  addi         s10, ra, 634
                  c.or         s1, a5
                  div          t0, s0, a3
                  or           s5, sp, s3
                  add          s9, s1, s4
                  addi         s8, t6, -1560
                  auipc        s5, 890021
                  div          a4, a0, s4
                  slli         t0, a7, 6
                  srli         ra, t5, 9
                  c.or         a1, a3
                  xori         a4, s1, 1612
                  remu         a5, a0, a7
                  xor          tp, s7, s9
                  c.srai       a5, 3
                  c.srli       a3, 16
                  slli         s1, s9, 9
                  rem          a3, s6, gp
                  mul          a1, s9, a4
                  c.li         s6, -1
                  addi         t0, s7, -722
                  c.addi16sp   sp, 16
                  c.or         s1, a0
                  slli         t5, sp, 23
                  c.srli       a4, 13
                  or           s7, ra, a2
                  addi         a1, t3, 823
                  xor          s9, sp, a1
                  addi         t3, gp, 1028
                  lui          zero, 950442
                  sltu         s10, t5, s9
                  c.li         s4, -1
                  c.addi4spn   s1, sp, 928
                  nop
                  c.andi       s1, -1
                  rem          t3, a5, t2
                  c.andi       a1, -1
                  c.or         a0, a2
                  c.mv         s2, a6
                  nop
                  c.lui        s1, 16
                  mulhu        t3, a0, s11
                  c.addi       s10, -1
                  div          ra, tp, sp
                  or           a5, s1, t1
                  c.and        a5, s1
                  sll          s7, a3, s10
                  c.or         a0, a1
                  add          a1, t5, s11
                  c.srli       a3, 25
                  srai         ra, s5, 3
                  or           a6, t6, t2
                  rem          a5, a6, s0
                  or           t0, zero, a5
                  c.add        s1, t5
                  divu         a5, s9, s5
                  mulh         s5, s9, s2
                  xori         gp, s0, 1363
                  c.slli       a3, 27
                  slt          a3, t6, t1
                  sltu         t0, a1, s4
                  c.addi16sp   sp, -16
                  c.or         a4, a0
                  c.xor        a3, a4
                  c.slli       t5, 10
                  andi         zero, s3, -1559
                  c.slli       a0, 21
                  srai         a0, s6, 18
                  xor          s11, s0, s7
                  ori          s11, s8, -1678
                  and          t3, t5, a0
                  and          a0, a6, a0
                  mul          a1, t5, gp
                  andi         s0, ra, 782
                  slli         tp, t4, 8
                  xor          s0, a6, ra
                  sll          s2, gp, a4
                  mulhsu       t3, a0, s1
                  mulhu        sp, s11, a7
                  sltiu        s5, s4, 1993
                  c.mv         t4, sp
                  add          sp, s3, t4
                  srli         s11, sp, 31
                  xori         zero, s8, 1012
                  c.andi       s1, 3
                  c.slli       t1, 1
                  mulh         t0, t3, t6
                  c.or         a0, s1
                  mulhu        a7, t6, a0
                  sra          a3, a5, s1
                  c.mv         a6, t3
                  c.srli       a5, 25
                  c.nop
                  auipc        gp, 48459
                  xor          s5, s2, ra
                  sll          zero, t0, s3
                  c.lui        a0, 31
                  c.li         a6, -1
                  divu         s0, s10, t0
                  sra          a1, a1, s3
                  sra          tp, sp, ra
                  slli         a0, t6, 24
                  divu         s7, s8, a5
                  sltu         a4, s2, a2
                  c.li         t0, 29
                  add          s2, a0, s1
                  c.srli       s0, 31
                  c.srli       s0, 13
                  slti         s10, s6, 1911
                  srl          s5, a7, s4
                  and          s11, a0, t6
                  c.li         a4, -1
                  c.addi16sp   sp, -16
                  remu         s6, t3, a2
                  srl          s11, a3, s0
                  lui          gp, 267616
                  c.mv         tp, a2
                  c.xor        a3, a4
                  xori         a6, s3, 1736
                  add          s2, s3, t3
                  slti         a5, s2, 699
                  and          zero, ra, a1
                  c.lui        a0, 15
                  mul          s7, s9, t2
                  div          a7, s2, t5
                  add          s1, s0, a0
                  c.sub        a4, a0
                  ori          tp, s6, -380
                  or           s8, s7, s8
                  auipc        a1, 575726
                  c.andi       a0, -1
                  divu         sp, t6, sp
                  slti         t5, a7, 1612
                  mul          s11, t5, s11
                  and          t6, gp, a1
                  mulh         a6, s3, s5
                  or           s8, t3, s11
                  c.andi       a0, 13
                  c.li         t0, 5
                  xori         a7, a0, -1242
                  div          sp, a0, t1
                  xor          a7, a2, s4
                  srai         a6, zero, 7
                  slti         zero, s9, -1357
                  c.slli       s6, 10
                  c.sub        a3, a1
                  mulhsu       zero, t2, a6
                  rem          t5, s0, s9
                  c.srli       a4, 11
                  mulhsu       tp, s11, s10
                  srli         tp, s1, 0
                  lui          s7, 828165
                  andi         a7, s11, -1821
                  c.slli       a4, 21
                  or           s7, t1, a6
                  mulh         t5, gp, ra
                  andi         a4, a3, -662
                  c.addi16sp   sp, -16
                  div          a7, a2, s10
                  auipc        a6, 893090
                  remu         t3, s5, s2
                  mulh         s6, s8, a4
                  c.xor        a5, a5
                  srai         a4, a1, 17
                  srl          gp, a3, s11
                  c.sub        s1, a2
                  xor          gp, s1, t0
                  slti         s1, s10, 1922
                  xori         a6, a0, 1773
                  c.andi       a5, -1
                  c.add        s5, s4
                  mulhsu       t3, a4, a6
                  slli         s8, ra, 12
                  sltu         t1, t3, s3
                  c.and        a3, a0
                  addi         a3, t4, 1871
                  addi         t1, s7, 1563
                  c.addi       tp, -1
                  nop
                  c.xor        s0, a2
                  mulhu        a5, t5, s2
                  c.lui        s11, 21
                  c.srai       a3, 31
                  c.mv         s4, s10
                  slti         s9, a2, -1543
                  c.slli       t4, 3
                  or           s0, a7, a5
                  xori         gp, s9, 738
                  c.li         gp, -1
                  slti         s6, sp, 22
                  auipc        s1, 622197
                  slli         s2, a6, 4
                  slli         gp, s2, 19
                  c.add        t3, s9
                  mulh         tp, a6, s11
                  auipc        t5, 1020253
                  rem          a0, a5, s3
                  c.srli       a3, 22
                  c.add        t1, s11
                  c.slli       t5, 1
                  c.srli       a1, 15
                  mul          s11, t0, s5
                  c.mv         t5, t0
                  or           s2, t4, t5
                  c.addi16sp   sp, 480
                  lui          zero, 517164
                  c.slli       sp, 2
                  xori         s0, s7, -868
                  auipc        s9, 801741
                  addi         s1, ra, -13
                  c.sub        a1, a2
                  srli         s9, s7, 6
                  c.addi       s2, 13
                  xori         gp, a2, 1044
                  c.addi       s8, -1
                  sll          a1, s2, s0
                  c.sub        a3, a4
                  div          s1, gp, a3
                  sltu         t5, s3, s3
                  c.sub        a3, a0
                  c.slli       t5, 13
                  slti         s2, a5, -907
                  c.srli       a3, 14
                  c.addi4spn   a0, sp, 272
                  divu         a5, s2, t3
                  sltiu        a5, a4, -911
                  divu         s7, s4, a3
                  rem          s10, s4, a7
                  and          t3, s4, a2
                  c.lui        t4, 28
                  div          s1, a7, s7
                  c.srli       a5, 27
                  c.srli       a4, 30
                  slt          s5, t4, a0
                  c.addi       s6, 29
                  nop
                  divu         sp, s2, s6
                  ori          a3, t4, 1629
                  andi         a4, a3, -340
                  divu         s5, s6, t5
                  addi         ra, s9, -1236
                  c.and        s1, a4
                  nop
                  c.xor        a4, s1
                  remu         ra, a0, zero
                  mul          a0, t5, a7
                  srai         s10, ra, 0
                  rem          zero, t0, gp
                  c.slli       t6, 13
                  c.srli       a0, 3
                  remu         gp, a2, t2
                  sra          gp, s1, s9
                  div          s0, t3, t4
                  srl          t4, s6, s10
                  nop
                  c.srli       a3, 7
                  rem          s0, a6, gp
                  sra          a7, t5, sp
                  c.addi       s0, 18
                  remu         t6, t0, s9
                  and          a7, t6, s4
                  slt          a4, s2, a4
                  c.li         s0, -1
                  lui          ra, 724578
                  c.and        a3, s1
                  srli         zero, s8, 4
                  sra          a1, t1, a5
                  srai         a5, zero, 7
                  mul          s2, a5, a4
                  xori         s9, a0, -685
                  c.addi       sp, 10
                  c.mv         t1, t2
                  srl          a5, ra, s5
                  xori         t3, a6, 1304
                  xori         s8, t3, 228
                  mulhu        ra, zero, ra
                  c.srai       s0, 13
                  mulhu        s11, a2, t4
                  auipc        s5, 717881
                  nop
                  c.srai       a3, 15
                  sra          s6, s11, s11
                  sub          s7, t0, s3
                  c.or         s0, s0
                  rem          s11, t5, t4
                  xor          s4, t4, s9
                  slti         gp, tp, 300
                  add          s2, sp, s7
                  remu         t3, gp, a6
                  auipc        a3, 254667
                  mul          tp, gp, s6
                  addi         zero, s0, 632
                  srl          s1, s4, t3
                  c.mv         s8, s5
                  slli         s8, s10, 15
                  mulhsu       gp, a1, a6
                  andi         s10, s6, 1792
                  mulhsu       s10, zero, s1
                  slli         s6, sp, 7
                  and          s4, s1, t4
                  mulhu        a4, s7, t6
                  lui          s8, 415963
                  remu         s11, s1, a2
                  mulhu        sp, s4, t0
                  add          s7, ra, s3
                  sltu         t1, t2, s11
                  mulhu        s5, t4, tp
                  srli         gp, ra, 18
                  mulhu        s9, tp, s5
                  lui          tp, 24222
                  srl          sp, sp, gp
                  c.addi4spn   a4, sp, 960
                  add          tp, a6, gp
                  or           tp, s5, s9
                  srl          s11, t4, ra
                  mulhsu       s7, t3, t6
                  slti         s8, zero, 1209
                  c.srli       a4, 14
                  lui          s0, 851861
                  sub          s7, t4, s4
                  c.li         a4, 9
                  mulhu        s9, a0, s8
                  c.xor        a1, a5
                  slt          s5, a2, a1
                  c.slli       s5, 23
                  mulh         a7, a1, zero
                  mulhu        a0, s11, a5
                  sll          a3, a2, s7
                  add          sp, t4, tp
                  c.addi4spn   s0, sp, 320
                  c.lui        t4, 19
                  lui          s9, 383158
                  auipc        a6, 156470
                  sll          t4, a0, sp
                  c.mv         a7, s1
                  c.xor        s0, a4
                  c.and        a0, a5
                  auipc        s2, 380256
                  nop
                  sub          s8, t5, s1
                  slti         s0, sp, -1324
                  div          a3, s7, s3
                  addi         s9, t0, -1531
                  c.addi4spn   a3, sp, 496
                  mulh         a6, a2, a3
                  auipc        a6, 292142
                  remu         t1, t0, s1
                  and          s2, s2, sp
                  c.andi       a1, 6
                  sub          gp, zero, gp
                  rem          t3, t6, s7
                  c.li         s7, 15
                  mulhu        t5, gp, s0
                  c.and        s0, a1
                  div          zero, zero, a6
                  srai         t0, s4, 24
                  c.addi       a3, -1
                  lui          t1, 442474
                  and          a5, zero, a1
                  lui          s4, 370902
                  c.srai       a3, 26
                  remu         s7, a6, s0
                  srl          t1, a2, s0
                  c.addi4spn   a4, sp, 272
                  or           t3, t5, a3
                  srl          s7, s5, ra
                  srai         a5, a4, 16
                  srl          t6, s0, s10
                  or           a4, t3, t3
                  sltiu        s1, s11, -1397
                  c.mv         t0, s11
                  sltu         a4, s7, s7
                  mulhu        s11, s2, a2
                  srl          t6, a5, s9
                  and          a7, t3, s9
                  auipc        ra, 498169
                  rem          s6, s0, s1
                  srli         s10, a0, 9
                  xor          s1, a5, s0
                  srl          t5, a6, t0
                  c.add        s7, t3
                  c.srai       s0, 30
                  slli         s10, s1, 7
                  mulhsu       t0, s10, s5
                  div          s6, s5, s8
                  srl          tp, s8, t2
                  c.mv         a3, s5
                  lui          t5, 976332
                  c.addi4spn   a4, sp, 960
                  c.sub        a0, s0
                  slti         s10, a4, 1177
                  c.srai       a4, 2
                  add          tp, ra, zero
                  srli         t5, a3, 30
                  divu         a4, s8, gp
                  xor          a3, s7, s6
                  c.li         s0, 26
                  c.andi       s0, 16
                  and          s8, s6, t0
                  lui          s9, 990844
                  divu         zero, s8, t2
                  and          t0, a5, t1
                  c.and        s0, s1
                  c.srai       a1, 16
                  div          a1, s7, t2
                  c.addi16sp   sp, -16
                  rem          s5, s9, s6
                  slli         a4, s5, 21
                  c.andi       s1, -1
                  rem          a5, a1, tp
                  sra          t1, gp, t2
                  c.or         s1, a0
                  add          a5, tp, s6
                  remu         ra, s2, ra
                  addi         t4, a4, 676
                  c.srli       a0, 5
                  xori         sp, a3, -542
                  rem          a5, s5, a3
                  mulhsu       a3, s5, tp
                  nop
                  div          t3, t4, t2
                  divu         t0, t5, a1
                  c.and        s0, s1
                  c.xor        s0, s0
                  xori         t6, s3, -1694
                  divu         t6, s10, s1
                  remu         s11, t1, t0
                  xor          s6, s5, t0
                  nop
                  or           a4, s2, t1
                  sll          a0, t6, a4
                  add          t5, t1, t3
                  slli         sp, t4, 10
                  c.mv         t3, a4
                  c.and        s0, s1
                  sll          t6, gp, t3
                  remu         t1, gp, t5
                  c.sub        a4, a2
                  divu         s11, t2, s9
                  xor          t0, a6, t1
                  c.andi       a5, 18
                  div          a3, s11, zero
                  divu         ra, a6, s0
                  c.li         t6, -1
                  slt          ra, a2, a4
                  slt          s7, s0, s11
                  c.addi16sp   sp, 240
                  srl          t1, s10, t3
                  sltu         a5, a4, tp
                  c.li         t3, 9
                  c.xor        a4, s1
                  c.addi4spn   a0, sp, 784
                  remu         sp, t1, a6
                  c.andi       a3, 27
                  c.addi       t6, 24
                  c.mv         t5, a4
                  c.add        s1, sp
                  c.mv         s8, s11
                  xor          a4, t6, t4
                  slli         t4, a1, 21
                  mul          a0, s1, s2
                  addi         s7, gp, -1042
                  srai         s6, s2, 27
                  nop
                  mul          t6, a3, s0
                  add          t4, t3, s9
                  xori         t0, s10, 539
                  addi         s4, a6, 1396
                  srai         a5, a4, 15
                  mul          a1, s4, a0
                  c.addi4spn   a0, sp, 240
                  c.or         s0, s0
                  srai         a0, a4, 25
                  mul          a3, a2, a6
                  c.addi4spn   a3, sp, 464
                  add          a6, s1, s0
                  rem          s8, a7, a5
                  sll          a3, tp, s8
                  remu         ra, t5, t2
                  c.lui        gp, 10
                  xori         a3, s7, -1968
                  sll          t1, a1, s10
                  c.li         t1, -1
                  c.slli       s2, 22
                  c.andi       a4, -1
                  nop
                  srl          s7, s6, t3
                  mulhsu       s5, s7, s6
                  c.addi       a0, 5
                  c.srai       s0, 20
                  c.nop
                  ori          s1, s0, -1080
                  mul          t0, a0, t5
                  div          s7, s2, zero
                  sltu         a7, t0, s3
                  mulhu        t1, s6, zero
                  c.and        a1, a1
                  ori          s4, a2, 93
                  ori          t3, t4, 1161
                  mulhu        s9, s1, a0
                  divu         tp, s10, ra
                  c.srai       a0, 13
                  sltu         s0, s7, s6
                  c.srai       a4, 2
                  lui          t1, 651688
                  mul          zero, s2, a0
                  or           s5, a3, a3
                  c.andi       a0, 13
                  slti         a6, s8, 1560
                  c.slli       s0, 15
                  remu         ra, s5, a4
                  c.or         a4, s0
                  c.and        s0, s1
                  and          zero, t0, t3
                  sub          t0, t6, a4
                  c.and        a5, a1
                  c.addi16sp   sp, 416
                  xor          a3, s7, s3
                  divu         t6, t5, a0
                  mulhsu       t0, s2, s4
                  c.or         a4, a0
                  c.srli       a4, 14
                  mulhu        a3, s8, t1
                  slti         tp, s4, -1207
                  mulhsu       a3, s5, s7
                  mulh         ra, sp, t4
                  c.slli       t5, 27
                  c.li         t5, -1
                  c.and        s1, a3
                  srl          t0, s1, s5
                  c.mv         s5, a7
                  c.addi4spn   a5, sp, 304
                  slt          t0, t5, ra
                  slti         s5, s0, 43
                  xor          zero, s3, a3
                  slt          a6, sp, a4
                  c.slli       s2, 7
                  sll          s10, a2, a5
                  c.nop
                  c.and        s0, a3
                  slti         s11, a7, 1853
                  c.addi4spn   a3, sp, 800
                  c.srli       a5, 31
                  auipc        s9, 103569
                  mulhsu       a3, zero, gp
                  li           a1, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           s11, 0x8555fd6f
                  li           a6, 0x80000000
                  li           s1, 0x0
                  li           a5, 0x80000000
                  li           s6, 0xffffffff
                  li           a3, 0x23bce147
                  li           s9, 0x0
                  li           s0, 0x0
                  li           t1, 0xffffffff
                  lui          s9, 752459
                  lui          s11, 796558
                  mulhsu       a5, s6, a3
                  sub          s0, a6, s6
                  mulhu        t1, s11, a1
                  sub          s1, s6, s1
                  lui          t1, 815043
                  mulhsu       s6, s11, s1
                  mulh         t1, a6, a5
                  mulhsu       a1, a6, a3
                  remu         t1, a6, a3
                  div          s1, a6, t1
                  divu         a3, s6, a5
                  lui          t1, 862629
                  mulh         a3, s9, s6
                  lui          a3, 579883
                  sub          a6, a1, a3
                  mul          a6, a5, a5
                  lui          a3, 286910
                  auipc        s6, 48606
                  sub          s11, a6, s6
                  mul          a3, s1, s0
                  lui          a3, 975838
                  mulhsu       s6, a1, a5
                  mulh         s1, a5, s6
                  auipc        a3, 262715
                  auipc        a1, 364387
                  auipc        a6, 375648 #end riscv_int_numeric_corner_stream_12
                  xori         s0, s7, 975
                  sra          s1, a3, gp
                  c.li         a5, -1
                  c.sub        s0, s1
                  remu         s10, a7, s3
                  sltiu        gp, s6, 113
                  c.addi4spn   a5, sp, 656
                  remu         a4, a3, t5
                  nop
                  slti         a7, t0, -181
                  add          a7, t4, a4
                  srli         s7, t4, 16
                  sltiu        t4, zero, -609
                  sltiu        a6, ra, -1050
                  andi         a3, t1, 1252
                  c.srai       a3, 13
                  c.addi16sp   sp, 480
                  rem          s9, s2, a6
                  or           s7, s1, ra
                  xor          s5, s0, a7
                  and          a0, s1, a1
                  auipc        tp, 152717
                  sll          t6, s8, a2
                  srl          a1, s10, a1
                  c.or         s1, a5
                  addi         ra, a6, 581
                  xor          s11, gp, sp
                  divu         a0, s10, t1
                  sra          a4, s10, s10
                  srl          t4, t4, zero
                  c.or         s1, s0
                  c.li         a7, 26
                  ori          t6, t4, 569
                  divu         s11, s9, a2
                  c.slli       s0, 28
                  sltiu        t4, s2, -901
                  srli         s11, t0, 22
                  c.addi16sp   sp, 320
                  srai         s5, sp, 0
                  auipc        t5, 827037
                  sll          a5, a5, t6
                  slli         t3, a0, 27
                  addi         s10, t3, -1800
                  auipc        s7, 974472
                  sltiu        s10, a2, 1318
                  c.nop
                  slli         t6, s3, 9
                  auipc        s11, 999941
                  c.addi       s10, -1
                  divu         a3, t0, s3
                  c.nop
                  srli         a7, t2, 10
                  mulh         s1, t0, tp
                  mul          s6, a2, t4
                  c.andi       a1, -1
                  c.srai       a3, 10
                  c.add        tp, tp
                  divu         t3, s1, s7
                  remu         s11, t0, gp
                  c.or         s1, a1
                  sltu         sp, a6, s9
                  slt          a5, s11, s6
                  srai         ra, s8, 22
                  c.addi4spn   a1, sp, 576
                  srli         a5, a3, 20
                  sltiu        s11, s2, -1531
                  sra          s2, s11, a7
                  mul          s5, t4, tp
                  mulhu        s2, t4, s6
                  or           gp, a6, a5
                  or           t3, t5, t2
                  lui          t0, 786675
                  mul          t0, s3, a1
                  lui          s1, 964617
                  srli         ra, a5, 11
                  mul          s10, s7, tp
                  slt          t0, t3, s11
                  c.andi       s1, 19
                  sub          t5, t4, s10
                  add          s0, t6, s2
                  mulh         a5, s10, t0
                  c.slli       a4, 26
                  c.or         a5, a5
                  ori          a6, tp, -384
                  remu         sp, s9, gp
                  c.sub        a0, a1
                  sltu         t6, a6, a2
                  and          s11, a4, sp
                  slti         s2, gp, -857
                  slt          a7, a3, a6
                  c.and        a1, a0
                  sll          t0, a4, t5
                  c.and        s1, a4
                  remu         a4, s9, zero
                  slli         tp, tp, 7
                  sll          t4, t5, gp
                  c.xor        a0, s1
                  c.sub        a1, a4
                  c.or         s1, a2
                  c.addi16sp   sp, -16
                  slti         s5, s11, -801
                  c.sub        a0, a3
                  srli         t5, s3, 24
                  c.add        s9, a6
                  ori          s8, zero, 211
                  c.and        s1, a3
                  c.addi4spn   a4, sp, 560
                  c.srai       a5, 8
                  c.addi4spn   a1, sp, 848
                  c.or         s1, a0
                  c.li         gp, -1
                  c.srai       a0, 26
                  c.lui        t0, 6
                  c.li         s10, -1
                  addi         a1, t1, -1688
                  c.xor        a4, a3
                  mulhu        s4, s7, a2
                  c.srli       a0, 8
                  c.andi       a4, -1
                  c.add        s1, t3
                  and          ra, a0, s1
                  mul          t5, gp, s0
                  remu         s1, s4, a2
                  sub          t4, t6, s10
                  c.addi4spn   a1, sp, 960
                  mulhu        s6, s9, t3
                  sltiu        ra, s1, 1179
                  c.add        a0, s8
                  c.addi       t0, 18
                  xori         t4, s11, 1444
                  addi         s5, tp, -500
                  nop
                  addi         a4, s2, -1571
                  c.add        s8, a3
                  remu         t4, s7, s1
                  srai         t4, t6, 16
                  mulhu        ra, t0, t6
                  addi         zero, t3, -701
                  mulhsu       s7, s11, s2
                  c.and        a3, s1
                  c.and        a5, a0
                  mul          a1, s1, t6
                  andi         zero, a7, -1926
                  divu         a6, s0, sp
                  slti         s0, s10, -1343
                  ori          s8, s1, 1791
                  sltu         t6, a4, a1
                  nop
                  xor          a3, gp, s10
                  divu         s8, gp, s7
                  srl          t3, a4, a1
                  rem          tp, gp, s0
                  srai         gp, a7, 30
                  c.xor        a3, a1
                  c.addi       t1, -1
                  lui          s5, 4910
                  mul          a3, s3, t0
                  c.addi4spn   a5, sp, 816
                  sltu         t1, t5, t2
                  mulhsu       ra, a5, s10
                  c.addi       sp, -1
                  or           sp, t1, s6
                  addi         zero, a6, 52
                  c.srli       a1, 19
                  rem          gp, a0, s7
                  srli         a3, gp, 15
                  rem          s9, s3, s10
                  sltiu        a6, a7, -1333
                  c.srli       s0, 24
                  lui          s11, 255570
                  slt          s0, t4, s6
                  auipc        t6, 751011
                  mulh         s7, s10, t1
                  or           a4, a6, s4
                  and          t6, t4, a7
                  sub          s1, s2, a6
                  sll          a5, s6, a1
                  c.srai       a3, 12
                  div          s1, zero, a2
                  c.or         a3, s1
                  c.addi       s7, -1
                  andi         s11, s1, -1983
                  srli         t0, s11, 26
                  c.srli       a1, 27
                  slli         a4, s10, 8
                  c.add        a7, t6
                  srai         t6, tp, 20
                  c.and        a4, a3
                  xor          a6, t3, s7
                  c.add        a0, sp
                  mulhsu       zero, s2, s7
                  srai         t5, t1, 1
                  mulhu        t3, sp, s5
                  andi         t1, a0, 1425
                  c.srli       a1, 7
                  c.lui        a5, 12
                  slt          tp, t2, t4
                  mulhsu       a0, a6, a1
                  c.mv         t1, t2
                  c.srli       s0, 2
                  mulhu        s5, zero, t6
                  c.addi       a3, -1
                  div          s4, sp, t4
                  c.srai       s0, 30
                  slti         s2, t2, -429
                  c.andi       s0, 30
                  c.add        s1, s11
                  c.sub        a4, a0
                  slti         s2, a7, -1939
                  c.add        t5, s0
                  lui          s10, 692624
                  sub          a6, s7, s8
                  srli         zero, s3, 31
                  xori         t4, s10, 746
                  mulh         gp, s0, s1
                  or           s1, t0, s3
                  c.mv         t5, s10
                  c.mv         s5, ra
                  xor          t0, s10, sp
                  slti         a0, s4, 1616
                  srli         t3, zero, 5
                  xor          ra, sp, tp
                  auipc        s11, 227607
                  c.srli       a1, 16
                  and          t1, ra, s8
                  andi         a7, sp, -15
                  mulhsu       t5, t5, t4
                  srl          s10, s3, ra
                  c.addi4spn   a3, sp, 64
                  slt          s0, a2, s6
                  addi         gp, zero, -1916
                  c.addi16sp   sp, -16
                  c.srli       a3, 16
                  or           s2, s1, sp
                  c.sub        a5, a0
                  lui          s7, 248689
                  c.addi4spn   a3, sp, 176
                  c.slli       t5, 17
                  c.srai       a0, 16
                  slt          s5, zero, s9
                  divu         s9, t0, s10
                  addi         s10, gp, 232
                  c.slli       a1, 12
                  lui          s8, 555450
                  sltu         a4, t1, zero
                  c.addi16sp   sp, -16
                  add          t0, s3, t0
                  ori          a1, gp, -355
                  c.addi4spn   a3, sp, 720
                  rem          gp, sp, a6
                  c.srai       s1, 8
                  c.slli       s7, 12
                  addi         a4, s1, 1904
                  andi         s8, tp, -2017
                  xori         a4, s4, 1416
                  andi         a3, a3, 1495
                  c.addi16sp   sp, -16
                  addi         gp, t0, 1824
                  c.nop
                  slli         t6, a0, 21
                  auipc        t4, 442714
                  c.addi       tp, -1
                  sltu         a6, s4, t5
                  mulh         s2, a7, a5
                  slli         t5, gp, 7
                  nop
                  srl          t6, sp, s11
                  addi         t1, a4, 570
                  c.and        s1, a0
                  c.addi4spn   s0, sp, 400
                  lui          a6, 170617
                  c.addi       sp, -1
                  andi         s9, s2, 1072
                  nop
                  div          a0, t5, s4
                  c.slli       s5, 6
                  divu         a4, s7, ra
                  c.srli       a0, 30
                  rem          t4, sp, a7
                  mulhu        t4, s1, a3
                  or           t3, s10, tp
                  c.nop
                  div          s0, zero, s11
                  sll          t3, t1, s11
                  mul          s7, s11, t0
                  c.lui        a4, 16
                  c.and        s1, s0
                  ori          gp, tp, -1737
                  c.li         s6, -1
                  srli         s4, a1, 25
                  srli         s10, t3, 27
                  c.mv         a0, t2
                  c.lui        s5, 11
                  mulhu        s2, a0, a4
                  srai         a0, t4, 26
                  xor          s9, s6, s3
                  auipc        a4, 624298
                  add          a7, s10, s3
                  lui          a7, 738781
                  c.mv         a3, a2
                  andi         a7, t0, -55
                  c.lui        s8, 26
                  c.nop
                  auipc        t1, 862393
                  slli         s8, a3, 5
                  c.addi4spn   a5, sp, 112
                  auipc        a0, 196096
                  xori         s10, s2, -759
                  or           s9, s5, a5
                  ori          tp, t4, -1935
                  c.srli       s1, 7
                  mulhu        ra, a1, s1
                  add          s4, s8, s8
                  c.addi16sp   sp, -16
                  remu         a6, s6, s8
                  mulh         s10, s11, tp
                  c.srli       a4, 14
                  mul          a3, zero, s0
                  sltiu        a6, s0, -1302
                  c.addi4spn   a1, sp, 848
                  xor          s2, t4, a6
                  srl          t0, s2, s0
                  c.addi16sp   sp, 320
                  c.srai       a1, 31
                  rem          s4, s6, t5
                  div          sp, zero, zero
                  sll          sp, s9, t0
                  sub          s1, a6, a1
                  c.add        t1, a4
                  c.addi16sp   sp, 320
                  sltu         s9, a5, s4
                  srl          t5, a3, a7
                  c.addi       s11, 12
                  add          a5, s3, s5
                  div          t0, s1, a0
                  c.sub        a3, s1
                  c.addi       t3, 26
                  or           s5, ra, a7
                  c.slli       a4, 21
                  auipc        t4, 407952
                  and          t1, t6, a5
                  auipc        s6, 77851
                  slti         s2, a5, 964
                  c.li         s5, -1
                  mul          s7, a6, a6
                  lui          s6, 939851
                  srli         s6, gp, 5
                  add          a5, t2, a0
                  nop
                  sll          s1, s7, s0
                  slti         gp, s1, -819
                  sub          s10, t3, t6
                  nop
                  c.xor        s1, s1
                  ori          a1, s0, -723
                  xori         a1, a5, -1263
                  srli         t3, zero, 26
                  sltu         s4, t0, t2
                  auipc        a0, 961171
                  c.addi       a1, -1
                  ori          s0, s4, -1903
                  slt          sp, t5, s3
                  addi         t6, s2, -188
                  and          tp, tp, s10
                  c.lui        a7, 3
                  mul          gp, t6, t1
                  add          sp, s3, s3
                  sltiu        a6, t1, -1108
                  andi         s0, s11, -272
                  mulhu        s6, s4, s2
                  sll          sp, s11, s5
                  srli         t4, s3, 22
                  c.add        s9, s10
                  srl          s5, t1, a5
                  sltiu        s9, s11, -548
                  and          t6, gp, a2
                  srli         s4, t0, 22
                  remu         s0, a5, a4
                  rem          sp, t1, s1
                  mulhu        sp, t5, s9
                  div          a6, t0, s7
                  sltiu        t4, a6, 1790
                  slti         sp, gp, 1864
                  c.xor        a0, a2
                  div          s4, s3, a0
                  slti         a6, s0, 1251
                  c.slli       tp, 31
                  mul          s7, t0, t6
                  c.or         s1, s1
                  srl          s1, s7, s6
                  c.srai       a0, 9
                  nop
                  c.addi4spn   a1, sp, 944
                  srli         sp, s5, 3
                  c.addi4spn   a4, sp, 880
                  mulhsu       s8, s6, t5
                  c.slli       tp, 10
                  ori          s0, s6, 1927
                  srli         s10, s2, 23
                  sra          a1, zero, s1
                  c.srai       a3, 30
                  c.or         a5, s0
                  c.and        a1, a4
                  div          zero, zero, s8
                  and          ra, s6, gp
                  add          s8, a1, s7
                  c.or         a4, s1
                  mul          a4, sp, a2
                  slti         a7, s0, -838
                  srl          s9, t6, s10
                  sltiu        ra, tp, 611
                  c.xor        a4, a3
                  c.andi       a4, -1
                  srl          a0, a0, zero
                  slli         a1, s5, 6
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_16
                  li           tp, 0x80000000
                  li           s10, 0x0
                  li           s6, 0x80000000
                  li           s4, 0xfa39cd60
                  li           s7, 0xc6041f94
                  li           sp, 0xffffffff
                  li           t6, 0xffffffff
                  li           t4, 0xd376ea4e
                  li           t1, 0xffffffff
                  div          t4, s4, sp
                  lui          t4, 244085
                  mulhu        tp, s10, s6
                  remu         s7, t4, sp
                  add          s6, sp, sp
                  mulhu        t4, s10, a4
                  remu         s7, t4, s4
                  divu         s7, tp, sp
                  divu         s10, a4, t1
                  div          sp, s10, tp
                  add          s7, sp, t6
                  mulh         s10, s4, t4
                  mulhsu       s4, a4, s7
                  mulhsu       tp, sp, s7
                  remu         t4, sp, t4
                  sub          s4, s4, a4
                  mul          s4, a4, s6
                  add          sp, sp, s6
                  div          t6, tp, s7
                  add          s7, s10, sp
                  addi         t6, t4, 1507
                  div          tp, a4, s4
                  addi         a4, s4, -311
                  rem          t4, s4, s10
                  auipc        sp, 839970
                  addi         t4, tp, -491
                  div          t4, t1, s10
                  mulh         a4, s6, t4
                  add          s10, s10, t4 #end riscv_int_numeric_corner_stream_16
                  andi         sp, t0, -1205
                  mulhu        sp, a3, a3
                  addi         sp, tp, 353
                  or           t4, s6, s5
                  sltu         s11, s10, zero
                  c.and        s0, a0
                  lui          ra, 944461
                  slt          ra, a1, a4
                  c.sub        a3, a3
                  c.nop
                  srai         s2, sp, 27
                  slli         s11, a3, 14
                  or           t6, a3, s11
                  mul          gp, sp, gp
                  mulhu        s11, s7, gp
                  c.addi4spn   a1, sp, 1008
                  xori         s11, a2, 314
                  divu         a0, s11, tp
                  srl          a1, a7, tp
                  c.and        s0, s1
                  c.addi16sp   sp, -16
                  sra          a6, s2, t4
                  sub          s2, s3, t2
                  and          t6, s6, ra
                  div          s9, ra, t1
                  add          a4, s4, s1
                  c.addi       t6, -1
                  nop
                  sll          s0, a2, a4
                  and          zero, a7, gp
                  andi         tp, s10, -194
                  c.slli       sp, 24
                  sll          s7, s9, s9
                  ori          s7, sp, 12
                  sra          s6, a4, t0
                  c.nop
                  c.lui        t5, 7
                  mulhsu       s5, s11, s9
                  mulhsu       s1, gp, s9
                  addi         s9, t6, 133
                  c.addi16sp   sp, 432
                  remu         s0, s7, a2
                  c.srai       a1, 17
                  andi         t4, t1, 1694
                  remu         s4, a0, s7
                  slli         s1, a4, 21
                  mulh         t4, t6, a3
                  c.addi4spn   a4, sp, 496
                  sltu         s11, s11, t1
                  sub          a1, t0, zero
                  c.slli       a5, 8
                  c.sub        a5, s0
                  c.addi16sp   sp, 144
                  or           s5, a7, t0
                  auipc        tp, 353689
                  mul          t6, a1, a1
                  c.li         a3, -1
                  c.or         a1, a4
                  srai         zero, t3, 1
                  lui          a3, 969111
                  sltiu        t1, s1, -1045
                  rem          sp, s9, s11
                  lui          s4, 76950
                  c.addi       s7, -1
                  ori          a5, s10, 879
                  slti         a6, gp, 1751
                  slli         a7, s7, 26
                  lui          zero, 823916
                  slt          s1, ra, a4
                  sltu         a6, a7, t6
                  lui          s10, 180832
                  c.srli       a4, 23
                  c.addi4spn   s1, sp, 736
                  c.xor        a4, a4
                  mul          a6, t6, a2
                  rem          gp, s10, a2
                  mul          s7, tp, s1
                  sltu         a7, s1, s3
                  c.lui        a3, 15
                  or           t1, s0, a5
                  c.xor        a1, a3
                  c.lui        a1, 27
                  c.lui        s10, 2
                  ori          t3, s6, -1470
                  divu         t3, tp, t2
                  mulhu        a6, tp, s6
                  xori         s0, s11, -797
                  c.li         s9, -1
                  mulhsu       s2, s4, t0
                  lui          a5, 29536
                  andi         t6, s3, 8
                  slt          t6, s8, tp
                  or           t0, t6, a7
                  or           t6, s6, s3
                  andi         t6, s0, 903
                  srli         a1, t0, 7
                  c.slli       t4, 9
                  c.add        a6, s2
                  and          s6, t2, s4
                  sltu         s0, a5, s6
                  and          a3, a1, s8
                  c.nop
                  and          tp, s9, a6
                  c.srai       s1, 10
                  c.and        a4, a4
                  add          a4, a0, s6
                  addi         tp, t4, -1806
                  c.sub        s1, a5
                  c.sub        a4, s1
                  slti         s7, t4, 196
                  add          s11, zero, s10
                  sra          s7, a5, t4
                  slti         s7, gp, -509
                  sub          s0, sp, s2
                  srli         s6, gp, 15
                  lui          a5, 453449
                  c.srli       a4, 2
                  c.or         a4, a0
                  c.or         s0, a4
                  sltu         a0, s7, t5
                  ori          s2, t5, 1524
                  nop
                  remu         t4, s7, s10
                  c.mv         s0, s6
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_8
                  li           ra, 0xffffffff
                  li           sp, 0x80000000
                  li           a1, 0xdd5340ed
                  li           t6, 0x80000000
                  li           gp, 0xea6533f2
                  li           s9, 0x5d8e4b34
                  li           t4, 0x0
                  li           a0, 0x0
                  li           s0, 0x80000000
                  addi         sp, s2, 1807
                  div          t4, ra, a0
                  add          a1, s9, t6
                  mulhu        t6, t4, t6
                  div          t6, t4, a1
                  remu         gp, a0, a1
                  remu         s0, s9, a1
                  mul          t4, t4, s2
                  divu         s0, t6, s2
                  sub          s0, ra, ra
                  mul          s2, sp, s9
                  auipc        s2, 886350
                  mul          sp, ra, a1
                  div          t4, sp, s2
                  mul          s2, t6, s9
                  mulhu        t6, sp, sp
                  sub          s2, sp, a1 #end riscv_int_numeric_corner_stream_8
                  mulhsu       a6, t4, t6
                  c.addi16sp   sp, -16
                  xor          a1, s7, t3
                  xori         a3, s10, 559
                  c.mv         tp, sp
                  c.nop
                  c.mv         s4, a3
                  and          t0, t6, ra
                  and          s1, s9, ra
                  c.andi       a3, -1
                  slti         s7, a0, 967
                  mulhsu       ra, tp, t4
                  divu         s10, s3, t3
                  c.andi       a4, -1
                  divu         t3, t3, s4
                  mulhsu       s0, t5, a0
                  slli         a6, t6, 20
                  mul          t0, sp, a4
                  rem          a1, a2, s2
                  lui          s10, 284467
                  divu         a3, a7, a6
                  rem          a0, zero, a6
                  c.addi16sp   sp, 272
                  auipc        s10, 492409
                  c.addi       gp, 23
                  c.addi4spn   s0, sp, 160
                  divu         s2, s6, tp
                  ori          s10, a0, -1588
                  c.sub        a1, a0
                  c.xor        a0, a1
                  sltiu        t4, t3, -1211
                  srl          s1, s11, t4
                  c.andi       a4, -1
                  c.addi       a4, 13
                  c.add        s5, a7
                  c.addi4spn   s0, sp, 800
                  sltiu        s8, s0, -1667
                  c.and        a1, a5
                  slti         a6, s4, -1641
                  andi         t0, s6, 1690
                  c.addi4spn   s0, sp, 432
                  c.slli       s5, 18
                  xor          t3, s4, s3
                  mulh         s5, t2, s5
                  sltiu        s1, t4, -515
                  addi         a7, s2, 1259
                  auipc        a1, 548471
                  ori          a6, a4, 790
                  c.add        a5, gp
                  c.lui        s1, 4
                  mulhsu       gp, s7, s8
                  and          s9, t0, tp
                  mulhsu       a1, t4, gp
                  sub          a5, s0, a2
                  c.addi4spn   a4, sp, 576
                  addi         s10, t0, 1921
                  div          t5, t4, t6
                  sltiu        tp, ra, 1657
                  c.nop
                  sub          s5, a1, s6
                  lui          s1, 107610
                  srl          s4, gp, t2
                  c.addi16sp   sp, 176
                  c.andi       s1, -1
                  xor          t3, t2, t4
                  auipc        s11, 16215
                  c.or         a4, a1
                  divu         a6, a5, a5
                  c.mv         gp, t6
                  add          a4, tp, gp
                  mulhu        s0, s3, t2
                  sra          s7, ra, gp
                  rem          t4, t2, s10
                  and          a4, a4, gp
                  srl          sp, s6, tp
                  sra          t4, s10, gp
                  div          gp, t4, a3
                  c.or         s1, s0
                  andi         a7, t6, -1007
                  sub          s1, a4, s7
                  srl          s11, s3, t0
                  c.and        s0, a4
                  addi         t0, a6, 1173
                  c.mv         s8, sp
                  mul          t4, s6, t3
                  sll          s5, gp, s11
                  remu         s7, a4, s5
                  slti         gp, s8, -1122
                  remu         a6, t5, s4
                  c.slli       s5, 31
                  mulhu        a1, a7, s3
                  xori         s0, gp, -1636
                  c.xor        a0, a3
                  slti         a3, gp, -647
                  c.mv         t0, s5
                  c.srai       a5, 30
                  c.srai       a4, 21
                  srai         a0, sp, 21
                  slti         s1, s5, -657
                  divu         s7, t2, sp
                  c.and        a0, a2
                  c.and        s1, a0
                  sll          a5, zero, t6
                  mulhu        a6, a5, t6
                  srai         a5, t2, 27
                  sra          s8, t1, s5
                  addi         t1, t5, -1621
                  c.srli       s0, 16
                  srai         t0, s6, 1
                  c.sub        a3, a0
                  c.or         a1, a0
                  rem          a1, zero, sp
                  sub          a5, a3, a7
                  mulhu        s9, t2, t2
                  mul          sp, s9, s7
                  mulhsu       t5, s3, tp
                  c.lui        s2, 8
                  lui          a3, 344336
                  div          sp, s11, a4
                  c.srli       s0, 3
                  mulhu        gp, s10, t0
                  c.lui        s8, 1
                  sltiu        s6, s1, 929
                  rem          zero, a1, tp
                  srli         t0, zero, 21
                  and          a4, a0, a0
                  auipc        s8, 754417
                  sll          s4, t6, t1
                  rem          tp, s10, a5
                  add          gp, s1, tp
                  mulhsu       s0, s4, s9
                  div          t1, s6, s9
                  c.sub        a0, a2
                  slli         a0, t4, 24
                  sub          s6, zero, t3
                  mulhu        s9, t2, s3
                  c.sub        a0, a5
                  slti         s8, t6, 1286
                  sra          a5, a1, a7
                  rem          a0, t5, t5
                  lui          s10, 195318
                  srli         t5, a6, 21
                  mul          a4, t0, a5
                  div          ra, t1, s8
                  c.sub        a1, a3
                  sltu         s9, t6, s10
                  slli         t6, t0, 6
                  xori         a0, s7, 506
                  sra          ra, s6, t5
                  c.slli       a6, 30
                  c.li         s10, 13
                  slli         s1, a7, 4
                  c.nop
                  slti         t6, a3, 475
                  lui          s5, 703114
                  c.li         s11, -1
                  rem          a0, a2, s6
                  c.or         a0, a2
                  c.srai       a0, 10
                  mulh         t0, t1, s2
                  c.addi4spn   a4, sp, 672
                  srli         t1, t4, 1
                  and          s9, sp, s5
                  mul          s0, t0, s6
                  mul          s0, t2, s4
                  c.or         s0, a0
                  c.add        t4, t4
                  srl          a7, tp, s11
                  rem          a3, s1, a7
                  mulhsu       t0, s8, a5
                  srl          a0, t1, s0
                  c.addi       a6, -1
                  mulh         sp, t1, a1
                  sub          t5, t6, sp
                  c.mv         t1, ra
                  sltu         a6, ra, t6
                  c.and        s0, a0
                  remu         ra, s3, a6
                  c.addi16sp   sp, -16
                  add          s2, a2, a6
                  c.addi       a7, -1
                  c.add        t4, s3
                  mulhsu       t5, a7, s1
                  slti         a3, t0, -834
                  c.andi       a3, 22
                  auipc        a1, 875567
                  c.mv         s11, s3
                  divu         ra, s11, s3
                  slli         s9, tp, 11
                  c.andi       s0, 11
                  c.srli       a3, 2
                  divu         s9, a2, a7
                  c.addi16sp   sp, -16
                  nop
                  c.xor        a4, a2
                  sll          s7, a1, s6
                  auipc        s2, 852326
                  sltiu        s11, a7, 570
                  sra          ra, a5, s1
                  xori         a0, a0, -745
                  andi         t0, s9, 392
                  sltu         s1, s6, a6
                  c.slli       a4, 27
                  mul          a5, a2, t6
                  addi         t1, s4, 1240
                  sra          s11, a4, s7
                  srl          ra, s10, t3
                  xor          tp, s1, s6
                  mulhsu       s6, s2, s4
                  c.lui        s4, 12
                  c.addi4spn   a1, sp, 192
                  andi         a7, t6, 93
                  c.srli       s1, 28
                  nop
                  xori         s5, sp, 626
                  rem          a5, a0, s2
                  addi         a4, s9, -1061
                  slt          s11, a5, gp
                  auipc        t1, 377519
                  srl          s2, t2, s9
                  c.nop
                  sltu         t5, t1, a2
                  c.li         a1, -1
                  c.sub        a0, a4
                  mul          t4, t0, a1
                  sltiu        t6, s11, -849
                  addi         s9, a1, 173
                  c.addi       a1, -1
                  auipc        s11, 58279
                  andi         s1, s7, 59
                  c.andi       s0, 0
                  ori          s4, a1, 1211
                  c.lui        ra, 25
                  c.add        tp, a1
                  c.or         a0, s1
                  sub          s8, s2, a2
                  ori          tp, sp, -1847
                  slti         a4, a1, -756
                  xor          gp, s5, a6
                  sra          gp, t0, a6
                  xori         s1, sp, 1415
                  or           s0, ra, s6
                  addi         sp, t4, -994
                  andi         s1, s9, -404
                  c.or         a3, a0
                  srli         a5, a5, 21
                  c.nop
                  rem          t3, s10, t1
                  addi         gp, a7, 1163
                  slt          s0, t5, s11
                  c.addi4spn   a5, sp, 608
                  sltiu        s9, a5, 1178
                  c.nop
                  add          a5, a1, s7
                  xori         t1, a4, 1734
                  xor          a7, a5, ra
                  sltiu        ra, a3, 1187
                  c.add        s11, s1
                  c.nop
                  c.addi16sp   sp, 32
                  c.or         a5, s1
                  sltiu        gp, a0, -894
                  mulh         s0, t3, s3
                  c.andi       a1, -1
                  srli         a6, s0, 13
                  c.lui        t6, 4
                  addi         s11, a3, -2044
                  mulh         t6, a7, s10
                  and          a0, s2, a4
                  c.add        t1, s9
                  c.sub        a0, a4
                  sra          s11, s6, gp
                  slti         s5, gp, 1772
                  c.addi4spn   a3, sp, 336
                  sub          a4, a1, s7
                  c.and        s1, a0
                  divu         t0, t0, s7
                  ori          gp, a6, -1695
                  c.nop
                  slli         s0, s6, 25
                  sll          s9, t6, t1
                  mul          tp, s5, s9
                  c.addi16sp   sp, -16
                  slti         s10, s2, 1620
                  mulhu        s10, s8, a5
                  auipc        gp, 1027373
                  c.sub        a3, a2
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_25
                  li           t5, 0x0
                  li           s10, 0x67da97fa
                  li           a1, 0x0
                  li           a7, 0x8eb15689
                  li           ra, 0xffffffff
                  li           a0, 0x80000000
                  li           s2, 0xdc9b3bb8
                  li           s0, 0xffffffff
                  li           s8, 0x80000000
                  divu         s8, ra, s10
                  mulh         ra, s8, ra
                  rem          s7, s8, a1
                  div          s8, ra, s7
                  addi         s7, a1, 2
                  rem          ra, ra, a0
                  remu         a7, ra, t5
                  sub          a1, s8, s0
                  mulh         a1, a0, s2
                  mulhu        t5, t5, a1
                  sub          s7, s0, a1
                  mulhu        a7, ra, s0
                  addi         a0, s8, 650
                  mul          s0, ra, s0
                  rem          a7, ra, s2
                  rem          s2, s10, s8
                  remu         a1, a7, s2
                  lui          a1, 630712
                  mul          ra, a1, t5 #end riscv_int_numeric_corner_stream_25
                  c.sub        a5, a1
                  c.and        s1, a2
                  srli         a3, s3, 27
                  slt          t1, a2, a4
                  sll          s7, a2, t4
                  mulhu        s11, a6, zero
                  addi         s7, s9, 1007
                  remu         s2, s6, a0
                  slt          t3, s11, t3
                  sltu         tp, a6, a3
                  mulhu        s11, a7, s0
                  c.or         s1, s0
                  sltiu        t4, s3, -298
                  andi         a4, s7, 1576
                  sltiu        a1, zero, 1582
                  add          a0, s0, t5
                  c.addi       s9, 18
                  c.li         s9, 1
                  slt          a3, a3, t2
                  auipc        s1, 617959
                  or           a5, s2, sp
                  sra          a7, t4, s9
                  rem          gp, s1, a3
                  div          zero, s4, a2
                  mulhsu       s1, s11, s5
                  c.and        a3, s1
                  c.mv         s11, a1
                  srai         s6, s7, 28
                  divu         a6, s1, a3
                  mulhsu       a7, t4, t2
                  li           s2, 0xffffffff #start riscv_int_numeric_corner_stream_5
                  li           t3, 0x0
                  li           s0, 0x80000000
                  li           tp, 0x80000000
                  li           s10, 0xffffffff
                  li           s9, 0x80000000
                  li           sp, 0xffffffff
                  li           a1, 0xffffffff
                  li           a7, 0x79729c67
                  li           a3, 0xffffffff
                  div          a1, s0, s10
                  nop
                  sub          s2, a7, a1
                  nop
                  lui          s10, 953963
                  nop
                  rem          s9, t3, a1
                  addi         a3, s0, 630
                  auipc        s10, 1031817
                  divu         a1, a3, tp
                  sub          a7, a1, s0
                  auipc        tp, 338295
                  remu         a1, a3, sp
                  mulhu        a3, a7, s0
                  addi         s2, s10, 519
                  nop
                  div          a1, s10, s9
                  rem          a1, a7, a1
                  remu         s2, a1, a3
                  mulh         a1, a3, tp
                  addi         s0, s9, 1482 #end riscv_int_numeric_corner_stream_5
                  slt          a7, a5, s8
                  sra          s9, ra, gp
                  c.lui        s1, 27
                  c.srai       a4, 6
                  divu         a4, s4, s9
                  slti         sp, t1, -271
                  c.xor        s1, a3
                  xori         t0, t5, 179
                  c.li         t5, 21
                  nop
                  nop
                  mulhu        t0, s1, t0
                  slli         s4, a2, 29
                  sltu         s10, ra, a1
                  slt          s11, s0, t2
                  slti         zero, s7, 1429
                  sltiu        t3, a3, -1190
                  addi         a4, s1, 1477
                  sltiu        t1, a3, 1493
                  c.addi       s1, -1
                  add          s4, a5, a3
                  c.add        a7, ra
                  slli         sp, s3, 18
                  c.and        a3, a4
                  mulhu        s0, t3, t2
                  c.and        a0, s0
                  sra          t3, zero, a3
                  or           a6, sp, s3
                  xor          sp, t0, a5
                  c.srli       a5, 9
                  mulhsu       s4, a1, t5
                  nop
                  sub          gp, t6, s8
                  c.or         a4, a0
                  c.xor        a1, a4
                  c.srli       a3, 14
                  lui          t1, 211848
                  divu         a1, s6, t3
                  andi         t6, s0, 1587
                  mulh         t5, s7, t1
                  and          a0, a1, s6
                  addi         t6, zero, 1020
                  addi         s1, t2, -1267
                  slli         sp, a6, 21
                  xor          s5, s6, s11
                  lui          t1, 520870
                  xor          ra, s4, t4
                  c.andi       s1, 25
                  c.addi4spn   s1, sp, 960
                  c.xor        s0, a5
                  c.lui        a7, 18
                  c.slli       tp, 20
                  mulhsu       t1, ra, tp
                  auipc        a0, 936044
                  c.srli       a3, 28
                  rem          t6, s3, a7
                  c.andi       a4, 8
                  div          s4, a3, zero
                  slli         s5, a7, 20
                  xor          gp, a7, a3
                  slti         s5, a5, -1763
                  c.li         t4, -1
                  c.srli       s0, 22
                  sra          s10, s5, sp
                  c.li         a5, 27
                  nop
                  add          a3, a0, tp
                  c.sub        a5, s1
                  rem          s4, s6, s5
                  divu         a6, s4, t1
                  c.lui        a6, 5
                  c.lui        gp, 29
                  sra          t3, s3, ra
                  sltu         s8, tp, s5
                  div          ra, t5, a5
                  c.addi16sp   sp, -16
                  mul          gp, t3, s2
                  c.andi       s0, -1
                  add          tp, s2, tp
                  add          a5, a4, s9
                  srai         a4, t4, 31
                  c.srli       a1, 21
                  c.addi       t5, -1
                  addi         s1, a0, 1756
                  c.srli       a5, 17
                  c.sub        a4, s1
                  xori         a6, t6, -180
                  srl          tp, a2, s10
                  c.srli       s0, 2
                  c.addi16sp   sp, -16
                  srli         sp, t6, 28
                  xor          zero, t2, s6
                  ori          a4, zero, -1360
                  c.li         s11, 13
                  c.li         a5, 14
                  c.xor        a0, a5
                  xori         t0, s3, -456
                  c.mv         a6, a0
                  rem          s0, t3, a6
                  and          s9, s5, sp
                  auipc        t6, 842260
                  c.and        s0, a4
                  c.srli       a3, 27
                  mulh         a3, a7, s11
                  c.mv         a3, a4
                  c.addi4spn   a1, sp, 832
                  xori         zero, t3, 1374
                  xori         a1, t4, -312
                  ori          t1, ra, 682
                  c.mv         t0, a7
                  xor          a3, s0, t3
                  sll          t5, zero, s0
                  c.addi16sp   sp, 384
                  slli         a1, s10, 31
                  divu         s8, s5, t3
                  sltiu        s5, s7, -1634
                  lui          sp, 901998
                  c.lui        a7, 25
                  add          t4, t3, tp
                  c.xor        a0, s1
                  and          s10, t3, gp
                  add          s7, gp, s3
                  div          s1, a6, s3
                  c.add        t0, s0
                  c.srai       s1, 6
                  sltu         t6, t3, s5
                  slt          a3, s6, a5
                  andi         s2, a7, 921
                  mulh         s10, s0, sp
                  slti         t1, t1, 1721
                  c.andi       a0, -1
                  mulhsu       a4, s10, tp
                  mulh         s9, a3, a5
                  and          a1, a1, s5
                  c.slli       a3, 12
                  auipc        s5, 943465
                  c.nop
                  sra          a7, t0, s9
                  c.slli       s2, 3
                  sltu         s4, s7, tp
                  mulh         a3, a6, a7
                  sltu         gp, t5, s2
                  c.srai       s1, 11
                  mulh         a7, s1, a3
                  ori          t6, t3, -1782
                  c.srli       a1, 29
                  c.xor        a0, a2
                  c.or         a1, a5
                  c.srli       s1, 18
                  sltiu        a7, ra, -230
                  mulh         s7, ra, t1
                  mulhsu       sp, a1, ra
                  divu         a1, s10, t4
                  c.nop
                  xori         sp, s9, 349
                  c.slli       a4, 2
                  c.addi4spn   s1, sp, 48
                  c.slli       s2, 30
                  addi         t4, a5, -676
                  lui          a6, 433504
                  c.nop
                  slt          t0, s10, a5
                  div          gp, t0, zero
                  mulhsu       s1, t0, a5
                  c.li         s10, -1
                  sub          s7, s5, a5
                  c.addi4spn   s0, sp, 592
                  divu         zero, s3, zero
                  c.nop
                  div          s1, t6, t5
                  addi         s4, t0, 1763
                  c.and        a4, s1
                  slt          a0, t5, s8
                  andi         a4, t2, -537
                  andi         a7, ra, -389
                  mulh         t4, s3, s8
                  xor          s5, t0, s8
                  sltu         s4, s3, s8
                  sltiu        s4, tp, 1610
                  srai         a4, ra, 23
                  mulh         t4, tp, s0
                  c.addi       s10, 13
                  rem          t0, zero, a2
                  slli         ra, a5, 0
                  xor          s0, s7, a7
                  sub          sp, s9, s3
                  c.addi       s0, 1
                  srai         a7, s1, 19
                  remu         a1, a5, s2
                  srl          t1, zero, ra
                  c.add        s7, a0
                  or           t5, t4, s3
                  remu         a3, gp, t4
                  mulhu        s0, a3, a5
                  srl          t0, a7, t6
                  nop
                  div          t4, tp, t3
                  mulhu        s0, s2, s8
                  c.xor        a5, a4
                  sltu         s1, t0, gp
                  sra          a0, s0, a1
                  add          t3, s3, s10
                  div          tp, t0, a0
                  c.andi       a4, -1
                  c.mv         a5, s4
                  mulhsu       a0, t4, s7
                  nop
                  rem          s0, a7, t6
                  c.li         s5, 28
                  and          s0, a3, a5
                  c.nop
                  slti         s6, s4, 242
                  sll          a5, a5, t4
                  lui          a6, 641553
                  srai         tp, t0, 8
                  or           s2, a1, s0
                  c.addi16sp   sp, 384
                  c.and        a0, s1
                  c.xor        a5, s0
                  c.or         a1, s0
                  srl          s5, t6, t0
                  c.srai       a4, 6
                  srai         s4, zero, 24
                  sub          s10, t5, ra
                  c.slli       s7, 1
                  c.add        a6, a2
                  div          t1, s5, t4
                  sll          t5, t3, a5
                  mulhsu       t4, s3, t6
                  mul          zero, s7, ra
                  sltiu        t1, s10, -166
                  mulhu        a7, s3, a6
                  c.mv         gp, s0
                  c.xor        a1, a2
                  c.li         a1, 25
                  c.srai       a3, 3
                  c.or         a1, s0
                  c.xor        a5, a0
                  c.slli       t6, 10
                  add          t0, sp, s11
                  c.addi       tp, -1
                  andi         ra, a4, -1995
                  andi         zero, t0, -1682
                  mulhsu       s5, t4, t2
                  rem          a3, s6, s11
                  slti         gp, zero, 1008
                  c.add        s4, s6
                  mulhu        s0, ra, s9
                  and          s10, gp, s8
                  c.addi16sp   sp, -16
                  c.xor        s0, a2
                  lui          s1, 163437
                  andi         zero, sp, -1515
                  mulhu        tp, t5, s9
                  c.nop
                  c.lui        t3, 22
                  and          s11, a1, s10
                  slti         a5, s2, -791
                  c.add        a6, a7
                  slli         a6, s7, 10
                  xor          t0, t1, s1
                  sub          s7, t4, s1
                  remu         gp, a5, t3
                  slli         a3, gp, 16
                  slt          gp, s10, ra
                  c.nop
                  c.mv         s5, a4
                  srl          zero, s8, s5
                  remu         s0, zero, zero
                  ori          t0, t5, 1153
                  srl          s6, s11, t4
                  c.li         s1, 0
                  or           t1, s1, t2
                  c.lui        t3, 4
                  c.addi       a1, -1
                  xori         t4, s8, -254
                  rem          s10, a4, gp
                  c.mv         t4, a1
                  c.nop
                  lui          s4, 166007
                  c.li         a7, -1
                  c.nop
                  slt          s6, t1, s7
                  remu         t5, s3, t4
                  auipc        a3, 223457
                  mulh         s10, t4, a3
                  nop
                  or           a1, a3, s8
                  sltu         t1, s6, t2
                  auipc        t3, 1044728
                  c.or         s1, a4
                  c.or         a3, a1
                  xori         ra, s4, -1015
                  c.addi       a6, 12
                  auipc        a4, 590291
                  andi         sp, a1, 660
                  slt          t1, t3, a0
                  remu         a1, gp, a4
                  slli         t1, s11, 5
                  and          a7, s7, a0
                  c.nop
                  srli         ra, s6, 19
                  mulh         a0, ra, tp
                  auipc        a5, 400268
                  slli         s2, sp, 31
                  srli         s7, sp, 5
                  lui          s9, 279361
                  c.sub        a4, a2
                  sltiu        a6, t3, 315
                  div          a4, s9, s4
                  c.sub        s0, a1
                  addi         gp, t1, -1374
                  c.or         a1, s0
                  slti         tp, t0, 668
                  and          s9, a6, gp
                  c.srli       s0, 18
                  c.lui        s2, 15
                  c.srli       a3, 17
                  auipc        s4, 57218
                  c.srai       a5, 26
                  sltiu        s6, gp, -897
                  mulhu        a3, a0, t6
                  and          t3, s9, s1
                  c.andi       a4, 22
                  auipc        s6, 80076
                  mul          a4, a0, s4
                  or           s7, t2, s7
                  auipc        a0, 785068
                  c.addi16sp   sp, 80
                  mulh         t3, s11, a7
                  c.srli       s1, 14
                  mulhu        tp, a6, t3
                  slt          s6, a7, a3
                  div          a0, a1, s11
                  li           a3, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           t5, 0x8eb7a5ba
                  li           s8, 0x80000000
                  li           s0, 0x0
                  li           a0, 0xffffffff
                  li           a1, 0x0
                  li           s6, 0x8f67ecc1
                  li           t3, 0x80000000
                  li           a5, 0x0
                  li           t0, 0x0
                  lui          s6, 726538
                  mulhsu       t0, s0, t0
                  mul          a3, a1, a3
                  mul          t0, s8, s8
                  mulhu        t0, s6, s8
                  add          t3, t0, s0
                  divu         s8, a5, t0
                  add          s0, a5, a1
                  divu         t5, a0, a5
                  mulh         s6, t0, s6
                  div          t0, t0, s6
                  add          a5, t0, t5
                  div          a0, t3, t3
                  nop
                  divu         a0, s0, t5
                  lui          s6, 922557
                  auipc        s8, 350821
                  auipc        a3, 518500
                  rem          a1, a1, t3
                  lui          s8, 16325
                  remu         a3, a1, s6
                  add          a5, t5, t5
                  auipc        s8, 883706
                  sub          a0, t0, a0
                  sub          t3, t3, a5
                  mul          s8, s8, t0
                  addi         s6, a5, 433 #end riscv_int_numeric_corner_stream_19
                  c.nop
                  mulhsu       sp, s11, t5
                  c.addi4spn   s0, sp, 208
                  c.addi       a0, -1
                  c.mv         a6, t0
                  add          a4, s7, a1
                  c.addi16sp   sp, -16
                  nop
                  c.xor        a3, a0
                  lui          s9, 545934
                  sra          s10, a4, t4
                  addi         tp, s8, 1282
                  add          s7, a3, s7
                  div          s4, a0, t1
                  mulhsu       a7, a7, a5
                  mulhu        s1, s8, t1
                  sra          t1, s3, t6
                  c.srli       a5, 31
                  c.addi       a6, -1
                  slli         a4, a6, 29
                  sltu         t5, t3, s3
                  c.addi4spn   a0, sp, 48
                  auipc        s7, 176484
                  sll          a3, s3, t6
                  c.and        a0, a4
                  andi         t0, t1, 1345
                  c.xor        a5, a5
                  c.nop
                  and          zero, t2, a0
                  li           t4, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           s2, 0x80000000
                  li           gp, 0x42a6eb1d
                  li           a1, 0xffffffff
                  li           s10, 0xffffffff
                  li           sp, 0x0
                  li           a0, 0xeee70490
                  li           s0, 0x15f038a3
                  li           ra, 0x80000000
                  li           t5, 0x5d9ad8d2
                  divu         ra, ra, sp
                  remu         t4, gp, gp
                  mulhu        s0, t4, s10
                  mulh         ra, t4, t5
                  remu         s10, s0, t4
                  mulhsu       ra, s10, s0
                  mulhu        t4, gp, t4
                  div          t5, s0, s2
                  mulh         a1, a1, s0
                  mulh         a1, s10, t4
                  rem          s0, gp, t4
                  divu         t5, gp, s2
                  mul          t4, s2, gp
                  mul          ra, t5, gp
                  rem          s10, s0, t5
                  nop
                  auipc        t5, 649179
                  lui          s0, 142415
                  addi         ra, s0, 1797
                  nop
                  sub          t4, t4, t4
                  div          ra, t4, t4
                  mulh         sp, s0, t5
                  add          a1, sp, t4
                  sub          t5, t5, a0
                  divu         a0, s2, sp
                  mulh         gp, t4, sp
                  sub          s0, s0, t5 #end riscv_int_numeric_corner_stream_15
                  slti         s11, s4, -490
                  sub          t4, sp, a1
                  srai         a0, s2, 7
                  nop
                  sub          gp, s0, s6
                  c.srai       a3, 11
                  mul          sp, a0, ra
                  rem          s9, t5, a4
                  c.slli       s2, 16
                  sltiu        s7, a6, 282
                  rem          s11, t1, a6
                  c.andi       a0, 21
                  remu         s8, s8, sp
                  c.lui        a0, 7
                  sltiu        a6, a5, 1870
                  rem          gp, s2, s10
                  c.lui        a0, 9
                  mulhu        t0, s6, a2
                  mul          s1, s4, s11
                  addi         tp, t1, -537
                  mul          t4, t1, s11
                  auipc        a6, 875717
                  remu         s11, s5, tp
                  c.mv         s11, s5
                  c.and        s1, a1
                  mulhu        a3, a3, s7
                  sra          s0, s6, s8
                  c.slli       s2, 27
                  add          t1, a0, a0
                  sltu         tp, s5, s7
                  srl          s0, s5, a6
                  slt          t1, s10, s9
                  add          s1, t1, s0
                  c.and        s1, a1
                  c.nop
                  sltiu        a4, tp, -263
                  div          sp, t5, s7
                  remu         s7, s1, t2
                  c.addi4spn   a0, sp, 480
                  slli         t4, s5, 4
                  mulhsu       s9, a1, t2
                  divu         a0, a0, t4
                  slli         a4, tp, 8
                  slti         s11, t3, -1309
                  sra          s2, s6, a7
                  or           s10, t3, sp
                  c.li         t5, -1
                  andi         s5, a6, -543
                  or           tp, sp, s10
                  c.andi       a4, 5
                  c.add        a6, gp
                  sub          s11, a0, t6
                  c.addi4spn   a0, sp, 496
                  sll          s10, s4, s11
                  srai         s7, s3, 3
                  ori          s11, a5, 340
                  rem          zero, s5, a2
                  mulhu        s1, s9, s10
                  slti         t0, a4, 1443
                  add          a1, s6, a5
                  div          s0, s8, a5
                  addi         s2, s0, -1604
                  c.lui        s0, 10
                  c.andi       a1, 14
                  nop
                  mulhu        s1, s7, a4
                  c.addi       sp, -1
                  or           t3, s10, a5
                  mulhsu       s5, zero, t5
                  c.sub        a3, a5
                  c.and        a5, s0
                  mulhu        gp, tp, a6
                  auipc        a5, 751385
                  mulhsu       a1, s6, s7
                  c.srai       s0, 6
                  c.addi       a7, 26
                  c.andi       a0, -1
                  nop
                  sltiu        tp, s8, 495
                  c.nop
                  srl          ra, s0, s10
                  add          a7, t5, s9
                  xori         a3, s7, 580
                  rem          a5, a6, s1
                  c.mv         s4, a5
                  andi         zero, s8, 1532
                  c.add        s1, gp
                  sltiu        s8, tp, 602
                  srai         a4, t3, 1
                  c.mv         a7, tp
                  sltu         s0, s10, ra
                  c.andi       a4, -1
                  c.addi       s2, -1
                  srai         a6, s2, 11
                  mulhu        s4, s4, a3
                  c.or         a3, s1
                  c.andi       s0, -1
                  and          t1, zero, a4
                  div          s1, s5, s5
                  c.addi       s1, 31
                  sltiu        t5, a4, -1637
                  sub          t3, s8, s0
                  c.srai       a4, 22
                  div          tp, a6, s8
                  c.addi16sp   sp, 176
                  c.xor        a1, s1
                  auipc        t6, 776088
                  slli         a4, a6, 29
                  srai         t6, s10, 24
                  c.xor        s1, a1
                  sub          s8, sp, t4
                  srl          s4, s2, a1
                  c.addi4spn   a5, sp, 176
                  c.addi16sp   sp, 256
                  add          a1, s7, ra
                  div          zero, ra, a6
                  c.xor        s1, a2
                  c.addi16sp   sp, -16
                  sra          t1, t1, t6
                  andi         a0, t4, -1950
                  sltiu        s6, zero, 2037
                  rem          s7, t0, s8
                  c.andi       a4, 16
                  div          zero, t5, a2
                  c.li         a4, 3
                  c.xor        a5, a0
                  srl          t5, s7, gp
                  xor          s0, gp, a3
                  c.li         s6, 0
                  rem          a5, t1, s3
                  andi         t6, t3, -232
                  mul          s5, gp, t4
                  sll          t3, a2, ra
                  c.andi       s0, -1
                  xori         s5, a3, -149
                  c.mv         t5, t5
                  c.nop
                  c.and        a5, s0
                  rem          s0, a0, s1
                  xori         t6, s1, 750
                  or           s2, a5, tp
                  lui          s4, 799075
                  srli         gp, s1, 31
                  srli         t3, s11, 2
                  slti         s2, s6, -676
                  sll          a0, a1, s5
                  xor          t4, zero, sp
                  nop
                  div          s7, t3, sp
                  div          s11, zero, a4
                  srli         a0, t4, 14
                  nop
                  c.or         a1, a3
                  slli         a0, s8, 25
                  srai         sp, ra, 22
                  c.add        a0, t4
                  c.srai       s0, 9
                  mul          s2, t0, a1
                  c.addi       t3, 27
                  divu         s9, a4, t1
                  sll          ra, a5, ra
                  srai         s10, s5, 18
                  mulhsu       s6, a6, ra
                  c.xor        s0, a2
                  slti         s10, s10, 19
                  c.slli       sp, 5
                  or           t4, t1, s6
                  mulh         a7, s9, s3
                  c.slli       gp, 1
                  mul          a5, t2, a1
                  add          ra, s11, s10
                  slt          ra, a4, s10
                  and          a6, s10, sp
                  nop
                  slti         s1, a1, -600
                  or           sp, ra, zero
                  c.slli       a4, 24
                  mulh         a4, t1, t4
                  sra          s4, a6, s5
                  and          s7, ra, t3
                  c.andi       a3, 3
                  or           ra, s0, t1
                  or           s1, s3, t3
                  c.addi       ra, 3
                  sltiu        t3, s7, -1128
                  mulh         t5, s3, sp
                  addi         t4, s4, -1737
                  sra          t4, s7, s8
                  c.add        t1, a1
                  c.srai       a5, 5
                  c.xor        a1, s1
                  slli         t3, s7, 15
                  slt          s10, ra, t0
                  c.mv         a5, s0
                  xor          a1, t1, s1
                  auipc        a6, 786338
                  xor          s8, t6, s3
                  sltiu        a6, a1, 532
                  rem          tp, a4, t4
                  c.addi16sp   sp, 224
                  c.slli       t6, 7
                  c.and        a3, s0
                  srli         s10, s10, 24
                  sra          t0, s7, t3
                  c.addi4spn   s0, sp, 240
                  c.srai       a3, 15
                  slli         t3, a2, 1
                  c.and        a5, a5
                  srli         a4, a7, 4
                  divu         s5, tp, s7
                  or           zero, a3, a2
                  srli         s9, sp, 16
                  xori         a1, sp, -1042
                  or           a6, s0, t4
                  c.li         ra, -1
                  srai         gp, a4, 8
                  ori          t6, a3, -1600
                  mulhsu       s8, s7, t2
                  sra          a4, tp, t4
                  mulh         ra, s7, s1
                  sll          s11, a2, a2
                  c.srai       a0, 24
                  c.addi4spn   a4, sp, 80
                  slti         s0, s2, 1985
                  xori         s2, t2, 4
                  c.mv         s2, sp
                  sltiu        t6, s9, 1279
                  srai         s10, a0, 11
                  srl          s4, s7, sp
                  auipc        s2, 954416
                  c.li         s4, -1
                  sll          t3, t4, sp
                  lui          a1, 356512
                  c.srli       s0, 17
                  c.slli       s6, 17
                  divu         s5, s11, t6
                  slli         ra, s1, 9
                  c.and        a0, a5
                  c.mv         s7, s5
                  sll          s1, t6, t2
                  c.slli       t4, 11
                  c.add        s2, t0
                  and          s8, sp, a0
                  c.lui        s6, 20
                  c.or         a3, a0
                  c.slli       a7, 29
                  mul          s10, t0, ra
                  auipc        a1, 505067
                  c.slli       t3, 19
                  and          s10, s7, s8
                  mulhu        s6, zero, s6
                  slti         s1, tp, 971
                  srli         s7, s3, 25
                  nop
                  addi         a6, a1, 1184
                  ori          t0, a2, 601
                  c.mv         a0, a2
                  c.xor        a4, a5
                  div          a6, gp, t2
                  divu         s8, s6, s3
                  c.li         t6, -1
                  c.or         s0, a3
                  xori         a5, s6, -863
                  mul          s4, s5, a3
                  c.slli       t4, 18
                  c.addi       t5, -1
                  auipc        sp, 88432
                  auipc        t6, 799072
                  slli         t0, s2, 21
                  or           tp, s2, a0
                  divu         s0, a2, a1
                  mulh         t1, a3, t2
                  auipc        sp, 458963
                  andi         sp, s4, 297
                  andi         sp, ra, 531
                  c.addi16sp   sp, -16
                  nop
                  addi         gp, s11, -1883
                  slti         a1, s9, -1254
                  lui          t3, 333386
                  ori          t4, s7, 711
                  nop
                  c.andi       s0, -1
                  mulh         a1, tp, a5
                  c.and        a1, a4
                  c.sub        a5, a5
                  srl          a6, s3, s0
                  mulh         s5, s9, s9
                  sra          s0, zero, t5
                  div          a5, sp, s3
                  nop
                  sltu         s9, s0, t0
                  slt          s9, tp, a4
                  auipc        s6, 291231
                  nop
                  c.addi16sp   sp, -16
                  rem          a5, a7, t1
                  mul          a4, a1, s6
                  xori         a4, sp, -684
                  xor          t1, s5, t4
                  slt          s4, t1, ra
                  c.srai       a0, 17
                  mulhu        s1, s9, t2
                  slti         t3, zero, 1732
                  c.nop
                  andi         t6, s9, 654
                  ori          a3, s6, 1258
                  c.li         s1, 25
                  c.srai       a3, 18
                  sltu         a6, sp, s0
                  c.andi       a5, 26
                  and          s9, gp, a6
                  c.srai       a3, 21
                  nop
                  addi         t6, s11, 941
                  c.srli       a0, 1
                  c.nop
                  add          s9, s9, sp
                  div          tp, a5, t4
                  c.andi       a5, -1
                  mulhsu       t1, s11, s5
                  and          s7, a4, a4
                  addi         ra, s0, 814
                  xor          t1, tp, a0
                  mul          s7, a5, t5
                  nop
                  c.sub        s1, s0
                  or           sp, s7, s5
                  and          t6, s2, zero
                  xori         a5, t1, -1286
                  addi         ra, s8, 1726
                  sub          s4, t1, t0
                  sltiu        a0, s9, 257
                  c.addi4spn   a3, sp, 480
                  xori         a6, s6, -489
                  addi         s10, a3, 1456
                  sltu         s10, s2, t3
                  sra          a4, s6, sp
                  mulhu        s6, t4, a0
                  c.sub        s1, a0
                  or           tp, s1, a0
                  c.and        a0, s0
                  c.addi4spn   a3, sp, 368
                  c.mv         s11, s7
                  ori          s0, t1, 1817
                  c.srli       a1, 27
                  c.addi4spn   a4, sp, 192
                  and          a1, s10, s8
                  srai         s9, s9, 24
                  c.addi       a3, -1
                  c.andi       a5, -1
                  c.addi       a5, 8
                  c.addi16sp   sp, -16
                  slti         s2, t6, 1848
                  divu         s11, tp, s4
                  mulh         sp, t4, s10
                  or           ra, zero, a4
                  xori         sp, s8, 1660
                  c.add        t5, t3
                  c.mv         s2, s6
                  rem          a1, t1, gp
                  c.add        a6, ra
                  div          zero, a0, t0
                  srai         t6, s7, 30
                  xor          s0, s7, t2
                  mulh         a5, s6, t4
                  slti         a5, t3, 1353
                  srli         t1, s3, 12
                  c.addi       a3, 17
                  c.sub        a1, a4
                  sltu         a5, t2, s9
                  nop
                  c.mv         s2, s6
                  c.slli       tp, 3
                  sll          s1, a2, a7
                  slt          a3, a7, zero
                  sll          zero, s5, tp
                  srli         a4, s6, 14
                  c.addi4spn   a3, sp, 704
                  c.andi       a1, -1
                  mulhsu       s11, a3, ra
                  andi         a4, a4, 496
                  add          s7, s4, s0
                  sltu         t1, s6, a0
                  andi         sp, t4, -1179
                  slt          s4, t4, a2
                  c.lui        gp, 11
                  xor          a0, s10, s9
                  xori         s11, ra, -1768
                  c.add        s7, t3
                  auipc        t3, 758528
                  c.li         a3, -1
                  slli         s0, sp, 3
                  sll          s4, tp, s5
                  slt          zero, a4, s10
                  sub          s0, zero, s11
                  c.andi       a1, -1
                  div          a0, s6, s7
                  c.xor        a4, a2
                  lui          a3, 720340
                  c.lui        s5, 13
                  div          t1, t5, a0
                  addi         s1, t2, -1469
                  c.add        a1, s6
                  divu         s7, sp, a5
                  c.lui        t1, 27
                  c.addi4spn   a5, sp, 928
                  c.or         s1, a4
                  sub          t4, a4, s11
                  slli         s1, t5, 23
                  addi         a4, sp, 1352
                  c.add        s2, t5
                  c.nop
                  divu         tp, t1, zero
                  sltiu        ra, t1, -488
                  sltu         a1, a7, gp
                  slt          a5, s10, a0
                  remu         t0, s4, s6
                  slli         s0, s9, 21
                  c.addi       gp, -1
                  c.li         s10, 21
                  slt          s9, a7, s8
                  sltiu        s2, zero, 625
                  ori          a0, s3, -872
                  c.addi4spn   a3, sp, 112
                  c.nop
                  c.lui        s0, 29
                  c.slli       t0, 19
                  add          t3, s2, a5
                  remu         t1, zero, s9
                  c.mv         s2, t4
                  c.and        a1, s0
                  mulhsu       a7, t4, a1
                  slli         a1, s0, 13
                  remu         s11, t6, t3
                  c.slli       a1, 23
                  sltu         a0, a6, zero
                  c.addi4spn   s1, sp, 336
                  c.lui        t3, 26
                  c.srli       s0, 12
                  c.and        s0, a2
                  slt          t1, s6, a5
                  c.nop
                  or           s10, a1, a7
                  c.add        tp, s9
                  lui          t0, 951268
                  div          s6, s6, zero
                  c.addi16sp   sp, 448
                  srl          ra, a2, s7
                  divu         s4, s10, t2
                  remu         s9, s2, t4
                  c.add        s0, t0
                  srli         a7, t2, 21
                  sll          a7, s2, s9
                  auipc        tp, 293130
                  srai         gp, tp, 1
                  divu         a6, s7, t1
                  srai         t0, s4, 6
                  sll          sp, tp, a2
                  slt          s10, t4, s9
                  c.xor        a5, a1
                  rem          s5, ra, s3
                  xori         a0, s7, 758
                  c.li         sp, -1
                  srli         tp, s2, 14
                  add          s4, zero, s0
                  c.li         tp, 23
                  c.or         s1, a1
                  mul          ra, s10, t2
                  slti         t4, a4, 388
                  c.xor        a5, a4
                  addi         a0, s1, -1913
                  c.andi       s1, 16
                  xori         a1, a5, -918
                  c.or         a0, a4
                  c.lui        t6, 24
                  c.nop
                  ori          s0, s5, 1735
                  remu         s1, s4, a1
                  slli         a0, t2, 22
                  slli         t1, s2, 26
                  c.srai       a5, 5
                  divu         s11, a5, s1
                  c.mv         a6, s6
                  sltu         s10, sp, a0
                  srai         s8, a0, 19
                  sub          s11, a1, s2
                  c.srli       a4, 17
                  c.add        s10, a1
                  c.mv         t1, t2
                  addi         gp, s2, -1900
                  xor          s11, t3, s2
                  srli         a5, a3, 9
                  mul          tp, s0, a6
                  xor          a7, s0, s9
                  andi         a1, s9, 918
                  c.sub        a4, a1
                  div          t3, t1, zero
                  c.andi       s1, 20
                  addi         t0, s1, 551
                  c.sub        a1, a3
                  divu         s6, a0, s9
                  c.nop
                  c.addi4spn   a5, sp, 432
                  mulhu        a4, s1, a3
                  c.andi       a4, -1
                  sltiu        a5, s9, -767
                  c.li         a6, -1
                  or           a6, gp, a2
                  and          t0, s1, t6
                  add          s9, t6, s7
                  or           a4, tp, a6
                  rem          s10, a3, s2
                  addi         a0, s6, 1168
                  xor          t3, sp, t1
                  rem          a5, s0, t3
                  divu         s4, a1, s5
                  c.addi4spn   a0, sp, 640
                  c.srli       a1, 22
                  mulhsu       a7, s11, s2
                  remu         s2, t0, a5
                  xor          s8, t5, t0
                  slt          t1, a5, t0
                  or           ra, t6, gp
                  slt          t5, t4, gp
                  auipc        sp, 79419
                  c.xor        a5, a1
                  mulhsu       t1, a5, gp
                  srl          s6, a0, s0
                  srli         a6, t4, 29
                  sub          a0, t1, s1
                  add          gp, s11, t2
                  addi         s8, a3, 404
                  add          s5, a5, t3
                  auipc        t3, 215069
                  c.xor        s0, a4
                  mulhu        s5, s4, tp
                  c.andi       s0, 6
                  srli         s11, a3, 10
                  srli         a3, a0, 0
                  xori         t6, s0, -963
                  div          s6, s0, t6
                  lui          gp, 520103
                  c.mv         a5, s0
                  c.srli       a3, 15
                  ori          s6, zero, -113
                  sltiu        s2, zero, 961
                  c.sub        s1, s1
                  c.lui        a3, 1
                  andi         a7, a5, -1861
                  c.addi16sp   sp, 496
                  c.xor        a0, a1
                  c.nop
                  c.lui        s8, 6
                  c.srai       a3, 30
                  c.slli       s7, 22
                  div          a7, a2, t1
                  mulhsu       s7, ra, sp
                  sub          s11, a1, a6
                  c.addi       s1, -1
                  mulh         a7, sp, s6
                  srl          s11, t1, s5
                  div          s7, s7, a7
                  mulh         t0, s1, t1
                  ori          s2, gp, 1169
                  auipc        s7, 730169
                  div          t3, t0, sp
                  slli         s1, tp, 12
                  srli         t5, a6, 2
                  sll          t6, s11, s3
                  sub          s8, gp, a3
                  div          t3, zero, a3
                  and          s10, s8, a4
                  c.li         s6, 0
                  sltu         s6, s0, s8
                  c.addi       t0, -1
                  c.nop
                  slli         s2, t3, 17
                  sltu         s5, t4, t6
                  sltu         a5, t4, s9
                  or           a6, tp, t2
                  c.sub        a3, a3
                  c.slli       sp, 17
                  div          gp, s5, s4
                  mulh         t5, sp, a6
                  c.srli       a1, 22
                  or           s7, s0, a7
                  srai         s11, gp, 30
                  c.and        a3, a2
                  c.srli       s1, 18
                  c.mv         gp, gp
                  c.li         a1, 28
                  addi         t4, tp, -101
                  c.xor        a3, a5
                  addi         a5, ra, -188
                  remu         gp, t4, gp
                  xor          a0, s10, s5
                  ori          a6, a2, 2018
                  srli         s6, a5, 17
                  rem          zero, zero, s11
                  c.or         a4, a4
                  andi         a4, a5, -1419
                  slli         a3, a4, 7
                  c.srli       a5, 29
                  c.srai       a5, 2
                  mulhsu       a7, s4, gp
                  c.sub        a4, a3
                  c.add        s10, s6
                  c.addi16sp   sp, -16
                  or           tp, s0, s1
                  rem          s11, s3, ra
                  sll          ra, s3, t6
                  c.sub        a0, a5
                  c.sub        a3, s0
                  mulhsu       s10, gp, s1
                  c.mv         s10, a7
                  sra          t4, a7, sp
                  nop
                  la x12, test_done
                  jalr x0, x12, 0
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
                  addi x7, x7, -4
                  sw  x19, (x7)
                  add x19, x7, zero
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x7, x19, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x25, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x25, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x25, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x25, x2, ecall_handler
                  li x2, 0x1
                  beq x25, x2, instr_fault_handler
                  li x2, 0x5
                  beq x25, x2, load_fault_handler
                  li x2, 0x7
                  beq x25, x2, store_fault_handler
                  li x2, 0xc
                  beq x25, x2, pt_fault_handler
                  li x2, 0xd
                  beq x25, x2, pt_fault_handler
                  li x2, 0xf
                  beq x25, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x7, x19, zero
                  lw  x19, (x7)
                  addi x7, x7, 4
                  mret

load_fault_handler:
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x7, x19, zero
                  lw  x19, (x7)
                  addi x7, x7, 4
                  mret

store_fault_handler:
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x7, x19, zero
                  lw  x19, (x7)
                  addi x7, x7, 4
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x7, x19, zero
                  lw  x19, (x7)
                  addi x7, x7, 4
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x7, x19, zero
                  lw  x19, (x7)
                  addi x7, x7, 4
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x19, x7, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  add x7, x19, zero
                  lw  x19, (x7)
                  addi x7, x7, 4
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
