glabel func_80038C78
/* AAFE18 80038C78 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AAFE1C 80038C7C AFB00018 */  sw    $s0, 0x18($sp)
/* AAFE20 80038C80 00E08025 */  move  $s0, $a3
/* AAFE24 80038C84 AFBF001C */  sw    $ra, 0x1c($sp)
/* AAFE28 80038C88 10800006 */  beqz  $a0, .L80038CA4
/* AAFE2C 80038C8C AFA40020 */   sw    $a0, 0x20($sp)
/* AAFE30 80038C90 28A10033 */  slti  $at, $a1, 0x33
/* AAFE34 80038C94 10200003 */  beqz  $at, .L80038CA4
/* AAFE38 80038C98 00000000 */   nop   
/* AAFE3C 80038C9C 14E0001D */  bnez  $a3, .L80038D14
/* AAFE40 80038CA0 24010032 */   li    $at, 50
.L80038CA4:
/* AAFE44 80038CA4 3C048014 */  lui   $a0, %hi(D_80138718) # $a0, 0x8014
/* AAFE48 80038CA8 24848718 */  addiu $a0, %lo(D_80138718) # addiu $a0, $a0, -0x78e8
/* AAFE4C 80038CAC 0C00084C */  jal   osSyncPrintf
/* AAFE50 80038CB0 AFA50024 */   sw    $a1, 0x24($sp)
/* AAFE54 80038CB4 8FA60024 */  lw    $a2, 0x24($sp)
/* AAFE58 80038CB8 8FA50020 */  lw    $a1, 0x20($sp)
/* AAFE5C 80038CBC 3C048014 */  lui   $a0, %hi(D_80138724) # $a0, 0x8014
/* AAFE60 80038CC0 28C60033 */  slti  $a2, $a2, 0x33
/* AAFE64 80038CC4 38C60001 */  xori  $a2, $a2, 1
/* AAFE68 80038CC8 24848724 */  addiu $a0, %lo(D_80138724) # addiu $a0, $a0, -0x78dc
/* AAFE6C 80038CCC 2E070001 */  sltiu $a3, $s0, 1
/* AAFE70 80038CD0 0C00084C */  jal   osSyncPrintf
/* AAFE74 80038CD4 2CA50001 */   sltiu $a1, $a1, 1
/* AAFE78 80038CD8 3C048014 */  lui   $a0, %hi(D_80138780)
/* AAFE7C 80038CDC 0C00084C */  jal   osSyncPrintf
/* AAFE80 80038CE0 24848780 */   addiu $a0, %lo(D_80138780) # addiu $a0, $a0, -0x7880
/* AAFE84 80038CE4 52000014 */  beql  $s0, $zero, .L80038D38
/* AAFE88 80038CE8 8FBF001C */   lw    $ra, 0x1c($sp)
/* AAFE8C 80038CEC 44800000 */  mtc1  $zero, $f0
/* AAFE90 80038CF0 00000000 */  nop   
/* AAFE94 80038CF4 E6000020 */  swc1  $f0, 0x20($s0)
/* AAFE98 80038CF8 E6000014 */  swc1  $f0, 0x14($s0)
/* AAFE9C 80038CFC E6000010 */  swc1  $f0, 0x10($s0)
/* AAFEA0 80038D00 E600000C */  swc1  $f0, 0xc($s0)
/* AAFEA4 80038D04 E6000008 */  swc1  $f0, 8($s0)
/* AAFEA8 80038D08 E6000004 */  swc1  $f0, 4($s0)
/* AAFEAC 80038D0C 10000009 */  b     .L80038D34
/* AAFEB0 80038D10 E6000000 */   swc1  $f0, ($s0)
.L80038D14:
/* AAFEB4 80038D14 14A10004 */  bne   $a1, $at, .L80038D28
/* AAFEB8 80038D18 8FA40020 */   lw    $a0, 0x20($sp)
/* AAFEBC 80038D1C 8CCF0000 */  lw    $t7, ($a2)
/* AAFEC0 80038D20 10000002 */  b     .L80038D2C
/* AAFEC4 80038D24 8DE50010 */   lw    $a1, 0x10($t7)
.L80038D28:
/* AAFEC8 80038D28 8CC51444 */  lw    $a1, 0x1444($a2)
.L80038D2C:
/* AAFECC 80038D2C 0C00E2F8 */  jal   func_80038BE0
/* AAFED0 80038D30 02003025 */   move  $a2, $s0
.L80038D34:
/* AAFED4 80038D34 8FBF001C */  lw    $ra, 0x1c($sp)
.L80038D38:
/* AAFED8 80038D38 8FB00018 */  lw    $s0, 0x18($sp)
/* AAFEDC 80038D3C 27BD0020 */  addiu $sp, $sp, 0x20
/* AAFEE0 80038D40 03E00008 */  jr    $ra
/* AAFEE4 80038D44 00000000 */   nop   
