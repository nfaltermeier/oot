.rdata
glabel D_808754E0
    .asciz "\x1b[32m☆☆☆☆☆ 大妖精の泉 ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80875510
    .asciz "\x1b[32m☆☆☆☆☆ 石妖精の泉 ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

.text
glabel BgDyYoseizo_Init
/* 00000 80872830 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80872834 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00008 80872838 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0000C 8087283C AFB10028 */  sw      $s1, 0x0028($sp)
/* 00010 80872840 AFB00024 */  sw      $s0, 0x0024($sp)
/* 00014 80872844 00A11021 */  addu    $v0, $a1, $at
/* 00018 80872848 904E1DEA */  lbu     $t6, 0x1DEA($v0)           ## 00001DEA
/* 0001C 8087284C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00020 80872850 44812000 */  mtc1    $at, $f4                   ## $f4 = 40.00
/* 00024 80872854 A48E02EC */  sh      $t6, 0x02EC($a0)           ## 000002EC
/* 00028 80872858 848F02EC */  lh      $t7, 0x02EC($a0)           ## 000002EC
/* 0002C 8087285C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00030 80872860 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00034 80872864 05E30003 */  bgezl   $t7, .L80872874
/* 00038 80872868 C6000028 */  lwc1    $f0, 0x0028($s0)           ## 00000028
/* 0003C 8087286C A48002EC */  sh      $zero, 0x02EC($a0)         ## 000002EC
/* 00040 80872870 C6000028 */  lwc1    $f0, 0x0028($s0)           ## 00000028
.L80872874:
/* 00044 80872874 8E190024 */  lw      $t9, 0x0024($s0)           ## 00000024
/* 00048 80872878 8E180028 */  lw      $t8, 0x0028($s0)           ## 00000028
/* 0004C 8087287C 46040180 */  add.s   $f6, $f0, $f4
/* 00050 80872880 AE190038 */  sw      $t9, 0x0038($s0)           ## 00000038
/* 00054 80872884 8E19002C */  lw      $t9, 0x002C($s0)           ## 0000002C
/* 00058 80872888 E6000310 */  swc1    $f0, 0x0310($s0)           ## 00000310
/* 0005C 8087288C E606030C */  swc1    $f6, 0x030C($s0)           ## 0000030C
/* 00060 80872890 AE18003C */  sw      $t8, 0x003C($s0)           ## 0000003C
/* 00064 80872894 AE190040 */  sw      $t9, 0x0040($s0)           ## 00000040
/* 00068 80872898 862800A4 */  lh      $t0, 0x00A4($s1)           ## 000000A4
/* 0006C 8087289C 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 00070 808728A0 3C048087 */  lui     $a0, %hi(D_80875510)       ## $a0 = 80870000
/* 00074 808728A4 15010014 */  bne     $t0, $at, .L808728F8
/* 00078 808728A8 24845510 */  addiu   $a0, $a0, %lo(D_80875510)  ## $a0 = 80875510
/* 0007C 808728AC 3C048087 */  lui     $a0, %hi(D_808754E0)       ## $a0 = 80870000
/* 00080 808728B0 248454E0 */  addiu   $a0, $a0, %lo(D_808754E0)  ## $a0 = 808754E0
/* 00084 808728B4 0C00084C */  jal     osSyncPrintf

/* 00088 808728B8 90451DEA */  lbu     $a1, 0x1DEA($v0)           ## 00001DEA
/* 0008C 808728BC 3C060602 */  lui     $a2, %hi(D_0601C450)                ## $a2 = 06020000
/* 00090 808728C0 3C070601 */  lui     $a3, %hi(D_06008698)                ## $a3 = 06010000
/* 00094 808728C4 26090194 */  addiu   $t1, $s0, 0x0194           ## $t1 = 00000194
/* 00098 808728C8 260A023C */  addiu   $t2, $s0, 0x023C           ## $t2 = 0000023C
/* 0009C 808728CC 240B001C */  addiu   $t3, $zero, 0x001C         ## $t3 = 0000001C
/* 000A0 808728D0 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 000A4 808728D4 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 000A8 808728D8 AFA90010 */  sw      $t1, 0x0010($sp)
/* 000AC 808728DC 24E78698 */  addiu   $a3, $a3, %lo(D_06008698)           ## $a3 = 06008698
/* 000B0 808728E0 24C6C450 */  addiu   $a2, $a2, %lo(D_0601C450)           ## $a2 = 0601C450
/* 000B4 808728E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000B8 808728E8 0C0291BE */  jal     SkelAnime_InitFlex
/* 000BC 808728EC 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 000C0 808728F0 10000010 */  beq     $zero, $zero, .L80872934
/* 000C4 808728F4 00000000 */  nop
.L808728F8:
/* 000C8 808728F8 0C00084C */  jal     osSyncPrintf

/* 000CC 808728FC 90451DEA */  lbu     $a1, 0x1DEA($v0)           ## 00001DEA
/* 000D0 80872900 3C060602 */  lui     $a2, %hi(D_0601C450)                ## $a2 = 06020000
/* 000D4 80872904 3C070600 */  lui     $a3, %hi(D_060031C0)                ## $a3 = 06000000
/* 000D8 80872908 260C0194 */  addiu   $t4, $s0, 0x0194           ## $t4 = 00000194
/* 000DC 8087290C 260D023C */  addiu   $t5, $s0, 0x023C           ## $t5 = 0000023C
/* 000E0 80872910 240E001C */  addiu   $t6, $zero, 0x001C         ## $t6 = 0000001C
/* 000E4 80872914 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 000E8 80872918 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 000EC 8087291C AFAC0010 */  sw      $t4, 0x0010($sp)
/* 000F0 80872920 24E731C0 */  addiu   $a3, $a3, %lo(D_060031C0)           ## $a3 = 060031C0
/* 000F4 80872924 24C6C450 */  addiu   $a2, $a2, %lo(D_0601C450)           ## $a2 = 0601C450
/* 000F8 80872928 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000FC 8087292C 0C0291BE */  jal     SkelAnime_InitFlex
/* 00100 80872930 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
.L80872934:
/* 00104 80872934 3C0F8087 */  lui     $t7, %hi(func_80872D20)    ## $t7 = 80870000
/* 00108 80872938 25EF2D20 */  addiu   $t7, $t7, %lo(func_80872D20) ## $t7 = 80872D20
/* 0010C 8087293C AE0F014C */  sw      $t7, 0x014C($s0)           ## 0000014C
/* 00110 80872940 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00114 80872944 8FB10028 */  lw      $s1, 0x0028($sp)
/* 00118 80872948 8FB00024 */  lw      $s0, 0x0024($sp)
/* 0011C 8087294C 03E00008 */  jr      $ra
/* 00120 80872950 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
