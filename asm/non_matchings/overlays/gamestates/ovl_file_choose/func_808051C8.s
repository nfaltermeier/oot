glabel func_808051C8
/* 01488 808051C8 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 0148C 808051CC 35088000 */  ori     $t0, $t0, 0x8000           ## $t0 = 00018000
/* 01490 808051D0 00881021 */  addu    $v0, $a0, $t0              
/* 01494 808051D4 844E4A5E */  lh      $t6, 0x4A5E($v0)           ## 00004A5E
/* 01498 808051D8 000E7840 */  sll     $t7, $t6,  1               
/* 0149C 808051DC 008FC021 */  addu    $t8, $a0, $t7              
/* 014A0 808051E0 03081821 */  addu    $v1, $t8, $t0              
/* 014A4 808051E4 84794A8C */  lh      $t9, 0x4A8C($v1)           ## 00004A8C
/* 014A8 808051E8 27290019 */  addiu   $t1, $t9, 0x0019           ## $t1 = 00000019
/* 014AC 808051EC A4694A8C */  sh      $t1, 0x4A8C($v1)           ## 00004A8C
/* 014B0 808051F0 844A4A5E */  lh      $t2, 0x4A5E($v0)           ## 00004A5E
/* 014B4 808051F4 000A5840 */  sll     $t3, $t2,  1               
/* 014B8 808051F8 008B6021 */  addu    $t4, $a0, $t3              
/* 014BC 808051FC 01881821 */  addu    $v1, $t4, $t0              
/* 014C0 80805200 846D4A80 */  lh      $t5, 0x4A80($v1)           ## 00004A80
/* 014C4 80805204 25AE0019 */  addiu   $t6, $t5, 0x0019           ## $t6 = 00000019
/* 014C8 80805208 A46E4A80 */  sh      $t6, 0x4A80($v1)           ## 00004A80
/* 014CC 8080520C 84594A5E */  lh      $t9, 0x4A5E($v0)           ## 00004A5E
/* 014D0 80805210 844F4A70 */  lh      $t7, 0x4A70($v0)           ## 00004A70
/* 014D4 80805214 00194840 */  sll     $t1, $t9,  1               
/* 014D8 80805218 00895021 */  addu    $t2, $a0, $t1              
/* 014DC 8080521C 25F8001F */  addiu   $t8, $t7, 0x001F           ## $t8 = 0000001F
/* 014E0 80805220 A4584A70 */  sh      $t8, 0x4A70($v0)           ## 00004A70
/* 014E4 80805224 01481821 */  addu    $v1, $t2, $t0              
/* 014E8 80805228 84654A4A */  lh      $a1, 0x4A4A($v1)           ## 00004A4A
/* 014EC 8080522C 2409FFC8 */  addiu   $t1, $zero, 0xFFC8         ## $t1 = FFFFFFC8
/* 014F0 80805230 24A60038 */  addiu   $a2, $a1, 0x0038           ## $a2 = 00000038
/* 014F4 80805234 04C20004 */  bltzl   $a2, .L80805248            
/* 014F8 80805238 240BFFC8 */  addiu   $t3, $zero, 0xFFC8         ## $t3 = FFFFFFC8
/* 014FC 8080523C 10000003 */  beq     $zero, $zero, .L8080524C   
/* 01500 80805240 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000038
/* 01504 80805244 240BFFC8 */  addiu   $t3, $zero, 0xFFC8         ## $t3 = FFFFFFC8
.L80805248:
/* 01508 80805248 01653823 */  subu    $a3, $t3, $a1              
.L8080524C:
/* 0150C 8080524C 844C4A50 */  lh      $t4, 0x4A50($v0)           ## 00004A50
/* 01510 80805250 00EC001A */  div     $zero, $a3, $t4            
/* 01514 80805254 00003012 */  mflo    $a2                        
/* 01518 80805258 00063400 */  sll     $a2, $a2, 16               
/* 0151C 8080525C 00063403 */  sra     $a2, $a2, 16               
/* 01520 80805260 00A66823 */  subu    $t5, $a1, $a2              
/* 01524 80805264 A46D4A4A */  sh      $t5, 0x4A4A($v1)           ## 00004A4A
/* 01528 80805268 844E4A5E */  lh      $t6, 0x4A5E($v0)           ## 00004A5E
/* 0152C 8080526C 15800002 */  bne     $t4, $zero, .L80805278     
/* 01530 80805270 00000000 */  nop
/* 01534 80805274 0007000D */  break 7
.L80805278:
/* 01538 80805278 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0153C 8080527C 15810004 */  bne     $t4, $at, .L80805290       
/* 01540 80805280 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01544 80805284 14E10002 */  bne     $a3, $at, .L80805290       
/* 01548 80805288 00000000 */  nop
/* 0154C 8080528C 0006000D */  break 6
.L80805290:
/* 01550 80805290 000E7840 */  sll     $t7, $t6,  1               
/* 01554 80805294 008FC021 */  addu    $t8, $a0, $t7              
/* 01558 80805298 03081821 */  addu    $v1, $t8, $t0              
/* 0155C 8080529C 84794A4A */  lh      $t9, 0x4A4A($v1)           ## 00004A4A
/* 01560 808052A0 240D005A */  addiu   $t5, $zero, 0x005A         ## $t5 = 0000005A
/* 01564 808052A4 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01568 808052A8 2B21FFC9 */  slti    $at, $t9, 0xFFC9           
/* 0156C 808052AC 50200003 */  beql    $at, $zero, .L808052BC     
/* 01570 808052B0 844A4A50 */  lh      $t2, 0x4A50($v0)           ## 00004A50
/* 01574 808052B4 A4694A4A */  sh      $t1, 0x4A4A($v1)           ## 00004A4A
/* 01578 808052B8 844A4A50 */  lh      $t2, 0x4A50($v0)           ## 00004A50
.L808052BC:
/* 0157C 808052BC 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01580 808052C0 00240821 */  addu    $at, $at, $a0              
/* 01584 808052C4 254BFFFF */  addiu   $t3, $t2, 0xFFFF           ## $t3 = FFFFFFFF
/* 01588 808052C8 A42BCA50 */  sh      $t3, -0x35B0($at)          ## 0001CA50
/* 0158C 808052CC 844C4A50 */  lh      $t4, 0x4A50($v0)           ## 00004A50
/* 01590 808052D0 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 01594 808052D4 00240821 */  addu    $at, $at, $a0              
/* 01598 808052D8 1580000D */  bne     $t4, $zero, .L80805310     
/* 0159C 808052DC 00000000 */  nop
/* 015A0 808052E0 A42DCA50 */  sh      $t5, -0x35B0($at)          ## 0001CA50
/* 015A4 808052E4 844E4A66 */  lh      $t6, 0x4A66($v0)           ## 00004A66
/* 015A8 808052E8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 015AC 808052EC 00240821 */  addu    $at, $at, $a0              
/* 015B0 808052F0 A42ECA64 */  sh      $t6, -0x359C($at)          ## 0001CA64
/* 015B4 808052F4 84584A3E */  lh      $t8, 0x4A3E($v0)           ## 00004A3E
/* 015B8 808052F8 3C010002 */  lui     $at, 0x0002                ## $at = 00020000
/* 015BC 808052FC A44F4A6E */  sh      $t7, 0x4A6E($v0)           ## 00004A6E
/* 015C0 80805300 A4404A70 */  sh      $zero, 0x4A70($v0)         ## 00004A70
/* 015C4 80805304 00240821 */  addu    $at, $at, $a0              
/* 015C8 80805308 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000020
/* 015CC 8080530C A439CA3E */  sh      $t9, -0x35C2($at)          ## 0001CA3E
.L80805310:
/* 015D0 80805310 03E00008 */  jr      $ra                        
/* 015D4 80805314 00000000 */  nop
