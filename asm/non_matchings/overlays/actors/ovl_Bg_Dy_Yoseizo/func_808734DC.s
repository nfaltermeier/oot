.late_rodata
glabel D_8087569C
    .float 1273.0

.text
glabel func_808734DC
/* 00CAC 808734DC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CB0 808734E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CB4 808734E4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00CB8 808734E8 C4840168 */  lwc1    $f4, 0x0168($a0)           ## 00000168
/* 00CBC 808734EC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00CC0 808734F0 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00CC4 808734F4 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00CC8 808734F8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00CCC 808734FC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00CD0 80873500 0C00B7D5 */  jal     func_8002DF54              
/* 00CD4 80873504 E7A4001C */  swc1    $f4, 0x001C($sp)           
/* 00CD8 80873508 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00CDC 8087350C 3C018087 */  lui     $at, %hi(D_8087569C)       ## $at = 80870000
/* 00CE0 80873510 C42A569C */  lwc1    $f10, %lo(D_8087569C)($at) 
/* 00CE4 80873514 C4A8032C */  lwc1    $f8, 0x032C($a1)           ## 0000032C
/* 00CE8 80873518 C4A60324 */  lwc1    $f6, 0x0324($a1)           ## 00000324
/* 00CEC 8087351C 24A40150 */  addiu   $a0, $a1, 0x0150           ## $a0 = 00000150
/* 00CF0 80873520 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00CF4 80873524 4606803E */  c.le.s  $f16, $f6                  
/* 00CF8 80873528 00000000 */  nop
/* 00CFC 8087352C 45000004 */  bc1f    .L80873540                 
/* 00D00 80873530 00000000 */  nop
/* 00D04 80873534 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00D08 80873538 00000000 */  nop
/* 00D0C 8087353C E4B20324 */  swc1    $f18, 0x0324($a1)          ## 00000324
.L80873540:
/* 00D10 80873540 0C02927F */  jal     SkelAnime_Update
              
/* 00D14 80873544 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00D18 80873548 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00D1C 8087354C C7A4001C */  lwc1    $f4, 0x001C($sp)           
/* 00D20 80873550 C4A8032C */  lwc1    $f8, 0x032C($a1)           ## 0000032C
/* 00D24 80873554 4604403E */  c.le.s  $f8, $f4                   
/* 00D28 80873558 00000000 */  nop
/* 00D2C 8087355C 45020008 */  bc1fl   .L80873580                 
/* 00D30 80873560 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D34 80873564 84AE02FC */  lh      $t6, 0x02FC($a1)           ## 000002FC
/* 00D38 80873568 3C0F8087 */  lui     $t7, %hi(func_8087358C)    ## $t7 = 80870000
/* 00D3C 8087356C 25EF358C */  addiu   $t7, $t7, %lo(func_8087358C) ## $t7 = 8087358C
/* 00D40 80873570 55C00003 */  bnel    $t6, $zero, .L80873580     
/* 00D44 80873574 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D48 80873578 ACAF014C */  sw      $t7, 0x014C($a1)           ## 0000014C
/* 00D4C 8087357C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80873580:
/* 00D50 80873580 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D54 80873584 03E00008 */  jr      $ra                        
/* 00D58 80873588 00000000 */  nop
