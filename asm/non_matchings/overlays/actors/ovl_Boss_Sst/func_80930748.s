glabel func_80930748
/* 04178 80930748 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0417C 8093074C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 04180 80930750 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 04184 80930754 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 04188 80930758 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 0418C 8093075C 000FC080 */  sll     $t8, $t7,  2
/* 04190 80930760 00380821 */  addu    $at, $at, $t8
/* 04194 80930764 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)
/* 04198 80930768 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0419C 8093076C A4800198 */  sh      $zero, 0x0198($a0)         ## 00000198
/* 041A0 80930770 84F9001C */  lh      $t9, 0x001C($a3)           ## 0000001C
/* 041A4 80930774 3C058093 */  lui     $a1, %hi(D_8093785C)       ## $a1 = 80930000
/* 041A8 80930778 AFA70018 */  sw      $a3, 0x0018($sp)
/* 041AC 8093077C 00194080 */  sll     $t0, $t9,  2
/* 041B0 80930780 00A82821 */  addu    $a1, $a1, $t0
/* 041B4 80930784 8CA5785C */  lw      $a1, %lo(D_8093785C)($a1)
/* 041B8 80930788 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 041BC 8093078C 0C029490 */  jal     Animation_MorphToPlayOnce
/* 041C0 80930790 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 041C4 80930794 8FA70018 */  lw      $a3, 0x0018($sp)
/* 041C8 80930798 3C098093 */  lui     $t1, %hi(func_809307B4)    ## $t1 = 80930000
/* 041CC 8093079C 252907B4 */  addiu   $t1, $t1, %lo(func_809307B4) ## $t1 = 809307B4
/* 041D0 809307A0 ACE90190 */  sw      $t1, 0x0190($a3)           ## 00000190
/* 041D4 809307A4 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 041D8 809307A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 041DC 809307AC 03E00008 */  jr      $ra
/* 041E0 809307B0 00000000 */  nop
