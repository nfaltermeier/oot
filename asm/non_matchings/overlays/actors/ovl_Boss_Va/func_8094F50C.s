glabel func_8094F50C
/* 0024C 8094F50C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00250 8094F510 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00254 8094F514 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00258 8094F518 4481B000 */  mtc1    $at, $f22                  ## $f22 = 15.00
/* 0025C 8094F51C AFB60048 */  sw      $s6, 0x0048($sp)           
/* 00260 8094F520 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 00264 8094F524 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 00268 8094F528 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 0026C 8094F52C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00270 8094F530 0006AC00 */  sll     $s5, $a2, 16               
/* 00274 8094F534 0007B400 */  sll     $s6, $a3, 16               
/* 00278 8094F538 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 0027C 8094F53C AFB3003C */  sw      $s3, 0x003C($sp)           
/* 00280 8094F540 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 00284 8094F544 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00288 8094F548 3C128096 */  lui     $s2, %hi(D_8095DF50)       ## $s2 = 80960000
/* 0028C 8094F54C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 10.00
/* 00290 8094F550 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00294 8094F554 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00298 8094F558 0016B403 */  sra     $s6, $s6, 16               
/* 0029C 8094F55C 0015AC03 */  sra     $s5, $s5, 16               
/* 002A0 8094F560 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 002A4 8094F564 AFA60068 */  sw      $a2, 0x0068($sp)           
/* 002A8 8094F568 AFA7006C */  sw      $a3, 0x006C($sp)           
/* 002AC 8094F56C 2652DF50 */  addiu   $s2, $s2, %lo(D_8095DF50)  ## $s2 = 8095DF50
/* 002B0 8094F570 24100002 */  addiu   $s0, $zero, 0x0002         ## $s0 = 00000002
/* 002B4 8094F574 27B30050 */  addiu   $s3, $sp, 0x0050           ## $s3 = FFFFFFF0
.L8094F578:
/* 002B8 8094F578 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 002BC 8094F57C 4600A306 */  mov.s   $f12, $f20                 
/* 002C0 8094F580 C6240000 */  lwc1    $f4, 0x0000($s1)           ## 00000000
/* 002C4 8094F584 46040180 */  add.s   $f6, $f0, $f4              
/* 002C8 8094F588 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 002CC 8094F58C E7A60050 */  swc1    $f6, 0x0050($sp)           
/* 002D0 8094F590 46160282 */  mul.s   $f10, $f0, $f22            
/* 002D4 8094F594 C6280004 */  lwc1    $f8, 0x0004($s1)           ## 00000004
/* 002D8 8094F598 4600A306 */  mov.s   $f12, $f20                 
/* 002DC 8094F59C 460A4401 */  sub.s   $f16, $f8, $f10            
/* 002E0 8094F5A0 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 002E4 8094F5A4 E7B00054 */  swc1    $f16, 0x0054($sp)          
/* 002E8 8094F5A8 C6320008 */  lwc1    $f18, 0x0008($s1)          ## 00000008
/* 002EC 8094F5AC AFB60014 */  sw      $s6, 0x0014($sp)           
/* 002F0 8094F5B0 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 002F4 8094F5B4 46120100 */  add.s   $f4, $f0, $f18             
/* 002F8 8094F5B8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 002FC 8094F5BC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 8095DF50
/* 00300 8094F5C0 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFF0
/* 00304 8094F5C4 E7A40058 */  swc1    $f4, 0x0058($sp)           
/* 00308 8094F5C8 0C256D29 */  jal     func_8095B4A4              
/* 0030C 8094F5CC 24070041 */  addiu   $a3, $zero, 0x0041         ## $a3 = 00000041
/* 00310 8094F5D0 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000001
/* 00314 8094F5D4 1600FFE8 */  bne     $s0, $zero, .L8094F578     
/* 00318 8094F5D8 00000000 */  nop
/* 0031C 8094F5DC 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 00320 8094F5E0 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00324 8094F5E4 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00328 8094F5E8 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 0032C 8094F5EC 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00330 8094F5F0 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00334 8094F5F4 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00338 8094F5F8 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 0033C 8094F5FC 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 00340 8094F600 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 00344 8094F604 03E00008 */  jr      $ra                        
/* 00348 8094F608 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
