glabel func_809CB114
/* 00604 809CB114 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00608 809CB118 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0060C 809CB11C 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00610 809CB120 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00614 809CB124 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00618 809CB128 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 0061C 809CB12C 0C02927F */  jal     SkelAnime_Update
              
/* 00620 809CB130 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00624 809CB134 10400005 */  beq     $v0, $zero, .L809CB14C     
/* 00628 809CB138 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0062C 809CB13C 0C272BA8 */  jal     func_809CAEA0              
/* 00630 809CB140 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00634 809CB144 10000031 */  beq     $zero, $zero, .L809CB20C   
/* 00638 809CB148 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809CB14C:
/* 0063C 809CB14C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 00640 809CB150 C4A0017C */  lwc1    $f0, 0x017C($a1)           ## 0000017C
/* 00644 809CB154 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 00648 809CB158 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 0064C 809CB15C 4604003C */  c.lt.s  $f0, $f4                   
/* 00650 809CB160 00000000 */  nop
/* 00654 809CB164 4502000D */  bc1fl   .L809CB19C                 
/* 00658 809CB168 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 0065C 809CB16C 84AE01AE */  lh      $t6, 0x01AE($a1)           ## 000001AE
/* 00660 809CB170 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00664 809CB174 44815000 */  mtc1    $at, $f10                  ## $f10 = 1000.00
/* 00668 809CB178 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0066C 809CB17C 00000000 */  nop
/* 00670 809CB180 46803220 */  cvt.s.w $f8, $f6                   
/* 00674 809CB184 460A4400 */  add.s   $f16, $f8, $f10            
/* 00678 809CB188 4600848D */  trunc.w.s $f18, $f16                 
/* 0067C 809CB18C 44189000 */  mfc1    $t8, $f18                  
/* 00680 809CB190 1000001D */  beq     $zero, $zero, .L809CB208   
/* 00684 809CB194 A4B801AE */  sh      $t8, 0x01AE($a1)           ## 000001AE
/* 00688 809CB198 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
.L809CB19C:
/* 0068C 809CB19C 00000000 */  nop
/* 00690 809CB1A0 4604003C */  c.lt.s  $f0, $f4                   
/* 00694 809CB1A4 00000000 */  nop
/* 00698 809CB1A8 4502000D */  bc1fl   .L809CB1E0                 
/* 0069C 809CB1AC 84AA01AE */  lh      $t2, 0x01AE($a1)           ## 000001AE
/* 006A0 809CB1B0 84B901AE */  lh      $t9, 0x01AE($a1)           ## 000001AE
/* 006A4 809CB1B4 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 006A8 809CB1B8 44815000 */  mtc1    $at, $f10                  ## $f10 = 250.00
/* 006AC 809CB1BC 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 006B0 809CB1C0 00000000 */  nop
/* 006B4 809CB1C4 46803220 */  cvt.s.w $f8, $f6                   
/* 006B8 809CB1C8 460A4400 */  add.s   $f16, $f8, $f10            
/* 006BC 809CB1CC 4600848D */  trunc.w.s $f18, $f16                 
/* 006C0 809CB1D0 44099000 */  mfc1    $t1, $f18                  
/* 006C4 809CB1D4 1000000C */  beq     $zero, $zero, .L809CB208   
/* 006C8 809CB1D8 A4A901AE */  sh      $t1, 0x01AE($a1)           ## 000001AE
/* 006CC 809CB1DC 84AA01AE */  lh      $t2, 0x01AE($a1)           ## 000001AE
.L809CB1E0:
/* 006D0 809CB1E0 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 006D4 809CB1E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 250.00
/* 006D8 809CB1E8 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 006DC 809CB1EC 00000000 */  nop
/* 006E0 809CB1F0 468021A0 */  cvt.s.w $f6, $f4                   
/* 006E4 809CB1F4 46083281 */  sub.s   $f10, $f6, $f8             
/* 006E8 809CB1F8 4600540D */  trunc.w.s $f16, $f10                 
/* 006EC 809CB1FC 440C8000 */  mfc1    $t4, $f16                  
/* 006F0 809CB200 00000000 */  nop
/* 006F4 809CB204 A4AC01AE */  sh      $t4, 0x01AE($a1)           ## 000001AE
.L809CB208:
/* 006F8 809CB208 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809CB20C:
/* 006FC 809CB20C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00700 809CB210 03E00008 */  jr      $ra                        
/* 00704 809CB214 00000000 */  nop
