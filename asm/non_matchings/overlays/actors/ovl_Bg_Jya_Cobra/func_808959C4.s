.rdata
glabel D_808975C4
    .asciz "\x1b[31m"
    .balign 4

glabel D_808975CC
    .asciz "Ｅｒｒｏｒ : Mir Ray 発生失敗 (%s %d)\n"
    .balign 4

glabel D_808975F4
    .asciz "../z_bg_jya_cobra.c"
    .balign 4

glabel D_80897608
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_808959C4
/* 000D4 808959C4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 000D8 808959C8 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 000DC 808959CC 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 000E0 808959D0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 000E4 808959D4 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 000E8 808959D8 C4A40024 */  lwc1    $f4, 0x0024($a1)           ## 00000024
/* 000EC 808959DC 3C014264 */  lui     $at, 0x4264                ## $at = 42640000
/* 000F0 808959E0 44814000 */  mtc1    $at, $f8                   ## $f8 = 57.00
/* 000F4 808959E4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 000F8 808959E8 C4A60028 */  lwc1    $f6, 0x0028($a1)           ## 00000028
/* 000FC 808959EC 240E0006 */  addiu   $t6, $zero, 0x0006         ## $t6 = 00000006
/* 00100 808959F0 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 00104 808959F4 46083280 */  add.s   $f10, $f6, $f8             
/* 00108 808959F8 240700B7 */  addiu   $a3, $zero, 0x00B7         ## $a3 = 000000B7
/* 0010C 808959FC E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00110 80895A00 C4B0002C */  lwc1    $f16, 0x002C($a1)          ## 0000002C
/* 00114 80895A04 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 00118 80895A08 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 0011C 80895A0C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00120 80895A10 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00124 80895A14 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00128 80895A18 0C00C916 */  jal     Actor_SpawnAsChild
              
/* 0012C 80895A1C E7B00018 */  swc1    $f16, 0x0018($sp)          
/* 00130 80895A20 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 00134 80895A24 3C048089 */  lui     $a0, %hi(D_808975C4)       ## $a0 = 80890000
/* 00138 80895A28 8CAF011C */  lw      $t7, 0x011C($a1)           ## 0000011C
/* 0013C 80895A2C 55E0000D */  bnel    $t7, $zero, .L80895A64     
/* 00140 80895A30 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00144 80895A34 0C00084C */  jal     osSyncPrintf
              
/* 00148 80895A38 248475C4 */  addiu   $a0, $a0, %lo(D_808975C4)  ## $a0 = 808975C4
/* 0014C 80895A3C 3C048089 */  lui     $a0, %hi(D_808975CC)       ## $a0 = 80890000
/* 00150 80895A40 3C058089 */  lui     $a1, %hi(D_808975F4)       ## $a1 = 80890000
/* 00154 80895A44 24A575F4 */  addiu   $a1, $a1, %lo(D_808975F4)  ## $a1 = 808975F4
/* 00158 80895A48 248475CC */  addiu   $a0, $a0, %lo(D_808975CC)  ## $a0 = 808975CC
/* 0015C 80895A4C 0C00084C */  jal     osSyncPrintf
              
/* 00160 80895A50 2406010E */  addiu   $a2, $zero, 0x010E         ## $a2 = 0000010E
/* 00164 80895A54 3C048089 */  lui     $a0, %hi(D_80897608)       ## $a0 = 80890000
/* 00168 80895A58 0C00084C */  jal     osSyncPrintf
              
/* 0016C 80895A5C 24847608 */  addiu   $a0, $a0, %lo(D_80897608)  ## $a0 = 80897608
/* 00170 80895A60 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80895A64:
/* 00174 80895A64 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00178 80895A68 03E00008 */  jr      $ra                        
/* 0017C 80895A6C 00000000 */  nop
