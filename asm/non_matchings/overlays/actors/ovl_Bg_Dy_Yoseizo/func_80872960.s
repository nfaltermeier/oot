.late_rodata
glabel D_80875680
    .float 0.01

glabel D_80875684
    .float 3500.0

glabel D_80875688
    .float 0.4

glabel D_8087568C
    .float 0.2

glabel D_80875690
    .float 0.1

.text
glabel func_80872960
/* 00130 80872960 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 00134 80872964 3C0F8087 */  lui     $t7, %hi(D_808754A4)       ## $t7 = 80870000
/* 00138 80872968 AFBF0084 */  sw      $ra, 0x0084($sp)           
/* 0013C 8087296C AFBE0080 */  sw      $s8, 0x0080($sp)           
/* 00140 80872970 AFB7007C */  sw      $s7, 0x007C($sp)           
/* 00144 80872974 AFB60078 */  sw      $s6, 0x0078($sp)           
/* 00148 80872978 AFB50074 */  sw      $s5, 0x0074($sp)           
/* 0014C 8087297C AFB40070 */  sw      $s4, 0x0070($sp)           
/* 00150 80872980 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 00154 80872984 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 00158 80872988 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 0015C 8087298C AFB00060 */  sw      $s0, 0x0060($sp)           
/* 00160 80872990 F7BE0058 */  sdc1    $f30, 0x0058($sp)          
/* 00164 80872994 F7BC0050 */  sdc1    $f28, 0x0050($sp)          
/* 00168 80872998 F7BA0048 */  sdc1    $f26, 0x0048($sp)          
/* 0016C 8087299C F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00170 808729A0 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00174 808729A4 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 00178 808729A8 AFA500D4 */  sw      $a1, 0x00D4($sp)           
/* 0017C 808729AC AFA600D8 */  sw      $a2, 0x00D8($sp)           
/* 00180 808729B0 25EF54A4 */  addiu   $t7, $t7, %lo(D_808754A4)  ## $t7 = 808754A4
/* 00184 808729B4 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808754A4
/* 00188 808729B8 27AE00C4 */  addiu   $t6, $sp, 0x00C4           ## $t6 = FFFFFFF4
/* 0018C 808729BC 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808754A8
/* 00190 808729C0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 00194 808729C4 8DF90008 */  lw      $t9, 0x0008($t7)           ## 808754AC
/* 00198 808729C8 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 0019C 808729CC 3C018087 */  lui     $at, %hi(D_80875680)       ## $at = 80870000
/* 001A0 808729D0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 001A4 808729D4 C4245680 */  lwc1    $f4, %lo(D_80875680)($at)  
/* 001A8 808729D8 C4800308 */  lwc1    $f0, 0x0308($a0)           ## 00000308
/* 001AC 808729DC 0006A400 */  sll     $s4, $a2, 16               
/* 001B0 808729E0 0014A403 */  sra     $s4, $s4, 16               
/* 001B4 808729E4 4604003C */  c.lt.s  $f0, $f4                   
/* 001B8 808729E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001BC 808729EC 3C018087 */  lui     $at, %hi(D_80875684)       ## $at = 80870000
/* 001C0 808729F0 45030088 */  bc1tl   .L80872C14                 
/* 001C4 808729F4 8FBF0084 */  lw      $ra, 0x0084($sp)           
/* 001C8 808729F8 C4265684 */  lwc1    $f6, %lo(D_80875684)($at)  
/* 001CC 808729FC 46060502 */  mul.s   $f20, $f0, $f6             
/* 001D0 80872A00 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 001D4 80872A04 00000000 */  nop
/* 001D8 80872A08 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001DC 80872A0C 4481E000 */  mtc1    $at, $f28                  ## $f28 = 0.50
/* 001E0 80872A10 00000000 */  nop
/* 001E4 80872A14 461C0201 */  sub.s   $f8, $f0, $f28             
/* 001E8 80872A18 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 001EC 80872A1C E7A800B8 */  swc1    $f8, 0x00B8($sp)           
/* 001F0 80872A20 461C0281 */  sub.s   $f10, $f0, $f28            
/* 001F4 80872A24 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 001F8 80872A28 E7AA00BC */  swc1    $f10, 0x00BC($sp)          
/* 001FC 80872A2C 461C0401 */  sub.s   $f16, $f0, $f28            
/* 00200 80872A30 3C018087 */  lui     $at, %hi(D_80875688)       ## $at = 80870000
/* 00204 80872A34 C43E5688 */  lwc1    $f30, %lo(D_80875688)($at) 
/* 00208 80872A38 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0020C 80872A3C 3C178087 */  lui     $s7, %hi(D_80875488)       ## $s7 = 80870000
/* 00210 80872A40 3C158087 */  lui     $s5, %hi(D_8087546C)       ## $s5 = 80870000
/* 00214 80872A44 4481D000 */  mtc1    $at, $f26                  ## $f26 = 30.00
/* 00218 80872A48 E7B000C0 */  swc1    $f16, 0x00C0($sp)          
/* 0021C 80872A4C 26B5546C */  addiu   $s5, $s5, %lo(D_8087546C)  ## $s5 = 8087546C
/* 00220 80872A50 26F75488 */  addiu   $s7, $s7, %lo(D_80875488)  ## $s7 = 80875488
/* 00224 80872A54 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00228 80872A58 27BE00AC */  addiu   $s8, $sp, 0x00AC           ## $s8 = FFFFFFDC
/* 0022C 80872A5C 24160003 */  addiu   $s6, $zero, 0x0003         ## $s6 = 00000003
.L80872A60:
/* 00230 80872A60 16800012 */  bne     $s4, $zero, .L80872AAC     
/* 00234 80872A64 3C018087 */  lui     $at, %hi(D_8087568C)       ## $at = 80870000
/* 00238 80872A68 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 0023C 80872A6C 461CA582 */  mul.s   $f22, $f20, $f28           
/* 00240 80872A70 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00244 80872A74 4600F606 */  mov.s   $f24, $f30                 
/* 00248 80872A78 2412005A */  addiu   $s2, $zero, 0x005A         ## $s2 = 0000005A
/* 0024C 80872A7C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00250 80872A80 E7B200AC */  swc1    $f18, 0x00AC($sp)          
/* 00254 80872A84 461C0101 */  sub.s   $f4, $f0, $f28             
/* 00258 80872A88 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0025C 80872A8C 46162182 */  mul.s   $f6, $f4, $f22             
/* 00260 80872A90 46144280 */  add.s   $f10, $f8, $f20            
/* 00264 80872A94 460A3400 */  add.s   $f16, $f6, $f10            
/* 00268 80872A98 E7B000B0 */  swc1    $f16, 0x00B0($sp)          
/* 0026C 80872A9C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00270 80872AA0 461A9100 */  add.s   $f4, $f18, $f26            
/* 00274 80872AA4 1000003A */  beq     $zero, $zero, .L80872B90   
/* 00278 80872AA8 E7A400B4 */  swc1    $f4, 0x00B4($sp)           
.L80872AAC:
/* 0027C 80872AAC C438568C */  lwc1    $f24, %lo(D_8087568C)($at) 
/* 00280 80872AB0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00284 80872AB4 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 00288 80872AB8 3C018087 */  lui     $at, %hi(D_80875690)       ## $at = 80870000
/* 0028C 80872ABC C4285690 */  lwc1    $f8, %lo(D_80875690)($at)  
/* 00290 80872AC0 24120032 */  addiu   $s2, $zero, 0x0032         ## $s2 = 00000032
/* 00294 80872AC4 02808825 */  or      $s1, $s4, $zero            ## $s1 = 00000000
/* 00298 80872AC8 4608A582 */  mul.s   $f22, $f20, $f8            
/* 0029C 80872ACC 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 002A0 80872AD0 00000000 */  nop
/* 002A4 80872AD4 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 002A8 80872AD8 8FA900D4 */  lw      $t1, 0x00D4($sp)           
/* 002AC 80872ADC 2401003B */  addiu   $at, $zero, 0x003B         ## $at = 0000003B
/* 002B0 80872AE0 46060280 */  add.s   $f10, $f0, $f6             
/* 002B4 80872AE4 E7AA00AC */  swc1    $f10, 0x00AC($sp)          
/* 002B8 80872AE8 852A00A4 */  lh      $t2, 0x00A4($t1)           ## 000000A4
/* 002BC 80872AEC 15410010 */  bne     $t2, $at, .L80872B30       
/* 002C0 80872AF0 00000000 */  nop
/* 002C4 80872AF4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 002C8 80872AF8 00000000 */  nop
/* 002CC 80872AFC 461C0181 */  sub.s   $f6, $f0, $f28             
/* 002D0 80872B00 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 002D4 80872B04 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 002D8 80872B08 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 002DC 80872B0C 46148480 */  add.s   $f18, $f16, $f20           
/* 002E0 80872B10 46163282 */  mul.s   $f10, $f6, $f22            
/* 002E4 80872B14 46049200 */  add.s   $f8, $f18, $f4             
/* 002E8 80872B18 46085400 */  add.s   $f16, $f10, $f8            
/* 002EC 80872B1C E7B000B0 */  swc1    $f16, 0x00B0($sp)          
/* 002F0 80872B20 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 002F4 80872B24 461A9100 */  add.s   $f4, $f18, $f26            
/* 002F8 80872B28 1000000F */  beq     $zero, $zero, .L80872B68   
/* 002FC 80872B2C E7A400B4 */  swc1    $f4, 0x00B4($sp)           
.L80872B30:
/* 00300 80872B30 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00304 80872B34 00000000 */  nop
/* 00308 80872B38 461C0181 */  sub.s   $f6, $f0, $f28             
/* 0030C 80872B3C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00310 80872B40 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00314 80872B44 46144400 */  add.s   $f16, $f8, $f20            
/* 00318 80872B48 46163282 */  mul.s   $f10, $f6, $f22            
/* 0031C 80872B4C 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00320 80872B50 461A8481 */  sub.s   $f18, $f16, $f26           
/* 00324 80872B54 46125100 */  add.s   $f4, $f10, $f18            
/* 00328 80872B58 E7A400B0 */  swc1    $f4, 0x00B0($sp)           
/* 0032C 80872B5C C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00330 80872B60 46083400 */  add.s   $f16, $f6, $f8             
/* 00334 80872B64 E7B000B4 */  swc1    $f16, 0x00B4($sp)          
.L80872B68:
/* 00338 80872B68 3C0B8016 */  lui     $t3, %hi(gSaveContext+4)
/* 0033C 80872B6C 8D6BE664 */  lw      $t3, %lo(gSaveContext+4)($t3)
/* 00340 80872B70 C7AA00B0 */  lwc1    $f10, 0x00B0($sp)          
/* 00344 80872B74 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00348 80872B78 15600005 */  bne     $t3, $zero, .L80872B90     
/* 0034C 80872B7C 00000000 */  nop
/* 00350 80872B80 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 00354 80872B84 00000000 */  nop
/* 00358 80872B88 46125100 */  add.s   $f4, $f10, $f18            
/* 0035C 80872B8C E7A400B0 */  swc1    $f4, 0x00B0($sp)           
.L80872B90:
/* 00360 80872B90 02360019 */  multu   $s1, $s6                   
/* 00364 80872B94 27A900A8 */  addiu   $t1, $sp, 0x00A8           ## $t1 = FFFFFFD8
/* 00368 80872B98 27AA00A4 */  addiu   $t2, $sp, 0x00A4           ## $t2 = FFFFFFD4
/* 0036C 80872B9C AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00370 80872BA0 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00374 80872BA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00378 80872BA8 03C02825 */  or      $a1, $s8, $zero            ## $a1 = FFFFFFDC
/* 0037C 80872BAC 27A600C4 */  addiu   $a2, $sp, 0x00C4           ## $a2 = FFFFFFF4
/* 00380 80872BB0 27A700B8 */  addiu   $a3, $sp, 0x00B8           ## $a3 = FFFFFFE8
/* 00384 80872BB4 E7B80018 */  swc1    $f24, 0x0018($sp)          
/* 00388 80872BB8 00004012 */  mflo    $t0                        
/* 0038C 80872BBC 02A81021 */  addu    $v0, $s5, $t0              
/* 00390 80872BC0 02E81821 */  addu    $v1, $s7, $t0              
/* 00394 80872BC4 904C0000 */  lbu     $t4, 0x0000($v0)           ## 00000000
/* 00398 80872BC8 904D0001 */  lbu     $t5, 0x0001($v0)           ## 00000001
/* 0039C 80872BCC 904E0002 */  lbu     $t6, 0x0002($v0)           ## 00000002
/* 003A0 80872BD0 906F0000 */  lbu     $t7, 0x0000($v1)           ## 00000000
/* 003A4 80872BD4 90780001 */  lbu     $t8, 0x0001($v1)           ## 00000001
/* 003A8 80872BD8 90790002 */  lbu     $t9, 0x0002($v1)           ## 00000002
/* 003AC 80872BDC AFB2001C */  sw      $s2, 0x001C($sp)           
/* 003B0 80872BE0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 003B4 80872BE4 A3AC00A8 */  sb      $t4, 0x00A8($sp)           
/* 003B8 80872BE8 A3AD00A9 */  sb      $t5, 0x00A9($sp)           
/* 003BC 80872BEC A3AE00AA */  sb      $t6, 0x00AA($sp)           
/* 003C0 80872BF0 A3AF00A4 */  sb      $t7, 0x00A4($sp)           
/* 003C4 80872BF4 A3B800A5 */  sb      $t8, 0x00A5($sp)           
/* 003C8 80872BF8 0C21D367 */  jal     func_80874D9C              
/* 003CC 80872BFC A3B900A6 */  sb      $t9, 0x00A6($sp)           
/* 003D0 80872C00 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 003D4 80872C04 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 003D8 80872C08 1661FF95 */  bne     $s3, $at, .L80872A60       
/* 003DC 80872C0C 00000000 */  nop
/* 003E0 80872C10 8FBF0084 */  lw      $ra, 0x0084($sp)           
.L80872C14:
/* 003E4 80872C14 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 003E8 80872C18 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 003EC 80872C1C D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 003F0 80872C20 D7BA0048 */  ldc1    $f26, 0x0048($sp)          
/* 003F4 80872C24 D7BC0050 */  ldc1    $f28, 0x0050($sp)          
/* 003F8 80872C28 D7BE0058 */  ldc1    $f30, 0x0058($sp)          
/* 003FC 80872C2C 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 00400 80872C30 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 00404 80872C34 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 00408 80872C38 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 0040C 80872C3C 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 00410 80872C40 8FB50074 */  lw      $s5, 0x0074($sp)           
/* 00414 80872C44 8FB60078 */  lw      $s6, 0x0078($sp)           
/* 00418 80872C48 8FB7007C */  lw      $s7, 0x007C($sp)           
/* 0041C 80872C4C 8FBE0080 */  lw      $s8, 0x0080($sp)           
/* 00420 80872C50 03E00008 */  jr      $ra                        
/* 00424 80872C54 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000
