glabel func_80B450AC
/* 0105C 80B450AC 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01060 80B450B0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01064 80B450B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01068 80B450B8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0106C 80B450BC 3C040601 */  lui     $a0, %hi(D_06009530)                ## $a0 = 06010000
/* 01070 80B450C0 0C028800 */  jal     Animation_GetLastFrame

/* 01074 80B450C4 24849530 */  addiu   $a0, $a0, %lo(D_06009530)           ## $a0 = 06009530
/* 01078 80B450C8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0107C 80B450CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 01080 80B450D0 3C050601 */  lui     $a1, %hi(D_06009530)                ## $a1 = 06010000
/* 01084 80B450D4 468021A0 */  cvt.s.w $f6, $f4
/* 01088 80B450D8 44060000 */  mfc1    $a2, $f0
/* 0108C 80B450DC 24A59530 */  addiu   $a1, $a1, %lo(D_06009530)           ## $a1 = 06009530
/* 01090 80B450E0 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01094 80B450E4 3C074110 */  lui     $a3, 0x4110                ## $a3 = 41100000
/* 01098 80B450E8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0109C 80B450EC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 010A0 80B450F0 0C029468 */  jal     Animation_Change

/* 010A4 80B450F4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 010A8 80B450F8 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 010AC 80B450FC 44815000 */  mtc1    $at, $f10                  ## $f10 = 300.00
/* 010B0 80B45100 C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 010B4 80B45104 96190088 */  lhu     $t9, 0x0088($s0)           ## 00000088
/* 010B8 80B45108 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 010BC 80B4510C 460A4400 */  add.s   $f16, $f8, $f10
/* 010C0 80B45110 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 010C4 80B45114 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 010C8 80B45118 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 010CC 80B4511C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 010D0 80B45120 3C0580B4 */  lui     $a1, %hi(func_80B45174)    ## $a1 = 80B40000
/* 010D4 80B45124 3328FFFD */  andi    $t0, $t9, 0xFFFD           ## $t0 = 00000000
/* 010D8 80B45128 01215024 */  and     $t2, $t1, $at
/* 010DC 80B4512C E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 010E0 80B45130 A20000C8 */  sb      $zero, 0x00C8($s0)         ## 000000C8
/* 010E4 80B45134 A2000404 */  sb      $zero, 0x0404($s0)         ## 00000404
/* 010E8 80B45138 AE0F03F0 */  sw      $t7, 0x03F0($s0)           ## 000003F0
/* 010EC 80B4513C AE1803E4 */  sw      $t8, 0x03E4($s0)           ## 000003E4
/* 010F0 80B45140 AE0003DC */  sw      $zero, 0x03DC($s0)         ## 000003DC
/* 010F4 80B45144 A6080088 */  sh      $t0, 0x0088($s0)           ## 00000088
/* 010F8 80B45148 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 010FC 80B4514C 24A55174 */  addiu   $a1, $a1, %lo(func_80B45174) ## $a1 = 80B45174
/* 01100 80B45150 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01104 80B45154 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 01108 80B45158 0C2D1014 */  jal     func_80B44050
/* 0110C 80B4515C A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 01110 80B45160 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01114 80B45164 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01118 80B45168 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0111C 80B4516C 03E00008 */  jr      $ra
/* 01120 80B45170 00000000 */  nop
