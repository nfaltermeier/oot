glabel func_80A33D10
/* 01140 80A33D10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01144 80A33D14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01148 80A33D18 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0114C 80A33D1C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01150 80A33D20 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01154 80A33D24 0C28CEFA */  jal     func_80A33BE8              
/* 01158 80A33D28 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0115C 80A33D2C 8E190308 */  lw      $t9, 0x0308($s0)           ## 00000308
/* 01160 80A33D30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01164 80A33D34 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01168 80A33D38 0320F809 */  jalr    $ra, $t9                   
/* 0116C 80A33D3C 00000000 */  nop
/* 01170 80A33D40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01174 80A33D44 0C00BC65 */  jal     func_8002F194              
/* 01178 80A33D48 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0117C 80A33D4C 10400011 */  beq     $v0, $zero, .L80A33D94     
/* 01180 80A33D50 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01184 80A33D54 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 01188 80A33D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0118C 80A33D5C 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 01190 80A33D60 15E00005 */  bne     $t7, $zero, .L80A33D78     
/* 01194 80A33D64 00000000 */  nop
/* 01198 80A33D68 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0119C 80A33D6C 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 011A0 80A33D70 0C28CAF4 */  jal     func_80A32BD0              
/* 011A4 80A33D74 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L80A33D78:
/* 011A8 80A33D78 3C1880A3 */  lui     $t8, %hi(func_80A33930)    ## $t8 = 80A30000
/* 011AC 80A33D7C 3C0880A3 */  lui     $t0, %hi(func_80A33DE0)    ## $t0 = 80A30000
/* 011B0 80A33D80 27183930 */  addiu   $t8, $t8, %lo(func_80A33930) ## $t8 = 80A33930
/* 011B4 80A33D84 25083DE0 */  addiu   $t0, $t0, %lo(func_80A33DE0) ## $t0 = 80A33DE0
/* 011B8 80A33D88 AE180308 */  sw      $t8, 0x0308($s0)           ## 00000308
/* 011BC 80A33D8C 1000000C */  beq     $zero, $zero, .L80A33DC0   
/* 011C0 80A33D90 AE080130 */  sw      $t0, 0x0130($s0)           ## 00000130
.L80A33D94:
/* 011C4 80A33D94 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 011C8 80A33D98 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 011CC 80A33D9C 24096005 */  addiu   $t1, $zero, 0x6005         ## $t1 = 00006005
/* 011D0 80A33DA0 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
/* 011D4 80A33DA4 4600303C */  c.lt.s  $f6, $f0                   
/* 011D8 80A33DA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011DC 80A33DAC 45020005 */  bc1fl   .L80A33DC4                 
/* 011E0 80A33DB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011E4 80A33DB4 44060000 */  mfc1    $a2, $f0                   
/* 011E8 80A33DB8 0C00BCB3 */  jal     func_8002F2CC              
/* 011EC 80A33DBC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80A33DC0:
/* 011F0 80A33DC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A33DC4:
/* 011F4 80A33DC4 0C28CF23 */  jal     func_80A33C8C              
/* 011F8 80A33DC8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 011FC 80A33DCC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01200 80A33DD0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01204 80A33DD4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01208 80A33DD8 03E00008 */  jr      $ra                        
/* 0120C 80A33DDC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
