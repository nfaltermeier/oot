glabel func_80A795C8
/* 00618 80A795C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0061C 80A795CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00620 80A795D0 8C820154 */  lw      $v0, 0x0154($a0)           ## 00000154
/* 00624 80A795D4 3C0E0600 */  lui     $t6, %hi(D_060003B4)                ## $t6 = 06000000
/* 00628 80A795D8 25CE03B4 */  addiu   $t6, $t6, %lo(D_060003B4)           ## $t6 = 060003B4
/* 0062C 80A795DC 11C20008 */  beq     $t6, $v0, .L80A79600       
/* 00630 80A795E0 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00634 80A795E4 3C0F0600 */  lui     $t7, %hi(D_06001BE0)                ## $t7 = 06000000
/* 00638 80A795E8 25EF1BE0 */  addiu   $t7, $t7, %lo(D_06001BE0)           ## $t7 = 06001BE0
/* 0063C 80A795EC 11E20004 */  beq     $t7, $v0, .L80A79600       
/* 00640 80A795F0 3C180601 */  lui     $t8, %hi(D_06013D60)                ## $t8 = 06010000
/* 00644 80A795F4 27183D60 */  addiu   $t8, $t8, %lo(D_06013D60)           ## $t8 = 06013D60
/* 00648 80A795F8 17020003 */  bne     $t8, $v0, .L80A79608       
/* 0064C 80A795FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
.L80A79600:
/* 00650 80A79600 10000001 */  beq     $zero, $zero, .L80A79608   
/* 00654 80A79604 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
.L80A79608:
/* 00658 80A79608 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 0065C 80A7960C 3C1980A8 */  lui     $t9, %hi(func_80A7A568)    ## $t9 = 80A80000
/* 00660 80A79610 2739A568 */  addiu   $t9, $t9, %lo(func_80A7A568) ## $t9 = 80A7A568
/* 00664 80A79614 17220002 */  bne     $t9, $v0, .L80A79620       
/* 00668 80A79618 3C0880A8 */  lui     $t0, %hi(func_80A7B024)    ## $t0 = 80A80000
/* 0066C 80A7961C 24070004 */  addiu   $a3, $zero, 0x0004         ## $a3 = 00000004
.L80A79620:
/* 00670 80A79620 2508B024 */  addiu   $t0, $t0, %lo(func_80A7B024) ## $t0 = 80A7B024
/* 00674 80A79624 1502000B */  bne     $t0, $v0, .L80A79654       
/* 00678 80A79628 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0067C 80A7962C 8CAA00E0 */  lw      $t2, 0x00E0($a1)           ## 000000E0
/* 00680 80A79630 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00684 80A79634 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 00688 80A79638 AC8A0320 */  sw      $t2, 0x0320($a0)           ## 00000320
/* 0068C 80A7963C 8CA900E4 */  lw      $t1, 0x00E4($a1)           ## 000000E4
/* 00690 80A79640 AC890324 */  sw      $t1, 0x0324($a0)           ## 00000324
/* 00694 80A79644 8CAA00E8 */  lw      $t2, 0x00E8($a1)           ## 000000E8
/* 00698 80A79648 E484031C */  swc1    $f4, 0x031C($a0)           ## 0000031C
/* 0069C 80A7964C 1000000A */  beq     $zero, $zero, .L80A79678   
/* 006A0 80A79650 AC8A0328 */  sw      $t2, 0x0328($a0)           ## 00000328
.L80A79654:
/* 006A4 80A79654 8C6C0024 */  lw      $t4, 0x0024($v1)           ## 00000024
/* 006A8 80A79658 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 006AC 80A7965C 44813000 */  mtc1    $at, $f6                   ## $f6 = 16.00
/* 006B0 80A79660 AC8C0320 */  sw      $t4, 0x0320($a0)           ## 00000320
/* 006B4 80A79664 8C6B0028 */  lw      $t3, 0x0028($v1)           ## 00000028
/* 006B8 80A79668 AC8B0324 */  sw      $t3, 0x0324($a0)           ## 00000324
/* 006BC 80A7966C 8C6C002C */  lw      $t4, 0x002C($v1)           ## 0000002C
/* 006C0 80A79670 E486031C */  swc1    $f6, 0x031C($a0)           ## 0000031C
/* 006C4 80A79674 AC8C0328 */  sw      $t4, 0x0328($a0)           ## 00000328
.L80A79678:
/* 006C8 80A79678 0C00D285 */  jal     func_80034A14              
/* 006CC 80A7967C 24850308 */  addiu   $a1, $a0, 0x0308           ## $a1 = 00000308
/* 006D0 80A79680 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006D4 80A79684 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 006D8 80A79688 03E00008 */  jr      $ra                        
/* 006DC 80A7968C 00000000 */  nop
