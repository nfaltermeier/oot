glabel func_80077684
/* AEE824 80077684 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AEE828 80077688 AFBF0014 */  sw    $ra, 0x14($sp)
/* AEE82C 8007768C AFA40018 */  sw    $a0, 0x18($sp)
/* AEE830 80077690 2404000E */  li    $a0, 14
/* AEE834 80077694 24050001 */  li    $a1, 1
/* AEE838 80077698 0C03DB56 */  jal   func_800F6D58
/* AEE83C 8007769C 00003025 */   move  $a2, $zero
/* AEE840 800776A0 2404000F */  li    $a0, 15
/* AEE844 800776A4 24050001 */  li    $a1, 1
/* AEE848 800776A8 0C03DB56 */  jal   func_800F6D58
/* AEE84C 800776AC 00003025 */   move  $a2, $zero
/* AEE850 800776B0 0C03E82D */  jal   func_800FA0B4
/* AEE854 800776B4 00002025 */   move  $a0, $zero
/* AEE858 800776B8 24010001 */  li    $at, 1
/* AEE85C 800776BC 14410005 */  bne   $v0, $at, .L800776D4
/* AEE860 800776C0 240E0080 */   li    $t6, 128
/* AEE864 800776C4 3C018016 */  lui   $at, %hi(gSaveContext+0x13e0) # $at, 0x8016
/* AEE868 800776C8 A02EFA40 */  sb    $t6, %lo(gSaveContext+0x13e0)($at)
/* AEE86C 800776CC 0C01D62B */  jal   func_800758AC
/* AEE870 800776D0 8FA40018 */   lw    $a0, 0x18($sp)
.L800776D4:
/* AEE874 800776D4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AEE878 800776D8 27BD0018 */  addiu $sp, $sp, 0x18
/* AEE87C 800776DC 03E00008 */  jr    $ra
/* AEE880 800776E0 00000000 */   nop   

