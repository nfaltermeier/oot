glabel func_80038A28
/* AAFBC8 80038A28 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AAFBCC 80038A2C AFBF0014 */  sw    $ra, 0x14($sp)
/* AAFBD0 80038A30 AFA50044 */  sw    $a1, 0x44($sp)
/* AAFBD4 80038A34 AFA60048 */  sw    $a2, 0x48($sp)
/* AAFBD8 80038A38 1080004C */  beqz  $a0, .L80038B6C
/* AAFBDC 80038A3C AFA7004C */   sw    $a3, 0x4c($sp)
/* AAFBE0 80038A40 27A5003C */  addiu $a1, $sp, 0x3c
/* AAFBE4 80038A44 27A60038 */  addiu $a2, $sp, 0x38
/* AAFBE8 80038A48 0C00E275 */  jal   func_800389D4
/* AAFBEC 80038A4C 27A70034 */   addiu $a3, $sp, 0x34
/* AAFBF0 80038A50 C7B2003C */  lwc1  $f18, 0x3c($sp)
/* AAFBF4 80038A54 3C018014 */  lui   $at, %hi(D_80138F44)
/* AAFBF8 80038A58 C42C8F44 */  lwc1  $f12, %lo(D_80138F44)($at)
/* AAFBFC 80038A5C 46129102 */  mul.s $f4, $f18, $f18
/* AAFC00 80038A60 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AAFC04 80038A64 44818000 */  mtc1  $at, $f16
/* AAFC08 80038A68 8FA20050 */  lw    $v0, 0x50($sp)
/* AAFC0C 80038A6C 46048001 */  sub.s $f0, $f16, $f4
/* AAFC10 80038A70 46000084 */  sqrt.s $f2, $f0
/* AAFC14 80038A74 46001005 */  abs.s $f0, $f2
/* AAFC18 80038A78 460C003C */  c.lt.s $f0, $f12
/* AAFC1C 80038A7C 00000000 */  nop   
/* AAFC20 80038A80 4503000B */  bc1tl .L80038AB0
/* AAFC24 80038A84 C7A20038 */   lwc1  $f2, 0x38($sp)
/* AAFC28 80038A88 46028003 */  div.s $f0, $f16, $f2
/* AAFC2C 80038A8C C7A60038 */  lwc1  $f6, 0x38($sp)
/* AAFC30 80038A90 C7A80034 */  lwc1  $f8, 0x34($sp)
/* AAFC34 80038A94 46003382 */  mul.s $f14, $f6, $f0
/* AAFC38 80038A98 00000000 */  nop   
/* AAFC3C 80038A9C 46004302 */  mul.s $f12, $f8, $f0
/* AAFC40 80038AA0 44800000 */  mtc1  $zero, $f0
/* AAFC44 80038AA4 10000016 */  b     .L80038B00
/* AAFC48 80038AA8 46006307 */   neg.s $f12, $f12
/* AAFC4C 80038AAC C7A20038 */  lwc1  $f2, 0x38($sp)
.L80038AB0:
/* AAFC50 80038AB0 46021282 */  mul.s $f10, $f2, $f2
/* AAFC54 80038AB4 460A8001 */  sub.s $f0, $f16, $f10
/* AAFC58 80038AB8 46000384 */  sqrt.s $f14, $f0
/* AAFC5C 80038ABC 46007005 */  abs.s $f0, $f14
/* AAFC60 80038AC0 460C003C */  c.lt.s $f0, $f12
/* AAFC64 80038AC4 00000000 */  nop   
/* AAFC68 80038AC8 4503000A */  bc1tl .L80038AF4
/* AAFC6C 80038ACC 44800000 */   mtc1  $zero, $f0
/* AAFC70 80038AD0 460E8003 */  div.s $f0, $f16, $f14
/* AAFC74 80038AD4 C7A40034 */  lwc1  $f4, 0x34($sp)
/* AAFC78 80038AD8 46009302 */  mul.s $f12, $f18, $f0
/* AAFC7C 80038ADC 00000000 */  nop   
/* AAFC80 80038AE0 46002082 */  mul.s $f2, $f4, $f0
/* AAFC84 80038AE4 44800000 */  mtc1  $zero, $f0
/* AAFC88 80038AE8 10000005 */  b     .L80038B00
/* AAFC8C 80038AEC 46001087 */   neg.s $f2, $f2
/* AAFC90 80038AF0 44800000 */  mtc1  $zero, $f0
.L80038AF4:
/* AAFC94 80038AF4 00000000 */  nop   
/* AAFC98 80038AF8 46000306 */  mov.s $f12, $f0
/* AAFC9C 80038AFC 46000086 */  mov.s $f2, $f0
.L80038B00:
/* AAFCA0 80038B00 E4420000 */  swc1  $f2, ($v0)
/* AAFCA4 80038B04 C7A6003C */  lwc1  $f6, 0x3c($sp)
/* AAFCA8 80038B08 46003207 */  neg.s $f8, $f6
/* AAFCAC 80038B0C 460E4282 */  mul.s $f10, $f8, $f14
/* AAFCB0 80038B10 E44A0004 */  swc1  $f10, 4($v0)
/* AAFCB4 80038B14 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* AAFCB8 80038B18 460C2182 */  mul.s $f6, $f4, $f12
/* AAFCBC 80038B1C E4460008 */  swc1  $f6, 8($v0)
/* AAFCC0 80038B20 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* AAFCC4 80038B24 E4480010 */  swc1  $f8, 0x10($v0)
/* AAFCC8 80038B28 C7AA0038 */  lwc1  $f10, 0x38($sp)
/* AAFCCC 80038B2C E44A0014 */  swc1  $f10, 0x14($v0)
/* AAFCD0 80038B30 C7A40034 */  lwc1  $f4, 0x34($sp)
/* AAFCD4 80038B34 E44C0024 */  swc1  $f12, 0x24($v0)
/* AAFCD8 80038B38 E44E0028 */  swc1  $f14, 0x28($v0)
/* AAFCDC 80038B3C E440000C */  swc1  $f0, 0xc($v0)
/* AAFCE0 80038B40 E440001C */  swc1  $f0, 0x1c($v0)
/* AAFCE4 80038B44 E4400020 */  swc1  $f0, 0x20($v0)
/* AAFCE8 80038B48 E440002C */  swc1  $f0, 0x2c($v0)
/* AAFCEC 80038B4C E4440018 */  swc1  $f4, 0x18($v0)
/* AAFCF0 80038B50 C7A60044 */  lwc1  $f6, 0x44($sp)
/* AAFCF4 80038B54 E4460030 */  swc1  $f6, 0x30($v0)
/* AAFCF8 80038B58 C7A80048 */  lwc1  $f8, 0x48($sp)
/* AAFCFC 80038B5C E4480034 */  swc1  $f8, 0x34($v0)
/* AAFD00 80038B60 C7AA004C */  lwc1  $f10, 0x4c($sp)
/* AAFD04 80038B64 E450003C */  swc1  $f16, 0x3c($v0)
/* AAFD08 80038B68 E44A0038 */  swc1  $f10, 0x38($v0)
.L80038B6C:
/* AAFD0C 80038B6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AAFD10 80038B70 27BD0040 */  addiu $sp, $sp, 0x40
/* AAFD14 80038B74 03E00008 */  jr    $ra
/* AAFD18 80038B78 00000000 */   nop   

