glabel func_80B361A0
/* 024F0 80B361A0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 024F4 80B361A4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 024F8 80B361A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 024FC 80B361AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02500 80B361B0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02504 80B361B4 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 02508 80B361B8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0250C 80B361BC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02510 80B361C0 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 02514 80B361C4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02518 80B361C8 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 0251C 80B361CC 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 02520 80B361D0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02524 80B361D4 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 02528 80B361D8 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 0252C 80B361DC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 02530 80B361E0 4604303E */  c.le.s  $f6, $f4                   
/* 02534 80B361E4 00000000 */  nop
/* 02538 80B361E8 45000006 */  bc1f    .L80B36204                 
/* 0253C 80B361EC 00000000 */  nop
/* 02540 80B361F0 0C00D56E */  jal     func_800355B8              
/* 02544 80B361F4 260504C8 */  addiu   $a1, $s0, 0x04C8           ## $a1 = 000004C8
/* 02548 80B361F8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0254C 80B361FC 0C00D56E */  jal     func_800355B8              
/* 02550 80B36200 260504BC */  addiu   $a1, $s0, 0x04BC           ## $a1 = 000004BC
.L80B36204:
/* 02554 80B36204 0C02927F */  jal     SkelAnime_Update
              
/* 02558 80B36208 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 0255C 80B3620C 5040001A */  beql    $v0, $zero, .L80B36278     
/* 02560 80B36210 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02564 80B36214 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 02568 80B36218 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0256C 80B3621C 31F80003 */  andi    $t8, $t7, 0x0003           ## $t8 = 00000000
/* 02570 80B36220 53000015 */  beql    $t8, $zero, .L80B36278     
/* 02574 80B36224 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02578 80B36228 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0257C 80B3622C 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 02580 80B36230 C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 02584 80B36234 A60000B4 */  sh      $zero, 0x00B4($s0)         ## 000000B4
/* 02588 80B36238 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 0258C 80B3623C A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 02590 80B36240 E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 02594 80B36244 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 02598 80B36248 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 0259C 80B3624C 0C00CEAE */  jal     func_80033AB8              
/* 025A0 80B36250 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 025A4 80B36254 14400005 */  bne     $v0, $zero, .L80B3626C     
/* 025A8 80B36258 00000000 */  nop
/* 025AC 80B3625C 0C2CD550 */  jal     func_80B35540              
/* 025B0 80B36260 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025B4 80B36264 10000004 */  beq     $zero, $zero, .L80B36278   
/* 025B8 80B36268 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B3626C:
/* 025BC 80B3626C 0C2CD157 */  jal     func_80B3455C              
/* 025C0 80B36270 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025C4 80B36274 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B36278:
/* 025C8 80B36278 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 025CC 80B3627C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 025D0 80B36280 03E00008 */  jr      $ra                        
/* 025D4 80B36284 00000000 */  nop
