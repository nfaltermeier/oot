glabel func_808641E8
/* 04B98 808641E8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04B9C 808641EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04BA0 808641F0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 04BA4 808641F4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 04BA8 808641F8 0C00CDE0 */  jal     func_80033780              
/* 04BAC 808641FC 3C064396 */  lui     $a2, 0x4396                ## $a2 = 43960000
/* 04BB0 80864200 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 04BB4 80864204 104000BD */  beq     $v0, $zero, .L808644FC     
/* 04BB8 80864208 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 04BBC 8086420C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04BC0 80864210 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 04BC4 80864214 0C00B69E */  jal     func_8002DA78              
/* 04BC8 80864218 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 04BCC 8086421C 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 04BD0 80864220 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 04BD4 80864224 94E400B6 */  lhu     $a0, 0x00B6($a3)           ## 000000B6
/* 04BD8 80864228 94EF0088 */  lhu     $t7, 0x0088($a3)           ## 00000088
/* 04BDC 8086422C 00441823 */  subu    $v1, $v0, $a0              
/* 04BE0 80864230 00031C00 */  sll     $v1, $v1, 16               
/* 04BE4 80864234 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 04BE8 80864238 13000008 */  beq     $t8, $zero, .L8086425C     
/* 04BEC 8086423C 00031C03 */  sra     $v1, $v1, 16               
/* 04BF0 80864240 94F9007E */  lhu     $t9, 0x007E($a3)           ## 0000007E
/* 04BF4 80864244 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 04BF8 80864248 03243023 */  subu    $a2, $t9, $a0              
/* 04BFC 8086424C 00063400 */  sll     $a2, $a2, 16               
/* 04C00 80864250 00063403 */  sra     $a2, $a2, 16               
/* 04C04 80864254 10000001 */  beq     $zero, $zero, .L8086425C   
/* 04C08 80864258 A7A60020 */  sh      $a2, 0x0020($sp)           
.L8086425C:
/* 04C0C 8086425C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 04C10 80864260 24E40024 */  addiu   $a0, $a3, 0x0024           ## $a0 = 00000024
/* 04C14 80864264 A7A30022 */  sh      $v1, 0x0022($sp)           
/* 04C18 80864268 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 04C1C 8086426C A7A8001E */  sh      $t0, 0x001E($sp)           
/* 04C20 80864270 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 04C24 80864274 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 04C28 80864278 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 04C2C 8086427C 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 04C30 80864280 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 04C34 80864284 87A30022 */  lh      $v1, 0x0022($sp)           
/* 04C38 80864288 4604003C */  c.lt.s  $f0, $f4                   
/* 04C3C 8086428C 87A60020 */  lh      $a2, 0x0020($sp)           
/* 04C40 80864290 87A8001E */  lh      $t0, 0x001E($sp)           
/* 04C44 80864294 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 04C48 80864298 4500002C */  bc1f    .L8086434C                 
/* 04C4C 8086429C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 04C50 808642A0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 04C54 808642A4 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 04C58 808642A8 A7A30022 */  sh      $v1, 0x0022($sp)           
/* 04C5C 808642AC 0C00CEA1 */  jal     func_80033A84              
/* 04C60 808642B0 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 04C64 808642B4 87A30022 */  lh      $v1, 0x0022($sp)           
/* 04C68 808642B8 1040000A */  beq     $v0, $zero, .L808642E4     
/* 04C6C 808642BC 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 04C70 808642C0 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 04C74 808642C4 24010066 */  addiu   $at, $zero, 0x0066         ## $at = 00000066
/* 04C78 808642C8 852A0000 */  lh      $t2, 0x0000($t1)           ## 00000000
/* 04C7C 808642CC 15410005 */  bne     $t2, $at, .L808642E4       
/* 04C80 808642D0 00000000 */  nop
/* 04C84 808642D4 0C218754 */  jal     func_80861D50              
/* 04C88 808642D8 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04C8C 808642DC 10000088 */  beq     $zero, $zero, .L80864500   
/* 04C90 808642E0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808642E4:
/* 04C94 808642E4 04600003 */  bltz    $v1, .L808642F4            
/* 04C98 808642E8 00031023 */  subu    $v0, $zero, $v1            
/* 04C9C 808642EC 10000001 */  beq     $zero, $zero, .L808642F4   
/* 04CA0 808642F0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L808642F4:
/* 04CA4 808642F4 28412000 */  slti    $at, $v0, 0x2000           
/* 04CA8 808642F8 10200005 */  beq     $at, $zero, .L80864310     
/* 04CAC 808642FC 00000000 */  nop
/* 04CB0 80864300 0C2187B0 */  jal     func_80861EC0              
/* 04CB4 80864304 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04CB8 80864308 1000007D */  beq     $zero, $zero, .L80864500   
/* 04CBC 8086430C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80864310:
/* 04CC0 80864310 04600003 */  bltz    $v1, .L80864320            
/* 04CC4 80864314 00031023 */  subu    $v0, $zero, $v1            
/* 04CC8 80864318 10000001 */  beq     $zero, $zero, .L80864320   
/* 04CCC 8086431C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80864320:
/* 04CD0 80864320 28416000 */  slti    $at, $v0, 0x6000           
/* 04CD4 80864324 10200005 */  beq     $at, $zero, .L8086433C     
/* 04CD8 80864328 00000000 */  nop
/* 04CDC 8086432C 0C218653 */  jal     func_8086194C              
/* 04CE0 80864330 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04CE4 80864334 10000072 */  beq     $zero, $zero, .L80864500   
/* 04CE8 80864338 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8086433C:
/* 04CEC 8086433C 0C218754 */  jal     func_80861D50              
/* 04CF0 80864340 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04CF4 80864344 1000006E */  beq     $zero, $zero, .L80864500   
/* 04CF8 80864348 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8086434C:
/* 04CFC 8086434C A7A30022 */  sh      $v1, 0x0022($sp)           
/* 04D00 80864350 A7A60020 */  sh      $a2, 0x0020($sp)           
/* 04D04 80864354 AFA7002C */  sw      $a3, 0x002C($sp)           
/* 04D08 80864358 0C00CEA1 */  jal     func_80033A84              
/* 04D0C 8086435C A7A8001E */  sh      $t0, 0x001E($sp)           
/* 04D10 80864360 87A30022 */  lh      $v1, 0x0022($sp)           
/* 04D14 80864364 87A60020 */  lh      $a2, 0x0020($sp)           
/* 04D18 80864368 8FA7002C */  lw      $a3, 0x002C($sp)           
/* 04D1C 8086436C 1040000A */  beq     $v0, $zero, .L80864398     
/* 04D20 80864370 87A8001E */  lh      $t0, 0x001E($sp)           
/* 04D24 80864374 8FAB0024 */  lw      $t3, 0x0024($sp)           
/* 04D28 80864378 24010066 */  addiu   $at, $zero, 0x0066         ## $at = 00000066
/* 04D2C 8086437C 856C0000 */  lh      $t4, 0x0000($t3)           ## 00000000
/* 04D30 80864380 15810005 */  bne     $t4, $at, .L80864398       
/* 04D34 80864384 00000000 */  nop
/* 04D38 80864388 0C218754 */  jal     func_80861D50              
/* 04D3C 8086438C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04D40 80864390 1000005B */  beq     $zero, $zero, .L80864500   
/* 04D44 80864394 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80864398:
/* 04D48 80864398 04600003 */  bltz    $v1, .L808643A8            
/* 04D4C 8086439C 00031023 */  subu    $v0, $zero, $v1            
/* 04D50 808643A0 10000001 */  beq     $zero, $zero, .L808643A8   
/* 04D54 808643A4 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L808643A8:
/* 04D58 808643A8 28412000 */  slti    $at, $v0, 0x2000           
/* 04D5C 808643AC 14200008 */  bne     $at, $zero, .L808643D0     
/* 04D60 808643B0 8FAD0028 */  lw      $t5, 0x0028($sp)           
/* 04D64 808643B4 04600003 */  bltz    $v1, .L808643C4            
/* 04D68 808643B8 00031023 */  subu    $v0, $zero, $v1            
/* 04D6C 808643BC 10000001 */  beq     $zero, $zero, .L808643C4   
/* 04D70 808643C0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L808643C4:
/* 04D74 808643C4 28416001 */  slti    $at, $v0, 0x6001           
/* 04D78 808643C8 14200021 */  bne     $at, $zero, .L80864450     
/* 04D7C 808643CC 00000000 */  nop
.L808643D0:
/* 04D80 808643D0 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 04D84 808643D4 006D1821 */  addu    $v1, $v1, $t5              
/* 04D88 808643D8 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 04D8C 808643DC 28C12001 */  slti    $at, $a2, 0x2001           
/* 04D90 808643E0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04D94 808643E4 30630001 */  andi    $v1, $v1, 0x0001           ## $v1 = 00000000
/* 04D98 808643E8 00031C00 */  sll     $v1, $v1, 16               
/* 04D9C 808643EC 11000007 */  beq     $t0, $zero, .L8086440C     
/* 04DA0 808643F0 00031C03 */  sra     $v1, $v1, 16               
/* 04DA4 808643F4 14200005 */  bne     $at, $zero, .L8086440C     
/* 04DA8 808643F8 28C16000 */  slti    $at, $a2, 0x6000           
/* 04DAC 808643FC 10200003 */  beq     $at, $zero, .L8086440C     
/* 04DB0 80864400 00000000 */  nop
/* 04DB4 80864404 10000008 */  beq     $zero, $zero, .L80864428   
/* 04DB8 80864408 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8086440C:
/* 04DBC 8086440C 11000006 */  beq     $t0, $zero, .L80864428     
/* 04DC0 80864410 28C1E000 */  slti    $at, $a2, 0xE000           
/* 04DC4 80864414 10200004 */  beq     $at, $zero, .L80864428     
/* 04DC8 80864418 28C1A001 */  slti    $at, $a2, 0xA001           
/* 04DCC 8086441C 14200002 */  bne     $at, $zero, .L80864428     
/* 04DD0 80864420 00000000 */  nop
/* 04DD4 80864424 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L80864428:
/* 04DD8 80864428 10600005 */  beq     $v1, $zero, .L80864440     
/* 04DDC 8086442C 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 04DE0 80864430 0C219056 */  jal     func_80864158              
/* 04DE4 80864434 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04DE8 80864438 10000031 */  beq     $zero, $zero, .L80864500   
/* 04DEC 8086443C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80864440:
/* 04DF0 80864440 0C219056 */  jal     func_80864158              
/* 04DF4 80864444 3C05C080 */  lui     $a1, 0xC080                ## $a1 = C0800000
/* 04DF8 80864448 1000002D */  beq     $zero, $zero, .L80864500   
/* 04DFC 8086444C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80864450:
/* 04E00 80864450 04600003 */  bltz    $v1, .L80864460            
/* 04E04 80864454 00031023 */  subu    $v0, $zero, $v1            
/* 04E08 80864458 10000001 */  beq     $zero, $zero, .L80864460   
/* 04E0C 8086445C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80864460:
/* 04E10 80864460 28416000 */  slti    $at, $v0, 0x6000           
/* 04E14 80864464 10200023 */  beq     $at, $zero, .L808644F4     
/* 04E18 80864468 8FAE0028 */  lw      $t6, 0x0028($sp)           
/* 04E1C 8086446C 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 04E20 80864470 006E1821 */  addu    $v1, $v1, $t6              
/* 04E24 80864474 8C631DE4 */  lw      $v1, 0x1DE4($v1)           ## 00011DE4
/* 04E28 80864478 30630001 */  andi    $v1, $v1, 0x0001           ## $v1 = 00000000
/* 04E2C 8086447C 00031C00 */  sll     $v1, $v1, 16               
/* 04E30 80864480 1100000A */  beq     $t0, $zero, .L808644AC     
/* 04E34 80864484 00031C03 */  sra     $v1, $v1, 16               
/* 04E38 80864488 04C00003 */  bltz    $a2, .L80864498            
/* 04E3C 8086448C 00061023 */  subu    $v0, $zero, $a2            
/* 04E40 80864490 10000001 */  beq     $zero, $zero, .L80864498   
/* 04E44 80864494 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L80864498:
/* 04E48 80864498 28416001 */  slti    $at, $v0, 0x6001           
/* 04E4C 8086449C 14200003 */  bne     $at, $zero, .L808644AC     
/* 04E50 808644A0 00000000 */  nop
/* 04E54 808644A4 1000000B */  beq     $zero, $zero, .L808644D4   
/* 04E58 808644A8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L808644AC:
/* 04E5C 808644AC 11000009 */  beq     $t0, $zero, .L808644D4     
/* 04E60 808644B0 00000000 */  nop
/* 04E64 808644B4 04C00003 */  bltz    $a2, .L808644C4            
/* 04E68 808644B8 00061023 */  subu    $v0, $zero, $a2            
/* 04E6C 808644BC 10000001 */  beq     $zero, $zero, .L808644C4   
/* 04E70 808644C0 00C01025 */  or      $v0, $a2, $zero            ## $v0 = 00000000
.L808644C4:
/* 04E74 808644C4 28412000 */  slti    $at, $v0, 0x2000           
/* 04E78 808644C8 10200002 */  beq     $at, $zero, .L808644D4     
/* 04E7C 808644CC 00000000 */  nop
/* 04E80 808644D0 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
.L808644D4:
/* 04E84 808644D4 10600005 */  beq     $v1, $zero, .L808644EC     
/* 04E88 808644D8 00000000 */  nop
/* 04E8C 808644DC 0C218653 */  jal     func_8086194C              
/* 04E90 808644E0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 04E94 808644E4 10000006 */  beq     $zero, $zero, .L80864500   
/* 04E98 808644E8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808644EC:
/* 04E9C 808644EC 0C218754 */  jal     func_80861D50              
/* 04EA0 808644F0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
.L808644F4:
/* 04EA4 808644F4 10000002 */  beq     $zero, $zero, .L80864500   
/* 04EA8 808644F8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808644FC:
/* 04EAC 808644FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80864500:
/* 04EB0 80864500 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04EB4 80864504 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04EB8 80864508 03E00008 */  jr      $ra                        
/* 04EBC 8086450C 00000000 */  nop
