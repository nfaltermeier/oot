glabel func_800F4A70
/* B6BC10 800F4A70 3C0E8017 */  lui   $t6, %hi(D_8016B8B2) # $t6, 0x8017
/* B6BC14 800F4A74 91CEB8B2 */  lbu   $t6, %lo(D_8016B8B2)($t6)
/* B6BC18 800F4A78 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6BC1C 800F4A7C 24020001 */  li    $v0, 1
/* B6BC20 800F4A80 144E0015 */  bne   $v0, $t6, .L800F4AD8
/* B6BC24 800F4A84 AFBF0014 */   sw    $ra, 0x14($sp)
/* B6BC28 800F4A88 3C068017 */  lui   $a2, %hi(D_8016B8B0) # $a2, 0x8017
/* B6BC2C 800F4A8C 3C0F8017 */  lui   $t7, %hi(D_8016B8B1) # $t7, 0x8017
/* B6BC30 800F4A90 91EFB8B1 */  lbu   $t7, %lo(D_8016B8B1)($t7)
/* B6BC34 800F4A94 90C6B8B0 */  lbu   $a2, %lo(D_8016B8B0)($a2)
/* B6BC38 800F4A98 00002025 */  move  $a0, $zero
/* B6BC3C 800F4A9C 00002825 */  move  $a1, $zero
/* B6BC40 800F4AA0 10CF000A */  beq   $a2, $t7, .L800F4ACC
/* B6BC44 800F4AA4 00000000 */   nop   
/* B6BC48 800F4AA8 0C03E890 */  jal   func_800FA240
/* B6BC4C 800F4AAC 2407000A */   li    $a3, 10
/* B6BC50 800F4AB0 3C188017 */  lui   $t8, %hi(D_8016B8B0) # $t8, 0x8017
/* B6BC54 800F4AB4 9318B8B0 */  lbu   $t8, %lo(D_8016B8B0)($t8)
/* B6BC58 800F4AB8 3C018017 */  lui   $at, %hi(D_8016B8B1) # $at, 0x8017
/* B6BC5C 800F4ABC 24190001 */  li    $t9, 1
/* B6BC60 800F4AC0 A038B8B1 */  sb    $t8, %lo(D_8016B8B1)($at)
/* B6BC64 800F4AC4 3C018017 */  lui   $at, %hi(D_8016B8B3) # $at, 0x8017
/* B6BC68 800F4AC8 A039B8B3 */  sb    $t9, %lo(D_8016B8B3)($at)
.L800F4ACC:
/* B6BC6C 800F4ACC 3C018017 */  lui   $at, %hi(D_8016B8B2) # $at, 0x8017
/* B6BC70 800F4AD0 10000012 */  b     .L800F4B1C
/* B6BC74 800F4AD4 A020B8B2 */   sb    $zero, %lo(D_8016B8B2)($at)
.L800F4AD8:
/* B6BC78 800F4AD8 3C088017 */  lui   $t0, %hi(D_8016B8B3) # $t0, 0x8017
/* B6BC7C 800F4ADC 9108B8B3 */  lbu   $t0, %lo(D_8016B8B3)($t0)
/* B6BC80 800F4AE0 3C098013 */  lui   $t1, %hi(D_80130608) # $t1, 0x8013
/* B6BC84 800F4AE4 1448000D */  bne   $v0, $t0, .L800F4B1C
/* B6BC88 800F4AE8 00000000 */   nop   
/* B6BC8C 800F4AEC 81290608 */  lb    $t1, %lo(D_80130608)($t1)
/* B6BC90 800F4AF0 00002025 */  move  $a0, $zero
/* B6BC94 800F4AF4 00002825 */  move  $a1, $zero
/* B6BC98 800F4AF8 15200008 */  bnez  $t1, .L800F4B1C
/* B6BC9C 800F4AFC 2406007F */   li    $a2, 127
/* B6BCA0 800F4B00 0C03E890 */  jal   func_800FA240
/* B6BCA4 800F4B04 2407000A */   li    $a3, 10
/* B6BCA8 800F4B08 240A007F */  li    $t2, 127
/* B6BCAC 800F4B0C 3C018017 */  lui   $at, %hi(D_8016B8B1) # $at, 0x8017
/* B6BCB0 800F4B10 A02AB8B1 */  sb    $t2, %lo(D_8016B8B1)($at)
/* B6BCB4 800F4B14 3C018017 */  lui   $at, %hi(D_8016B8B3) # $at, 0x8017
/* B6BCB8 800F4B18 A020B8B3 */  sb    $zero, %lo(D_8016B8B3)($at)
.L800F4B1C:
/* B6BCBC 800F4B1C 3C038013 */  lui   $v1, %hi(D_80130600) # $v1, 0x8013
/* B6BCC0 800F4B20 24630600 */  addiu $v1, %lo(D_80130600) # addiu $v1, $v1, 0x600
/* B6BCC4 800F4B24 90620000 */  lbu   $v0, ($v1)
/* B6BCC8 800F4B28 10400007 */  beqz  $v0, .L800F4B48
/* B6BCCC 800F4B2C 244BFFFF */   addiu $t3, $v0, -1
/* B6BCD0 800F4B30 316C00FF */  andi  $t4, $t3, 0xff
/* B6BCD4 800F4B34 15800004 */  bnez  $t4, .L800F4B48
/* B6BCD8 800F4B38 A06B0000 */   sb    $t3, ($v1)
/* B6BCDC 800F4B3C 3C048013 */  lui   $a0, %hi(D_801305FF) # $a0, 0x8013
/* B6BCE0 800F4B40 0C03D247 */  jal   func_800F491C
/* B6BCE4 800F4B44 908405FF */   lbu   $a0, %lo(D_801305FF)($a0)
.L800F4B48:
/* B6BCE8 800F4B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6BCEC 800F4B4C 27BD0018 */  addiu $sp, $sp, 0x18
/* B6BCF0 800F4B50 03E00008 */  jr    $ra
/* B6BCF4 800F4B54 00000000 */   nop   
