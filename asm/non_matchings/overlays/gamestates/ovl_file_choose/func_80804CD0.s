glabel func_80804CD0
/* 00F90 80804CD0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00F94 80804CD4 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 00F98 80804CD8 35088000 */  ori     $t0, $t0, 0x8000           ## $t0 = 00018000
/* 00F9C 80804CDC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00FA0 80804CE0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00FA4 80804CE4 00881821 */  addu    $v1, $a0, $t0              
/* 00FA8 80804CE8 846E4A38 */  lh      $t6, 0x4A38($v1)           ## 00004A38
/* 00FAC 80804CEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00FB0 80804CF0 51C00006 */  beql    $t6, $zero, .L80804D0C     
/* 00FB4 80804CF4 96020020 */  lhu     $v0, 0x0020($s0)           ## 00000020
/* 00FB8 80804CF8 948F0020 */  lhu     $t7, 0x0020($a0)           ## 00000020
/* 00FBC 80804CFC 31F89000 */  andi    $t8, $t7, 0x9000           ## $t8 = 00000000
/* 00FC0 80804D00 57000007 */  bnel    $t8, $zero, .L80804D20     
/* 00FC4 80804D04 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00FC8 80804D08 96020020 */  lhu     $v0, 0x0020($s0)           ## 00000020
.L80804D0C:
/* 00FCC 80804D0C 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 00FD0 80804D10 0041C827 */  nor     $t9, $v0, $at              
/* 00FD4 80804D14 1720001A */  bne     $t9, $zero, .L80804D80     
/* 00FD8 80804D18 304D9000 */  andi    $t5, $v0, 0x9000           ## $t5 = 00000000
/* 00FDC 80804D1C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
.L80804D20:
/* 00FE0 80804D20 00300821 */  addu    $at, $at, $s0              
/* 00FE4 80804D24 24090008 */  addiu   $t1, $zero, 0x0008         ## $t1 = 00000008
/* 00FE8 80804D28 A429CA50 */  sh      $t1, -0x35B0($at)          ## 0001CA50
/* 00FEC 80804D2C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 00FF0 80804D30 00300821 */  addu    $at, $at, $s0              
/* 00FF4 80804D34 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 00FF8 80804D38 A42ACA66 */  sh      $t2, -0x359A($at)          ## 0001CA66
/* 00FFC 80804D3C 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01000 80804D40 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01004 80804D44 00300821 */  addu    $at, $at, $s0              
/* 01008 80804D48 240B000D */  addiu   $t3, $zero, 0x000D         ## $t3 = 0000000D
/* 0100C 80804D4C 3C0C8013 */  lui     $t4, %hi(D_801333E8)
/* 01010 80804D50 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01014 80804D54 A42BCA3E */  sh      $t3, -0x35C2($at)          ## 0001CA3E
/* 01018 80804D58 258C33E8 */  addiu   $t4, %lo(D_801333E8)
/* 0101C 80804D5C 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01020 80804D60 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01024 80804D64 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 01028 80804D68 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0102C 80804D6C 2404483C */  addiu   $a0, $zero, 0x483C         ## $a0 = 0000483C
/* 01030 80804D70 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01034 80804D74 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01038 80804D78 10000053 */  beq     $zero, $zero, .L80804EC8   
/* 0103C 80804D7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80804D80:
/* 01040 80804D80 11A00037 */  beq     $t5, $zero, .L80804E60     
/* 01044 80804D84 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xc)
/* 01048 80804D88 95CEE66C */  lhu     $t6, %lo(gSaveContext+0xc)($t6)
/* 0104C 80804D8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01050 80804D90 260501E0 */  addiu   $a1, $s0, 0x01E0           ## $a1 = 000001E0
/* 01054 80804D94 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 01058 80804D98 0C02A5FC */  jal     Sram_CopySave              
/* 0105C 80804D9C A7AE0032 */  sh      $t6, 0x0032($sp)           
/* 01060 80804DA0 97AF0032 */  lhu     $t7, 0x0032($sp)           
/* 01064 80804DA4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01068 80804DA8 3C018016 */  lui     $at, %hi(gSaveContext+0xc)
/* 0106C 80804DAC A42FE66C */  sh      $t7, %lo(gSaveContext+0xc)($at)
/* 01070 80804DB0 84784A5E */  lh      $t8, 0x4A5E($v1)           ## 00004A5E
/* 01074 80804DB4 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 01078 80804DB8 35088000 */  ori     $t0, $t0, 0x8000           ## $t0 = 00018000
/* 0107C 80804DBC 0018C840 */  sll     $t9, $t8,  1               
/* 01080 80804DC0 02194821 */  addu    $t1, $s0, $t9              
/* 01084 80804DC4 01285021 */  addu    $t2, $t1, $t0              
/* 01088 80804DC8 A5404A80 */  sh      $zero, 0x4A80($t2)         ## 00004A80
/* 0108C 80804DCC 846B4A5E */  lh      $t3, 0x4A5E($v1)           ## 00004A5E
/* 01090 80804DD0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01094 80804DD4 00300821 */  addu    $at, $at, $s0              
/* 01098 80804DD8 000B6040 */  sll     $t4, $t3,  1               
/* 0109C 80804DDC 020C6821 */  addu    $t5, $s0, $t4              
/* 010A0 80804DE0 01A81021 */  addu    $v0, $t5, $t0              
/* 010A4 80804DE4 844E4A80 */  lh      $t6, 0x4A80($v0)           ## 00004A80
/* 010A8 80804DE8 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 010AC 80804DEC 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 010B0 80804DF0 A44E4A8C */  sh      $t6, 0x4A8C($v0)           ## 00004A8C
/* 010B4 80804DF4 A42FCA66 */  sh      $t7, -0x359A($at)          ## 0001CA66
/* 010B8 80804DF8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 010BC 80804DFC 00300821 */  addu    $at, $at, $s0              
/* 010C0 80804E00 A438CA50 */  sh      $t8, -0x35B0($at)          ## 0001CA50
/* 010C4 80804E04 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 010C8 80804E08 00300821 */  addu    $at, $at, $s0              
/* 010CC 80804E0C 2419000E */  addiu   $t9, $zero, 0x000E         ## $t9 = 0000000E
/* 010D0 80804E10 A439CA3E */  sh      $t9, -0x35C2($at)          ## 0001CA3E
/* 010D4 80804E14 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 010D8 80804E18 44816000 */  mtc1    $at, $f12                  ## $f12 = 300.00
/* 010DC 80804E1C 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 010E0 80804E20 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 010E4 80804E24 0C02A800 */  jal     func_800AA000              
/* 010E8 80804E28 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 010EC 80804E2C 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 010F0 80804E30 3C098013 */  lui     $t1, %hi(D_801333E8)
/* 010F4 80804E34 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 010F8 80804E38 252933E8 */  addiu   $t1, %lo(D_801333E8)
/* 010FC 80804E3C 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01100 80804E40 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01104 80804E44 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01108 80804E48 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0110C 80804E4C 2404483B */  addiu   $a0, $zero, 0x483B         ## $a0 = 0000483B
/* 01110 80804E50 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01114 80804E54 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01118 80804E58 1000001B */  beq     $zero, $zero, .L80804EC8   
/* 0111C 80804E5C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80804E60:
/* 01120 80804E60 84624ABC */  lh      $v0, 0x4ABC($v1)           ## 00004ABC
/* 01124 80804E64 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01128 80804E68 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 0112C 80804E6C 04400003 */  bltz    $v0, .L80804E7C            
/* 01130 80804E70 00022023 */  subu    $a0, $zero, $v0            
/* 01134 80804E74 10000001 */  beq     $zero, $zero, .L80804E7C   
/* 01138 80804E78 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L80804E7C:
/* 0113C 80804E7C 2881001E */  slti    $at, $a0, 0x001E           
/* 01140 80804E80 14200010 */  bne     $at, $zero, .L80804EC4     
/* 01144 80804E84 24044839 */  addiu   $a0, $zero, 0x4839         ## $a0 = 00004839
/* 01148 80804E88 3C0A8013 */  lui     $t2, %hi(D_801333E8)
/* 0114C 80804E8C 254A33E8 */  addiu   $t2, %lo(D_801333E8)
/* 01150 80804E90 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01154 80804E94 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01158 80804E98 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 0115C 80804E9C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01160 80804EA0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01164 80804EA4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01168 80804EA8 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 0116C 80804EAC 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 01170 80804EB0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01174 80804EB4 00300821 */  addu    $at, $at, $s0              
/* 01178 80804EB8 846B4A38 */  lh      $t3, 0x4A38($v1)           ## 00004A38
/* 0117C 80804EBC 396C0001 */  xori    $t4, $t3, 0x0001           ## $t4 = 00000001
/* 01180 80804EC0 A42CCA38 */  sh      $t4, -0x35C8($at)          ## 0001CA38
.L80804EC4:
/* 01184 80804EC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80804EC8:
/* 01188 80804EC8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0118C 80804ECC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01190 80804ED0 03E00008 */  jr      $ra                        
/* 01194 80804ED4 00000000 */  nop
