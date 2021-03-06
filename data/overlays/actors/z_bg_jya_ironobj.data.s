.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.word 0x00000000
glabel Bg_Jya_Ironobj_InitVars
 .word 0x01690600, 0x00000000, 0x016C0000, 0x000001B4
.word BgJyaIronobj_Init
.word BgJyaIronobj_Destroy
.word BgJyaIronobj_Update
.word BgJyaIronobj_Draw
glabel D_808994A4
 .word 0x06000240, 0x06001050
glabel D_808994AC
 .byte 0x0A, 0x00, 0x11, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xCF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x00, 0x00
glabel D_808994E0
 .word 0x00050008, 0x000B000E, 0x00110014, 0x0017001A
glabel D_808994F0
 .word 0x0012001A, 0x0022002A, 0x0032003C, 0x00460050
glabel D_80899500
 .word 0x0030002A, 0x00240020, 0x001C0018, 0x00140010
glabel D_80899510
 .word 0x00050008, 0x000B000E, 0x00110014, 0x0017001A
glabel D_80899520
 .word 0x0012001A, 0x0022002A, 0x0032003C, 0x00460050
glabel D_80899530
 .word 0x0030002A, 0x00240020, 0x001C0018, 0x00140010
glabel D_80899540
 .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
glabel D_80899550
 .word 0x06000D48, 0x06001430
glabel D_80899558
 .word func_80898920
.word func_80898DB4

