.late_rodata
glabel jtbl_8014A584
    .word L800F3694
    .word L800F3694
    .word L800F36AC
    .word L800F36AC
    .word L800F36C0
    .word L800F36C0
    .word L800F3694

glabel D_8014A5A0
    .double 1.0293

glabel D_8014A5A8
    .float 10000

glabel D_8014A5AC
    .float 0.2

glabel D_8014A5B0
    .float 0.2

.text
glabel func_800F35EC
/* B6A78C 800F35EC AFA40000 */  sw    $a0, ($sp)
/* B6A790 800F35F0 308400FF */  andi  $a0, $a0, 0xff
/* B6A794 800F35F4 AFA50004 */  sw    $a1, 4($sp)
/* B6A798 800F35F8 00047080 */  sll   $t6, $a0, 2
/* B6A79C 800F35FC 3C0F8013 */  lui   $t7, %hi(gSoundBanks)
/* B6A7A0 800F3600 30A500FF */  andi  $a1, $a1, 0xff
/* B6A7A4 800F3604 01EE7821 */  addu  $t7, $t7, $t6
/* B6A7A8 800F3608 8DEF33A8 */  lw    $t7, %lo(gSoundBanks)($t7)
/* B6A7AC 800F360C 0005C080 */  sll   $t8, $a1, 2
/* B6A7B0 800F3610 0305C023 */  subu  $t8, $t8, $a1
/* B6A7B4 800F3614 0018C100 */  sll   $t8, $t8, 4
/* B6A7B8 800F3618 01F81821 */  addu  $v1, $t7, $t8
/* B6A7BC 800F361C 94660026 */  lhu   $a2, 0x26($v1)
/* B6A7C0 800F3620 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6A7C4 800F3624 44810000 */  mtc1  $at, $f0
/* B6A7C8 800F3628 30D94000 */  andi  $t9, $a2, 0x4000
/* B6A7CC 800F362C 00001025 */  move  $v0, $zero
/* B6A7D0 800F3630 13200010 */  beqz  $t9, .L800F3674
/* B6A7D4 800F3634 46000086 */   mov.s $f2, $f0
/* B6A7D8 800F3638 3C088017 */  lui   $t0, %hi(gAudioContext+0x297c)
/* B6A7DC 800F363C 8D081AFC */  lw    $t0, %lo(gAudioContext+0x297c)($t0)
/* B6A7E0 800F3640 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B6A7E4 800F3644 3109000F */  andi  $t1, $t0, 0xf
/* B6A7E8 800F3648 44892000 */  mtc1  $t1, $f4
/* B6A7EC 800F364C 05210004 */  bgez  $t1, .L800F3660
/* B6A7F0 800F3650 468021A0 */   cvt.s.w $f6, $f4
/* B6A7F4 800F3654 44814000 */  mtc1  $at, $f8
/* B6A7F8 800F3658 00000000 */  nop   
/* B6A7FC 800F365C 46083180 */  add.s $f6, $f6, $f8
.L800F3660:
/* B6A800 800F3660 3C014340 */  li    $at, 0x43400000 # 0.000000
/* B6A804 800F3664 44815000 */  mtc1  $at, $f10
/* B6A808 800F3668 00000000 */  nop   
/* B6A80C 800F366C 460A3403 */  div.s $f16, $f6, $f10
/* B6A810 800F3670 46100081 */  sub.s $f2, $f0, $f16
.L800F3674:
/* B6A814 800F3674 2C810007 */  sltiu $at, $a0, 7
/* B6A818 800F3678 10200011 */  beqz  $at, .L800F36C0
/* B6A81C 800F367C 00045080 */   sll   $t2, $a0, 2
/* B6A820 800F3680 3C018015 */  lui   $at, %hi(jtbl_8014A584)
/* B6A824 800F3684 002A0821 */  addu  $at, $at, $t2
/* B6A828 800F3688 8C2AA584 */  lw    $t2, %lo(jtbl_8014A584)($at)
/* B6A82C 800F368C 01400008 */  jr    $t2
/* B6A830 800F3690 00000000 */   nop   
glabel L800F3694
/* B6A834 800F3694 3C0B8013 */  lui   $t3, %hi(D_80130644) # $t3, 0x8013
/* B6A838 800F3698 916B0644 */  lbu   $t3, %lo(D_80130644)($t3)
/* B6A83C 800F369C 51600009 */  beql  $t3, $zero, .L800F36C4
/* B6A840 800F36A0 24010001 */   li    $at, 1
/* B6A844 800F36A4 10000006 */  b     .L800F36C0
/* B6A848 800F36A8 24020001 */   li    $v0, 1
glabel L800F36AC
/* B6A84C 800F36AC 3C0C8013 */  lui   $t4, %hi(D_80130648) # $t4, 0x8013
/* B6A850 800F36B0 918C0648 */  lbu   $t4, %lo(D_80130648)($t4)
/* B6A854 800F36B4 51800003 */  beql  $t4, $zero, .L800F36C4
/* B6A858 800F36B8 24010001 */   li    $at, 1
/* B6A85C 800F36BC 24020001 */  li    $v0, 1
.L800F36C0:
glabel L800F36C0
/* B6A860 800F36C0 24010001 */  li    $at, 1
.L800F36C4:
/* B6A864 800F36C4 14410017 */  bne   $v0, $at, .L800F3724
/* B6A868 800F36C8 30D82000 */   andi  $t8, $a2, 0x2000
/* B6A86C 800F36CC 30CD0800 */  andi  $t5, $a2, 0x800
/* B6A870 800F36D0 15A00014 */  bnez  $t5, .L800F3724
/* B6A874 800F36D4 3C0E8017 */   lui   $t6, %hi(gAudioContext+0x297c)
/* B6A878 800F36D8 8DCE1AFC */  lw    $t6, %lo(gAudioContext+0x297c)($t6)
/* B6A87C 800F36DC 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B6A880 800F36E0 31CF000F */  andi  $t7, $t6, 0xf
/* B6A884 800F36E4 448F9000 */  mtc1  $t7, $f18
/* B6A888 800F36E8 05E10004 */  bgez  $t7, .L800F36FC
/* B6A88C 800F36EC 46809120 */   cvt.s.w $f4, $f18
/* B6A890 800F36F0 44814000 */  mtc1  $at, $f8
/* B6A894 800F36F4 00000000 */  nop   
/* B6A898 800F36F8 46082100 */  add.s $f4, $f4, $f8
.L800F36FC:
/* B6A89C 800F36FC 3C014310 */  li    $at, 0x43100000 # 0.000000
/* B6A8A0 800F3700 44813000 */  mtc1  $at, $f6
/* B6A8A4 800F3704 3C018015 */  lui   $at, %hi(D_8014A5A0)
/* B6A8A8 800F3708 D432A5A0 */  ldc1  $f18, %lo(D_8014A5A0)($at)
/* B6A8AC 800F370C 46062283 */  div.s $f10, $f4, $f6
/* B6A8B0 800F3710 46001121 */  cvt.d.s $f4, $f2
/* B6A8B4 800F3714 46005421 */  cvt.d.s $f16, $f10
/* B6A8B8 800F3718 46309201 */  sub.d $f8, $f18, $f16
/* B6A8BC 800F371C 46282182 */  mul.d $f6, $f4, $f8
/* B6A8C0 800F3720 462030A0 */  cvt.s.d $f2, $f6
.L800F3724:
/* B6A8C4 800F3724 17000012 */  bnez  $t8, .L800F3770
/* B6A8C8 800F3728 C460001C */   lwc1  $f0, 0x1c($v1)
/* B6A8CC 800F372C 30D98000 */  andi  $t9, $a2, 0x8000
/* B6A8D0 800F3730 1720000F */  bnez  $t9, .L800F3770
/* B6A8D4 800F3734 3C018015 */   lui   $at, %hi(D_8014A5A8)
/* B6A8D8 800F3738 C42CA5A8 */  lwc1  $f12, %lo(D_8014A5A8)($at)
/* B6A8DC 800F373C 3C018015 */  lui   $at, %hi(D_8014A5AC)
/* B6A8E0 800F3740 4600603E */  c.le.s $f12, $f0
/* B6A8E4 800F3744 00000000 */  nop   
/* B6A8E8 800F3748 45020005 */  bc1fl .L800F3760
/* B6A8EC 800F374C 460C0403 */   div.s $f16, $f0, $f12
/* B6A8F0 800F3750 C42AA5AC */  lwc1  $f10, %lo(D_8014A5AC)($at)
/* B6A8F4 800F3754 10000006 */  b     .L800F3770
/* B6A8F8 800F3758 460A1080 */   add.s $f2, $f2, $f10
/* B6A8FC 800F375C 460C0403 */  div.s $f16, $f0, $f12
.L800F3760:
/* B6A900 800F3760 3C018015 */  lui   $at, %hi(D_8014A5B0)
/* B6A904 800F3764 C432A5B0 */  lwc1  $f18, %lo(D_8014A5B0)($at)
/* B6A908 800F3768 46109102 */  mul.s $f4, $f18, $f16
/* B6A90C 800F376C 46041080 */  add.s $f2, $f2, $f4
.L800F3770:
/* B6A910 800F3770 30C800C0 */  andi  $t0, $a2, 0xc0
/* B6A914 800F3774 1100000E */  beqz  $t0, .L800F37B0
/* B6A918 800F3778 00000000 */   nop   
/* B6A91C 800F377C 9069002F */  lbu   $t1, 0x2f($v1)
/* B6A920 800F3780 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B6A924 800F3784 44894000 */  mtc1  $t1, $f8
/* B6A928 800F3788 05210004 */  bgez  $t1, .L800F379C
/* B6A92C 800F378C 468041A0 */   cvt.s.w $f6, $f8
/* B6A930 800F3790 44815000 */  mtc1  $at, $f10
/* B6A934 800F3794 00000000 */  nop   
/* B6A938 800F3798 460A3180 */  add.s $f6, $f6, $f10
.L800F379C:
/* B6A93C 800F379C 3C014340 */  li    $at, 0x43400000 # 0.000000
/* B6A940 800F37A0 44819000 */  mtc1  $at, $f18
/* B6A944 800F37A4 00000000 */  nop   
/* B6A948 800F37A8 46123403 */  div.s $f16, $f6, $f18
/* B6A94C 800F37AC 46101080 */  add.s $f2, $f2, $f16
.L800F37B0:
/* B6A950 800F37B0 03E00008 */  jr    $ra
/* B6A954 800F37B4 46001006 */   mov.s $f0, $f2

