glabel func_80A79AB4
/* 00B04 80A79AB4 8C8F0154 */  lw      $t7, 0x0154($a0)           ## 00000154
/* 00B08 80A79AB8 3C0E0601 */  lui     $t6, %hi(D_06014CA8)                ## $t6 = 06010000
/* 00B0C 80A79ABC 25CE4CA8 */  addiu   $t6, $t6, %lo(D_06014CA8)           ## $t6 = 06014CA8
/* 00B10 80A79AC0 11CF0004 */  beq     $t6, $t7, .L80A79AD4       
/* 00B14 80A79AC4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B18 80A79AC8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00B1C 80A79ACC 00451021 */  addu    $v0, $v0, $a1              
/* 00B20 80A79AD0 8C421DE4 */  lw      $v0, 0x1DE4($v0)           ## 00011DE4
.L80A79AD4:
/* 00B24 80A79AD4 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 00B28 80A79AD8 24060814 */  addiu   $a2, $zero, 0x0814         ## $a2 = 00000814
/* 00B2C 80A79ADC 24070940 */  addiu   $a3, $zero, 0x0940         ## $a3 = 00000940
/* 00B30 80A79AE0 24080846 */  addiu   $t0, $zero, 0x0846         ## $t0 = 00000846
/* 00B34 80A79AE4 24090972 */  addiu   $t1, $zero, 0x0972         ## $t1 = 00000972
/* 00B38 80A79AE8 240A0878 */  addiu   $t2, $zero, 0x0878         ## $t2 = 00000878
/* 00B3C 80A79AEC 240B09A4 */  addiu   $t3, $zero, 0x09A4         ## $t3 = 000009A4
/* 00B40 80A79AF0 240C08AA */  addiu   $t4, $zero, 0x08AA         ## $t4 = 000008AA
/* 00B44 80A79AF4 240D09D6 */  addiu   $t5, $zero, 0x09D6         ## $t5 = 000009D6
/* 00B48 80A79AF8 24030DBE */  addiu   $v1, $zero, 0x0DBE         ## $v1 = 00000DBE
.L80A79AFC:
/* 00B4C 80A79AFC 00C20019 */  multu   $a2, $v0                   
/* 00B50 80A79B00 24C600C8 */  addiu   $a2, $a2, 0x00C8           ## $a2 = 000008DC
/* 00B54 80A79B04 24A50018 */  addiu   $a1, $a1, 0x0018           ## $a1 = 00000018
/* 00B58 80A79B08 0000C012 */  mflo    $t8                        
/* 00B5C 80A79B0C A4B8031A */  sh      $t8, 0x031A($a1)           ## 00000332
/* 00B60 80A79B10 00000000 */  nop
/* 00B64 80A79B14 00E20019 */  multu   $a3, $v0                   
/* 00B68 80A79B18 24E700C8 */  addiu   $a3, $a3, 0x00C8           ## $a3 = 00000A08
/* 00B6C 80A79B1C 0000C812 */  mflo    $t9                        
/* 00B70 80A79B20 A4B9031C */  sh      $t9, 0x031C($a1)           ## 00000334
/* 00B74 80A79B24 00000000 */  nop
/* 00B78 80A79B28 01020019 */  multu   $t0, $v0                   
/* 00B7C 80A79B2C 250800C8 */  addiu   $t0, $t0, 0x00C8           ## $t0 = 0000090E
/* 00B80 80A79B30 00007012 */  mflo    $t6                        
/* 00B84 80A79B34 A4AE0320 */  sh      $t6, 0x0320($a1)           ## 00000338
/* 00B88 80A79B38 00000000 */  nop
/* 00B8C 80A79B3C 01220019 */  multu   $t1, $v0                   
/* 00B90 80A79B40 252900C8 */  addiu   $t1, $t1, 0x00C8           ## $t1 = 00000A3A
/* 00B94 80A79B44 00007812 */  mflo    $t7                        
/* 00B98 80A79B48 A4AF0322 */  sh      $t7, 0x0322($a1)           ## 0000033A
/* 00B9C 80A79B4C 00000000 */  nop
/* 00BA0 80A79B50 01420019 */  multu   $t2, $v0                   
/* 00BA4 80A79B54 254A00C8 */  addiu   $t2, $t2, 0x00C8           ## $t2 = 00000940
/* 00BA8 80A79B58 0000C012 */  mflo    $t8                        
/* 00BAC 80A79B5C A4B80326 */  sh      $t8, 0x0326($a1)           ## 0000033E
/* 00BB0 80A79B60 00000000 */  nop
/* 00BB4 80A79B64 01620019 */  multu   $t3, $v0                   
/* 00BB8 80A79B68 256B00C8 */  addiu   $t3, $t3, 0x00C8           ## $t3 = 00000A6C
/* 00BBC 80A79B6C 0000C812 */  mflo    $t9                        
/* 00BC0 80A79B70 A4B90328 */  sh      $t9, 0x0328($a1)           ## 00000340
/* 00BC4 80A79B74 00000000 */  nop
/* 00BC8 80A79B78 01820019 */  multu   $t4, $v0                   
/* 00BCC 80A79B7C 258C00C8 */  addiu   $t4, $t4, 0x00C8           ## $t4 = 00000972
/* 00BD0 80A79B80 00007012 */  mflo    $t6                        
/* 00BD4 80A79B84 A4AE032C */  sh      $t6, 0x032C($a1)           ## 00000344
/* 00BD8 80A79B88 00000000 */  nop
/* 00BDC 80A79B8C 01A20019 */  multu   $t5, $v0                   
/* 00BE0 80A79B90 25AD00C8 */  addiu   $t5, $t5, 0x00C8           ## $t5 = 00000A9E
/* 00BE4 80A79B94 00007812 */  mflo    $t7                        
/* 00BE8 80A79B98 A4AF032E */  sh      $t7, 0x032E($a1)           ## 00000346
/* 00BEC 80A79B9C 15A3FFD7 */  bne     $t5, $v1, .L80A79AFC       
/* 00BF0 80A79BA0 00000000 */  nop
/* 00BF4 80A79BA4 03E00008 */  jr      $ra                        
/* 00BF8 80A79BA8 00000000 */  nop
