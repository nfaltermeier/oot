glabel func_800E3678
/* B5A818 800E3678 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5A81C 800E367C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5A820 800E3680 8C8E0024 */  lw    $t6, 0x24($a0)
/* B5A824 800E3684 00803025 */  move  $a2, $a0
/* B5A828 800E3688 51C00015 */  beql  $t6, $zero, .L800E36E0
/* B5A82C 800E368C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B5A830 800E3690 90840001 */  lbu   $a0, 1($a0)
/* B5A834 800E3694 94C50002 */  lhu   $a1, 2($a2)
/* B5A838 800E3698 0C038D78 */  jal   func_800E35E0
/* B5A83C 800E369C AFA60018 */   sw    $a2, 0x18($sp)
/* B5A840 800E36A0 1040000E */  beqz  $v0, .L800E36DC
/* B5A844 800E36A4 8FA60018 */   lw    $a2, 0x18($sp)
/* B5A848 800E36A8 8C580000 */  lw    $t8, ($v0)
/* B5A84C 800E36AC 8CD90010 */  lw    $t9, 0x10($a2)
/* B5A850 800E36B0 ACD80020 */  sw    $t8, 0x20($a2)
/* B5A854 800E36B4 8C4F0004 */  lw    $t7, 4($v0)
/* B5A858 800E36B8 ACCF0024 */  sw    $t7, 0x24($a2)
/* B5A85C 800E36BC 8C580008 */  lw    $t8, 8($v0)
/* B5A860 800E36C0 ACD80028 */  sw    $t8, 0x28($a2)
/* B5A864 800E36C4 8C4F000C */  lw    $t7, 0xc($v0)
/* B5A868 800E36C8 ACCF002C */  sw    $t7, 0x2c($a2)
/* B5A86C 800E36CC 90480000 */  lbu   $t0, ($v0)
/* B5A870 800E36D0 AC590004 */  sw    $t9, 4($v0)
/* B5A874 800E36D4 3109FFF3 */  andi  $t1, $t0, 0xfff3
/* B5A878 800E36D8 A0490000 */  sb    $t1, ($v0)
.L800E36DC:
/* B5A87C 800E36DC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E36E0:
/* B5A880 800E36E0 27BD0018 */  addiu $sp, $sp, 0x18
/* B5A884 800E36E4 03E00008 */  jr    $ra
/* B5A888 800E36E8 00000000 */   nop

