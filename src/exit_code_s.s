	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"exit_code.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	f2
	.arch armv6
	.syntax unified
	.arm
	.fpu vfp
	.type	f2, %function
f2:
.LFB0:
	.file 1 "/home/yyk/src/embedded_junk/src/exit_code.c"
	.loc 1 6 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	.loc 1 7 11
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	.loc 1 8 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE0:
	.size	f2, .-f2
	.align	2
	.global	f1
	.syntax unified
	.arm
	.fpu vfp
	.type	f1, %function
f1:
.LFB1:
	.loc 1 11 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	.loc 1 12 9
	ldr	r0, [fp, #-8]
	bl	f2
	mov	r2, r0
	.loc 1 12 15
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	.loc 1 13 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE1:
	.size	f1, .-f1
	.align	2
	.global	dot
	.syntax unified
	.arm
	.fpu vfp
	.type	dot, %function
dot:
.LFB2:
	.loc 1 16 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	.loc 1 17 6
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 18 7
	b	.L6
.L7:
	.loc 1 19 11
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	str	r2, [fp, #-16]
	.loc 1 19 8
	ldr	r2, [r3]
	.loc 1 19 19
	ldr	r3, [fp, #-20]
	add	r1, r3, #4
	str	r1, [fp, #-20]
	.loc 1 19 16
	ldr	r3, [r3]
	.loc 1 19 14
	mul	r3, r3, r2
	.loc 1 19 5
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L6:
	.loc 1 18 9
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	.loc 1 18 7
	cmp	r3, #0
	bne	.L7
	.loc 1 20 9
	ldr	r3, [fp, #-8]
	.loc 1 21 1
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE2:
	.size	dot, .-dot
	.global	v1
	.data
	.align	2
	.type	v1, %object
	.size	v1, 20
v1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.global	v2
	.align	2
	.type	v2, %object
	.size	v2, 20
v2:
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
.LFB3:
	.loc 1 28 1
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	.loc 1 29 10
	mov	r2, #5
	ldr	r1, .L11
	ldr	r0, .L11+4
	bl	dot
	str	r0, [fp, #-8]
	.loc 1 31 2
	ldr	r1, [fp, #-8]
	ldr	r0, .L11+8
	bl	printf
	.loc 1 33 9
	mov	r3, #0
	.loc 1 34 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L12:
	.align	2
.L11:
	.word	v2
	.word	v1
	.word	.LC0
	.cfi_endproc
.LFE3:
	.size	main, .-main
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x138
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0xc
	.4byte	.LASF3
	.4byte	.LASF4
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	0x3c
	.4byte	0x35
	.uleb128 0x3
	.4byte	0x35
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.ascii	"v1\000"
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	v1
	.uleb128 0x6
	.ascii	"v2\000"
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x25
	.uleb128 0x5
	.byte	0x3
	.4byte	v2
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x1
	.byte	0x1b
	.byte	0x5
	.4byte	0x3c
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d
	.uleb128 0x8
	.ascii	"d\000"
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.ascii	"dot\000"
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x3c
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde
	.uleb128 0xa
	.ascii	"v1\000"
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xa
	.ascii	"v2\000"
	.byte	0x1
	.byte	0xf
	.byte	0x17
	.4byte	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.ascii	"n\000"
	.byte	0x1
	.byte	0xf
	.byte	0x1f
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x8
	.ascii	"s\000"
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x3c
	.uleb128 0xc
	.ascii	"f1\000"
	.byte	0x1
	.byte	0xa
	.byte	0x5
	.4byte	0x3c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x118
	.uleb128 0xa
	.ascii	"a\000"
	.byte	0x1
	.byte	0xa
	.byte	0xc
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.ascii	"b\000"
	.byte	0x1
	.byte	0xa
	.byte	0x13
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xd
	.ascii	"f2\000"
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.4byte	0x3c
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.ascii	"x\000"
	.byte	0x1
	.byte	0x5
	.byte	0xc
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"/home/yyk/src/embedded_junk/bin-linux-32/src\000"
.LASF1:
	.ascii	"main\000"
.LASF2:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g\000"
.LASF3:
	.ascii	"/home/yyk/src/embedded_junk/src/exit_code.c\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
