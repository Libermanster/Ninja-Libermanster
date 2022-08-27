	.file	"opcode.c"
	.text
	.section	.rodata
.LC0:
	.string	"mov"
.LC1:
	.string	"cmp"
.LC2:
	.string	"add"
.LC3:
	.string	"sub"
.LC4:
	.string	"not"
.LC5:
	.string	"clr"
.LC6:
	.string	"lea"
.LC7:
	.string	"inc"
.LC8:
	.string	"dec"
.LC9:
	.string	"jmp"
.LC10:
	.string	"bne"
.LC11:
	.string	"get"
.LC12:
	.string	"prn"
.LC13:
	.string	"jsr"
.LC14:
	.string	"rts"
.LC15:
	.string	"hlt"
	.text
	.globl	getOpcode
	.type	getOpcode, @function
getOpcode:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$176, %rsp
	movq	%rdi, -168(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -136(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -128(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -120(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -112(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -104(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -96(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, -88(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, -80(%rbp)
	leaq	.LC9(%rip), %rax
	movq	%rax, -72(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC12(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC13(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -24(%rbp)
	movl	$0, -148(%rbp)
	jmp	.L2
.L5:
	movl	-148(%rbp), %eax
	cltq
	movq	-144(%rbp,%rax,8), %rdx
	movq	-168(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L3
	movl	-148(%rbp), %eax
	jmp	.L6
.L3:
	addl	$1, -148(%rbp)
.L2:
	cmpl	$15, -148(%rbp)
	jle	.L5
	movl	$-1, %eax
.L6:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	getOpcode, .-getOpcode
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
