.late_rodata
glabel D_80146654
    .float 10430.378

glabel D_80146658
    .float 10430.378

glabel D_8014665C
    .float 10430.378

glabel D_80146660
    .float 10430.378

glabel D_80146664
    .float 10430.378

.text
glabel func_800D2264
/* B49404 800D2264 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B49408 800D2268 AFBF0024 */  sw    $ra, 0x24($sp)
/* B4940C 800D226C AFB00020 */  sw    $s0, 0x20($sp)
/* B49410 800D2270 F7B40018 */  sdc1  $f20, 0x18($sp)
/* B49414 800D2274 AFA60030 */  sw    $a2, 0x30($sp)
/* B49418 800D2278 C4940000 */  lwc1  $f20, ($a0)
/* B4941C 800D227C C4820004 */  lwc1  $f2, 4($a0)
/* B49420 800D2280 C48C0008 */  lwc1  $f12, 8($a0)
/* B49424 800D2284 4614A502 */  mul.s $f20, $f20, $f20
/* B49428 800D2288 00A08025 */  move  $s0, $a1
/* B4942C 800D228C AFA40028 */  sw    $a0, 0x28($sp)
/* B49430 800D2290 46021102 */  mul.s $f4, $f2, $f2
/* B49434 800D2294 46006307 */  neg.s $f12, $f12
/* B49438 800D2298 4604A500 */  add.s $f20, $f20, $f4
/* B4943C 800D229C 0C03F494 */  jal   Math_FAtan2F
/* B49440 800D22A0 4600A384 */   sqrt.s $f14, $f20
/* B49444 800D22A4 3C018014 */  lui   $at, %hi(D_80146654)
/* B49448 800D22A8 C4266654 */  lwc1  $f6, %lo(D_80146654)($at)
/* B4944C 800D22AC 8FA40028 */  lw    $a0, 0x28($sp)
/* B49450 800D22B0 24014000 */  li    $at, 16384
/* B49454 800D22B4 46060202 */  mul.s $f8, $f0, $f6
/* B49458 800D22B8 4600428D */  trunc.w.s $f10, $f8
/* B4945C 800D22BC 440F5000 */  mfc1  $t7, $f10
/* B49460 800D22C0 00000000 */  nop   
/* B49464 800D22C4 A60F0002 */  sh    $t7, 2($s0)
/* B49468 800D22C8 86020002 */  lh    $v0, 2($s0)
/* B4946C 800D22CC 10410003 */  beq   $v0, $at, .L800D22DC
/* B49470 800D22D0 2401C000 */   li    $at, -16384
/* B49474 800D22D4 5441000E */  bnel  $v0, $at, .L800D2310
/* B49478 800D22D8 C48C0004 */   lwc1  $f12, 4($a0)
.L800D22DC:
/* B4947C 800D22DC A6000000 */  sh    $zero, ($s0)
/* B49480 800D22E0 C48C0010 */  lwc1  $f12, 0x10($a0)
/* B49484 800D22E4 C48E0014 */  lwc1  $f14, 0x14($a0)
/* B49488 800D22E8 0C03F494 */  jal   Math_FAtan2F
/* B4948C 800D22EC 46006307 */   neg.s $f12, $f12
/* B49490 800D22F0 3C018014 */  lui   $at, %hi(D_80146658)
/* B49494 800D22F4 C4326658 */  lwc1  $f18, %lo(D_80146658)($at)
/* B49498 800D22F8 46120102 */  mul.s $f4, $f0, $f18
/* B4949C 800D22FC 4600218D */  trunc.w.s $f6, $f4
/* B494A0 800D2300 44193000 */  mfc1  $t9, $f6
/* B494A4 800D2304 10000038 */  b     .L800D23E8
/* B494A8 800D2308 A6190004 */   sh    $t9, 4($s0)
/* B494AC 800D230C C48C0004 */  lwc1  $f12, 4($a0)
.L800D2310:
/* B494B0 800D2310 C48E0000 */  lwc1  $f14, ($a0)
/* B494B4 800D2314 0C03F494 */  jal   Math_FAtan2F
/* B494B8 800D2318 AFA40028 */   sw    $a0, 0x28($sp)
/* B494BC 800D231C 3C018014 */  lui   $at, %hi(D_8014665C)
/* B494C0 800D2320 C428665C */  lwc1  $f8, %lo(D_8014665C)($at)
/* B494C4 800D2324 8FA40028 */  lw    $a0, 0x28($sp)
/* B494C8 800D2328 46080282 */  mul.s $f10, $f0, $f8
/* B494CC 800D232C 4600548D */  trunc.w.s $f18, $f10
/* B494D0 800D2330 44099000 */  mfc1  $t1, $f18
/* B494D4 800D2334 00000000 */  nop   
/* B494D8 800D2338 A6090004 */  sh    $t1, 4($s0)
/* B494DC 800D233C 8FAA0030 */  lw    $t2, 0x30($sp)
/* B494E0 800D2340 5540000C */  bnezl $t2, .L800D2374
/* B494E4 800D2344 C4940010 */   lwc1  $f20, 0x10($a0)
/* B494E8 800D2348 C48C0018 */  lwc1  $f12, 0x18($a0)
/* B494EC 800D234C 0C03F494 */  jal   Math_FAtan2F
/* B494F0 800D2350 C48E0028 */   lwc1  $f14, 0x28($a0)
/* B494F4 800D2354 3C018014 */  lui   $at, %hi(D_80146660)
/* B494F8 800D2358 C4246660 */  lwc1  $f4, %lo(D_80146660)($at)
/* B494FC 800D235C 46040182 */  mul.s $f6, $f0, $f4
/* B49500 800D2360 4600320D */  trunc.w.s $f8, $f6
/* B49504 800D2364 440C4000 */  mfc1  $t4, $f8
/* B49508 800D2368 1000001F */  b     .L800D23E8
/* B4950C 800D236C A60C0000 */   sh    $t4, ($s0)
/* B49510 800D2370 C4940010 */  lwc1  $f20, 0x10($a0)
.L800D2374:
/* B49514 800D2374 C4820014 */  lwc1  $f2, 0x14($a0)
/* B49518 800D2378 C4900024 */  lwc1  $f16, 0x24($a0)
/* B4951C 800D237C 4614A502 */  mul.s $f20, $f20, $f20
/* B49520 800D2380 00000000 */  nop   
/* B49524 800D2384 46021282 */  mul.s $f10, $f2, $f2
/* B49528 800D2388 C4820018 */  lwc1  $f2, 0x18($a0)
/* B4952C 800D238C 46021482 */  mul.s $f18, $f2, $f2
/* B49530 800D2390 460AA500 */  add.s $f20, $f20, $f10
/* B49534 800D2394 4612A500 */  add.s $f20, $f20, $f18
/* B49538 800D2398 4600A004 */  sqrt.s $f0, $f20
/* B4953C 800D239C 46001303 */  div.s $f12, $f2, $f0
/* B49540 800D23A0 C4820020 */  lwc1  $f2, 0x20($a0)
/* B49544 800D23A4 46021082 */  mul.s $f2, $f2, $f2
/* B49548 800D23A8 00000000 */  nop   
/* B4954C 800D23AC 46108102 */  mul.s $f4, $f16, $f16
/* B49550 800D23B0 C4900028 */  lwc1  $f16, 0x28($a0)
/* B49554 800D23B4 46108182 */  mul.s $f6, $f16, $f16
/* B49558 800D23B8 46041080 */  add.s $f2, $f2, $f4
/* B4955C 800D23BC 46061080 */  add.s $f2, $f2, $f6
/* B49560 800D23C0 46001004 */  sqrt.s $f0, $f2
/* B49564 800D23C4 0C03F494 */  jal   Math_FAtan2F
/* B49568 800D23C8 46008383 */   div.s $f14, $f16, $f0
/* B4956C 800D23CC 3C018014 */  lui   $at, %hi(D_80146664)
/* B49570 800D23D0 C4286664 */  lwc1  $f8, %lo(D_80146664)($at)
/* B49574 800D23D4 46080282 */  mul.s $f10, $f0, $f8
/* B49578 800D23D8 4600548D */  trunc.w.s $f18, $f10
/* B4957C 800D23DC 440E9000 */  mfc1  $t6, $f18
/* B49580 800D23E0 00000000 */  nop   
/* B49584 800D23E4 A60E0000 */  sh    $t6, ($s0)
.L800D23E8:
/* B49588 800D23E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* B4958C 800D23EC D7B40018 */  ldc1  $f20, 0x18($sp)
/* B49590 800D23F0 8FB00020 */  lw    $s0, 0x20($sp)
/* B49594 800D23F4 03E00008 */  jr    $ra
/* B49598 800D23F8 27BD0028 */   addiu $sp, $sp, 0x28
