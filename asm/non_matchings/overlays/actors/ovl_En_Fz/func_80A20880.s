glabel func_80A20880
/* 00AC0 80A20880 3C1980A2 */  lui     $t9, %hi(func_80A208A8)    ## $t9 = 80A20000
/* 00AC4 80A20884 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00AC8 80A20888 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00ACC 80A2088C 24180FA0 */  addiu   $t8, $zero, 0x0FA0         ## $t8 = 00000FA0
/* 00AD0 80A20890 273908A8 */  addiu   $t9, $t9, %lo(func_80A208A8) ## $t9 = 80A208A8
/* 00AD4 80A20894 A08E0260 */  sb      $t6, 0x0260($a0)           ## 00000260
/* 00AD8 80A20898 A48F0244 */  sh      $t7, 0x0244($a0)           ## 00000244
/* 00ADC 80A2089C A498025E */  sh      $t8, 0x025E($a0)           ## 0000025E
/* 00AE0 80A208A0 03E00008 */  jr      $ra                        
/* 00AE4 80A208A4 AC99014C */  sw      $t9, 0x014C($a0)           ## 0000014C
