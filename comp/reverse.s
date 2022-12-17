	.file	"reverse.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	reverse
	.type	reverse, @function
reverse:
	srli	a6,a1,1
	li	a5,1
	bleu	a1,a5,.L1
	mv	a5,a0
	slli	a1,a1,2
	add	a0,a0,a1
	li	a4,0
.L3:
	lw	a3,0(a5)
	lw	a2,-4(a0)
	sw	a2,0(a5)
	sw	a3,-4(a0)
	addi	a4,a4,1
	addi	a5,a5,4
	addi	a0,a0,-4
	bltu	a4,a6,.L3
.L1:
	ret
	.size	reverse, .-reverse
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
