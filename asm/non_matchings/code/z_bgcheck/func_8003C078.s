glabel func_8003C078
/* AB3218 8003C078 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AB321C 8003C07C AFB00020 */  sw    $s0, 0x20($sp)
/* AB3220 8003C080 AFBF002C */  sw    $ra, 0x2c($sp)
/* AB3224 8003C084 AFB20028 */  sw    $s2, 0x28($sp)
/* AB3228 8003C088 AFB10024 */  sw    $s1, 0x24($sp)
/* AB322C 8003C08C 00808025 */  move  $s0, $a0
/* AB3230 8003C090 AC860000 */  sw    $a2, ($a0)
/* AB3234 8003C094 3C048014 */  lui   $a0, %hi(D_801387CC) # $a0, 0x8014
/* AB3238 8003C098 00A08825 */  move  $s1, $a1
/* AB323C 8003C09C 2412FFFF */  li    $s2, -1
/* AB3240 8003C0A0 0C00084C */  jal   osSyncPrintf
/* AB3244 8003C0A4 248487CC */   addiu $a0, %lo(D_801387CC) # addiu $a0, $a0, -0x7834
/* AB3248 8003C0A8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AB324C 8003C0AC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AB3250 8003C0B0 24010010 */  li    $at, 16
/* AB3254 8003C0B4 85C204B2 */  lh    $v0, 0x4b2($t6)
/* AB3258 8003C0B8 10410007 */  beq   $v0, $at, .L8003C0D8
/* AB325C 8003C0BC 24010020 */   li    $at, 32
/* AB3260 8003C0C0 10410005 */  beq   $v0, $at, .L8003C0D8
/* AB3264 8003C0C4 24010030 */   li    $at, 48
/* AB3268 8003C0C8 10410003 */  beq   $v0, $at, .L8003C0D8
/* AB326C 8003C0CC 24010040 */   li    $at, 64
/* AB3270 8003C0D0 1441001B */  bne   $v0, $at, .L8003C140
/* AB3274 8003C0D4 00000000 */   nop   
.L8003C0D8:
/* AB3278 8003C0D8 862F00A4 */  lh    $t7, 0xa4($s1)
/* AB327C 8003C0DC 24010036 */  li    $at, 54
/* AB3280 8003C0E0 3C048014 */  lui   $a0, %hi(D_80138834) # $a0, 0x8014
/* AB3284 8003C0E4 15E10008 */  bne   $t7, $at, .L8003C108
/* AB3288 8003C0E8 24848834 */   addiu $a0, %lo(D_80138834) # addiu $a0, $a0, -0x77cc
/* AB328C 8003C0EC 3C048014 */  lui   $a0, %hi(D_80138810) # $a0, 0x8014
/* AB3290 8003C0F0 24848810 */  addiu $a0, %lo(D_80138810) # addiu $a0, $a0, -0x77f0
/* AB3294 8003C0F4 0C00084C */  jal   osSyncPrintf
/* AB3298 8003C0F8 24053520 */   li    $a1, 13600
/* AB329C 8003C0FC 24183520 */  li    $t8, 13600
/* AB32A0 8003C100 10000005 */  b     .L8003C118
/* AB32A4 8003C104 AE181460 */   sw    $t8, 0x1460($s0)
.L8003C108:
/* AB32A8 8003C108 0C00084C */  jal   osSyncPrintf
/* AB32AC 8003C10C 24054E20 */   li    $a1, 20000
/* AB32B0 8003C110 24194E20 */  li    $t9, 20000
/* AB32B4 8003C114 AE191460 */  sw    $t9, 0x1460($s0)
.L8003C118:
/* AB32B8 8003C118 24020002 */  li    $v0, 2
/* AB32BC 8003C11C 24030100 */  li    $v1, 256
/* AB32C0 8003C120 240801F4 */  li    $t0, 500
/* AB32C4 8003C124 AE081454 */  sw    $t0, 0x1454($s0)
/* AB32C8 8003C128 AE031458 */  sw    $v1, 0x1458($s0)
/* AB32CC 8003C12C AE03145C */  sw    $v1, 0x145c($s0)
/* AB32D0 8003C130 AE02001C */  sw    $v0, 0x1c($s0)
/* AB32D4 8003C134 AE020020 */  sw    $v0, 0x20($s0)
/* AB32D8 8003C138 10000043 */  b     .L8003C248
/* AB32DC 8003C13C AE020024 */   sw    $v0, 0x24($s0)
.L8003C140:
/* AB32E0 8003C140 0C00EFC6 */  jal   func_8003BF18
/* AB32E4 8003C144 02202025 */   move  $a0, $s1
/* AB32E8 8003C148 24010001 */  li    $at, 1
/* AB32EC 8003C14C 14410012 */  bne   $v0, $at, .L8003C198
/* AB32F0 8003C150 27A50040 */   addiu $a1, $sp, 0x40
/* AB32F4 8003C154 3409F000 */  li    $t1, 61440
/* AB32F8 8003C158 3C048014 */  lui   $a0, %hi(D_80138858) # $a0, 0x8014
/* AB32FC 8003C15C AE091460 */  sw    $t1, 0x1460($s0)
/* AB3300 8003C160 24848858 */  addiu $a0, %lo(D_80138858) # addiu $a0, $a0, -0x77a8
/* AB3304 8003C164 0C00084C */  jal   osSyncPrintf
/* AB3308 8003C168 3405F000 */   li    $a1, 61440
/* AB330C 8003C16C 24020010 */  li    $v0, 16
/* AB3310 8003C170 24050200 */  li    $a1, 512
/* AB3314 8003C174 240A03E8 */  li    $t2, 1000
/* AB3318 8003C178 240B0004 */  li    $t3, 4
/* AB331C 8003C17C AE0A1454 */  sw    $t2, 0x1454($s0)
/* AB3320 8003C180 AE051458 */  sw    $a1, 0x1458($s0)
/* AB3324 8003C184 AE05145C */  sw    $a1, 0x145c($s0)
/* AB3328 8003C188 AE02001C */  sw    $v0, 0x1c($s0)
/* AB332C 8003C18C AE0B0020 */  sw    $t3, 0x20($s0)
/* AB3330 8003C190 1000002D */  b     .L8003C248
/* AB3334 8003C194 AE020024 */   sw    $v0, 0x24($s0)
.L8003C198:
/* AB3338 8003C198 0C00EFD7 */  jal   func_8003BF5C
/* AB333C 8003C19C 862400A4 */   lh    $a0, 0xa4($s1)
/* AB3340 8003C1A0 10400004 */  beqz  $v0, .L8003C1B4
/* AB3344 8003C1A4 3C048014 */   lui   $a0, %hi(D_8013887C) # $a0, 0x8014
/* AB3348 8003C1A8 8FAC0040 */  lw    $t4, 0x40($sp)
/* AB334C 8003C1AC 10000004 */  b     .L8003C1C0
/* AB3350 8003C1B0 AE0C1460 */   sw    $t4, 0x1460($s0)
.L8003C1B4:
/* AB3354 8003C1B4 3C0D0001 */  lui   $t5, (0x0001CC00 >> 16) # lui $t5, 1
/* AB3358 8003C1B8 35ADCC00 */  ori   $t5, (0x0001CC00 & 0xFFFF) # ori $t5, $t5, 0xcc00
/* AB335C 8003C1BC AE0D1460 */  sw    $t5, 0x1460($s0)
.L8003C1C0:
/* AB3360 8003C1C0 2484887C */  addiu $a0, %lo(D_8013887C) # addiu $a0, $a0, -0x7784
/* AB3364 8003C1C4 0C00084C */  jal   osSyncPrintf
/* AB3368 8003C1C8 8E051460 */   lw    $a1, 0x1460($s0)
/* AB336C 8003C1CC 24050200 */  li    $a1, 512
/* AB3370 8003C1D0 240E03E8 */  li    $t6, 1000
/* AB3374 8003C1D4 3C028012 */  lui   $v0, %hi(D_80119E94) # $v0, 0x8012
/* AB3378 8003C1D8 3C038012 */  lui   $v1, %hi(D_80119EAC) # $v1, 0x8012
/* AB337C 8003C1DC AE0E1454 */  sw    $t6, 0x1454($s0)
/* AB3380 8003C1E0 AE051458 */  sw    $a1, 0x1458($s0)
/* AB3384 8003C1E4 AE05145C */  sw    $a1, 0x145c($s0)
/* AB3388 8003C1E8 00002025 */  move  $a0, $zero
/* AB338C 8003C1EC 24639EAC */  addiu $v1, %lo(D_80119EAC) # addiu $v1, $v1, -0x6154
/* AB3390 8003C1F0 24429E94 */  addiu $v0, %lo(D_80119E94) # addiu $v0, $v0, -0x616c
/* AB3394 8003C1F4 862F00A4 */  lh    $t7, 0xa4($s1)
.L8003C1F8:
/* AB3398 8003C1F8 84580000 */  lh    $t8, ($v0)
/* AB339C 8003C1FC 55F8000A */  bnel  $t7, $t8, .L8003C228
/* AB33A0 8003C200 2442000C */   addiu $v0, $v0, 0xc
/* AB33A4 8003C204 84590002 */  lh    $t9, 2($v0)
/* AB33A8 8003C208 24040001 */  li    $a0, 1
/* AB33AC 8003C20C AE19001C */  sw    $t9, 0x1c($s0)
/* AB33B0 8003C210 84480004 */  lh    $t0, 4($v0)
/* AB33B4 8003C214 AE080020 */  sw    $t0, 0x20($s0)
/* AB33B8 8003C218 84490006 */  lh    $t1, 6($v0)
/* AB33BC 8003C21C AE090024 */  sw    $t1, 0x24($s0)
/* AB33C0 8003C220 8C520008 */  lw    $s2, 8($v0)
/* AB33C4 8003C224 2442000C */  addiu $v0, $v0, 0xc
.L8003C228:
/* AB33C8 8003C228 5443FFF3 */  bnel  $v0, $v1, .L8003C1F8
/* AB33CC 8003C22C 862F00A4 */   lh    $t7, 0xa4($s1)
/* AB33D0 8003C230 14800005 */  bnez  $a0, .L8003C248
/* AB33D4 8003C234 24020010 */   li    $v0, 16
/* AB33D8 8003C238 240A0004 */  li    $t2, 4
/* AB33DC 8003C23C AE02001C */  sw    $v0, 0x1c($s0)
/* AB33E0 8003C240 AE0A0020 */  sw    $t2, 0x20($s0)
/* AB33E4 8003C244 AE020024 */  sw    $v0, 0x24($s0)
.L8003C248:
/* AB33E8 8003C248 8E0B001C */  lw    $t3, 0x1c($s0)
/* AB33EC 8003C24C 8E0D0020 */  lw    $t5, 0x20($s0)
/* AB33F0 8003C250 8E0F0024 */  lw    $t7, 0x24($s0)
/* AB33F4 8003C254 000B6080 */  sll   $t4, $t3, 2
/* AB33F8 8003C258 018B6023 */  subu  $t4, $t4, $t3
/* AB33FC 8003C25C 000C6040 */  sll   $t4, $t4, 1
/* AB3400 8003C260 018D0019 */  multu $t4, $t5
/* AB3404 8003C264 26240074 */  addiu $a0, $s1, 0x74
/* AB3408 8003C268 2406FFFE */  li    $a2, -2
/* AB340C 8003C26C 00007012 */  mflo  $t6
/* AB3410 8003C270 00000000 */  nop   
/* AB3414 8003C274 00000000 */  nop   
/* AB3418 8003C278 01CF0019 */  multu $t6, $t7
/* AB341C 8003C27C 00002812 */  mflo  $a1
/* AB3420 8003C280 0C030EDC */  jal   THA_AllocEndAlign
/* AB3424 8003C284 00000000 */   nop   
/* AB3428 8003C288 14400005 */  bnez  $v0, .L8003C2A0
/* AB342C 8003C28C AE020040 */   sw    $v0, 0x40($s0)
/* AB3430 8003C290 3C048014 */  lui   $a0, %hi(D_801388A4) # $a0, 0x8014
/* AB3434 8003C294 248488A4 */  addiu $a0, %lo(D_801388A4) # addiu $a0, $a0, -0x775c
/* AB3438 8003C298 0C000B94 */  jal   LogUtils_HungupThread
/* AB343C 8003C29C 24051050 */   li    $a1, 4176
.L8003C2A0:
/* AB3440 8003C2A0 8E020000 */  lw    $v0, ($s0)
/* AB3444 8003C2A4 8E05001C */  lw    $a1, 0x1c($s0)
/* AB3448 8003C2A8 260C0034 */  addiu $t4, $s0, 0x34
/* AB344C 8003C2AC 84580000 */  lh    $t8, ($v0)
/* AB3450 8003C2B0 26060010 */  addiu $a2, $s0, 0x10
/* AB3454 8003C2B4 26070028 */  addiu $a3, $s0, 0x28
/* AB3458 8003C2B8 44982000 */  mtc1  $t8, $f4
/* AB345C 8003C2BC 00000000 */  nop   
/* AB3460 8003C2C0 468021A0 */  cvt.s.w $f6, $f4
/* AB3464 8003C2C4 E6060004 */  swc1  $f6, 4($s0)
/* AB3468 8003C2C8 84590002 */  lh    $t9, 2($v0)
/* AB346C 8003C2CC C60C0004 */  lwc1  $f12, 4($s0)
/* AB3470 8003C2D0 44994000 */  mtc1  $t9, $f8
/* AB3474 8003C2D4 00000000 */  nop   
/* AB3478 8003C2D8 468042A0 */  cvt.s.w $f10, $f8
/* AB347C 8003C2DC E60A0008 */  swc1  $f10, 8($s0)
/* AB3480 8003C2E0 84480004 */  lh    $t0, 4($v0)
/* AB3484 8003C2E4 44888000 */  mtc1  $t0, $f16
/* AB3488 8003C2E8 00000000 */  nop   
/* AB348C 8003C2EC 468084A0 */  cvt.s.w $f18, $f16
/* AB3490 8003C2F0 E612000C */  swc1  $f18, 0xc($s0)
/* AB3494 8003C2F4 84490006 */  lh    $t1, 6($v0)
/* AB3498 8003C2F8 44892000 */  mtc1  $t1, $f4
/* AB349C 8003C2FC 00000000 */  nop   
/* AB34A0 8003C300 468021A0 */  cvt.s.w $f6, $f4
/* AB34A4 8003C304 E6060010 */  swc1  $f6, 0x10($s0)
/* AB34A8 8003C308 844A0008 */  lh    $t2, 8($v0)
/* AB34AC 8003C30C 448A4000 */  mtc1  $t2, $f8
/* AB34B0 8003C310 00000000 */  nop   
/* AB34B4 8003C314 468042A0 */  cvt.s.w $f10, $f8
/* AB34B8 8003C318 E60A0014 */  swc1  $f10, 0x14($s0)
/* AB34BC 8003C31C 844B000A */  lh    $t3, 0xa($v0)
/* AB34C0 8003C320 448B8000 */  mtc1  $t3, $f16
/* AB34C4 8003C324 00000000 */  nop   
/* AB34C8 8003C328 468084A0 */  cvt.s.w $f18, $f16
/* AB34CC 8003C32C E6120018 */  swc1  $f18, 0x18($s0)
/* AB34D0 8003C330 0C00EFFD */  jal   func_8003BFF4
/* AB34D4 8003C334 AFAC0010 */   sw    $t4, 0x10($sp)
/* AB34D8 8003C338 C60C0008 */  lwc1  $f12, 8($s0)
/* AB34DC 8003C33C 8E050020 */  lw    $a1, 0x20($s0)
/* AB34E0 8003C340 260D0038 */  addiu $t5, $s0, 0x38
/* AB34E4 8003C344 AFAD0010 */  sw    $t5, 0x10($sp)
/* AB34E8 8003C348 26060014 */  addiu $a2, $s0, 0x14
/* AB34EC 8003C34C 0C00EFFD */  jal   func_8003BFF4
/* AB34F0 8003C350 2607002C */   addiu $a3, $s0, 0x2c
/* AB34F4 8003C354 C60C000C */  lwc1  $f12, 0xc($s0)
/* AB34F8 8003C358 8E050024 */  lw    $a1, 0x24($s0)
/* AB34FC 8003C35C 260E003C */  addiu $t6, $s0, 0x3c
/* AB3500 8003C360 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB3504 8003C364 26060018 */  addiu $a2, $s0, 0x18
/* AB3508 8003C368 0C00EFFD */  jal   func_8003BFF4
/* AB350C 8003C36C 26070030 */   addiu $a3, $s0, 0x30
/* AB3510 8003C370 8E0F001C */  lw    $t7, 0x1c($s0)
/* AB3514 8003C374 24020006 */  li    $v0, 6
/* AB3518 8003C378 8E190020 */  lw    $t9, 0x20($s0)
/* AB351C 8003C37C 01E20019 */  multu $t7, $v0
/* AB3520 8003C380 8E090024 */  lw    $t1, 0x24($s0)
/* AB3524 8003C384 8E0B0000 */  lw    $t3, ($s0)
/* AB3528 8003C388 8E0E1454 */  lw    $t6, 0x1454($s0)
/* AB352C 8003C38C 956C0014 */  lhu   $t4, 0x14($t3)
/* AB3530 8003C390 8E0B145C */  lw    $t3, 0x145c($s0)
/* AB3534 8003C394 000E7880 */  sll   $t7, $t6, 2
/* AB3538 8003C398 0000C012 */  mflo  $t8
/* AB353C 8003C39C 00000000 */  nop   
/* AB3540 8003C3A0 00000000 */  nop   
/* AB3544 8003C3A4 03190019 */  multu $t8, $t9
/* AB3548 8003C3A8 8E191458 */  lw    $t9, 0x1458($s0)
/* AB354C 8003C3AC 00004012 */  mflo  $t0
/* AB3550 8003C3B0 00000000 */  nop   
/* AB3554 8003C3B4 00000000 */  nop   
/* AB3558 8003C3B8 01090019 */  multu $t0, $t1
/* AB355C 8003C3BC 00194100 */  sll   $t0, $t9, 4
/* AB3560 8003C3C0 00005012 */  mflo  $t2
/* AB3564 8003C3C4 014C6821 */  addu  $t5, $t2, $t4
/* AB3568 8003C3C8 01AFC021 */  addu  $t8, $t5, $t7
/* AB356C 8003C3CC 01620019 */  multu $t3, $v0
/* AB3570 8003C3D0 03084821 */  addu  $t1, $t8, $t0
/* AB3574 8003C3D4 00005012 */  mflo  $t2
/* AB3578 8003C3D8 012A6021 */  addu  $t4, $t1, $t2
/* AB357C 8003C3DC 258E1464 */  addiu $t6, $t4, 0x1464
/* AB3580 8003C3E0 1A400003 */  blez  $s2, .L8003C3F0
/* AB3584 8003C3E4 AFAE0050 */   sw    $t6, 0x50($sp)
/* AB3588 8003C3E8 1000000E */  b     .L8003C424
/* AB358C 8003C3EC 02403025 */   move  $a2, $s2
.L8003C3F0:
/* AB3590 8003C3F0 8E021460 */  lw    $v0, 0x1460($s0)
/* AB3594 8003C3F4 8FAD0050 */  lw    $t5, 0x50($sp)
/* AB3598 8003C3F8 3C048014 */  lui   $a0, %hi(D_801388B4) # $a0, 0x8014
/* AB359C 8003C3FC 248488B4 */  addiu $a0, %lo(D_801388B4) # addiu $a0, $a0, -0x774c
/* AB35A0 8003C400 004D082B */  sltu  $at, $v0, $t5
/* AB35A4 8003C404 50200005 */  beql  $at, $zero, .L8003C41C
/* AB35A8 8003C408 8FAF0050 */   lw    $t7, 0x50($sp)
/* AB35AC 8003C40C 0C000B94 */  jal   LogUtils_HungupThread
/* AB35B0 8003C410 24051086 */   li    $a1, 4230
/* AB35B4 8003C414 8E021460 */  lw    $v0, 0x1460($s0)
/* AB35B8 8003C418 8FAF0050 */  lw    $t7, 0x50($sp)
.L8003C41C:
/* AB35BC 8003C41C 004F3023 */  subu  $a2, $v0, $t7
/* AB35C0 8003C420 00063082 */  srl   $a2, $a2, 2
.L8003C424:
/* AB35C4 8003C424 26050044 */  addiu $a1, $s0, 0x44
/* AB35C8 8003C428 00A02025 */  move  $a0, $a1
/* AB35CC 8003C42C AFA50034 */  sw    $a1, 0x34($sp)
/* AB35D0 8003C430 0C00F8E6 */  jal   func_8003E398
/* AB35D4 8003C434 AFA60054 */   sw    $a2, 0x54($sp)
/* AB35D8 8003C438 8E190000 */  lw    $t9, ($s0)
/* AB35DC 8003C43C 8FA50034 */  lw    $a1, 0x34($sp)
/* AB35E0 8003C440 8FA60054 */  lw    $a2, 0x54($sp)
/* AB35E4 8003C444 02202025 */  move  $a0, $s1
/* AB35E8 8003C448 0C00F8EB */  jal   func_8003E3AC
/* AB35EC 8003C44C 97270014 */   lhu   $a3, 0x14($t9)
/* AB35F0 8003C450 02002025 */  move  $a0, $s0
/* AB35F4 8003C454 02202825 */  move  $a1, $s1
/* AB35F8 8003C458 0C00EEC6 */  jal   func_8003BB18
/* AB35FC 8003C45C 8E060040 */   lw    $a2, 0x40($s0)
/* AB3600 8003C460 3C048014 */  lui   $a0, %hi(D_801388C4) # $a0, 0x8014
/* AB3604 8003C464 00409025 */  move  $s2, $v0
/* AB3608 8003C468 0C00084C */  jal   osSyncPrintf
/* AB360C 8003C46C 248488C4 */   addiu $a0, %lo(D_801388C4) # addiu $a0, $a0, -0x773c
/* AB3610 8003C470 8FB80050 */  lw    $t8, 0x50($sp)
/* AB3614 8003C474 3C048014 */  lui   $a0, %hi(D_801388CC) # $a0, 0x8014
/* AB3618 8003C478 248488CC */  addiu $a0, %lo(D_801388CC) # addiu $a0, $a0, -0x7734
/* AB361C 8003C47C 0C00084C */  jal   osSyncPrintf
/* AB3620 8003C480 03122821 */   addu  $a1, $t8, $s2
/* AB3624 8003C484 3C048014 */  lui   $a0, %hi(D_801388F0) # $a0, 0x8014
/* AB3628 8003C488 0C00084C */  jal   osSyncPrintf
/* AB362C 8003C48C 248488F0 */   addiu $a0, %lo(D_801388F0) # addiu $a0, $a0, -0x7710
/* AB3630 8003C490 26050050 */  addiu $a1, $s0, 0x50
/* AB3634 8003C494 AFA50034 */  sw    $a1, 0x34($sp)
/* AB3638 8003C498 0C00FA55 */  jal   func_8003E954
/* AB363C 8003C49C 02202025 */   move  $a0, $s1
/* AB3640 8003C4A0 8FA50034 */  lw    $a1, 0x34($sp)
/* AB3644 8003C4A4 0C00FA68 */  jal   func_8003E9A0
/* AB3648 8003C4A8 02202025 */   move  $a0, $s1
/* AB364C 8003C4AC 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB3650 8003C4B0 8FB00020 */  lw    $s0, 0x20($sp)
/* AB3654 8003C4B4 8FB10024 */  lw    $s1, 0x24($sp)
/* AB3658 8003C4B8 8FB20028 */  lw    $s2, 0x28($sp)
/* AB365C 8003C4BC 03E00008 */  jr    $ra
/* AB3660 8003C4C0 27BD0058 */   addiu $sp, $sp, 0x58

