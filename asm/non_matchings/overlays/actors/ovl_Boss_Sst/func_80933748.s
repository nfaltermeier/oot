.late_rodata
glabel D_80937A08
    .float 0.8

glabel D_80937A0C
    .float 0.4

.text
glabel func_80933748
/* 07178 80933748 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0717C 8093374C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 07180 80933750 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 07184 80933754 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 07188 80933758 848E0198 */  lh      $t6, 0x0198($a0)           ## 00000198
/* 0718C 8093375C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 07190 80933760 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 07194 80933764 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 07198 80933768 11E00025 */  beq     $t7, $zero, .L80933800     
/* 0719C 8093376C 3C018093 */  lui     $at, %hi(D_80937A08)       ## $at = 80930000
/* 071A0 80933770 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 071A4 80933774 44811000 */  mtc1    $at, $f2                   ## $f2 = 60.00
/* 071A8 80933778 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 071AC 8093377C 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 071B0 80933780 C4840068 */  lwc1    $f4, 0x0068($a0)           ## 00000068
/* 071B4 80933784 46062202 */  mul.s   $f8, $f4, $f6              
/* 071B8 80933788 E4880068 */  swc1    $f8, 0x0068($a0)           ## 00000068
/* 071BC 8093378C C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 071C0 80933790 4600103C */  c.lt.s  $f2, $f0                   
/* 071C4 80933794 00000000 */  nop
/* 071C8 80933798 45020004 */  bc1fl   .L809337AC                 
/* 071CC 8093379C E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 071D0 809337A0 10000002 */  beq     $zero, $zero, .L809337AC   
/* 071D4 809337A4 E4820068 */  swc1    $f2, 0x0068($a0)           ## 00000068
/* 071D8 809337A8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
.L809337AC:
/* 071DC 809337AC 260403C4 */  addiu   $a0, $s0, 0x03C4           ## $a0 = 000003C4
/* 071E0 809337B0 0C01DE80 */  jal     Math_StepToF
              
/* 071E4 809337B4 8E060068 */  lw      $a2, 0x0068($s0)           ## 00000068
/* 071E8 809337B8 10400024 */  beq     $v0, $zero, .L8093384C     
/* 071EC 809337BC 00000000 */  nop
/* 071F0 809337C0 0C24D737 */  jal     func_80935CDC              
/* 071F4 809337C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 071F8 809337C8 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 071FC 809337CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 07200 809337D0 10400003 */  beq     $v0, $zero, .L809337E0     
/* 07204 809337D4 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 07208 809337D8 A6180198 */  sh      $t8, 0x0198($s0)           ## 00000198
/* 0720C 809337DC 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L809337E0:
/* 07210 809337E0 50400004 */  beql    $v0, $zero, .L809337F4     
/* 07214 809337E4 8E08011C */  lw      $t0, 0x011C($s0)           ## 0000011C
/* 07218 809337E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0721C 809337EC 240528CB */  addiu   $a1, $zero, 0x28CB         ## $a1 = 000028CB
/* 07220 809337F0 8E08011C */  lw      $t0, 0x011C($s0)           ## 0000011C
.L809337F4:
/* 07224 809337F4 24190005 */  addiu   $t9, $zero, 0x0005         ## $t9 = 00000005
/* 07228 809337F8 10000014 */  beq     $zero, $zero, .L8093384C   
/* 0722C 809337FC A519019A */  sh      $t9, 0x019A($t0)           ## 0000019A
.L80933800:
/* 07230 80933800 C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 07234 80933804 C4307A08 */  lwc1    $f16, %lo(D_80937A08)($at) 
/* 07238 80933808 260403C4 */  addiu   $a0, $s0, 0x03C4           ## $a0 = 000003C4
/* 0723C 8093380C 3C0543FA */  lui     $a1, 0x43FA                ## $a1 = 43FA0000
/* 07240 80933810 46105482 */  mul.s   $f18, $f10, $f16           
/* 07244 80933814 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 07248 80933818 0C01DE80 */  jal     Math_StepToF
              
/* 0724C 8093381C 8E060068 */  lw      $a2, 0x0068($s0)           ## 00000068
/* 07250 80933820 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 07254 80933824 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 07258 80933828 C6040068 */  lwc1    $f4, 0x0068($s0)           ## 00000068
/* 0725C 8093382C 4606203C */  c.lt.s  $f4, $f6                   
/* 07260 80933830 00000000 */  nop
/* 07264 80933834 45000005 */  bc1f    .L8093384C                 
/* 07268 80933838 00000000 */  nop
/* 0726C 8093383C 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 07270 80933840 10400002 */  beq     $v0, $zero, .L8093384C     
/* 07274 80933844 2449FFFF */  addiu   $t1, $v0, 0xFFFF           ## $t1 = FFFFFFFF
/* 07278 80933848 A6090198 */  sh      $t1, 0x0198($s0)           ## 00000198
.L8093384C:
/* 0727C 8093384C 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 07280 80933850 860401A4 */  lh      $a0, 0x01A4($s0)           ## 000001A4
/* 07284 80933854 C60A03C4 */  lwc1    $f10, 0x03C4($s0)          ## 000003C4
/* 07288 80933858 8E0A011C */  lw      $t2, 0x011C($s0)           ## 0000011C
/* 0728C 8093385C 860401A4 */  lh      $a0, 0x01A4($s0)           ## 000001A4
/* 07290 80933860 460A0402 */  mul.s   $f16, $f0, $f10            
/* 07294 80933864 C54803C8 */  lwc1    $f8, 0x03C8($t2)           ## 000003C8
/* 07298 80933868 46104481 */  sub.s   $f18, $f8, $f16            
/* 0729C 8093386C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 072A0 80933870 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 072A4 80933874 C60203C4 */  lwc1    $f2, 0x03C4($s0)           ## 000003C4
/* 072A8 80933878 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 072AC 8093387C 3C018093 */  lui     $at, %hi(D_80937A0C)       ## $at = 80930000
/* 072B0 80933880 46020182 */  mul.s   $f6, $f0, $f2              
/* 072B4 80933884 C44403D0 */  lwc1    $f4, 0x03D0($v0)           ## 000003D0
/* 072B8 80933888 860B0198 */  lh      $t3, 0x0198($s0)           ## 00000198
/* 072BC 8093388C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 072C0 80933890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 072C4 80933894 46062281 */  sub.s   $f10, $f4, $f6             
/* 072C8 80933898 E60A002C */  swc1    $f10, 0x002C($s0)          ## 0000002C
/* 072CC 8093389C C4307A0C */  lwc1    $f16, %lo(D_80937A0C)($at) 
/* 072D0 809338A0 C44803CC */  lwc1    $f8, 0x03CC($v0)           ## 000003CC
/* 072D4 809338A4 46101482 */  mul.s   $f18, $f2, $f16            
/* 072D8 809338A8 46124100 */  add.s   $f4, $f8, $f18             
/* 072DC 809338AC 15600003 */  bne     $t3, $zero, .L809338BC     
/* 072E0 809338B0 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 072E4 809338B4 0C24C11D */  jal     func_80930474              
/* 072E8 809338B8 A04C0195 */  sb      $t4, 0x0195($v0)           ## 00000195
.L809338BC:
/* 072EC 809338BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 072F0 809338C0 0C00BE5D */  jal     func_8002F974              
/* 072F4 809338C4 24053167 */  addiu   $a1, $zero, 0x3167         ## $a1 = 00003167
/* 072F8 809338C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 072FC 809338CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 07300 809338D0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 07304 809338D4 03E00008 */  jr      $ra                        
/* 07308 809338D8 00000000 */  nop
