	.file	"baseTranslator.c"
	.text
	.globl	addOne
	.type	addOne, @function
addOne:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	subl	$1, -12(%rbp)
	cmpl	$0, -12(%rbp)
	js	.L5
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%cl
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rax, %rdx
	movzbl	%cl, %eax
	movl	%eax, (%rdx)
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	$1, %eax
	je	.L6
	movl	-12(%rbp), %edx
	movq	-8(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	addOne
	jmp	.L1
.L5:
	nop
	jmp	.L1
.L6:
	nop
.L1:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	addOne, .-addOne
	.globl	twoComlicated
	.type	twoComlicated, @function
twoComlicated:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	testl	%eax, %eax
	sete	%cl
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movzbl	%cl, %eax
	movl	%eax, (%rdx)
	addl	$1, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L9
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	addOne
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	twoComlicated, .-twoComlicated
	.globl	decToBin
	.type	decToBin, @function
decToBin:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L11
.L12:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$0, (%rax)
	addl	$1, -8(%rbp)
.L11:
	cmpl	$9, -8(%rbp)
	jle	.L12
	movl	-20(%rbp), %eax
	shrl	$31, %eax
	movl	%eax, -4(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L13
.L15:
	movl	-20(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L14
	movl	-8(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	-4(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movl	$1, (%rax)
.L14:
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -20(%rbp)
	subl	$1, -8(%rbp)
.L13:
	cmpl	$0, -8(%rbp)
	jg	.L15
	cmpl	$0, -4(%rbp)
	je	.L17
	movl	-24(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	twoComlicated
.L17:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	decToBin, .-decToBin
	.globl	decTo32
	.type	decTo32, @function
decTo32:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edi, -100(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$3037218512321069089, %rax
	movabsq	$7378413942531505724, %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movabsq	$7957135325236127847, %rax
	movabsq	$8535856707940741231, %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movb	$0, -16(%rbp)
	cmpl	$0, -100(%rbp)
	jns	.L19
	leaq	-96(%rbp), %rdx
	movl	-100(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	decToBin
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	binToDec
	movl	%eax, -100(%rbp)
.L19:
	movl	-100(%rbp), %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	sarl	$5, %eax
	cltq
	movzbl	-48(%rbp,%rax), %edx
	movq	-112(%rbp), %rax
	movb	%dl, (%rax)
	movl	-100(%rbp), %eax
	cltd
	shrl	$27, %edx
	addl	%edx, %eax
	andl	$31, %eax
	subl	%edx, %eax
	movl	%eax, %ecx
	movq	-112(%rbp), %rax
	leaq	1(%rax), %rdx
	movslq	%ecx, %rax
	movzbl	-48(%rbp,%rax), %eax
	movb	%al, (%rdx)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	decTo32, .-decTo32
	.globl	binToDec
	.type	binToDec, @function
binToDec:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -16(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L22
.L23:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movl	$9, %eax
	subl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$2, %edi
	call	int_pow
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	addl	%eax, -12(%rbp)
	addl	$1, -16(%rbp)
.L22:
	cmpl	$9, -16(%rbp)
	jle	.L23
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	binToDec, .-binToDec
	.globl	int_pow
	.type	int_pow, @function
int_pow:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	$1, -4(%rbp)
	jmp	.L26
.L28:
	movl	-24(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L27
	movl	-4(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.L27:
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	imull	%eax, %eax
	movl	%eax, -20(%rbp)
.L26:
	cmpl	$0, -24(%rbp)
	jne	.L28
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	int_pow, .-int_pow
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
