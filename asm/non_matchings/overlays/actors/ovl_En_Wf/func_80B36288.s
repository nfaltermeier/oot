glabel func_80B36288
/* 025D8 80B36288 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 025DC 80B3628C AFB00028 */  sw      $s0, 0x0028($sp)
/* 025E0 80B36290 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 025E4 80B36294 AFBF002C */  sw      $ra, 0x002C($sp)
/* 025E8 80B36298 3C040600 */  lui     $a0, %hi(D_06004CA4)                ## $a0 = 06000000
/* 025EC 80B3629C 0C028800 */  jal     Animation_GetLastFrame

/* 025F0 80B362A0 24844CA4 */  addiu   $a0, $a0, %lo(D_06004CA4)           ## $a0 = 06004CA4
/* 025F4 80B362A4 860E02F8 */  lh      $t6, 0x02F8($s0)           ## 000002F8
/* 025F8 80B362A8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 025FC 80B362AC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02600 80B362B0 11C00003 */  beq     $t6, $zero, .L80B362C0
/* 02604 80B362B4 468020A0 */  cvt.s.w $f2, $f4
/* 02608 80B362B8 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 0260C 80B362BC A60F02F8 */  sh      $t7, 0x02F8($s0)           ## 000002F8
.L80B362C0:
/* 02610 80B362C0 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 02614 80B362C4 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 02618 80B362C8 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 0261C 80B362CC 44813000 */  mtc1    $at, $f6                   ## $f6 = -4.00
/* 02620 80B362D0 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 02624 80B362D4 AE1802D4 */  sw      $t8, 0x02D4($s0)           ## 000002D4
/* 02628 80B362D8 AE1902E8 */  sw      $t9, 0x02E8($s0)           ## 000002E8
/* 0262C 80B362DC 3C050600 */  lui     $a1, %hi(D_06004CA4)                ## $a1 = 06000000
/* 02630 80B362E0 44060000 */  mfc1    $a2, $f0
/* 02634 80B362E4 44070000 */  mfc1    $a3, $f0
/* 02638 80B362E8 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 0263C 80B362EC AFA80014 */  sw      $t0, 0x0014($sp)
/* 02640 80B362F0 24A54CA4 */  addiu   $a1, $a1, %lo(D_06004CA4)           ## $a1 = 06004CA4
/* 02644 80B362F4 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 02648 80B362F8 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 0264C 80B362FC 0C029468 */  jal     Animation_Change

/* 02650 80B36300 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 02654 80B36304 3C0580B3 */  lui     $a1, %hi(func_80B36328)    ## $a1 = 80B30000
/* 02658 80B36308 24A56328 */  addiu   $a1, $a1, %lo(func_80B36328) ## $a1 = 80B36328
/* 0265C 80B3630C 0C2CCF2C */  jal     func_80B33CB0
/* 02660 80B36310 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02664 80B36314 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02668 80B36318 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0266C 80B3631C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02670 80B36320 03E00008 */  jr      $ra
/* 02674 80B36324 00000000 */  nop
