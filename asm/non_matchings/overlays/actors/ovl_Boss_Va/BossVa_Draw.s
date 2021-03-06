.rdata
glabel D_8095C470
    .asciz "../z_boss_va.c"
    .balign 4

glabel D_8095C480
    .asciz "../z_boss_va.c"
    .balign 4

.late_rodata
glabel jtbl_8095C840
.word L80959318
.word L809594D0
.word L809594D0
.word L809594D0
.word L80959510
.word L80959510
.word L80959510
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959578
.word L80959550
.word L80959550
.word L80959550
.word L8095978C

.text
glabel BossVa_Draw
/* 09F08 809591C8 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 09F0C 809591CC 3C0F8096 */  lui     $t7, %hi(D_8095C2AC)       ## $t7 = 80960000
/* 09F10 809591D0 AFBF003C */  sw      $ra, 0x003C($sp)
/* 09F14 809591D4 AFB10038 */  sw      $s1, 0x0038($sp)
/* 09F18 809591D8 AFB00034 */  sw      $s0, 0x0034($sp)
/* 09F1C 809591DC 25EFC2AC */  addiu   $t7, $t7, %lo(D_8095C2AC)  ## $t7 = 8095C2AC
/* 09F20 809591E0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8095C2AC
/* 09F24 809591E4 27AE00B0 */  addiu   $t6, $sp, 0x00B0           ## $t6 = FFFFFFE0
/* 09F28 809591E8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8095C2B0
/* 09F2C 809591EC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE0
/* 09F30 809591F0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8095C2B4
/* 09F34 809591F4 3C0B8096 */  lui     $t3, %hi(D_8095C2B8)       ## $t3 = 80960000
/* 09F38 809591F8 256BC2B8 */  addiu   $t3, $t3, %lo(D_8095C2B8)  ## $t3 = 8095C2B8
/* 09F3C 809591FC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE4
/* 09F40 80959200 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFE8
/* 09F44 80959204 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 8095C2B8
/* 09F48 80959208 27AA00A4 */  addiu   $t2, $sp, 0x00A4           ## $t2 = FFFFFFD4
/* 09F4C 8095920C 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 8095C2BC
/* 09F50 80959210 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFD4
/* 09F54 80959214 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 8095C2C0
/* 09F58 80959218 3C0F8096 */  lui     $t7, %hi(D_8095C2C4)       ## $t7 = 80960000
/* 09F5C 8095921C 25EFC2C4 */  addiu   $t7, $t7, %lo(D_8095C2C4)  ## $t7 = 8095C2C4
/* 09F60 80959220 AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFFD8
/* 09F64 80959224 AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFFDC
/* 09F68 80959228 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8095C2C4
/* 09F6C 8095922C 27AE0098 */  addiu   $t6, $sp, 0x0098           ## $t6 = FFFFFFC8
/* 09F70 80959230 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8095C2C8
/* 09F74 80959234 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFC8
/* 09F78 80959238 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8095C2CC
/* 09F7C 8095923C 3C0B8096 */  lui     $t3, %hi(D_8095C2D0)       ## $t3 = 80960000
/* 09F80 80959240 256BC2D0 */  addiu   $t3, $t3, %lo(D_8095C2D0)  ## $t3 = 8095C2D0
/* 09F84 80959244 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFCC
/* 09F88 80959248 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFD0
/* 09F8C 8095924C 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 8095C2D0
/* 09F90 80959250 27AA008C */  addiu   $t2, $sp, 0x008C           ## $t2 = FFFFFFBC
/* 09F94 80959254 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 8095C2D4
/* 09F98 80959258 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFBC
/* 09F9C 8095925C 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 8095C2D8
/* 09FA0 80959260 3C0F8096 */  lui     $t7, %hi(D_8095C2DC)       ## $t7 = 80960000
/* 09FA4 80959264 25EFC2DC */  addiu   $t7, $t7, %lo(D_8095C2DC)  ## $t7 = 8095C2DC
/* 09FA8 80959268 AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFFC0
/* 09FAC 8095926C AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFFC4
/* 09FB0 80959270 8DF90000 */  lw      $t9, 0x0000($t7)           ## 8095C2DC
/* 09FB4 80959274 27AE0080 */  addiu   $t6, $sp, 0x0080           ## $t6 = FFFFFFB0
/* 09FB8 80959278 8DF80004 */  lw      $t8, 0x0004($t7)           ## 8095C2E0
/* 09FBC 8095927C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFB0
/* 09FC0 80959280 8DF90008 */  lw      $t9, 0x0008($t7)           ## 8095C2E4
/* 09FC4 80959284 3C0B8096 */  lui     $t3, %hi(D_8095C2E8)       ## $t3 = 80960000
/* 09FC8 80959288 256BC2E8 */  addiu   $t3, $t3, %lo(D_8095C2E8)  ## $t3 = 8095C2E8
/* 09FCC 8095928C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFB4
/* 09FD0 80959290 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFB8
/* 09FD4 80959294 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 8095C2E8
/* 09FD8 80959298 27AA0074 */  addiu   $t2, $sp, 0x0074           ## $t2 = FFFFFFA4
/* 09FDC 8095929C 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 8095C2EC
/* 09FE0 809592A0 AD4D0000 */  sw      $t5, 0x0000($t2)           ## FFFFFFA4
/* 09FE4 809592A4 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 8095C2F0
/* 09FE8 809592A8 3C0E8096 */  lui     $t6, %hi(D_8095C2F4)       ## $t6 = 80960000
/* 09FEC 809592AC AD4C0004 */  sw      $t4, 0x0004($t2)           ## FFFFFFA8
/* 09FF0 809592B0 AD4D0008 */  sw      $t5, 0x0008($t2)           ## FFFFFFAC
/* 09FF4 809592B4 8DCEC2F4 */  lw      $t6, %lo(D_8095C2F4)($t6)
/* 09FF8 809592B8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 09FFC 809592BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0A000 809592C0 AFAE0070 */  sw      $t6, 0x0070($sp)
/* 0A004 809592C4 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0A008 809592C8 3C068096 */  lui     $a2, %hi(D_8095C470)       ## $a2 = 80960000
/* 0A00C 809592CC 24C6C470 */  addiu   $a2, $a2, %lo(D_8095C470)  ## $a2 = 8095C470
/* 0A010 809592D0 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFF8C
/* 0A014 809592D4 240711BE */  addiu   $a3, $zero, 0x11BE         ## $a3 = 000011BE
/* 0A018 809592D8 0C031AB1 */  jal     Graph_OpenDisps
/* 0A01C 809592DC AFA5006C */  sw      $a1, 0x006C($sp)
/* 0A020 809592E0 0C024F46 */  jal     func_80093D18
/* 0A024 809592E4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0A028 809592E8 0C024F61 */  jal     func_80093D84
/* 0A02C 809592EC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0A030 809592F0 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 0A034 809592F4 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 0A038 809592F8 2F010015 */  sltiu   $at, $t8, 0x0015
/* 0A03C 809592FC 1020009E */  beq     $at, $zero, .L80959578
/* 0A040 80959300 0018C080 */  sll     $t8, $t8,  2
/* 0A044 80959304 3C018096 */  lui     $at, %hi(jtbl_8095C840)       ## $at = 80960000
/* 0A048 80959308 00380821 */  addu    $at, $at, $t8
/* 0A04C 8095930C 8C38C840 */  lw      $t8, %lo(jtbl_8095C840)($at)
/* 0A050 80959310 03000008 */  jr      $t8
/* 0A054 80959314 00000000 */  nop
glabel L80959318
/* 0A058 80959318 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0A05C 8095931C 02214021 */  addu    $t0, $s1, $at
/* 0A060 80959320 85020AC2 */  lh      $v0, 0x0AC2($t0)           ## 00000AC2
/* 0A064 80959324 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0A068 80959328 00310821 */  addu    $at, $at, $s1
/* 0A06C 8095932C 10400008 */  beq     $v0, $zero, .L80959350
/* 0A070 80959330 2459015E */  addiu   $t9, $v0, 0x015E           ## $t9 = 0000015E
/* 0A074 80959334 A4390AC2 */  sh      $t9, 0x0AC2($at)           ## 00010AC2
/* 0A078 80959338 850A0AC2 */  lh      $t2, 0x0AC2($t0)           ## 00000AC2
/* 0A07C 8095933C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0A080 80959340 00310821 */  addu    $at, $at, $s1
/* 0A084 80959344 59400003 */  blezl   $t2, .L80959354
/* 0A088 80959348 85020AC4 */  lh      $v0, 0x0AC4($t0)           ## 00000AC4
/* 0A08C 8095934C A4200AC2 */  sh      $zero, 0x0AC2($at)         ## 00010AC2
.L80959350:
/* 0A090 80959350 85020AC4 */  lh      $v0, 0x0AC4($t0)           ## 00000AC4
.L80959354:
/* 0A094 80959354 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0A098 80959358 00310821 */  addu    $at, $at, $s1
/* 0A09C 8095935C 10400008 */  beq     $v0, $zero, .L80959380
/* 0A0A0 80959360 244B015E */  addiu   $t3, $v0, 0x015E           ## $t3 = 0000015E
/* 0A0A4 80959364 A42B0AC4 */  sh      $t3, 0x0AC4($at)           ## 00010AC4
/* 0A0A8 80959368 850C0AC4 */  lh      $t4, 0x0AC4($t0)           ## 00000AC4
/* 0A0AC 8095936C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0A0B0 80959370 00310821 */  addu    $at, $at, $s1
/* 0A0B4 80959374 59800003 */  blezl   $t4, .L80959384
/* 0A0B8 80959378 920D0197 */  lbu     $t5, 0x0197($s0)           ## 00000197
/* 0A0BC 8095937C A4200AC4 */  sh      $zero, 0x0AC4($at)         ## 00010AC4
.L80959380:
/* 0A0C0 80959380 920D0197 */  lbu     $t5, 0x0197($s0)           ## 00000197
.L80959384:
/* 0A0C4 80959384 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 0A0C8 80959388 35EF0020 */  ori     $t7, $t7, 0x0020           ## $t7 = DB060020
/* 0A0CC 8095938C 15A000FF */  bne     $t5, $zero, .L8095978C
/* 0A0D0 80959390 8FA9006C */  lw      $t1, 0x006C($sp)
/* 0A0D4 80959394 8D2202C0 */  lw      $v0, 0x02C0($t1)           ## 000002C0
/* 0A0D8 80959398 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 0A0DC 8095939C 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 0A0E0 809593A0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0A0E4 809593A4 AD2E02C0 */  sw      $t6, 0x02C0($t1)           ## 000002C0
/* 0A0E8 809593A8 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0A0EC 809593AC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0A0F0 809593B0 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0A0F4 809593B4 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 0A0F8 809593B8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0A0FC 809593BC AFB90014 */  sw      $t9, 0x0014($sp)
/* 0A100 809593C0 AFB80010 */  sw      $t8, 0x0010($sp)
/* 0A104 809593C4 8D0B1DE4 */  lw      $t3, 0x1DE4($t0)           ## 00001DE4
/* 0A108 809593C8 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 0A10C 809593CC 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 0A110 809593D0 000B0823 */  subu    $at, $zero, $t3
/* 0A114 809593D4 00016080 */  sll     $t4, $at,  2
/* 0A118 809593D8 01816021 */  addu    $t4, $t4, $at
/* 0A11C 809593DC 000C6040 */  sll     $t4, $t4,  1
/* 0A120 809593E0 318D000F */  andi    $t5, $t4, 0x000F           ## $t5 = 00000000
/* 0A124 809593E4 AFAD0020 */  sw      $t5, 0x0020($sp)
/* 0A128 809593E8 AFAE0024 */  sw      $t6, 0x0024($sp)
/* 0A12C 809593EC AFAF0028 */  sw      $t7, 0x0028($sp)
/* 0A130 809593F0 AFA8004C */  sw      $t0, 0x004C($sp)
/* 0A134 809593F4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0A138 809593F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0A13C 809593FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0A140 80959400 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 0A144 80959404 AFA20058 */  sw      $v0, 0x0058($sp)
/* 0A148 80959408 8FA30058 */  lw      $v1, 0x0058($sp)
/* 0A14C 8095940C 8FA8004C */  lw      $t0, 0x004C($sp)
/* 0A150 80959410 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 0A154 80959414 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 0A158 80959418 8FB8006C */  lw      $t8, 0x006C($sp)
/* 0A15C 8095941C 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 0A160 80959420 240B0010 */  addiu   $t3, $zero, 0x0010         ## $t3 = 00000010
/* 0A164 80959424 8F0202C0 */  lw      $v0, 0x02C0($t8)           ## 000002C0
/* 0A168 80959428 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 0A16C 8095942C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 0A170 80959430 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 0A174 80959434 AF1902C0 */  sw      $t9, 0x02C0($t8)           ## 000002C0
/* 0A178 80959438 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0A17C 8095943C 8D031DE4 */  lw      $v1, 0x1DE4($t0)           ## 00001DE4
/* 0A180 80959440 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0A184 80959444 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 0A188 80959448 00030823 */  subu    $at, $zero, $v1
/* 0A18C 8095944C 00013880 */  sll     $a3, $at,  2
/* 0A190 80959450 00017080 */  sll     $t6, $at,  2
/* 0A194 80959454 01C17021 */  addu    $t6, $t6, $at
/* 0A198 80959458 00E13821 */  addu    $a3, $a3, $at
/* 0A19C 8095945C 00073840 */  sll     $a3, $a3,  1
/* 0A1A0 80959460 31CF001F */  andi    $t7, $t6, 0x001F           ## $t7 = 00000000
/* 0A1A4 80959464 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 0A1A8 80959468 AFB80028 */  sw      $t8, 0x0028($sp)
/* 0A1AC 8095946C AFAF0020 */  sw      $t7, 0x0020($sp)
/* 0A1B0 80959470 30E7001F */  andi    $a3, $a3, 0x001F           ## $a3 = 00000000
/* 0A1B4 80959474 AFB90024 */  sw      $t9, 0x0024($sp)
/* 0A1B8 80959478 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0A1BC 8095947C AFAD0018 */  sw      $t5, 0x0018($sp)
/* 0A1C0 80959480 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 0A1C4 80959484 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 0A1C8 80959488 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0A1CC 8095948C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0A1D0 80959490 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 0A1D4 80959494 AFA20054 */  sw      $v0, 0x0054($sp)
/* 0A1D8 80959498 8FA90054 */  lw      $t1, 0x0054($sp)
/* 0A1DC 8095949C 3C0A8096 */  lui     $t2, %hi(func_80958150)    ## $t2 = 80960000
/* 0A1E0 809594A0 254A8150 */  addiu   $t2, $t2, %lo(func_80958150) ## $t2 = 80958150
/* 0A1E4 809594A4 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
/* 0A1E8 809594A8 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0A1EC 809594AC 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0A1F0 809594B0 3C078095 */  lui     $a3, %hi(func_80957F60)    ## $a3 = 80950000
/* 0A1F4 809594B4 24E77F60 */  addiu   $a3, $a3, %lo(func_80957F60) ## $a3 = 80957F60
/* 0A1F8 809594B8 AFB00014 */  sw      $s0, 0x0014($sp)
/* 0A1FC 809594BC AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0A200 809594C0 0C028572 */  jal     SkelAnime_DrawOpa

/* 0A204 809594C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A208 809594C8 100000B1 */  beq     $zero, $zero, .L80959790
/* 0A20C 809594CC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
glabel L809594D0
/* 0A210 809594D0 920B0197 */  lbu     $t3, 0x0197($s0)           ## 00000197
/* 0A214 809594D4 3C0C8096 */  lui     $t4, %hi(func_809586A4)    ## $t4 = 80960000
/* 0A218 809594D8 258C86A4 */  addiu   $t4, $t4, %lo(func_809586A4) ## $t4 = 809586A4
/* 0A21C 809594DC 156000AB */  bne     $t3, $zero, .L8095978C
/* 0A220 809594E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A224 809594E4 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0A228 809594E8 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0A22C 809594EC 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 0A230 809594F0 3C0D8096 */  lui     $t5, %hi(func_809586E4)    ## $t5 = 80960000
/* 0A234 809594F4 25AD86E4 */  addiu   $t5, $t5, %lo(func_809586E4) ## $t5 = 809586E4
/* 0A238 809594F8 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 0A23C 809594FC AFB00018 */  sw      $s0, 0x0018($sp)
/* 0A240 80959500 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 0A244 80959504 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 0A248 80959508 100000A1 */  beq     $zero, $zero, .L80959790
/* 0A24C 8095950C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
glabel L80959510
/* 0A250 80959510 920E0197 */  lbu     $t6, 0x0197($s0)           ## 00000197
/* 0A254 80959514 3C0F8096 */  lui     $t7, %hi(func_80958934)    ## $t7 = 80960000
/* 0A258 80959518 25EF8934 */  addiu   $t7, $t7, %lo(func_80958934) ## $t7 = 80958934
/* 0A25C 8095951C 15C0009B */  bne     $t6, $zero, .L8095978C
/* 0A260 80959520 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A264 80959524 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0A268 80959528 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0A26C 8095952C 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 0A270 80959530 3C198096 */  lui     $t9, %hi(func_80958B0C)    ## $t9 = 80960000
/* 0A274 80959534 27398B0C */  addiu   $t9, $t9, %lo(func_80958B0C) ## $t9 = 80958B0C
/* 0A278 80959538 AFB90014 */  sw      $t9, 0x0014($sp)
/* 0A27C 8095953C AFB00018 */  sw      $s0, 0x0018($sp)
/* 0A280 80959540 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 0A284 80959544 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 0A288 80959548 10000091 */  beq     $zero, $zero, .L80959790
/* 0A28C 8095954C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
glabel L80959550
/* 0A290 80959550 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0A294 80959554 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0A298 80959558 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 0A29C 8095955C AFA00018 */  sw      $zero, 0x0018($sp)
/* 0A2A0 80959560 AFA00014 */  sw      $zero, 0x0014($sp)
/* 0A2A4 80959564 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0A2A8 80959568 0C0286B2 */  jal     SkelAnime_DrawFlexOpa
/* 0A2AC 8095956C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A2B0 80959570 10000087 */  beq     $zero, $zero, .L80959790
/* 0A2B4 80959574 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
glabel L80959578
.L80959578:
/* 0A2B8 80959578 92180197 */  lbu     $t8, 0x0197($s0)           ## 00000197
/* 0A2BC 8095957C 3C078096 */  lui     $a3, %hi(func_80958F6C)    ## $a3 = 80960000
/* 0A2C0 80959580 24E78F6C */  addiu   $a3, $a3, %lo(func_80958F6C) ## $a3 = 80958F6C
/* 0A2C4 80959584 17000081 */  bne     $t8, $zero, .L8095978C
/* 0A2C8 80959588 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A2CC 8095958C 3C0A8096 */  lui     $t2, %hi(func_80958FFC)    ## $t2 = 80960000
/* 0A2D0 80959590 254A8FFC */  addiu   $t2, $t2, %lo(func_80958FFC) ## $t2 = 80958FFC
/* 0A2D4 80959594 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 0A2D8 80959598 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 0A2DC 8095959C AFB00014 */  sw      $s0, 0x0014($sp)
/* 0A2E0 809595A0 0C028572 */  jal     SkelAnime_DrawOpa

/* 0A2E4 809595A4 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 0A2E8 809595A8 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 0A2EC 809595AC 0C018A29 */  jal     func_800628A4
/* 0A2F0 809595B0 260502D8 */  addiu   $a1, $s0, 0x02D8           ## $a1 = 000002D8
/* 0A2F4 809595B4 3C0B8096 */  lui     $t3, %hi(D_809668D2)       ## $t3 = 80960000
/* 0A2F8 809595B8 816B68D2 */  lb      $t3, %lo(D_809668D2)($t3)
/* 0A2FC 809595BC 3C048096 */  lui     $a0, %hi(D_8095C220)       ## $a0 = 80960000
/* 0A300 809595C0 2484C220 */  addiu   $a0, $a0, %lo(D_8095C220)  ## $a0 = 8095C220
/* 0A304 809595C4 2961000D */  slti    $at, $t3, 0x000D
/* 0A308 809595C8 5020000B */  beql    $at, $zero, .L809595F8
/* 0A30C 809595CC 8E180118 */  lw      $t8, 0x0118($s0)           ## 00000118
/* 0A310 809595D0 8E0D0118 */  lw      $t5, 0x0118($s0)           ## 00000118
/* 0A314 809595D4 27AC00BC */  addiu   $t4, $sp, 0x00BC           ## $t4 = FFFFFFEC
/* 0A318 809595D8 8DAF0024 */  lw      $t7, 0x0024($t5)           ## 00000024
/* 0A31C 809595DC AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFEC
/* 0A320 809595E0 8DAE0028 */  lw      $t6, 0x0028($t5)           ## 00000028
/* 0A324 809595E4 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFF0
/* 0A328 809595E8 8DAF002C */  lw      $t7, 0x002C($t5)           ## 0000002C
/* 0A32C 809595EC 10000009 */  beq     $zero, $zero, .L80959614
/* 0A330 809595F0 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFF4
/* 0A334 809595F4 8E180118 */  lw      $t8, 0x0118($s0)           ## 00000118
.L809595F8:
/* 0A338 809595F8 27B900BC */  addiu   $t9, $sp, 0x00BC           ## $t9 = FFFFFFEC
/* 0A33C 809595FC 8F0B01D8 */  lw      $t3, 0x01D8($t8)           ## 000001D8
/* 0A340 80959600 AF2B0000 */  sw      $t3, 0x0000($t9)           ## FFFFFFEC
/* 0A344 80959604 8F0A01DC */  lw      $t2, 0x01DC($t8)           ## 000001DC
/* 0A348 80959608 AF2A0004 */  sw      $t2, 0x0004($t9)           ## FFFFFFF0
/* 0A34C 8095960C 8F0B01E0 */  lw      $t3, 0x01E0($t8)           ## 000001E0
/* 0A350 80959610 AF2B0008 */  sw      $t3, 0x0008($t9)           ## FFFFFFF4
.L80959614:
/* 0A354 80959614 0C0346BD */  jal     Matrix_MultVec3f
/* 0A358 80959618 26050208 */  addiu   $a1, $s0, 0x0208           ## $a1 = 00000208
/* 0A35C 8095961C 0C034213 */  jal     Matrix_Push
/* 0A360 80959620 00000000 */  nop
/* 0A364 80959624 C7AC00BC */  lwc1    $f12, 0x00BC($sp)
/* 0A368 80959628 C7AE00C0 */  lwc1    $f14, 0x00C0($sp)
/* 0A36C 8095962C 8FA600C4 */  lw      $a2, 0x00C4($sp)
/* 0A370 80959630 0C034261 */  jal     Matrix_Translate
/* 0A374 80959634 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0A378 80959638 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 0A37C 8095963C 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 0A380 80959640 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0A384 80959644 0C034421 */  jal     Matrix_RotateRPY
/* 0A388 80959648 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0A38C 8095964C C60401A0 */  lwc1    $f4, 0x01A0($s0)           ## 000001A0
/* 0A390 80959650 3C013D80 */  lui     $at, 0x3D80                ## $at = 3D800000
/* 0A394 80959654 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.06
/* 0A398 80959658 E7A4007C */  swc1    $f4, 0x007C($sp)
/* 0A39C 8095965C C7A6007C */  lwc1    $f6, 0x007C($sp)
/* 0A3A0 80959660 27A400B0 */  addiu   $a0, $sp, 0x00B0           ## $a0 = FFFFFFE0
/* 0A3A4 80959664 260501FC */  addiu   $a1, $s0, 0x01FC           ## $a1 = 000001FC
/* 0A3A8 80959668 E7A60088 */  swc1    $f6, 0x0088($sp)
/* 0A3AC 8095966C 860C019C */  lh      $t4, 0x019C($s0)           ## 0000019C
/* 0A3B0 80959670 C60801A0 */  lwc1    $f8, 0x01A0($s0)           ## 000001A0
/* 0A3B4 80959674 318D000F */  andi    $t5, $t4, 0x000F           ## $t5 = 00000000
/* 0A3B8 80959678 448D9000 */  mtc1    $t5, $f18                  ## $f18 = 0.00
/* 0A3BC 8095967C 460A4402 */  mul.s   $f16, $f8, $f10
/* 0A3C0 80959680 46809120 */  cvt.s.w $f4, $f18
/* 0A3C4 80959684 46102182 */  mul.s   $f6, $f4, $f16
/* 0A3C8 80959688 0C0346BD */  jal     Matrix_MultVec3f
/* 0A3CC 8095968C E7A600B8 */  swc1    $f6, 0x00B8($sp)
/* 0A3D0 80959690 26050384 */  addiu   $a1, $s0, 0x0384           ## $a1 = 00000384
/* 0A3D4 80959694 AFA50048 */  sw      $a1, 0x0048($sp)
/* 0A3D8 80959698 0C0346BD */  jal     Matrix_MultVec3f
/* 0A3DC 8095969C 27A40098 */  addiu   $a0, $sp, 0x0098           ## $a0 = FFFFFFC8
/* 0A3E0 809596A0 26050378 */  addiu   $a1, $s0, 0x0378           ## $a1 = 00000378
/* 0A3E4 809596A4 AFA5004C */  sw      $a1, 0x004C($sp)
/* 0A3E8 809596A8 0C0346BD */  jal     Matrix_MultVec3f
/* 0A3EC 809596AC 27A4008C */  addiu   $a0, $sp, 0x008C           ## $a0 = FFFFFFBC
/* 0A3F0 809596B0 2605039C */  addiu   $a1, $s0, 0x039C           ## $a1 = 0000039C
/* 0A3F4 809596B4 AFA50040 */  sw      $a1, 0x0040($sp)
/* 0A3F8 809596B8 0C0346BD */  jal     Matrix_MultVec3f
/* 0A3FC 809596BC 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFB0
/* 0A400 809596C0 26070390 */  addiu   $a3, $s0, 0x0390           ## $a3 = 00000390
/* 0A404 809596C4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000390
/* 0A408 809596C8 AFA70044 */  sw      $a3, 0x0044($sp)
/* 0A40C 809596CC 0C0346BD */  jal     Matrix_MultVec3f
/* 0A410 809596D0 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFA4
/* 0A414 809596D4 8FAE0040 */  lw      $t6, 0x0040($sp)
/* 0A418 809596D8 8FA70044 */  lw      $a3, 0x0044($sp)
/* 0A41C 809596DC 26040338 */  addiu   $a0, $s0, 0x0338           ## $a0 = 00000338
/* 0A420 809596E0 8FA5004C */  lw      $a1, 0x004C($sp)
/* 0A424 809596E4 8FA60048 */  lw      $a2, 0x0048($sp)
/* 0A428 809596E8 0C0189CD */  jal     func_80062734
/* 0A42C 809596EC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 0A430 809596F0 0C034221 */  jal     Matrix_Pull
/* 0A434 809596F4 00000000 */  nop
/* 0A438 809596F8 8E180024 */  lw      $t8, 0x0024($s0)           ## 00000024
/* 0A43C 809596FC 27AF00BC */  addiu   $t7, $sp, 0x00BC           ## $t7 = FFFFFFEC
/* 0A440 80959700 3C014110 */  lui     $at, 0x4110                ## $at = 41100000
/* 0A444 80959704 ADF80000 */  sw      $t8, 0x0000($t7)           ## FFFFFFEC
/* 0A448 80959708 8E190028 */  lw      $t9, 0x0028($s0)           ## 00000028
/* 0A44C 8095970C 44815000 */  mtc1    $at, $f10                  ## $f10 = 9.00
/* 0A450 80959710 ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFF0
/* 0A454 80959714 8E18002C */  lw      $t8, 0x002C($s0)           ## 0000002C
/* 0A458 80959718 ADF80008 */  sw      $t8, 0x0008($t7)           ## FFFFFFF4
/* 0A45C 8095971C C7A800C0 */  lwc1    $f8, 0x00C0($sp)
/* 0A460 80959720 460A4480 */  add.s   $f18, $f8, $f10
/* 0A464 80959724 E7B200C0 */  swc1    $f18, 0x00C0($sp)
/* 0A468 80959728 920A0114 */  lbu     $t2, 0x0114($s0)           ## 00000114
/* 0A46C 8095972C 51400004 */  beql    $t2, $zero, .L80959740
/* 0A470 80959730 27A400BC */  addiu   $a0, $sp, 0x00BC           ## $a0 = FFFFFFEC
/* 0A474 80959734 0C009A9B */  jal     func_80026A6C
/* 0A478 80959738 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A47C 8095973C 27A400BC */  addiu   $a0, $sp, 0x00BC           ## $a0 = FFFFFFEC
.L80959740:
/* 0A480 80959740 27A500A4 */  addiu   $a1, $sp, 0x00A4           ## $a1 = FFFFFFD4
/* 0A484 80959744 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 0A488 80959748 0C00CF0C */  jal     func_80033C30
/* 0A48C 8095974C 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000000
/* 0A490 80959750 920B0114 */  lbu     $t3, 0x0114($s0)           ## 00000114
/* 0A494 80959754 3C0C8096 */  lui     $t4, %hi(D_8095C2F8)       ## $t4 = 80960000
/* 0A498 80959758 258CC2F8 */  addiu   $t4, $t4, %lo(D_8095C2F8)  ## $t4 = 8095C2F8
/* 0A49C 8095975C 5160000C */  beql    $t3, $zero, .L80959790
/* 0A4A0 80959760 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0A4A4 80959764 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 8095C2F8
/* 0A4A8 80959768 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFF80
/* 0A4AC 8095976C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A4B0 80959770 ACAE0000 */  sw      $t6, 0x0000($a1)           ## FFFFFF80
/* 0A4B4 80959774 96070112 */  lhu     $a3, 0x0112($s0)           ## 00000112
/* 0A4B8 80959778 92060114 */  lbu     $a2, 0x0114($s0)           ## 00000114
/* 0A4BC 8095977C 30E700FF */  andi    $a3, $a3, 0x00FF           ## $a3 = 00000000
/* 0A4C0 80959780 00073C00 */  sll     $a3, $a3, 16
/* 0A4C4 80959784 0C009A18 */  jal     func_80026860
/* 0A4C8 80959788 00073C03 */  sra     $a3, $a3, 16
glabel L8095978C
.L8095978C:
/* 0A4CC 8095978C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80959790:
/* 0A4D0 80959790 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0A4D4 80959794 3C048096 */  lui     $a0, %hi(D_8095DF50)       ## $a0 = 80960000
/* 0A4D8 80959798 14410005 */  bne     $v0, $at, .L809597B0
/* 0A4DC 8095979C 2484DF50 */  addiu   $a0, $a0, %lo(D_8095DF50)  ## $a0 = 8095DF50
/* 0A4E0 809597A0 0C256862 */  jal     func_8095A188
/* 0A4E4 809597A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0A4E8 809597A8 10000007 */  beq     $zero, $zero, .L809597C8
/* 0A4EC 809597AC 00000000 */  nop
.L809597B0:
/* 0A4F0 809597B0 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 0A4F4 809597B4 14410004 */  bne     $v0, $at, .L809597C8
/* 0A4F8 809597B8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0A4FC 809597BC 3C058096 */  lui     $a1, %hi(D_80966934)       ## $a1 = 80960000
/* 0A500 809597C0 0C256F49 */  jal     func_8095BD24
/* 0A504 809597C4 84A56934 */  lh      $a1, %lo(D_80966934)($a1)
.L809597C8:
/* 0A508 809597C8 3C068096 */  lui     $a2, %hi(D_8095C480)       ## $a2 = 80960000
/* 0A50C 809597CC 24C6C480 */  addiu   $a2, $a2, %lo(D_8095C480)  ## $a2 = 8095C480
/* 0A510 809597D0 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFF8C
/* 0A514 809597D4 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0A518 809597D8 0C031AD5 */  jal     Graph_CloseDisps
/* 0A51C 809597DC 24071241 */  addiu   $a3, $zero, 0x1241         ## $a3 = 00001241
/* 0A520 809597E0 8FBF003C */  lw      $ra, 0x003C($sp)
/* 0A524 809597E4 8FB00034 */  lw      $s0, 0x0034($sp)
/* 0A528 809597E8 8FB10038 */  lw      $s1, 0x0038($sp)
/* 0A52C 809597EC 03E00008 */  jr      $ra
/* 0A530 809597F0 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
