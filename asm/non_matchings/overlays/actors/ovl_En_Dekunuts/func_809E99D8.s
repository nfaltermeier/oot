glabel func_809E99D8
/* 00478 809E99D8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0047C 809E99DC AFB00020 */  sw      $s0, 0x0020($sp)
/* 00480 809E99E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00484 809E99E4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00488 809E99E8 3C050600 */  lui     $a1, %hi(D_06000368)                ## $a1 = 06000000
/* 0048C 809E99EC 24A50368 */  addiu   $a1, $a1, %lo(D_06000368)           ## $a1 = 06000368
/* 00490 809E99F0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00494 809E99F4 0C029490 */  jal     Animation_MorphToPlayOnce
/* 00498 809E99F8 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 0049C 809E99FC 8E0E0304 */  lw      $t6, 0x0304($s0)           ## 00000304
/* 004A0 809E9A00 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004A4 809E9A04 3421F824 */  ori     $at, $at, 0xF824           ## $at = 0001F824
/* 004A8 809E9A08 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 004AC 809E9A0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004B0 809E9A10 01E1C024 */  and     $t8, $t7, $at
/* 004B4 809E9A14 13000005 */  beq     $t8, $zero, .L809E9A2C
/* 004B8 809E9A18 00000000 */  nop
/* 004BC 809E9A1C 8E1902D0 */  lw      $t9, 0x02D0($s0)           ## 000002D0
/* 004C0 809E9A20 87280032 */  lh      $t0, 0x0032($t9)           ## 00000032
/* 004C4 809E9A24 10000006 */  beq     $zero, $zero, .L809E9A40
/* 004C8 809E9A28 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
.L809E9A2C:
/* 004CC 809E9A2C 0C00B69E */  jal     func_8002DA78
/* 004D0 809E9A30 8E0502D0 */  lw      $a1, 0x02D0($s0)           ## 000002D0
/* 004D4 809E9A34 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 004D8 809E9A38 00414821 */  addu    $t1, $v0, $at
/* 004DC 809E9A3C A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
.L809E9A40:
/* 004E0 809E9A40 920A02D9 */  lbu     $t2, 0x02D9($s0)           ## 000002D9
/* 004E4 809E9A44 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 004E8 809E9A48 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 004EC 809E9A4C 3C0C809F */  lui     $t4, %hi(func_809EA4E8)    ## $t4 = 809F0000
/* 004F0 809E9A50 258CA4E8 */  addiu   $t4, $t4, %lo(func_809EA4E8) ## $t4 = 809EA4E8
/* 004F4 809E9A54 314BFFFE */  andi    $t3, $t2, 0xFFFE           ## $t3 = 00000000
/* 004F8 809E9A58 A20B02D9 */  sb      $t3, 0x02D9($s0)           ## 000002D9
/* 004FC 809E9A5C AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 00500 809E9A60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00504 809E9A64 24053880 */  addiu   $a1, $zero, 0x3880         ## $a1 = 00003880
/* 00508 809E9A68 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0050C 809E9A6C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00510 809E9A70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00514 809E9A74 0C00BE0A */  jal     Audio_PlayActorSound2

/* 00518 809E9A78 2405393B */  addiu   $a1, $zero, 0x393B         ## $a1 = 0000393B
/* 0051C 809E9A7C 3C040600 */  lui     $a0, %hi(D_06000368)                ## $a0 = 06000000
/* 00520 809E9A80 0C028800 */  jal     Animation_GetLastFrame

/* 00524 809E9A84 24840368 */  addiu   $a0, $a0, %lo(D_06000368)           ## $a0 = 06000368
/* 00528 809E9A88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0052C 809E9A8C 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00530 809E9A90 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00534 809E9A94 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00538 809E9A98 0C00D09B */  jal     func_8003426C
/* 0053C 809E9A9C AFA20010 */  sw      $v0, 0x0010($sp)
/* 00540 809E9AA0 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00544 809E9AA4 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00548 809E9AA8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0054C 809E9AAC 03E00008 */  jr      $ra
/* 00550 809E9AB0 00000000 */  nop
