glabel func_809331E8
/* 06C18 809331E8 3C0E8093 */  lui     $t6, %hi(func_8093639C)    ## $t6 = 80930000
/* 06C1C 809331EC 3C188093 */  lui     $t8, %hi(func_80933210)    ## $t8 = 80930000
/* 06C20 809331F0 25CE639C */  addiu   $t6, $t6, %lo(func_8093639C) ## $t6 = 8093639C
/* 06C24 809331F4 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 06C28 809331F8 27183210 */  addiu   $t8, $t8, %lo(func_80933210) ## $t8 = 80933210
/* 06C2C 809331FC AC8E0134 */  sw      $t6, 0x0134($a0)           ## 00000134
/* 06C30 80933200 A48F0198 */  sh      $t7, 0x0198($a0)           ## 00000198
/* 06C34 80933204 A4800722 */  sh      $zero, 0x0722($a0)         ## 00000722
/* 06C38 80933208 03E00008 */  jr      $ra                        
/* 06C3C 8093320C AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
