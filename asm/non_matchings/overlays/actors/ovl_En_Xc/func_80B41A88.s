glabel func_80B41A88
/* 058A8 80B41A88 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 058AC 80B41A8C 8FA40014 */  lw      $a0, 0x0014($sp)           
/* 058B0 80B41A90 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 058B4 80B41A94 AFA7000C */  sw      $a3, 0x000C($sp)           
/* 058B8 80B41A98 8C8E030C */  lw      $t6, 0x030C($a0)           ## 0000030C
/* 058BC 80B41A9C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 058C0 80B41AA0 11C00018 */  beq     $t6, $zero, .L80B41B04     
/* 058C4 80B41AA4 00000000 */  nop
/* 058C8 80B41AA8 14A1000B */  bne     $a1, $at, .L80B41AD8       
/* 058CC 80B41AAC 8FA20010 */  lw      $v0, 0x0010($sp)           
/* 058D0 80B41AB0 844F0000 */  lh      $t7, 0x0000($v0)           ## 00000000
/* 058D4 80B41AB4 84980324 */  lh      $t8, 0x0324($a0)           ## 00000324
/* 058D8 80B41AB8 84480002 */  lh      $t0, 0x0002($v0)           ## 00000002
/* 058DC 80B41ABC 01F8C821 */  addu    $t9, $t7, $t8              
/* 058E0 80B41AC0 A4590000 */  sh      $t9, 0x0000($v0)           ## 00000000
/* 058E4 80B41AC4 84890322 */  lh      $t1, 0x0322($a0)           ## 00000322
/* 058E8 80B41AC8 01095023 */  subu    $t2, $t0, $t1              
/* 058EC 80B41ACC A44A0002 */  sh      $t2, 0x0002($v0)           ## 00000002
/* 058F0 80B41AD0 03E00008 */  jr      $ra                        
/* 058F4 80B41AD4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B41AD8:
/* 058F8 80B41AD8 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 058FC 80B41ADC 14A10009 */  bne     $a1, $at, .L80B41B04       
/* 05900 80B41AE0 8FA20010 */  lw      $v0, 0x0010($sp)           
/* 05904 80B41AE4 844B0000 */  lh      $t3, 0x0000($v0)           ## 00000000
/* 05908 80B41AE8 848C031E */  lh      $t4, 0x031E($a0)           ## 0000031E
/* 0590C 80B41AEC 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 05910 80B41AF0 016C6821 */  addu    $t5, $t3, $t4              
/* 05914 80B41AF4 A44D0000 */  sh      $t5, 0x0000($v0)           ## 00000000
/* 05918 80B41AF8 848F031C */  lh      $t7, 0x031C($a0)           ## 0000031C
/* 0591C 80B41AFC 01CFC021 */  addu    $t8, $t6, $t7              
/* 05920 80B41B00 A4580004 */  sh      $t8, 0x0004($v0)           ## 00000004
.L80B41B04:
/* 05924 80B41B04 03E00008 */  jr      $ra                        
/* 05928 80B41B08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
