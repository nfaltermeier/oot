.rdata
glabel D_808D6444
    .asciz "../z_boss_fd2.c"
    .balign 4

glabel D_808D6454
    .asciz "FD2 draw start \n"
    .balign 4

glabel D_808D6468
    .asciz "../z_boss_fd2.c"
    .balign 4

.text
glabel BossFd2_Draw
/* 036E0 808D5D50 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 036E4 808D5D54 AFB20040 */  sw      $s2, 0x0040($sp)
/* 036E8 808D5D58 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 036EC 808D5D5C AFBF0044 */  sw      $ra, 0x0044($sp)
/* 036F0 808D5D60 AFB1003C */  sw      $s1, 0x003C($sp)
/* 036F4 808D5D64 AFB00038 */  sw      $s0, 0x0038($sp)
/* 036F8 808D5D68 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 036FC 808D5D6C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 03700 808D5D70 3C06808D */  lui     $a2, %hi(D_808D6444)       ## $a2 = 808D0000
/* 03704 808D5D74 24C66444 */  addiu   $a2, $a2, %lo(D_808D6444)  ## $a2 = 808D6444
/* 03708 808D5D78 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFE4
/* 0370C 808D5D7C 24070A39 */  addiu   $a3, $zero, 0x0A39         ## $a3 = 00000A39
/* 03710 808D5D80 0C031AB1 */  jal     Graph_OpenDisps
/* 03714 808D5D84 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 03718 808D5D88 3C04808D */  lui     $a0, %hi(D_808D6454)       ## $a0 = 808D0000
/* 0371C 808D5D8C 0C00084C */  jal     osSyncPrintf

/* 03720 808D5D90 24846454 */  addiu   $a0, $a0, %lo(D_808D6454)  ## $a0 = 808D6454
/* 03724 808D5D94 8E2F0190 */  lw      $t7, 0x0190($s1)           ## 00000190
/* 03728 808D5D98 3C0E808D */  lui     $t6, %hi(func_808D4748)    ## $t6 = 808D0000
/* 0372C 808D5D9C 25CE4748 */  addiu   $t6, $t6, %lo(func_808D4748) ## $t6 = 808D4748
/* 03730 808D5DA0 11CF0075 */  beq     $t6, $t7, .L808D5F78
/* 03734 808D5DA4 00000000 */  nop
/* 03738 808D5DA8 0C024F46 */  jal     func_80093D18
/* 0373C 808D5DAC 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 03740 808D5DB0 863801A6 */  lh      $t8, 0x01A6($s1)           ## 000001A6
/* 03744 808D5DB4 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03748 808D5DB8 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0374C 808D5DBC 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 03750 808D5DC0 13200009 */  beq     $t9, $zero, .L808D5DE8
/* 03754 808D5DC4 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 03758 808D5DC8 8E0402C0 */  lw      $a0, 0x02C0($s0)           ## 000002C0
/* 0375C 808D5DCC 24080384 */  addiu   $t0, $zero, 0x0384         ## $t0 = 00000384
/* 03760 808D5DD0 2409044B */  addiu   $t1, $zero, 0x044B         ## $t1 = 0000044B
/* 03764 808D5DD4 AFA90018 */  sw      $t1, 0x0018($sp)
/* 03768 808D5DD8 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0376C 808D5DDC 0C024CDC */  jal     Gfx_SetFog
/* 03770 808D5DE0 AFA00010 */  sw      $zero, 0x0010($sp)
/* 03774 808D5DE4 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L808D5DE8:
/* 03778 808D5DE8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 0377C 808D5DEC 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 03780 808D5DF0 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 03784 808D5DF4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03788 808D5DF8 AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 0378C 808D5DFC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03790 808D5E00 922C0223 */  lbu     $t4, 0x0223($s1)           ## 00000223
/* 03794 808D5E04 3C04808D */  lui     $a0, %hi(D_808D62C0)       ## $a0 = 808D0000
/* 03798 808D5E08 3C088016 */  lui     $t0, %hi(gSegments)
/* 0379C 808D5E0C 000C6880 */  sll     $t5, $t4,  2
/* 037A0 808D5E10 008D2021 */  addu    $a0, $a0, $t5
/* 037A4 808D5E14 8C8462C0 */  lw      $a0, %lo(D_808D62C0)($a0)
/* 037A8 808D5E18 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 037AC 808D5E1C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 037B0 808D5E20 00047900 */  sll     $t7, $a0,  4
/* 037B4 808D5E24 000FC702 */  srl     $t8, $t7, 28
/* 037B8 808D5E28 0018C880 */  sll     $t9, $t8,  2
/* 037BC 808D5E2C 01194021 */  addu    $t0, $t0, $t9
/* 037C0 808D5E30 8D086FA8 */  lw      $t0, %lo(gSegments)($t0)
/* 037C4 808D5E34 00817024 */  and     $t6, $a0, $at
/* 037C8 808D5E38 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 037CC 808D5E3C 01C84821 */  addu    $t1, $t6, $t0
/* 037D0 808D5E40 01215021 */  addu    $t2, $t1, $at
/* 037D4 808D5E44 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 037D8 808D5E48 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 037DC 808D5E4C 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 037E0 808D5E50 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 037E4 808D5E54 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 037E8 808D5E58 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 037EC 808D5E5C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 037F0 808D5E60 C62801CC */  lwc1    $f8, 0x01CC($s1)           ## 000001CC
/* 037F4 808D5E64 C62401C8 */  lwc1    $f4, 0x01C8($s1)           ## 000001C8
/* 037F8 808D5E68 8E440000 */  lw      $a0, 0x0000($s2)           ## 00000000
/* 037FC 808D5E6C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 03800 808D5E70 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 03804 808D5E74 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 03808 808D5E78 AFB80010 */  sw      $t8, 0x0010($sp)
/* 0380C 808D5E7C AFB90014 */  sw      $t9, 0x0014($sp)
/* 03810 808D5E80 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 03814 808D5E84 C63001D0 */  lwc1    $f16, 0x01D0($s1)          ## 000001D0
/* 03818 808D5E88 4600218D */  trunc.w.s $f6, $f4
/* 0381C 808D5E8C 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 03820 808D5E90 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03824 808D5E94 4600848D */  trunc.w.s $f18, $f16
/* 03828 808D5E98 44063000 */  mfc1    $a2, $f6
/* 0382C 808D5E9C 4600428D */  trunc.w.s $f10, $f8
/* 03830 808D5EA0 44099000 */  mfc1    $t1, $f18
/* 03834 808D5EA4 00063400 */  sll     $a2, $a2, 16
/* 03838 808D5EA8 00063403 */  sra     $a2, $a2, 16
/* 0383C 808D5EAC 00095400 */  sll     $t2, $t1, 16
/* 03840 808D5EB0 000A5C03 */  sra     $t3, $t2, 16
/* 03844 808D5EB4 AFAB001C */  sw      $t3, 0x001C($sp)
/* 03848 808D5EB8 C62401D4 */  lwc1    $f4, 0x01D4($s1)           ## 000001D4
/* 0384C 808D5EBC 44075000 */  mfc1    $a3, $f10
/* 03850 808D5EC0 AFAE0028 */  sw      $t6, 0x0028($sp)
/* 03854 808D5EC4 4600218D */  trunc.w.s $f6, $f4
/* 03858 808D5EC8 00073C00 */  sll     $a3, $a3, 16
/* 0385C 808D5ECC 00073C03 */  sra     $a3, $a3, 16
/* 03860 808D5ED0 AFB90024 */  sw      $t9, 0x0024($sp)
/* 03864 808D5ED4 440D3000 */  mfc1    $t5, $f6
/* 03868 808D5ED8 AFA20054 */  sw      $v0, 0x0054($sp)
/* 0386C 808D5EDC 000D7C00 */  sll     $t7, $t5, 16
/* 03870 808D5EE0 000FC403 */  sra     $t8, $t7, 16
/* 03874 808D5EE4 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 03878 808D5EE8 AFB80020 */  sw      $t8, 0x0020($sp)
/* 0387C 808D5EEC 8FA30054 */  lw      $v1, 0x0054($sp)
/* 03880 808D5EF0 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 03884 808D5EF4 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 03888 808D5EF8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0388C 808D5EFC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03890 808D5F00 3C0CFB00 */  lui     $t4, 0xFB00                ## $t4 = FB000000
/* 03894 808D5F04 240DFF80 */  addiu   $t5, $zero, 0xFF80         ## $t5 = FFFFFF80
/* 03898 808D5F08 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 0389C 808D5F0C AE0802C0 */  sw      $t0, 0x02C0($s0)           ## 000002C0
/* 038A0 808D5F10 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 038A4 808D5F14 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 038A8 808D5F18 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 038AC 808D5F1C 3C0F808D */  lui     $t7, %hi(func_808D4F94)    ## $t7 = 808D0000
/* 038B0 808D5F20 3C18808D */  lui     $t8, %hi(func_808D5228)    ## $t8 = 808D0000
/* 038B4 808D5F24 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 038B8 808D5F28 AE0B02C0 */  sw      $t3, 0x02C0($s0)           ## 000002C0
/* 038BC 808D5F2C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 038C0 808D5F30 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 038C4 808D5F34 9227014E */  lbu     $a3, 0x014E($s1)           ## 0000014E
/* 038C8 808D5F38 8E26016C */  lw      $a2, 0x016C($s1)           ## 0000016C
/* 038CC 808D5F3C 8E250150 */  lw      $a1, 0x0150($s1)           ## 00000150
/* 038D0 808D5F40 27185228 */  addiu   $t8, $t8, %lo(func_808D5228) ## $t8 = 808D5228
/* 038D4 808D5F44 25EF4F94 */  addiu   $t7, $t7, %lo(func_808D4F94) ## $t7 = 808D4F94
/* 038D8 808D5F48 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 038DC 808D5F4C AFB80014 */  sw      $t8, 0x0014($sp)
/* 038E0 808D5F50 AFB10018 */  sw      $s1, 0x0018($sp)
/* 038E4 808D5F54 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 038E8 808D5F58 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 038EC 808D5F5C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 038F0 808D5F60 0C235638 */  jal     func_808D58E0
/* 038F4 808D5F64 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 038F8 808D5F68 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 038FC 808D5F6C 0C02F228 */  jal     func_800BC8A0
/* 03900 808D5F70 8E0502C0 */  lw      $a1, 0x02C0($s0)           ## 000002C0
/* 03904 808D5F74 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L808D5F78:
/* 03908 808D5F78 3C06808D */  lui     $a2, %hi(D_808D6468)       ## $a2 = 808D0000
/* 0390C 808D5F7C 24C66468 */  addiu   $a2, $a2, %lo(D_808D6468)  ## $a2 = 808D6468
/* 03910 808D5F80 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFE4
/* 03914 808D5F84 8E450000 */  lw      $a1, 0x0000($s2)           ## 00000000
/* 03918 808D5F88 0C031AD5 */  jal     Graph_CloseDisps
/* 0391C 808D5F8C 24070A80 */  addiu   $a3, $zero, 0x0A80         ## $a3 = 00000A80
/* 03920 808D5F90 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 03924 808D5F94 8FB00038 */  lw      $s0, 0x0038($sp)
/* 03928 808D5F98 8FB1003C */  lw      $s1, 0x003C($sp)
/* 0392C 808D5F9C 8FB20040 */  lw      $s2, 0x0040($sp)
/* 03930 808D5FA0 03E00008 */  jr      $ra
/* 03934 808D5FA4 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 03938 808D5FA8 00000000 */  nop
/* 0393C 808D5FAC 00000000 */  nop
