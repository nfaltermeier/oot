glabel func_800F6BDC
/* B6DD7C 800F6BDC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6DD80 800F6BE0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6DD84 800F6BE4 0C03DADA */  jal   func_800F6B68
/* B6DD88 800F6BE8 00000000 */   nop   
/* B6DD8C 800F6BEC 0C0396E0 */  jal   func_800E5B80
/* B6DD90 800F6BF0 00000000 */   nop   
.L800F6BF4:
/* B6DD94 800F6BF4 0C03DAEE */  jal   func_800F6BB8
/* B6DD98 800F6BF8 00000000 */   nop   
/* B6DD9C 800F6BFC 1440FFFD */  bnez  $v0, .L800F6BF4
/* B6DDA0 800F6C00 00000000 */   nop   
/* B6DDA4 800F6C04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6DDA8 800F6C08 27BD0018 */  addiu $sp, $sp, 0x18
/* B6DDAC 800F6C0C 03E00008 */  jr    $ra
/* B6DDB0 800F6C10 00000000 */   nop   

