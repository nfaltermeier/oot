.late_rodata
glabel D_80B7B348
    .float 30269.0

glabel D_80B7B34C
    .float 30307.0

glabel D_80B7B350
    .float 30323.0

.text
glabel func_80B69A60
/* 000C0 80B69A60 3C0280B8 */  lui     $v0, %hi(D_80B7FEE8)       ## $v0 = 80B80000
/* 000C4 80B69A64 2442FEE8 */  addiu   $v0, $v0, %lo(D_80B7FEE8)  ## $v0 = 80B7FEE8
/* 000C8 80B69A68 8C4E0000 */  lw      $t6, 0x0000($v0)           ## 80B7FEE8
/* 000CC 80B69A6C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000D0 80B69A70 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 000D4 80B69A74 000E7880 */  sll     $t7, $t6,  2               
/* 000D8 80B69A78 01EE7823 */  subu    $t7, $t7, $t6              
/* 000DC 80B69A7C 000F7880 */  sll     $t7, $t7,  2               
/* 000E0 80B69A80 01EE7823 */  subu    $t7, $t7, $t6              
/* 000E4 80B69A84 000F7880 */  sll     $t7, $t7,  2               
/* 000E8 80B69A88 01EE7823 */  subu    $t7, $t7, $t6              
/* 000EC 80B69A8C 000F7880 */  sll     $t7, $t7,  2               
/* 000F0 80B69A90 2401763D */  addiu   $at, $zero, 0x763D         ## $at = 0000763D
/* 000F4 80B69A94 01EE7823 */  subu    $t7, $t7, $t6              
/* 000F8 80B69A98 01E1001A */  div     $zero, $t7, $at            
/* 000FC 80B69A9C 3C0380B8 */  lui     $v1, %hi(D_80B7FEEC)       ## $v1 = 80B80000
/* 00100 80B69AA0 2463FEEC */  addiu   $v1, $v1, %lo(D_80B7FEEC)  ## $v1 = 80B7FEEC
/* 00104 80B69AA4 8C790000 */  lw      $t9, 0x0000($v1)           ## 80B7FEEC
/* 00108 80B69AA8 00006810 */  mfhi    $t5                        
/* 0010C 80B69AAC 24017663 */  addiu   $at, $zero, 0x7663         ## $at = 00007663
/* 00110 80B69AB0 00194080 */  sll     $t0, $t9,  2               
/* 00114 80B69AB4 01194023 */  subu    $t0, $t0, $t9              
/* 00118 80B69AB8 00084080 */  sll     $t0, $t0,  2               
/* 0011C 80B69ABC 01194023 */  subu    $t0, $t0, $t9              
/* 00120 80B69AC0 00084080 */  sll     $t0, $t0,  2               
/* 00124 80B69AC4 01194023 */  subu    $t0, $t0, $t9              
/* 00128 80B69AC8 00084080 */  sll     $t0, $t0,  2               
/* 0012C 80B69ACC 0101001A */  div     $zero, $t0, $at            
/* 00130 80B69AD0 3C0480B8 */  lui     $a0, %hi(D_80B7FEF0)       ## $a0 = 80B80000
/* 00134 80B69AD4 2484FEF0 */  addiu   $a0, $a0, %lo(D_80B7FEF0)  ## $a0 = 80B7FEF0
/* 00138 80B69AD8 8C8A0000 */  lw      $t2, 0x0000($a0)           ## 80B7FEF0
/* 0013C 80B69ADC 00007010 */  mfhi    $t6                        
/* 00140 80B69AE0 24017673 */  addiu   $at, $zero, 0x7673         ## $at = 00007673
/* 00144 80B69AE4 000A5880 */  sll     $t3, $t2,  2               
/* 00148 80B69AE8 016A5821 */  addu    $t3, $t3, $t2              
/* 0014C 80B69AEC 000B5880 */  sll     $t3, $t3,  2               
/* 00150 80B69AF0 016A5821 */  addu    $t3, $t3, $t2              
/* 00154 80B69AF4 000B5880 */  sll     $t3, $t3,  2               
/* 00158 80B69AF8 016A5821 */  addu    $t3, $t3, $t2              
/* 0015C 80B69AFC 000B5840 */  sll     $t3, $t3,  1               
/* 00160 80B69B00 0161001A */  div     $zero, $t3, $at            
/* 00164 80B69B04 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 00168 80B69B08 448E8000 */  mtc1    $t6, $f16                  ## $f16 = 0.00
/* 0016C 80B69B0C 00007810 */  mfhi    $t7                        
/* 00170 80B69B10 468021A0 */  cvt.s.w $f6, $f4                   
/* 00174 80B69B14 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 80B7FEE8
/* 00178 80B69B18 AC6E0000 */  sw      $t6, 0x0000($v1)           ## 80B7FEEC
/* 0017C 80B69B1C AC8F0000 */  sw      $t7, 0x0000($a0)           ## 80B7FEF0
/* 00180 80B69B20 3C0180B8 */  lui     $at, %hi(D_80B7B348)       ## $at = 80B80000
/* 00184 80B69B24 468084A0 */  cvt.s.w $f18, $f16                 
/* 00188 80B69B28 C428B348 */  lwc1    $f8, %lo(D_80B7B348)($at)  
/* 0018C 80B69B2C 3C0180B8 */  lui     $at, %hi(D_80B7B34C)       ## $at = 80B80000
/* 00190 80B69B30 C424B34C */  lwc1    $f4, %lo(D_80B7B34C)($at)  
/* 00194 80B69B34 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 00198 80B69B38 46083283 */  div.s   $f10, $f6, $f8             
/* 0019C 80B69B3C 3C0180B8 */  lui     $at, %hi(D_80B7B350)       ## $at = 80B80000
/* 001A0 80B69B40 46049183 */  div.s   $f6, $f18, $f4             
/* 001A4 80B69B44 C424B350 */  lwc1    $f4, %lo(D_80B7B350)($at)  
/* 001A8 80B69B48 468084A0 */  cvt.s.w $f18, $f16                 
/* 001AC 80B69B4C 46065200 */  add.s   $f8, $f10, $f6             
/* 001B0 80B69B50 46049283 */  div.s   $f10, $f18, $f4            
/* 001B4 80B69B54 460A4080 */  add.s   $f2, $f8, $f10             
/* 001B8 80B69B58 4602003E */  c.le.s  $f0, $f2                   
/* 001BC 80B69B5C 00000000 */  nop
/* 001C0 80B69B60 45000006 */  bc1f    .L80B69B7C                 
/* 001C4 80B69B64 00000000 */  nop
/* 001C8 80B69B68 46001081 */  sub.s   $f2, $f2, $f0              
.L80B69B6C:
/* 001CC 80B69B6C 4602003E */  c.le.s  $f0, $f2                   
/* 001D0 80B69B70 00000000 */  nop
/* 001D4 80B69B74 4503FFFD */  bc1tl   .L80B69B6C                 
/* 001D8 80B69B78 46001081 */  sub.s   $f2, $f2, $f0              
.L80B69B7C:
/* 001DC 80B69B7C 03E00008 */  jr      $ra                        
/* 001E0 80B69B80 46001005 */  abs.s   $f0, $f2                   
