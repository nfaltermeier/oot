glabel func_809FE3C0
/* 00790 809FE3C0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00794 809FE3C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00798 809FE3C8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0079C 809FE3CC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 007A0 809FE3D0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 007A4 809FE3D4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 007A8 809FE3D8 8C4F0680 */  lw      $t7, 0x0680($v0)           ## 00000680
/* 007AC 809FE3DC 24050022 */  addiu   $a1, $zero, 0x0022         ## $a1 = 00000022
/* 007B0 809FE3E0 000FC1C0 */  sll     $t8, $t7,  7               
/* 007B4 809FE3E4 07030011 */  bgezl   $t8, .L809FE42C            
/* 007B8 809FE3E8 84E901F4 */  lh      $t1, 0x01F4($a3)           ## 000001F4
/* 007BC 809FE3EC AFA2001C */  sw      $v0, 0x001C($sp)           
/* 007C0 809FE3F0 0C042F62 */  jal     func_8010BD88              
/* 007C4 809FE3F4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 007C8 809FE3F8 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 007CC 809FE3FC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 007D0 809FE400 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 007D4 809FE404 8C590680 */  lw      $t9, 0x0680($v0)           ## 00000680
/* 007D8 809FE408 3C0580A0 */  lui     $a1, %hi(func_809FE4A4)    ## $a1 = 80A00000
/* 007DC 809FE40C 24A5E4A4 */  addiu   $a1, $a1, %lo(func_809FE4A4) ## $a1 = 809FE4A4
/* 007E0 809FE410 03214025 */  or      $t0, $t9, $at              ## $t0 = 02000000
/* 007E4 809FE414 AC480680 */  sw      $t0, 0x0680($v0)           ## 00000680
/* 007E8 809FE418 0C27F70C */  jal     func_809FDC30              
/* 007EC 809FE41C AC4406A8 */  sw      $a0, 0x06A8($v0)           ## 000006A8
/* 007F0 809FE420 1000001D */  beq     $zero, $zero, .L809FE498   
/* 007F4 809FE424 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007F8 809FE428 84E901F4 */  lh      $t1, 0x01F4($a3)           ## 000001F4
.L809FE42C:
/* 007FC 809FE42C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00800 809FE430 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00804 809FE434 15210008 */  bne     $t1, $at, .L809FE458       
/* 00808 809FE438 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0080C 809FE43C 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00810 809FE440 AFA2001C */  sw      $v0, 0x001C($sp)           
/* 00814 809FE444 0C00B7D5 */  jal     func_8002DF54              
/* 00818 809FE448 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0081C 809FE44C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00820 809FE450 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 00824 809FE454 A4E001F4 */  sh      $zero, 0x01F4($a3)         ## 000001F4
.L809FE458:
/* 00828 809FE458 84EA01D4 */  lh      $t2, 0x01D4($a3)           ## 000001D4
/* 0082C 809FE45C 3C0142E8 */  lui     $at, 0x42E8                ## $at = 42E80000
/* 00830 809FE460 44813000 */  mtc1    $at, $f6                   ## $f6 = 116.00
/* 00834 809FE464 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 00838 809FE468 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 0083C 809FE46C 468042A0 */  cvt.s.w $f10, $f8                  
/* 00840 809FE470 460A3400 */  add.s   $f16, $f6, $f10            
/* 00844 809FE474 4610203C */  c.lt.s  $f4, $f16                  
/* 00848 809FE478 00000000 */  nop
/* 0084C 809FE47C 45020006 */  bc1fl   .L809FE498                 
/* 00850 809FE480 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00854 809FE484 8C4B0680 */  lw      $t3, 0x0680($v0)           ## 00000680
/* 00858 809FE488 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 0085C 809FE48C 01616025 */  or      $t4, $t3, $at              ## $t4 = 00800000
/* 00860 809FE490 AC4C0680 */  sw      $t4, 0x0680($v0)           ## 00000680
/* 00864 809FE494 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809FE498:
/* 00868 809FE498 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0086C 809FE49C 03E00008 */  jr      $ra                        
/* 00870 809FE4A0 00000000 */  nop
