glabel func_809AF718
/* 017F8 809AF718 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 017FC 809AF71C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01800 809AF720 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01804 809AF724 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01808 809AF728 C4800068 */  lwc1    $f0, 0x0068($a0)           ## 00000068
/* 0180C 809AF72C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01810 809AF730 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01814 809AF734 4602003C */  c.lt.s  $f0, $f2                   
/* 01818 809AF738 00000000 */  nop
/* 0181C 809AF73C 45020006 */  bc1fl   .L809AF758                 
/* 01820 809AF740 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 01824 809AF744 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 01828 809AF748 00000000 */  nop
/* 0182C 809AF74C 46040180 */  add.s   $f6, $f0, $f4              
/* 01830 809AF750 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068
/* 01834 809AF754 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
.L809AF758:
/* 01838 809AF758 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 0183C 809AF75C 4602403E */  c.le.s  $f8, $f2                   
/* 01840 809AF760 00000000 */  nop
/* 01844 809AF764 4500000D */  bc1f    .L809AF79C                 
/* 01848 809AF768 00000000 */  nop
/* 0184C 809AF76C C60A0068 */  lwc1    $f10, 0x0068($s0)          ## 00000068
/* 01850 809AF770 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 01854 809AF774 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01858 809AF778 86070032 */  lh      $a3, 0x0032($s0)           ## 00000032
/* 0185C 809AF77C 46105482 */  mul.s   $f18, $f10, $f16           
/* 01860 809AF780 44069000 */  mfc1    $a2, $f18                  
/* 01864 809AF784 0C26B7CA */  jal     func_809ADF28              
/* 01868 809AF788 00000000 */  nop
/* 0186C 809AF78C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01870 809AF790 14400002 */  bne     $v0, $zero, .L809AF79C     
/* 01874 809AF794 00000000 */  nop
/* 01878 809AF798 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L809AF79C:
/* 0187C 809AF79C 0C02927F */  jal     SkelAnime_Update
              
/* 01880 809AF7A0 26040164 */  addiu   $a0, $s0, 0x0164           ## $a0 = 00000164
/* 01884 809AF7A4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01888 809AF7A8 10400003 */  beq     $v0, $zero, .L809AF7B8     
/* 0188C 809AF7AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01890 809AF7B0 0C26B94E */  jal     func_809AE538              
/* 01894 809AF7B4 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L809AF7B8:
/* 01898 809AF7B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0189C 809AF7BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 018A0 809AF7C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 018A4 809AF7C4 03E00008 */  jr      $ra                        
/* 018A8 809AF7C8 00000000 */  nop
