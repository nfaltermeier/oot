glabel func_80B395F0
/* 00500 80B395F0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00504 80B395F4 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00508 80B395F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0050C 80B395FC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00510 80B39600 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00514 80B39604 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00518 80B39608 0C042F6F */  jal     func_8010BDBC              
/* 0051C 80B3960C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00520 80B39610 860E0156 */  lh      $t6, 0x0156($s0)           ## 00000156
/* 00524 80B39614 55C20077 */  bnel    $t6, $v0, .L80B397F4       
/* 00528 80B39618 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0052C 80B3961C 0C041AF2 */  jal     func_80106BC8              
/* 00530 80B39620 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00534 80B39624 50400073 */  beql    $v0, $zero, .L80B397F4     
/* 00538 80B39628 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0053C 80B3962C 86050154 */  lh      $a1, 0x0154($s0)           ## 00000154
/* 00540 80B39630 04A20008 */  bltzl   $a1, .L80B39654            
/* 00544 80B39634 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
/* 00548 80B39638 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 0054C 80B3963C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00550 80B39640 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00554 80B39644 01E1C024 */  and     $t8, $t7, $at              
/* 00558 80B39648 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0055C 80B3964C AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 00560 80B39650 86020150 */  lh      $v0, 0x0150($s0)           ## 00000150
.L80B39654:
/* 00564 80B39654 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00568 80B39658 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0056C 80B3965C 10430009 */  beq     $v0, $v1, .L80B39684       
/* 00570 80B39660 00000000 */  nop
/* 00574 80B39664 1041000D */  beq     $v0, $at, .L80B3969C       
/* 00578 80B39668 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0057C 80B3966C 10410031 */  beq     $v0, $at, .L80B39734       
/* 00580 80B39670 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00584 80B39674 10410047 */  beq     $v0, $at, .L80B39794       
/* 00588 80B39678 00000000 */  nop
/* 0058C 80B3967C 1000005D */  beq     $zero, $zero, .L80B397F4   
/* 00590 80B39680 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B39684:
/* 00594 80B39684 0C041B33 */  jal     func_80106CCC              
/* 00598 80B39688 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0059C 80B3968C 3C1980B4 */  lui     $t9, %hi(func_80B391CC)    ## $t9 = 80B40000
/* 005A0 80B39690 273991CC */  addiu   $t9, $t9, %lo(func_80B391CC) ## $t9 = 80B391CC
/* 005A4 80B39694 10000056 */  beq     $zero, $zero, .L80B397F0   
/* 005A8 80B39698 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L80B3969C:
/* 005AC 80B3969C 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 005B0 80B396A0 00511021 */  addu    $v0, $v0, $s1              
/* 005B4 80B396A4 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 005B8 80B396A8 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 005BC 80B396AC 10400005 */  beq     $v0, $zero, .L80B396C4     
/* 005C0 80B396B0 00000000 */  nop
/* 005C4 80B396B4 10430012 */  beq     $v0, $v1, .L80B39700       
/* 005C8 80B396B8 3C0480B4 */  lui     $a0, %hi(D_80B39D4C)       ## $a0 = 80B40000
/* 005CC 80B396BC 10000015 */  beq     $zero, $zero, .L80B39714   
/* 005D0 80B396C0 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
.L80B396C4:
/* 005D4 80B396C4 8D08E664 */  lw      $t0, -0x199C($t0)          ## 8015E664
/* 005D8 80B396C8 3C0480B4 */  lui     $a0, %hi(D_80B39D18)       ## $a0 = 80B40000
/* 005DC 80B396CC 11000007 */  beq     $t0, $zero, .L80B396EC     
/* 005E0 80B396D0 00000000 */  nop
/* 005E4 80B396D4 3C0480B4 */  lui     $a0, %hi(D_80B39CE4)       ## $a0 = 80B40000
/* 005E8 80B396D8 0C00084C */  jal     osSyncPrintf
              
/* 005EC 80B396DC 24849CE4 */  addiu   $a0, $a0, %lo(D_80B39CE4)  ## $a0 = 80B39CE4
/* 005F0 80B396E0 24095001 */  addiu   $t1, $zero, 0x5001         ## $t1 = 00005001
/* 005F4 80B396E4 1000000A */  beq     $zero, $zero, .L80B39710   
/* 005F8 80B396E8 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
.L80B396EC:
/* 005FC 80B396EC 0C00084C */  jal     osSyncPrintf
              
/* 00600 80B396F0 24849D18 */  addiu   $a0, $a0, %lo(D_80B39D18)  ## $a0 = FFFF9D18
/* 00604 80B396F4 240A5003 */  addiu   $t2, $zero, 0x5003         ## $t2 = 00005003
/* 00608 80B396F8 10000005 */  beq     $zero, $zero, .L80B39710   
/* 0060C 80B396FC A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
.L80B39700:
/* 00610 80B39700 0C00084C */  jal     osSyncPrintf
              
/* 00614 80B39704 24849D4C */  addiu   $a0, $a0, %lo(D_80B39D4C)  ## $a0 = FFFF9D4C
/* 00618 80B39708 240B5004 */  addiu   $t3, $zero, 0x5004         ## $t3 = 00005004
/* 0061C 80B3970C A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
.L80B39710:
/* 00620 80B39710 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
.L80B39714:
/* 00624 80B39714 A60C0156 */  sh      $t4, 0x0156($s0)           ## 00000156
/* 00628 80B39718 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0062C 80B3971C 0C042DC8 */  jal     func_8010B720              
/* 00630 80B39720 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 00634 80B39724 3C0D80B4 */  lui     $t5, %hi(func_80B391CC)    ## $t5 = 80B40000
/* 00638 80B39728 25AD91CC */  addiu   $t5, $t5, %lo(func_80B391CC) ## $t5 = 80B391CC
/* 0063C 80B3972C 10000030 */  beq     $zero, $zero, .L80B397F0   
/* 00640 80B39730 AE0D014C */  sw      $t5, 0x014C($s0)           ## 0000014C
.L80B39734:
/* 00644 80B39734 0C041B33 */  jal     func_80106CCC              
/* 00648 80B39738 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0064C 80B3973C 920E0164 */  lbu     $t6, 0x0164($s0)           ## 00000164
/* 00650 80B39740 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00654 80B39744 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00658 80B39748 15C0000E */  bne     $t6, $zero, .L80B39784     
/* 0065C 80B3974C 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 00660 80B39750 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00664 80B39754 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 00668 80B39758 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 0066C 80B3975C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00670 80B39760 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00674 80B39764 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00678 80B39768 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0067C 80B3976C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00680 80B39770 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00684 80B39774 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00688 80B39778 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 0068C 80B3977C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00690 80B39780 A2180164 */  sb      $t8, 0x0164($s0)           ## 00000164
.L80B39784:
/* 00694 80B39784 3C1980B4 */  lui     $t9, %hi(func_80B391CC)    ## $t9 = 80B40000
/* 00698 80B39788 273991CC */  addiu   $t9, $t9, %lo(func_80B391CC) ## $t9 = 80B391CC
/* 0069C 80B3978C 10000018 */  beq     $zero, $zero, .L80B397F0   
/* 006A0 80B39790 AE19014C */  sw      $t9, 0x014C($s0)           ## 0000014C
.L80B39794:
/* 006A4 80B39794 0C041B33 */  jal     func_80106CCC              
/* 006A8 80B39798 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006AC 80B3979C 92080164 */  lbu     $t0, 0x0164($s0)           ## 00000164
/* 006B0 80B397A0 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 006B4 80B397A4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006B8 80B397A8 1500000E */  bne     $t0, $zero, .L80B397E4     
/* 006BC 80B397AC 2406000D */  addiu   $a2, $zero, 0x000D         ## $a2 = 0000000D
/* 006C0 80B397B0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 006C4 80B397B4 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 006C8 80B397B8 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 006CC 80B397BC E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 006D0 80B397C0 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 006D4 80B397C4 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 006D8 80B397C8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 006DC 80B397CC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 006E0 80B397D0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 006E4 80B397D4 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 006E8 80B397D8 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 006EC 80B397DC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 006F0 80B397E0 A20A0164 */  sb      $t2, 0x0164($s0)           ## 00000164
.L80B397E4:
/* 006F4 80B397E4 3C0B80B4 */  lui     $t3, %hi(func_80B391CC)    ## $t3 = 80B40000
/* 006F8 80B397E8 256B91CC */  addiu   $t3, $t3, %lo(func_80B391CC) ## $t3 = 80B391CC
/* 006FC 80B397EC AE0B014C */  sw      $t3, 0x014C($s0)           ## 0000014C
.L80B397F0:
/* 00700 80B397F0 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B397F4:
/* 00704 80B397F4 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00708 80B397F8 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 0070C 80B397FC 03E00008 */  jr      $ra                        
/* 00710 80B39800 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000

