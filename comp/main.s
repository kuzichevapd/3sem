	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	sd	s1,40(sp)
	sd	s2,32(sp)
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	ld	a4,0(a5)
	sd	a4,8(sp)
	ld	a4,8(a5)
	sd	a4,16(sp)
	lw	a5,16(a5)
	sw	a5,24(sp)
	li	a1,5
	addi	a0,sp,8
	call	reverse
	addi	s0,sp,8
	addi	s2,sp,28
	lui	s1,%hi(.LC1)
.L2:
	lw	a1,0(s0)
	addi	a0,s1,%lo(.LC1)
	call	printf
	addi	s0,s0,4
	bne	s0,s2,.L2
	li	a0,0
	ld	ra,56(sp)
	ld	s0,48(sp)
	ld	s1,40(sp)
	ld	s2,32(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"%d"
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
