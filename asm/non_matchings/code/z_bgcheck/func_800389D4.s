glabel func_800389D4
/* AAFB74 800389D4 848E0008 */  lh    $t6, 8($a0)
/* AAFB78 800389D8 3C018014 */  lui   $at, %hi(D_80138F40)
/* AAFB7C 800389DC C4208F40 */  lwc1  $f0, %lo(D_80138F40)($at)
/* AAFB80 800389E0 448E2000 */  mtc1  $t6, $f4
/* AAFB84 800389E4 00000000 */  nop   
/* AAFB88 800389E8 468021A0 */  cvt.s.w $f6, $f4
/* AAFB8C 800389EC 46003202 */  mul.s $f8, $f6, $f0
/* AAFB90 800389F0 E4A80000 */  swc1  $f8, ($a1)
/* AAFB94 800389F4 848F000A */  lh    $t7, 0xa($a0)
/* AAFB98 800389F8 448F5000 */  mtc1  $t7, $f10
/* AAFB9C 800389FC 00000000 */  nop   
/* AAFBA0 80038A00 46805420 */  cvt.s.w $f16, $f10
/* AAFBA4 80038A04 46008482 */  mul.s $f18, $f16, $f0
/* AAFBA8 80038A08 E4D20000 */  swc1  $f18, ($a2)
/* AAFBAC 80038A0C 8498000C */  lh    $t8, 0xc($a0)
/* AAFBB0 80038A10 44982000 */  mtc1  $t8, $f4
/* AAFBB4 80038A14 00000000 */  nop   
/* AAFBB8 80038A18 468021A0 */  cvt.s.w $f6, $f4
/* AAFBBC 80038A1C 46003202 */  mul.s $f8, $f6, $f0
/* AAFBC0 80038A20 03E00008 */  jr    $ra
/* AAFBC4 80038A24 E4E80000 */   swc1  $f8, ($a3)

