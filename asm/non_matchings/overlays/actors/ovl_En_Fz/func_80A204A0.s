glabel func_80A204A0
/* 006E0 80A204A0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 006E4 80A204A4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 006E8 80A204A8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 006EC 80A204AC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 006F0 80A204B0 908E0247 */  lbu     $t6, 0x0247($a0)           ## 00000247
/* 006F4 80A204B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006F8 80A204B8 51C00012 */  beql    $t6, $zero, .L80A20504     
/* 006FC 80A204BC 92190248 */  lbu     $t9, 0x0248($s0)           ## 00000248
/* 00700 80A204C0 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00704 80A204C4 3C064270 */  lui     $a2, 0x4270                ## $a2 = 42700000
/* 00708 80A204C8 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 0070C 80A204CC 55E00007 */  bnel    $t7, $zero, .L80A204EC     
/* 00710 80A204D0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00714 80A204D4 0C00CE6E */  jal     func_800339B8              
/* 00718 80A204D8 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 0071C 80A204DC 54400009 */  bnel    $v0, $zero, .L80A20504     
/* 00720 80A204E0 92190248 */  lbu     $t9, 0x0248($s0)           ## 00000248
/* 00724 80A204E4 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00728 80A204E8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L80A204EC:
/* 0072C 80A204EC 3058FFF7 */  andi    $t8, $v0, 0xFFF7           ## $t8 = 00000000
/* 00730 80A204F0 A6180088 */  sh      $t8, 0x0088($s0)           ## 00000088
/* 00734 80A204F4 A2000247 */  sb      $zero, 0x0247($s0)         ## 00000247
/* 00738 80A204F8 E6000254 */  swc1    $f0, 0x0254($s0)           ## 00000254
/* 0073C 80A204FC E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 00740 80A20500 92190248 */  lbu     $t9, 0x0248($s0)           ## 00000248
.L80A20504:
/* 00744 80A20504 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00748 80A20508 5320007A */  beql    $t9, $zero, .L80A206F4     
/* 0074C 80A2050C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00750 80A20510 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00754 80A20514 05030012 */  bgezl   $t0, .L80A20560            
/* 00758 80A20518 920201AD */  lbu     $v0, 0x01AD($s0)           ## 000001AD
/* 0075C 80A2051C 92090160 */  lbu     $t1, 0x0160($s0)           ## 00000160
/* 00760 80A20520 240D000A */  addiu   $t5, $zero, 0x000A         ## $t5 = 0000000A
/* 00764 80A20524 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00768 80A20528 312A0002 */  andi    $t2, $t1, 0x0002           ## $t2 = 00000000
/* 0076C 80A2052C 5140000C */  beql    $t2, $zero, .L80A20560     
/* 00770 80A20530 920201AD */  lbu     $v0, 0x01AD($s0)           ## 000001AD
/* 00774 80A20534 920B0161 */  lbu     $t3, 0x0161($s0)           ## 00000161
/* 00778 80A20538 A2000247 */  sb      $zero, 0x0247($s0)         ## 00000247
/* 0077C 80A2053C E6000254 */  swc1    $f0, 0x0254($s0)           ## 00000254
/* 00780 80A20540 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 00784 80A20544 A20C0161 */  sb      $t4, 0x0161($s0)           ## 00000161
/* 00788 80A20548 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0078C 80A2054C 0C2881D2 */  jal     func_80A20748              
/* 00790 80A20550 A60D0244 */  sh      $t5, 0x0244($s0)           ## 00000244
/* 00794 80A20554 10000067 */  beq     $zero, $zero, .L80A206F4   
/* 00798 80A20558 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0079C 80A2055C 920201AD */  lbu     $v0, 0x01AD($s0)           ## 000001AD
.L80A20560:
/* 007A0 80A20560 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 007A4 80A20564 51C00008 */  beql    $t6, $zero, .L80A20588     
/* 007A8 80A20568 92020161 */  lbu     $v0, 0x0161($s0)           ## 00000161
/* 007AC 80A2056C 92180161 */  lbu     $t8, 0x0161($s0)           ## 00000161
/* 007B0 80A20570 304FFF7F */  andi    $t7, $v0, 0xFF7F           ## $t7 = 00000000
/* 007B4 80A20574 A20F01AD */  sb      $t7, 0x01AD($s0)           ## 000001AD
/* 007B8 80A20578 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 007BC 80A2057C 1000005C */  beq     $zero, $zero, .L80A206F0   
/* 007C0 80A20580 A2190161 */  sb      $t9, 0x0161($s0)           ## 00000161
/* 007C4 80A20584 92020161 */  lbu     $v0, 0x0161($s0)           ## 00000161
.L80A20588:
/* 007C8 80A20588 30480002 */  andi    $t0, $v0, 0x0002           ## $t0 = 00000000
/* 007CC 80A2058C 51000059 */  beql    $t0, $zero, .L80A206F4     
/* 007D0 80A20590 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007D4 80A20594 920300B1 */  lbu     $v1, 0x00B1($s0)           ## 000000B1
/* 007D8 80A20598 3049FFFD */  andi    $t1, $v0, 0xFFFD           ## $t1 = 00000000
/* 007DC 80A2059C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 007E0 80A205A0 1061003D */  beq     $v1, $at, .L80A20698       
/* 007E4 80A205A4 A2090161 */  sb      $t1, 0x0161($s0)           ## 00000161
/* 007E8 80A205A8 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 007EC 80A205AC 54610051 */  bnel    $v1, $at, .L80A206F4       
/* 007F0 80A205B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 007F4 80A205B4 0C00D58A */  jal     Actor_ApplyDamage
              
/* 007F8 80A205B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007FC 80A205BC 240A0008 */  addiu   $t2, $zero, 0x0008         ## $t2 = 00000008
/* 00800 80A205C0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00804 80A205C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00808 80A205C8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 0080C 80A205CC 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00810 80A205D0 0C00D09B */  jal     func_8003426C              
/* 00814 80A205D4 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 00818 80A205D8 920B00AF */  lbu     $t3, 0x00AF($s0)           ## 000000AF
/* 0081C 80A205DC 240539A5 */  addiu   $a1, $zero, 0x39A5         ## $a1 = 000039A5
/* 00820 80A205E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00824 80A205E4 11600014 */  beq     $t3, $zero, .L80A20638     
/* 00828 80A205E8 00000000 */  nop
/* 0082C 80A205EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00830 80A205F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00834 80A205F4 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00838 80A205F8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0083C 80A205FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00840 80A20600 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 00844 80A20604 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00848 80A20608 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 0084C 80A2060C 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 00850 80A20610 E7A60038 */  swc1    $f6, 0x0038($sp)           
/* 00854 80A20614 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00858 80A20618 2407000A */  addiu   $a3, $zero, 0x000A         ## $a3 = 0000000A
/* 0085C 80A2061C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00860 80A20620 0C288040 */  jal     func_80A20100              
/* 00864 80A20624 E7A8003C */  swc1    $f8, 0x003C($sp)           
/* 00868 80A20628 920C0249 */  lbu     $t4, 0x0249($s0)           ## 00000249
/* 0086C 80A2062C 258D0001 */  addiu   $t5, $t4, 0x0001           ## $t5 = 00000001
/* 00870 80A20630 1000002F */  beq     $zero, $zero, .L80A206F0   
/* 00874 80A20634 A20D0249 */  sb      $t5, 0x0249($s0)           ## 00000249
.L80A20638:
/* 00878 80A20638 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0087C 80A2063C 240539A6 */  addiu   $a1, $zero, 0x39A6         ## $a1 = 000039A6
/* 00880 80A20640 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00884 80A20644 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00888 80A20648 240528CB */  addiu   $a1, $zero, 0x28CB         ## $a1 = 000028CB
/* 0088C 80A2064C C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00890 80A20650 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00894 80A20654 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00898 80A20658 E7B00034 */  swc1    $f16, 0x0034($sp)          
/* 0089C 80A2065C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 008A0 80A20660 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A4 80A20664 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 008A8 80A20668 E7B20038 */  swc1    $f18, 0x0038($sp)          
/* 008AC 80A2066C C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 008B0 80A20670 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 008B4 80A20674 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
/* 008B8 80A20678 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 008BC 80A2067C 0C288040 */  jal     func_80A20100              
/* 008C0 80A20680 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 008C4 80A20684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008C8 80A20688 0C28832B */  jal     func_80A20CAC              
/* 008CC 80A2068C 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 008D0 80A20690 10000018 */  beq     $zero, $zero, .L80A206F4   
/* 008D4 80A20694 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A20698:
/* 008D8 80A20698 0C00D58A */  jal     Actor_ApplyDamage
              
/* 008DC 80A2069C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E0 80A206A0 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 008E4 80A206A4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 008E8 80A206A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008EC 80A206AC 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 008F0 80A206B0 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 008F4 80A206B4 0C00D09B */  jal     func_8003426C              
/* 008F8 80A206B8 24072000 */  addiu   $a3, $zero, 0x2000         ## $a3 = 00002000
/* 008FC 80A206BC 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 00900 80A206C0 240539A6 */  addiu   $a1, $zero, 0x39A6         ## $a1 = 000039A6
/* 00904 80A206C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00908 80A206C8 15E00007 */  bne     $t7, $zero, .L80A206E8     
/* 0090C 80A206CC 00000000 */  nop
/* 00910 80A206D0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00914 80A206D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00918 80A206D8 0C28835F */  jal     func_80A20D7C              
/* 0091C 80A206DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00920 80A206E0 10000004 */  beq     $zero, $zero, .L80A206F4   
/* 00924 80A206E4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A206E8:
/* 00928 80A206E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0092C 80A206EC 240539A5 */  addiu   $a1, $zero, 0x39A5         ## $a1 = 000039A5
.L80A206F0:
/* 00930 80A206F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A206F4:
/* 00934 80A206F4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00938 80A206F8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0093C 80A206FC 03E00008 */  jr      $ra                        
/* 00940 80A20700 00000000 */  nop
