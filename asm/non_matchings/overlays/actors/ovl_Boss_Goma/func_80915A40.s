glabel func_80915A40
/* 00030 80915A40 AFA60008 */  sw      $a2, 0x0008($sp)           
/* 00034 80915A44 00063400 */  sll     $a2, $a2, 16               
/* 00038 80915A48 00063403 */  sra     $a2, $a2, 16               
/* 0003C 80915A4C 00C57021 */  addu    $t6, $a2, $a1              
/* 00040 80915A50 91CF0000 */  lbu     $t7, 0x0000($t6)           ## 00000000
/* 00044 80915A54 30D8000F */  andi    $t8, $a2, 0x000F           ## $t8 = 00000000
/* 00048 80915A58 0018C840 */  sll     $t9, $t8,  1               
/* 0004C 80915A5C 11E0000B */  beq     $t7, $zero, .L80915A8C     
/* 00050 80915A60 30C800F0 */  andi    $t0, $a2, 0x00F0           ## $t0 = 00000000
/* 00054 80915A64 00084880 */  sll     $t1, $t0,  2               
/* 00058 80915A68 03295021 */  addu    $t2, $t9, $t1              
/* 0005C 80915A6C 000A5C00 */  sll     $t3, $t2, 16               
/* 00060 80915A70 000B6403 */  sra     $t4, $t3, 16               
/* 00064 80915A74 000C6840 */  sll     $t5, $t4,  1               
/* 00068 80915A78 008D1021 */  addu    $v0, $a0, $t5              
/* 0006C 80915A7C A4400000 */  sh      $zero, 0x0000($v0)         ## 00000000
/* 00070 80915A80 A4400002 */  sh      $zero, 0x0002($v0)         ## 00000002
/* 00074 80915A84 A4400040 */  sh      $zero, 0x0040($v0)         ## 00000040
/* 00078 80915A88 A4400042 */  sh      $zero, 0x0042($v0)         ## 00000042
.L80915A8C:
/* 0007C 80915A8C 03E00008 */  jr      $ra                        
/* 00080 80915A90 00000000 */  nop
