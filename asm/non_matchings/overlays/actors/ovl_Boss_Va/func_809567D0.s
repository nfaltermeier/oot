glabel func_809567D0
/* 07510 809567D0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 07514 809567D4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 07518 809567D8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0751C 809567DC AFBF002C */  sw      $ra, 0x002C($sp)
/* 07520 809567E0 3C040600 */  lui     $a0, %hi(D_06000024)                ## $a0 = 06000000
/* 07524 809567E4 AFA50034 */  sw      $a1, 0x0034($sp)
/* 07528 809567E8 0C028800 */  jal     Animation_GetLastFrame

/* 0752C 809567EC 24840024 */  addiu   $a0, $a0, %lo(D_06000024)           ## $a0 = 06000024
/* 07530 809567F0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 07534 809567F4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 07538 809567F8 3C050600 */  lui     $a1, %hi(D_06000024)                ## $a1 = 06000000
/* 0753C 809567FC 468021A0 */  cvt.s.w $f6, $f4
/* 07540 80956800 44070000 */  mfc1    $a3, $f0
/* 07544 80956804 24A50024 */  addiu   $a1, $a1, %lo(D_06000024)           ## $a1 = 06000024
/* 07548 80956808 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0754C 8095680C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 07550 80956810 AFA00014 */  sw      $zero, 0x0014($sp)
/* 07554 80956814 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 07558 80956818 0C029468 */  jal     Animation_Change

/* 0755C 8095681C E7A00018 */  swc1    $f0, 0x0018($sp)
/* 07560 80956820 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 07564 80956824 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 07568 80956828 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0756C 8095682C E60801A0 */  swc1    $f8, 0x01A0($s0)           ## 000001A0
/* 07570 80956830 3C0143B4 */  lui     $at, 0x43B4                ## $at = 43B40000
/* 07574 80956834 44815000 */  mtc1    $at, $f10                  ## $f10 = 360.00
/* 07578 80956838 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 0757C 8095683C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 07580 80956840 460A0402 */  mul.s   $f16, $f0, $f10
/* 07584 80956844 0018C880 */  sll     $t9, $t8,  2
/* 07588 80956848 3C088096 */  lui     $t0, %hi(D_8095C044)       ## $t0 = 80960000
/* 0758C 8095684C 0338C823 */  subu    $t9, $t9, $t8
/* 07590 80956850 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 07594 80956854 240F0078 */  addiu   $t7, $zero, 0x0078         ## $t7 = 00000078
/* 07598 80956858 0019C880 */  sll     $t9, $t9,  2
/* 0759C 8095685C 2508C044 */  addiu   $t0, $t0, %lo(D_8095C044)  ## $t0 = 8095C044
/* 075A0 80956860 E61001A4 */  swc1    $f16, 0x01A4($s0)          ## 000001A4
/* 075A4 80956864 A60E019C */  sh      $t6, 0x019C($s0)           ## 0000019C
/* 075A8 80956868 A60F01F0 */  sh      $t7, 0x01F0($s0)           ## 000001F0
/* 075AC 8095686C 03281021 */  addu    $v0, $t9, $t0
/* 075B0 80956870 E61201A8 */  swc1    $f18, 0x01A8($s0)          ## 000001A8
/* 075B4 80956874 C4440078 */  lwc1    $f4, 0x0078($v0)           ## 00000078
/* 075B8 80956878 C6060008 */  lwc1    $f6, 0x0008($s0)           ## 00000008
/* 075BC 8095687C C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 075C0 80956880 8E0A0004 */  lw      $t2, 0x0004($s0)           ## 00000004
/* 075C4 80956884 46062200 */  add.s   $f8, $f4, $f6
/* 075C8 80956888 C6060010 */  lwc1    $f6, 0x0010($s0)           ## 00000010
/* 075CC 8095688C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 075D0 80956890 2409002D */  addiu   $t1, $zero, 0x002D         ## $t1 = 0000002D
/* 075D4 80956894 E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
/* 075D8 80956898 C44A007C */  lwc1    $f10, 0x007C($v0)          ## 0000007C
/* 075DC 8095689C 3C058095 */  lui     $a1, %hi(func_809568E0)    ## $a1 = 80950000
/* 075E0 809568A0 01415824 */  and     $t3, $t2, $at
/* 075E4 809568A4 46105480 */  add.s   $f18, $f10, $f16
/* 075E8 809568A8 24A568E0 */  addiu   $a1, $a1, %lo(func_809568E0) ## $a1 = 809568E0
/* 075EC 809568AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 075F0 809568B0 E6120028 */  swc1    $f18, 0x0028($s0)          ## 00000028
/* 075F4 809568B4 C4440080 */  lwc1    $f4, 0x0080($v0)           ## 00000080
/* 075F8 809568B8 AE090198 */  sw      $t1, 0x0198($s0)           ## 00000198
/* 075FC 809568BC AE0B0004 */  sw      $t3, 0x0004($s0)           ## 00000004
/* 07600 809568C0 46062200 */  add.s   $f8, $f4, $f6
/* 07604 809568C4 0C253CB0 */  jal     func_8094F2C0
/* 07608 809568C8 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 0760C 809568CC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 07610 809568D0 8FB00028 */  lw      $s0, 0x0028($sp)
/* 07614 809568D4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 07618 809568D8 03E00008 */  jr      $ra
/* 0761C 809568DC 00000000 */  nop
