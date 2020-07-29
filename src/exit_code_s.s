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
	.file   "exit_code_s.s"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.arm
	.fpu vfp
	.type	dot, %function
dot:
.LFB2:
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
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L7:
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	str	r2, [fp, #-16]
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r1, r3, #4
	str	r1, [fp, #-20]
	ldr	r3, [r3]
	mul	r3, r3, r2
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-24]
	sub	r2, r3, #1
	str	r2, [fp, #-24]
	cmp	r3, #0
	bne	.L7
	ldr	r3, [fp, #-8]
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
	mov	r2, #5
	ldr	r1, .L11
	ldr	r0, .L11+4
	bl	dot
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L11+8
	bl	printf
	mov	r3, #0
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
.LASF2:
	.ascii	"GNU C17 8.3.0 -mfloat-abi=hard -mfpu=vfp -mtls-dial"
	.ascii	"ect=gnu -marm -march=armv6+fp -g\000"
.LASF3:
	.ascii	"/home/yyk/src/embedded_junk/src/exit_code.c\000"
	.ident	"GCC: (Raspbian 8.3.0-6+rpi1) 8.3.0"
	.section	.note.GNU-stack,"",%progbits
