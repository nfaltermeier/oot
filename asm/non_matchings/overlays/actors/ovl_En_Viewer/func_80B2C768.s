.late_rodata
glabel D_80B2D1B4
    .float 0.001

glabel D_80B2D1B8
    .float 0.001

.text
glabel func_80B2C768
/* 02568 80B2C768 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0256C 80B2C76C AFA60028 */  sw      $a2, 0x0028($sp)           
/* 02570 80B2C770 00063400 */  sll     $a2, $a2, 16               
/* 02574 80B2C774 00063403 */  sra     $a2, $a2, 16               
/* 02578 80B2C778 30CE0001 */  andi    $t6, $a2, 0x0001           ## $t6 = 00000000
/* 0257C 80B2C77C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02580 80B2C780 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 02584 80B2C784 15C00023 */  bne     $t6, $zero, .L80B2C814     
/* 02588 80B2C788 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0258C 80B2C78C 0006C080 */  sll     $t8, $a2,  2               
/* 02590 80B2C790 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02594 80B2C794 0306C023 */  subu    $t8, $t8, $a2              
/* 02598 80B2C798 44810000 */  mtc1    $at, $f0                   ## $f0 = 100.00
/* 0259C 80B2C79C 0018C080 */  sll     $t8, $t8,  2               
/* 025A0 80B2C7A0 3C01C3D2 */  lui     $at, 0xC3D2                ## $at = C3D20000
/* 025A4 80B2C7A4 0306C021 */  addu    $t8, $t8, $a2              
/* 025A8 80B2C7A8 44811000 */  mtc1    $at, $f2                   ## $f2 = -420.00
/* 025AC 80B2C7AC 0018C080 */  sll     $t8, $t8,  2               
/* 025B0 80B2C7B0 00981021 */  addu    $v0, $a0, $t8              
/* 025B4 80B2C7B4 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 025B8 80B2C7B8 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 025BC 80B2C7BC 3C01C3C8 */  lui     $at, 0xC3C8                ## $at = C3C80000
/* 025C0 80B2C7C0 44813000 */  mtc1    $at, $f6                   ## $f6 = -400.00
/* 025C4 80B2C7C4 E44001E8 */  swc1    $f0, 0x01E8($v0)           ## 000001E8
/* 025C8 80B2C7C8 E44001F4 */  swc1    $f0, 0x01F4($v0)           ## 000001F4
/* 025CC 80B2C7CC E44201EC */  swc1    $f2, 0x01EC($v0)           ## 000001EC
/* 025D0 80B2C7D0 E44201F8 */  swc1    $f2, 0x01F8($v0)           ## 000001F8
/* 025D4 80B2C7D4 E44401F0 */  swc1    $f4, 0x01F0($v0)           ## 000001F0
/* 025D8 80B2C7D8 E44601FC */  swc1    $f6, 0x01FC($v0)           ## 000001FC
/* 025DC 80B2C7DC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 025E0 80B2C7E0 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 025E4 80B2C7E4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 025E8 80B2C7E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 025EC 80B2C7EC 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 025F0 80B2C7F0 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 025F4 80B2C7F4 46080282 */  mul.s   $f10, $f0, $f8             
/* 025F8 80B2C7F8 3C0180B3 */  lui     $at, %hi(D_80B2D1B4)       ## $at = 80B30000
/* 025FC 80B2C7FC C424D1B4 */  lwc1    $f4, %lo(D_80B2D1B4)($at)  
/* 02600 80B2C800 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 02604 80B2C804 46105480 */  add.s   $f18, $f10, $f16           
/* 02608 80B2C808 46049182 */  mul.s   $f6, $f18, $f4             
/* 0260C 80B2C80C 10000023 */  beq     $zero, $zero, .L80B2C89C   
/* 02610 80B2C810 E4460210 */  swc1    $f6, 0x0210($v0)           ## 00000210
.L80B2C814:
/* 02614 80B2C814 00064080 */  sll     $t0, $a2,  2               
/* 02618 80B2C818 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 0261C 80B2C81C 01064023 */  subu    $t0, $t0, $a2              
/* 02620 80B2C820 44810000 */  mtc1    $at, $f0                   ## $f0 = -100.00
/* 02624 80B2C824 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 02628 80B2C828 00084080 */  sll     $t0, $t0,  2               
/* 0262C 80B2C82C 3C01C3D2 */  lui     $at, 0xC3D2                ## $at = C3D20000
/* 02630 80B2C830 01064021 */  addu    $t0, $t0, $a2              
/* 02634 80B2C834 44811000 */  mtc1    $at, $f2                   ## $f2 = -420.00
/* 02638 80B2C838 00084080 */  sll     $t0, $t0,  2               
/* 0263C 80B2C83C 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 02640 80B2C840 03281021 */  addu    $v0, $t9, $t0              
/* 02644 80B2C844 44814000 */  mtc1    $at, $f8                   ## $f8 = 400.00
/* 02648 80B2C848 3C01C3C8 */  lui     $at, 0xC3C8                ## $at = C3C80000
/* 0264C 80B2C84C 44815000 */  mtc1    $at, $f10                  ## $f10 = -400.00
/* 02650 80B2C850 E44001E8 */  swc1    $f0, 0x01E8($v0)           ## 000001E8
/* 02654 80B2C854 E44001F4 */  swc1    $f0, 0x01F4($v0)           ## 000001F4
/* 02658 80B2C858 E44201EC */  swc1    $f2, 0x01EC($v0)           ## 000001EC
/* 0265C 80B2C85C E44201F8 */  swc1    $f2, 0x01F8($v0)           ## 000001F8
/* 02660 80B2C860 E44801F0 */  swc1    $f8, 0x01F0($v0)           ## 000001F0
/* 02664 80B2C864 E44A01FC */  swc1    $f10, 0x01FC($v0)          ## 000001FC
/* 02668 80B2C868 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0266C 80B2C86C AFA20018 */  sw      $v0, 0x0018($sp)           
/* 02670 80B2C870 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02674 80B2C874 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 02678 80B2C878 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 0267C 80B2C87C 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 02680 80B2C880 46100482 */  mul.s   $f18, $f0, $f16            
/* 02684 80B2C884 3C0180B3 */  lui     $at, %hi(D_80B2D1B8)       ## $at = 80B30000
/* 02688 80B2C888 C428D1B8 */  lwc1    $f8, %lo(D_80B2D1B8)($at)  
/* 0268C 80B2C88C 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 02690 80B2C890 46049180 */  add.s   $f6, $f18, $f4             
/* 02694 80B2C894 46083282 */  mul.s   $f10, $f6, $f8             
/* 02698 80B2C898 E44A0210 */  swc1    $f10, 0x0210($v0)          ## 00000210
.L80B2C89C:
/* 0269C 80B2C89C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 026A0 80B2C8A0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 026A4 80B2C8A4 03E00008 */  jr      $ra                        
/* 026A8 80B2C8A8 00000000 */  nop
