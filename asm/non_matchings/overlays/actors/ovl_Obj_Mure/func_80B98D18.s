.rdata
glabel D_80B99C34
    .asciz "Error : 既に子供がいる(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_80B99C64
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99C74
    .asciz "warning 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80B99C90
    .asciz "../z_obj_mure.c"
    .balign 4

glabel D_80B99CA0
    .asciz "warning 発生失敗 (%s %d)\n"
    .balign 4

glabel D_80B99CBC
    .asciz "../z_obj_mure.c"
    .balign 4

.text
glabel func_80B98D18
/* 00278 80B98D18 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 0027C 80B98D1C AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00280 80B98D20 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00284 80B98D24 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00288 80B98D28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0028C 80B98D2C 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 00290 80B98D30 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 00294 80B98D34 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 00298 80B98D38 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 0029C 80B98D3C AFB40040 */  sw      $s4, 0x0040($sp)           
/* 002A0 80B98D40 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 002A4 80B98D44 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 002A8 80B98D48 0C2E6322 */  jal     func_80B98C88              
/* 002AC 80B98D4C AFB10034 */  sw      $s1, 0x0034($sp)           
/* 002B0 80B98D50 AFA2006C */  sw      $v0, 0x006C($sp)           
/* 002B4 80B98D54 1840006C */  blez    $v0, .L80B98F08            
/* 002B8 80B98D58 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 002BC 80B98D5C 3C1E80BA */  lui     $s8, %hi(D_80B99A80)       ## $s8 = 80BA0000
/* 002C0 80B98D60 3C1780BA */  lui     $s7, %hi(D_80B99A74)       ## $s7 = 80BA0000
/* 002C4 80B98D64 26F79A74 */  addiu   $s7, $s7, %lo(D_80B99A74)  ## $s7 = 80B99A74
/* 002C8 80B98D68 27DE9A80 */  addiu   $s8, $s8, %lo(D_80B99A80)  ## $s8 = 80B99A80
/* 002CC 80B98D6C 02008825 */  or      $s1, $s0, $zero            ## $s1 = 00000000
/* 002D0 80B98D70 0200A025 */  or      $s4, $s0, $zero            ## $s4 = 00000000
/* 002D4 80B98D74 27B60074 */  addiu   $s6, $sp, 0x0074           ## $s6 = FFFFFFEC
.L80B98D78:
/* 002D8 80B98D78 8E2E0158 */  lw      $t6, 0x0158($s1)           ## 00000158
/* 002DC 80B98D7C 3C0480BA */  lui     $a0, %hi(D_80B99C34)       ## $a0 = 80BA0000
/* 002E0 80B98D80 24849C34 */  addiu   $a0, $a0, %lo(D_80B99C34)  ## $a0 = 80B99C34
/* 002E4 80B98D84 11C00005 */  beq     $t6, $zero, .L80B98D9C     
/* 002E8 80B98D88 3C0580BA */  lui     $a1, %hi(D_80B99C64)       ## $a1 = 80BA0000
/* 002EC 80B98D8C 24A59C64 */  addiu   $a1, $a1, %lo(D_80B99C64)  ## $a1 = 80B99C64
/* 002F0 80B98D90 2406014D */  addiu   $a2, $zero, 0x014D         ## $a2 = 0000014D
/* 002F4 80B98D94 0C00084C */  jal     osSyncPrintf
              
/* 002F8 80B98D98 8607001C */  lh      $a3, 0x001C($s0)           ## 0000001C
.L80B98D9C:
/* 002FC 80B98D9C 92820194 */  lbu     $v0, 0x0194($s4)           ## 00000194
/* 00300 80B98DA0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00304 80B98DA4 26B21C24 */  addiu   $s2, $s5, 0x1C24           ## $s2 = 00001C24
/* 00308 80B98DA8 10410051 */  beq     $v0, $at, .L80B98EF0       
/* 0030C 80B98DAC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00310 80B98DB0 1441002B */  bne     $v0, $at, .L80B98E60       
/* 00314 80B98DB4 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00318 80B98DB8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = FFFFFFEC
/* 0031C 80B98DBC 86060152 */  lh      $a2, 0x0152($s0)           ## 00000152
/* 00320 80B98DC0 0C2E632D */  jal     func_80B98CB4              
/* 00324 80B98DC4 02603825 */  or      $a3, $s3, $zero            ## $a3 = 00000000
/* 00328 80B98DC8 86020156 */  lh      $v0, 0x0156($s0)           ## 00000156
/* 0032C 80B98DCC C7A40078 */  lwc1    $f4, 0x0078($sp)           
/* 00330 80B98DD0 C7A6007C */  lwc1    $f6, 0x007C($sp)           
/* 00334 80B98DD4 00021040 */  sll     $v0, $v0,  1               
/* 00338 80B98DD8 02E27821 */  addu    $t7, $s7, $v0              
/* 0033C 80B98DDC 85E60000 */  lh      $a2, 0x0000($t7)           ## 00000000
/* 00340 80B98DE0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00344 80B98DE4 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00348 80B98DE8 86180030 */  lh      $t8, 0x0030($s0)           ## 00000030
/* 0034C 80B98DEC 03C24821 */  addu    $t1, $s8, $v0              
/* 00350 80B98DF0 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 00354 80B98DF4 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00358 80B98DF8 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 0035C 80B98DFC 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00001C24
/* 00360 80B98E00 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 00364 80B98E04 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00368 80B98E08 86080034 */  lh      $t0, 0x0034($s0)           ## 00000034
/* 0036C 80B98E0C 8FA70074 */  lw      $a3, 0x0074($sp)           
/* 00370 80B98E10 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 00374 80B98E14 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00378 80B98E18 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 0037C 80B98E1C 10400008 */  beq     $v0, $zero, .L80B98E40     
/* 00380 80B98E20 AE220158 */  sw      $v0, 0x0158($s1)           ## 00000158
/* 00384 80B98E24 8C4B0004 */  lw      $t3, 0x0004($v0)           ## 00000004
/* 00388 80B98E28 356C0800 */  ori     $t4, $t3, 0x0800           ## $t4 = 00000800
/* 0038C 80B98E2C AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00390 80B98E30 8E2E0158 */  lw      $t6, 0x0158($s1)           ## 00000158
/* 00394 80B98E34 820D0003 */  lb      $t5, 0x0003($s0)           ## 00000003
/* 00398 80B98E38 1000002D */  beq     $zero, $zero, .L80B98EF0   
/* 0039C 80B98E3C A1CD0003 */  sb      $t5, 0x0003($t6)           ## 00000003
.L80B98E40:
/* 003A0 80B98E40 3C0480BA */  lui     $a0, %hi(D_80B99C74)       ## $a0 = 80BA0000
/* 003A4 80B98E44 3C0580BA */  lui     $a1, %hi(D_80B99C90)       ## $a1 = 80BA0000
/* 003A8 80B98E48 24A59C90 */  addiu   $a1, $a1, %lo(D_80B99C90)  ## $a1 = 80B99C90
/* 003AC 80B98E4C 24849C74 */  addiu   $a0, $a0, %lo(D_80B99C74)  ## $a0 = 80B99C74
/* 003B0 80B98E50 0C00084C */  jal     osSyncPrintf
              
/* 003B4 80B98E54 24060167 */  addiu   $a2, $zero, 0x0167         ## $a2 = 00000167
/* 003B8 80B98E58 10000026 */  beq     $zero, $zero, .L80B98EF4   
/* 003BC 80B98E5C 8FAD006C */  lw      $t5, 0x006C($sp)           
.L80B98E60:
/* 003C0 80B98E60 02C02025 */  or      $a0, $s6, $zero            ## $a0 = FFFFFFEC
/* 003C4 80B98E64 86060152 */  lh      $a2, 0x0152($s0)           ## 00000152
/* 003C8 80B98E68 0C2E632D */  jal     func_80B98CB4              
/* 003CC 80B98E6C 02603825 */  or      $a3, $s3, $zero            ## $a3 = 00000000
/* 003D0 80B98E70 86020156 */  lh      $v0, 0x0156($s0)           ## 00000156
/* 003D4 80B98E74 C7A80078 */  lwc1    $f8, 0x0078($sp)           
/* 003D8 80B98E78 C7AA007C */  lwc1    $f10, 0x007C($sp)          
/* 003DC 80B98E7C 00021040 */  sll     $v0, $v0,  1               
/* 003E0 80B98E80 02E27821 */  addu    $t7, $s7, $v0              
/* 003E4 80B98E84 85E60000 */  lh      $a2, 0x0000($t7)           ## 00000000
/* 003E8 80B98E88 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 003EC 80B98E8C E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 003F0 80B98E90 86180030 */  lh      $t8, 0x0030($s0)           ## 00000030
/* 003F4 80B98E94 03C24821 */  addu    $t1, $s8, $v0              
/* 003F8 80B98E98 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 003FC 80B98E9C AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00400 80B98EA0 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 00404 80B98EA4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00001C24
/* 00408 80B98EA8 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 0040C 80B98EAC AFB9001C */  sw      $t9, 0x001C($sp)           
/* 00410 80B98EB0 86080034 */  lh      $t0, 0x0034($s0)           ## 00000034
/* 00414 80B98EB4 8FA70074 */  lw      $a3, 0x0074($sp)           
/* 00418 80B98EB8 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 0041C 80B98EBC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00420 80B98EC0 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 00424 80B98EC4 10400004 */  beq     $v0, $zero, .L80B98ED8     
/* 00428 80B98EC8 AE220158 */  sw      $v0, 0x0158($s1)           ## 00000158
/* 0042C 80B98ECC 820B0003 */  lb      $t3, 0x0003($s0)           ## 00000003
/* 00430 80B98ED0 10000007 */  beq     $zero, $zero, .L80B98EF0   
/* 00434 80B98ED4 A04B0003 */  sb      $t3, 0x0003($v0)           ## 00000003
.L80B98ED8:
/* 00438 80B98ED8 3C0480BA */  lui     $a0, %hi(D_80B99CA0)       ## $a0 = 80BA0000
/* 0043C 80B98EDC 3C0580BA */  lui     $a1, %hi(D_80B99CBC)       ## $a1 = 80BA0000
/* 00440 80B98EE0 24A59CBC */  addiu   $a1, $a1, %lo(D_80B99CBC)  ## $a1 = 80B99CBC
/* 00444 80B98EE4 24849CA0 */  addiu   $a0, $a0, %lo(D_80B99CA0)  ## $a0 = 80B99CA0
/* 00448 80B98EE8 0C00084C */  jal     osSyncPrintf
              
/* 0044C 80B98EEC 2406017E */  addiu   $a2, $zero, 0x017E         ## $a2 = 0000017E
.L80B98EF0:
/* 00450 80B98EF0 8FAD006C */  lw      $t5, 0x006C($sp)           
.L80B98EF4:
/* 00454 80B98EF4 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00458 80B98EF8 26310004 */  addiu   $s1, $s1, 0x0004           ## $s1 = 00000004
/* 0045C 80B98EFC 026D082A */  slt     $at, $s3, $t5              
/* 00460 80B98F00 1420FF9D */  bne     $at, $zero, .L80B98D78     
/* 00464 80B98F04 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
.L80B98F08:
/* 00468 80B98F08 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 0046C 80B98F0C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00470 80B98F10 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00474 80B98F14 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00478 80B98F18 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 0047C 80B98F1C 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00480 80B98F20 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00484 80B98F24 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00488 80B98F28 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 0048C 80B98F2C 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 00490 80B98F30 03E00008 */  jr      $ra                        
/* 00494 80B98F34 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
