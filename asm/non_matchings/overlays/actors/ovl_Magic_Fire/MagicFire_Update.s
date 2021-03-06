.late_rodata
glabel D_80B8AFFC
 .word 0x43A28000
glabel D_80B8B000
    .float 0.08

glabel D_80B8B004
    .float 0.001

glabel D_80B8B008
    .float 0.05

glabel D_80B8B00C
 .word 0x3D89AE40

.text
glabel MagicFire_Update
/* 00170 80B88EE0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00174 80B88EE4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00178 80B88EE8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 0017C 80B88EEC 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 00180 80B88EF0 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00184 80B88EF4 00451021 */  addu    $v0, $v0, $a1              
/* 00188 80B88EF8 8C6F0024 */  lw      $t7, 0x0024($v1)           ## 00000024
/* 0018C 80B88EFC 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00190 80B88F00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00194 80B88F04 AC8F0024 */  sw      $t7, 0x0024($a0)           ## 00000024
/* 00198 80B88F08 8C6E0028 */  lw      $t6, 0x0028($v1)           ## 00000028
/* 0019C 80B88F0C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 001A0 80B88F10 AC8E0028 */  sw      $t6, 0x0028($a0)           ## 00000028
/* 001A4 80B88F14 8C6F002C */  lw      $t7, 0x002C($v1)           ## 0000002C
/* 001A8 80B88F18 AC8F002C */  sw      $t7, 0x002C($a0)           ## 0000002C
/* 001AC 80B88F1C 904203DC */  lbu     $v0, 0x03DC($v0)           ## 000103DC
/* 001B0 80B88F20 10410003 */  beq     $v0, $at, .L80B88F30       
/* 001B4 80B88F24 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 001B8 80B88F28 14410005 */  bne     $v0, $at, .L80B88F40       
/* 001BC 80B88F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B88F30:
/* 001C0 80B88F30 0C00B55C */  jal     Actor_Kill
              
/* 001C4 80B88F34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001C8 80B88F38 100000CA */  beq     $zero, $zero, .L80B89264   
/* 001CC 80B88F3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B88F40:
/* 001D0 80B88F40 860301A4 */  lh      $v1, 0x01A4($s0)           ## 000001A4
/* 001D4 80B88F44 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001D8 80B88F48 2606014C */  addiu   $a2, $s0, 0x014C           ## $a2 = 0000014C
/* 001DC 80B88F4C 14610005 */  bne     $v1, $at, .L80B88F64       
/* 001E0 80B88F50 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 0000014C
/* 001E4 80B88F54 861801A8 */  lh      $t8, 0x01A8($s0)           ## 000001A8
/* 001E8 80B88F58 27190019 */  addiu   $t9, $t8, 0x0019           ## $t9 = 00000019
/* 001EC 80B88F5C 10000006 */  beq     $zero, $zero, .L80B88F78   
/* 001F0 80B88F60 A2190169 */  sb      $t9, 0x0169($s0)           ## 00000169
.L80B88F64:
/* 001F4 80B88F64 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 001F8 80B88F68 54610004 */  bnel    $v1, $at, .L80B88F7C       
/* 001FC 80B88F6C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 00200 80B88F70 860801A8 */  lh      $t0, 0x01A8($s0)           ## 000001A8
/* 00204 80B88F74 A2080169 */  sb      $t0, 0x0169($s0)           ## 00000169
.L80B88F78:
/* 00208 80B88F78 AFA6002C */  sw      $a2, 0x002C($sp)           
.L80B88F7C:
/* 0020C 80B88F7C 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00210 80B88F80 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 00214 80B88F84 3C0180B9 */  lui     $at, %hi(D_80B8AFFC)       ## $at = 80B90000
/* 00218 80B88F88 C426AFFC */  lwc1    $f6, %lo(D_80B8AFFC)($at)  
/* 0021C 80B88F8C C6040050 */  lwc1    $f4, 0x0050($s0)           ## 00000050
/* 00220 80B88F90 3C0143E1 */  lui     $at, 0x43E1                ## $at = 43E10000
/* 00224 80B88F94 44818000 */  mtc1    $at, $f16                  ## $f16 = 450.00
/* 00228 80B88F98 46062202 */  mul.s   $f8, $f4, $f6              
/* 0022C 80B88F9C C6000054 */  lwc1    $f0, 0x0054($s0)           ## 00000054
/* 00230 80B88FA0 3C01C361 */  lui     $at, 0xC361                ## $at = C3610000
/* 00234 80B88FA4 44813000 */  mtc1    $at, $f6                   ## $f6 = -225.00
/* 00238 80B88FA8 46100482 */  mul.s   $f18, $f0, $f16            
/* 0023C 80B88FAC 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 00240 80B88FB0 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00244 80B88FB4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00248 80B88FB8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0024C 80B88FBC 00812821 */  addu    $a1, $a0, $at              
/* 00250 80B88FC0 4600428D */  trunc.w.s $f10, $f8                  
/* 00254 80B88FC4 46060202 */  mul.s   $f8, $f0, $f6              
/* 00258 80B88FC8 440A5000 */  mfc1    $t2, $f10                  
/* 0025C 80B88FCC 4600910D */  trunc.w.s $f4, $f18                  
/* 00260 80B88FD0 A60A018C */  sh      $t2, 0x018C($s0)           ## 0000018C
/* 00264 80B88FD4 4600428D */  trunc.w.s $f10, $f8                  
/* 00268 80B88FD8 440C2000 */  mfc1    $t4, $f4                   
/* 0026C 80B88FDC 440E5000 */  mfc1    $t6, $f10                  
/* 00270 80B88FE0 A60C018E */  sh      $t4, 0x018E($s0)           ## 0000018E
/* 00274 80B88FE4 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00278 80B88FE8 A60E0190 */  sh      $t6, 0x0190($s0)           ## 00000190
/* 0027C 80B88FEC 860301A4 */  lh      $v1, 0x01A4($s0)           ## 000001A4
/* 00280 80B88FF0 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 00284 80B88FF4 3C0180B9 */  lui     $at, %hi(D_80B8B000)       ## $at = 80B90000
/* 00288 80B88FF8 1060000B */  beq     $v1, $zero, .L80B89028     
/* 0028C 80B88FFC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00290 80B89000 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00294 80B89004 1041001B */  beq     $v0, $at, .L80B89074       
/* 00298 80B89008 26040198 */  addiu   $a0, $s0, 0x0198           ## $a0 = 00000198
/* 0029C 80B8900C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002A0 80B89010 10410032 */  beq     $v0, $at, .L80B890DC       
/* 002A4 80B89014 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 002A8 80B89018 1041003A */  beq     $v0, $at, .L80B89104       
/* 002AC 80B8901C 00000000 */  nop
/* 002B0 80B89020 1000004F */  beq     $zero, $zero, .L80B89160   
/* 002B4 80B89024 860201A6 */  lh      $v0, 0x01A6($s0)           ## 000001A6
.L80B89028:
/* 002B8 80B89028 A6000034 */  sh      $zero, 0x0034($s0)         ## 00000034
/* 002BC 80B8902C 86020034 */  lh      $v0, 0x0034($s0)           ## 00000034
/* 002C0 80B89030 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 002C4 80B89034 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
/* 002C8 80B89038 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 002CC 80B8903C A6020030 */  sh      $v0, 0x0030($s0)           ## 00000030
/* 002D0 80B89040 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 002D4 80B89044 A60F01A8 */  sh      $t7, 0x01A8($s0)           ## 000001A8
/* 002D8 80B89048 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 002DC 80B8904C E6020054 */  swc1    $f2, 0x0054($s0)           ## 00000054
/* 002E0 80B89050 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 002E4 80B89054 E6020198 */  swc1    $f2, 0x0198($s0)           ## 00000198
/* 002E8 80B89058 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 002EC 80B8905C A60200B4 */  sh      $v0, 0x00B4($s0)           ## 000000B4
/* 002F0 80B89060 C430B000 */  lwc1    $f16, %lo(D_80B8B000)($at) 
/* 002F4 80B89064 24780001 */  addiu   $t8, $v1, 0x0001           ## $t8 = 00000001
/* 002F8 80B89068 A61801A4 */  sh      $t8, 0x01A4($s0)           ## 000001A4
/* 002FC 80B8906C 1000003B */  beq     $zero, $zero, .L80B8915C   
/* 00300 80B89070 E61001A0 */  swc1    $f16, 0x01A0($s0)          ## 000001A0
.L80B89074:
/* 00304 80B89074 3C063D08 */  lui     $a2, 0x3D08                ## $a2 = 3D080000
/* 00308 80B89078 34C68889 */  ori     $a2, $a2, 0x8889           ## $a2 = 3D088889
/* 0030C 80B8907C 0C01DE80 */  jal     Math_StepToF
              
/* 00310 80B89080 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00314 80B89084 861901A8 */  lh      $t9, 0x01A8($s0)           ## 000001A8
/* 00318 80B89088 3C053ECC */  lui     $a1, 0x3ECC                ## $a1 = 3ECC0000
/* 0031C 80B8908C 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3ECCCCCD
/* 00320 80B89090 1B20000C */  blez    $t9, .L80B890C4            
/* 00324 80B89094 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00328 80B89098 3C0180B9 */  lui     $at, %hi(D_80B8B004)       ## $at = 80B90000
/* 0032C 80B8909C C432B004 */  lwc1    $f18, %lo(D_80B8B004)($at) 
/* 00330 80B890A0 8E0601A0 */  lw      $a2, 0x01A0($s0)           ## 000001A0
/* 00334 80B890A4 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 00338 80B890A8 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3DCCCCCD
/* 0033C 80B890AC 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00340 80B890B0 E7B20010 */  swc1    $f18, 0x0010($sp)          
/* 00344 80B890B4 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00348 80B890B8 E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 0034C 80B890BC 10000027 */  beq     $zero, $zero, .L80B8915C   
/* 00350 80B890C0 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
.L80B890C4:
/* 00354 80B890C4 860901A4 */  lh      $t1, 0x01A4($s0)           ## 000001A4
/* 00358 80B890C8 24080019 */  addiu   $t0, $zero, 0x0019         ## $t0 = 00000019
/* 0035C 80B890CC A60801A8 */  sh      $t0, 0x01A8($s0)           ## 000001A8
/* 00360 80B890D0 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 00364 80B890D4 10000021 */  beq     $zero, $zero, .L80B8915C   
/* 00368 80B890D8 A60A01A4 */  sh      $t2, 0x01A4($s0)           ## 000001A4
.L80B890DC:
/* 0036C 80B890DC 860B01A8 */  lh      $t3, 0x01A8($s0)           ## 000001A8
/* 00370 80B890E0 240C000F */  addiu   $t4, $zero, 0x000F         ## $t4 = 0000000F
/* 00374 80B890E4 246D0001 */  addiu   $t5, $v1, 0x0001           ## $t5 = 00000001
/* 00378 80B890E8 1D60001C */  bgtz    $t3, .L80B8915C            
/* 0037C 80B890EC 3C0180B9 */  lui     $at, %hi(D_80B8B008)       ## $at = 80B90000
/* 00380 80B890F0 A60C01A8 */  sh      $t4, 0x01A8($s0)           ## 000001A8
/* 00384 80B890F4 A60D01A4 */  sh      $t5, 0x01A4($s0)           ## 000001A4
/* 00388 80B890F8 C424B008 */  lwc1    $f4, %lo(D_80B8B008)($at)  
/* 0038C 80B890FC 10000017 */  beq     $zero, $zero, .L80B8915C   
/* 00390 80B89100 E60401A0 */  swc1    $f4, 0x01A0($s0)           ## 000001A0
.L80B89104:
/* 00394 80B89104 3C0180B9 */  lui     $at, %hi(D_80B8B00C)       ## $at = 80B90000
/* 00398 80B89108 C428B00C */  lwc1    $f8, %lo(D_80B8B00C)($at)  
/* 0039C 80B8910C C6060198 */  lwc1    $f6, 0x0198($s0)           ## 00000198
/* 003A0 80B89110 C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 003A4 80B89114 C6100050 */  lwc1    $f16, 0x0050($s0)          ## 00000050
/* 003A8 80B89118 46083281 */  sub.s   $f10, $f6, $f8             
/* 003AC 80B8911C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 003B0 80B89120 C6040054 */  lwc1    $f4, 0x0054($s0)           ## 00000054
/* 003B4 80B89124 46008480 */  add.s   $f18, $f16, $f0            
/* 003B8 80B89128 E60A0198 */  swc1    $f10, 0x0198($s0)          ## 00000198
/* 003BC 80B8912C C6100198 */  lwc1    $f16, 0x0198($s0)          ## 00000198
/* 003C0 80B89130 C6080058 */  lwc1    $f8, 0x0058($s0)           ## 00000058
/* 003C4 80B89134 46002180 */  add.s   $f6, $f4, $f0              
/* 003C8 80B89138 E6120050 */  swc1    $f18, 0x0050($s0)          ## 00000050
/* 003CC 80B8913C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003D0 80B89140 4602803E */  c.le.s  $f16, $f2                  
/* 003D4 80B89144 E6060054 */  swc1    $f6, 0x0054($s0)           ## 00000054
/* 003D8 80B89148 46004280 */  add.s   $f10, $f8, $f0             
/* 003DC 80B8914C 45000003 */  bc1f    .L80B8915C                 
/* 003E0 80B89150 E60A0058 */  swc1    $f10, 0x0058($s0)          ## 00000058
/* 003E4 80B89154 0C00B55C */  jal     Actor_Kill
              
/* 003E8 80B89158 A60001A4 */  sh      $zero, 0x01A4($s0)         ## 000001A4
.L80B8915C:
/* 003EC 80B8915C 860201A6 */  lh      $v0, 0x01A6($s0)           ## 000001A6
.L80B89160:
/* 003F0 80B89160 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 003F4 80B89164 5040000A */  beql    $v0, $zero, .L80B89190     
/* 003F8 80B89168 860E01AA */  lh      $t6, 0x01AA($s0)           ## 000001AA
/* 003FC 80B8916C 10410010 */  beq     $v0, $at, .L80B891B0       
/* 00400 80B89170 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00404 80B89174 1041001F */  beq     $v0, $at, .L80B891F4       
/* 00408 80B89178 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0040C 80B8917C 50410027 */  beql    $v0, $at, .L80B8921C       
/* 00410 80B89180 860201AA */  lh      $v0, 0x01AA($s0)           ## 000001AA
/* 00414 80B89184 1000002F */  beq     $zero, $zero, .L80B89244   
/* 00418 80B89188 860201A8 */  lh      $v0, 0x01A8($s0)           ## 000001A8
/* 0041C 80B8918C 860E01AA */  lh      $t6, 0x01AA($s0)           ## 000001AA
.L80B89190:
/* 00420 80B89190 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00424 80B89194 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00428 80B89198 1DC00003 */  bgtz    $t6, .L80B891A8            
/* 0042C 80B8919C 00000000 */  nop
/* 00430 80B891A0 A60F01AA */  sh      $t7, 0x01AA($s0)           ## 000001AA
/* 00434 80B891A4 A61801A6 */  sh      $t8, 0x01A6($s0)           ## 000001A6
.L80B891A8:
/* 00438 80B891A8 10000026 */  beq     $zero, $zero, .L80B89244   
/* 0043C 80B891AC 860201A8 */  lh      $v0, 0x01A8($s0)           ## 000001A8
.L80B891B0:
/* 00440 80B891B0 860201AA */  lh      $v0, 0x01AA($s0)           ## 000001AA
/* 00444 80B891B4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00448 80B891B8 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 0044C 80B891BC 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00450 80B891C0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00454 80B891C4 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00458 80B891C8 46809120 */  cvt.s.w $f4, $f18                  
/* 0045C 80B891CC 2419002D */  addiu   $t9, $zero, 0x002D         ## $t9 = 0000002D
/* 00460 80B891D0 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00464 80B891D4 46062203 */  div.s   $f8, $f4, $f6              
/* 00468 80B891D8 46085401 */  sub.s   $f16, $f10, $f8            
/* 0046C 80B891DC 1C400003 */  bgtz    $v0, .L80B891EC            
/* 00470 80B891E0 E610019C */  swc1    $f16, 0x019C($s0)          ## 0000019C
/* 00474 80B891E4 A61901AA */  sh      $t9, 0x01AA($s0)           ## 000001AA
/* 00478 80B891E8 A60801A6 */  sh      $t0, 0x01A6($s0)           ## 000001A6
.L80B891EC:
/* 0047C 80B891EC 10000015 */  beq     $zero, $zero, .L80B89244   
/* 00480 80B891F0 860201A8 */  lh      $v0, 0x01A8($s0)           ## 000001A8
.L80B891F4:
/* 00484 80B891F4 860901AA */  lh      $t1, 0x01AA($s0)           ## 000001AA
/* 00488 80B891F8 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 0048C 80B891FC 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 00490 80B89200 1D200003 */  bgtz    $t1, .L80B89210            
/* 00494 80B89204 00000000 */  nop
/* 00498 80B89208 A60A01AA */  sh      $t2, 0x01AA($s0)           ## 000001AA
/* 0049C 80B8920C A60B01A6 */  sh      $t3, 0x01A6($s0)           ## 000001A6
.L80B89210:
/* 004A0 80B89210 1000000C */  beq     $zero, $zero, .L80B89244   
/* 004A4 80B89214 860201A8 */  lh      $v0, 0x01A8($s0)           ## 000001A8
/* 004A8 80B89218 860201AA */  lh      $v0, 0x01AA($s0)           ## 000001AA
.L80B8921C:
/* 004AC 80B8921C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 004B0 80B89220 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 004B4 80B89224 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 004B8 80B89228 240C0004 */  addiu   $t4, $zero, 0x0004         ## $t4 = 00000004
/* 004BC 80B8922C 46809120 */  cvt.s.w $f4, $f18                  
/* 004C0 80B89230 46062283 */  div.s   $f10, $f4, $f6             
/* 004C4 80B89234 1C400002 */  bgtz    $v0, .L80B89240            
/* 004C8 80B89238 E60A019C */  swc1    $f10, 0x019C($s0)          ## 0000019C
/* 004CC 80B8923C A60C01A6 */  sh      $t4, 0x01A6($s0)           ## 000001A6
.L80B89240:
/* 004D0 80B89240 860201A8 */  lh      $v0, 0x01A8($s0)           ## 000001A8
.L80B89244:
/* 004D4 80B89244 18400002 */  blez    $v0, .L80B89250            
/* 004D8 80B89248 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 004DC 80B8924C A60D01A8 */  sh      $t5, 0x01A8($s0)           ## 000001A8
.L80B89250:
/* 004E0 80B89250 860201AA */  lh      $v0, 0x01AA($s0)           ## 000001AA
/* 004E4 80B89254 18400002 */  blez    $v0, .L80B89260            
/* 004E8 80B89258 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 004EC 80B8925C A60E01AA */  sh      $t6, 0x01AA($s0)           ## 000001AA
.L80B89260:
/* 004F0 80B89260 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B89264:
/* 004F4 80B89264 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004F8 80B89268 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 004FC 80B8926C 03E00008 */  jr      $ra                        
/* 00500 80B89270 00000000 */  nop
