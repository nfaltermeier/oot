glabel func_800E5F88
/* B5D128 800E5F88 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B5D12C 800E5F8C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D130 800E5F90 0C0397CD */  jal   func_800E5F34
/* B5D134 800E5F94 AFA40028 */   sw    $a0, 0x28($sp)
/* B5D138 800E5F98 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5D13C 800E5F9C 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5D140 800E5FA0 90623518 */  lbu   $v0, 0x3518($v1)
/* B5D144 800E5FA4 10400014 */  beqz  $v0, .L800E5FF8
/* B5D148 800E5FA8 00000000 */   nop
/* B5D14C 800E5FAC 0C039704 */  jal   func_800E5C10
/* B5D150 800E5FB0 AFA20024 */   sw    $v0, 0x24($sp)
/* B5D154 800E5FB4 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5D158 800E5FB8 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
/* B5D15C 800E5FBC 8FA70028 */  lw    $a3, 0x28($sp)
/* B5D160 800E5FC0 906E3519 */  lbu   $t6, 0x3519($v1)
/* B5D164 800E5FC4 8FA20024 */  lw    $v0, 0x24($sp)
/* B5D168 800E5FC8 14EE0003 */  bne   $a3, $t6, .L800E5FD8
/* B5D16C 800E5FCC 28410003 */   slti  $at, $v0, 3
/* B5D170 800E5FD0 10000010 */  b     .L800E6014
/* B5D174 800E5FD4 2402FFFE */   li    $v0, -2
.L800E5FD8:
/* B5D178 800E5FD8 14200004 */  bnez  $at, .L800E5FEC
/* B5D17C 800E5FDC 27A50020 */   addiu $a1, $sp, 0x20
/* B5D180 800E5FE0 A0673519 */  sb    $a3, 0x3519($v1)
/* B5D184 800E5FE4 1000000B */  b     .L800E6014
/* B5D188 800E5FE8 2402FFFD */   li    $v0, -3
.L800E5FEC:
/* B5D18C 800E5FEC 8C645BE4 */  lw    $a0, 0x5be4($v1)
/* B5D190 800E5FF0 0C000CA0 */  jal   osRecvMesg
/* B5D194 800E5FF4 24060001 */   li    $a2, 1
.L800E5FF8:
/* B5D198 800E5FF8 0C0397CD */  jal   func_800E5F34
/* B5D19C 800E5FFC 00000000 */   nop
/* B5D1A0 800E6000 3C04F900 */  lui   $a0, 0xf900
/* B5D1A4 800E6004 0C0396BF */  jal   func_800E5AFC
/* B5D1A8 800E6008 8FA50028 */   lw    $a1, 0x28($sp)
/* B5D1AC 800E600C 0C0396E0 */  jal   func_800E5B80
/* B5D1B0 800E6010 00000000 */   nop
.L800E6014:
/* B5D1B4 800E6014 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D1B8 800E6018 27BD0028 */  addiu $sp, $sp, 0x28
/* B5D1BC 800E601C 03E00008 */  jr    $ra
/* B5D1C0 800E6020 00000000 */   nop

