glabel func_80916AEC
/* 010DC 80916AEC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 010E0 80916AF0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 010E4 80916AF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010E8 80916AF8 AFB1002C */  sw      $s1, 0x002C($sp)
/* 010EC 80916AFC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 010F0 80916B00 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 010F4 80916B04 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 010F8 80916B08 AFB20030 */  sw      $s2, 0x0030($sp)
/* 010FC 80916B0C 0C030129 */  jal     Gameplay_GetCamera
/* 01100 80916B10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01104 80916B14 AFA20038 */  sw      $v0, 0x0038($sp)
/* 01108 80916B18 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 0110C 80916B1C 8E321C44 */  lw      $s2, 0x1C44($s1)           ## 00001C44
/* 01110 80916B20 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 01114 80916B24 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 01118 80916B28 A60E01D0 */  sh      $t6, 0x01D0($s0)           ## 000001D0
/* 0111C 80916B2C AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 01120 80916B30 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01124 80916B34 0C019148 */  jal     func_80064520
/* 01128 80916B38 26251D64 */  addiu   $a1, $s1, 0x1D64           ## $a1 = 00001D64
/* 0112C 80916B3C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01130 80916B40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01134 80916B44 0C00B7D5 */  jal     func_8002DF54
/* 01138 80916B48 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0113C 80916B4C 0C03008C */  jal     Gameplay_CreateSubCamera
/* 01140 80916B50 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01144 80916B54 A60201BC */  sh      $v0, 0x01BC($s0)           ## 000001BC
/* 01148 80916B58 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0114C 80916B5C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01150 80916B60 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 01154 80916B64 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01158 80916B68 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0115C 80916B6C 860501BC */  lh      $a1, 0x01BC($s0)           ## 000001BC
/* 01160 80916B70 0C0300C5 */  jal     Gameplay_ChangeCameraStatus
/* 01164 80916B74 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 01168 80916B78 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0116C 80916B7C 0C028800 */  jal     Animation_GetLastFrame

/* 01170 80916B80 24840918 */  addiu   $a0, $a0, 0x0918           ## $a0 = 06010918
/* 01174 80916B84 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01178 80916B88 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0117C 80916B8C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01180 80916B90 468021A0 */  cvt.s.w $f6, $f4
/* 01184 80916B94 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 01188 80916B98 44070000 */  mfc1    $a3, $f0
/* 0118C 80916B9C AFB90014 */  sw      $t9, 0x0014($sp)
/* 01190 80916BA0 24A50918 */  addiu   $a1, $a1, 0x0918           ## $a1 = 06010918
/* 01194 80916BA4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01198 80916BA8 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0119C 80916BAC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 011A0 80916BB0 0C029468 */  jal     Animation_Change

/* 011A4 80916BB4 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 011A8 80916BB8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 011AC 80916BBC 0C028800 */  jal     Animation_GetLastFrame

/* 011B0 80916BC0 24840918 */  addiu   $a0, $a0, 0x0918           ## $a0 = 06010918
/* 011B4 80916BC4 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 011B8 80916BC8 3C01C316 */  lui     $at, 0xC316                ## $at = C3160000
/* 011BC 80916BCC 44818000 */  mtc1    $at, $f16                  ## $f16 = -150.00
/* 011C0 80916BD0 468042A0 */  cvt.s.w $f10, $f8
/* 011C4 80916BD4 3C01C3AF */  lui     $at, 0xC3AF                ## $at = C3AF0000
/* 011C8 80916BD8 44819000 */  mtc1    $at, $f18                  ## $f18 = -350.00
/* 011CC 80916BDC 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 011D0 80916BE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 011D4 80916BE4 24088FA4 */  addiu   $t0, $zero, 0x8FA4         ## $t0 = FFFF8FA4
/* 011D8 80916BE8 E60A021C */  swc1    $f10, 0x021C($s0)          ## 0000021C
/* 011DC 80916BEC E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 011E0 80916BF0 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 011E4 80916BF4 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 011E8 80916BF8 A64800B6 */  sh      $t0, 0x00B6($s2)           ## 000000B6
/* 011EC 80916BFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 011F0 80916C00 864900B6 */  lh      $t1, 0x00B6($s2)           ## 000000B6
/* 011F4 80916C04 E6440024 */  swc1    $f4, 0x0024($s2)           ## 00000024
/* 011F8 80916C08 E646002C */  swc1    $f6, 0x002C($s2)           ## 0000002C
/* 011FC 80916C0C A6490032 */  sh      $t1, 0x0032($s2)           ## 00000032
/* 01200 80916C10 8E251C44 */  lw      $a1, 0x1C44($s1)           ## 00001C44
/* 01204 80916C14 0C00B69E */  jal     func_8002DA78
/* 01208 80916C18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0120C 80916C1C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01210 80916C20 00415021 */  addu    $t2, $v0, $at
/* 01214 80916C24 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 01218 80916C28 44814000 */  mtc1    $at, $f8                   ## $f8 = 90.00
/* 0121C 80916C2C 3C01432A */  lui     $at, 0x432A                ## $at = 432A0000
/* 01220 80916C30 44815000 */  mtc1    $at, $f10                  ## $f10 = 170.00
/* 01224 80916C34 A60A0032 */  sh      $t2, 0x0032($s0)           ## 00000032
/* 01228 80916C38 E6080290 */  swc1    $f8, 0x0290($s0)           ## 00000290
/* 0122C 80916C3C E60A0298 */  swc1    $f10, 0x0298($s0)          ## 00000298
/* 01230 80916C40 8FAB0038 */  lw      $t3, 0x0038($sp)
/* 01234 80916C44 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01238 80916C48 44819000 */  mtc1    $at, $f18                  ## $f18 = 20.00
/* 0123C 80916C4C C5700060 */  lwc1    $f16, 0x0060($t3)          ## 00000060
/* 01240 80916C50 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01244 80916C54 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01248 80916C58 46128100 */  add.s   $f4, $f16, $f18
/* 0124C 80916C5C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01250 80916C60 240C0032 */  addiu   $t4, $zero, 0x0032         ## $t4 = 00000032
/* 01254 80916C64 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 01258 80916C68 E6040294 */  swc1    $f4, 0x0294($s0)           ## 00000294
/* 0125C 80916C6C A60C01D2 */  sh      $t4, 0x01D2($s0)           ## 000001D2
/* 01260 80916C70 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 01264 80916C74 E606029C */  swc1    $f6, 0x029C($s0)           ## 0000029C
/* 01268 80916C78 E60802A0 */  swc1    $f8, 0x02A0($s0)           ## 000002A0
/* 0126C 80916C7C 0C03E803 */  jal     Audio_SetBGM

/* 01270 80916C80 E60A02A4 */  swc1    $f10, 0x02A4($s0)          ## 000002A4
/* 01274 80916C84 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 01278 80916C88 8FB00028 */  lw      $s0, 0x0028($sp)
/* 0127C 80916C8C 8FB1002C */  lw      $s1, 0x002C($sp)
/* 01280 80916C90 8FB20030 */  lw      $s2, 0x0030($sp)
/* 01284 80916C94 03E00008 */  jr      $ra
/* 01288 80916C98 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
