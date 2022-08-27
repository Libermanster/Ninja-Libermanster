	.file	"print.c"
	.text
	.section	.rodata
.LC0:
	.string	".ob"
.LC1:
	.string	"w"
.LC2:
	.string	"%c%c %c%c\n"
	.text
	.globl	printObject
	.type	printObject, @function
printObject:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	addq	$-128, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%rdx, -120(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -96(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	movq	-104(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringConnect@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -72(%rbp)
	movq	-120(%rbp), %rax
	movl	46464(%rax), %eax
	leaq	-10(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decTo32@PLT
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decTo32@PLT
	movzbl	-11(%rbp), %eax
	movsbl	%al, %edi
	movzbl	-12(%rbp), %eax
	movsbl	%al, %esi
	movzbl	-9(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-10(%rbp), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -96(%rbp)
	jmp	.L2
.L27:
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	-120(%rbp), %rcx
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L3
	cmpl	$3, %eax
	jg	.L26
	cmpl	$1, %eax
	je	.L5
	cmpl	$2, %eax
	je	.L6
	jmp	.L26
.L5:
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L7
.L8:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	16(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L7:
	cmpl	$3, -92(%rbp)
	jle	.L8
	movl	$0, -88(%rbp)
	jmp	.L9
.L10:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movl	24(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L9:
	cmpl	$5, -92(%rbp)
	jle	.L10
	movl	$0, -88(%rbp)
	jmp	.L11
.L12:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$20, %rax
	movl	16(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L11:
	cmpl	$7, -92(%rbp)
	jle	.L12
	movl	$0, -88(%rbp)
	jmp	.L13
.L14:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$28, %rax
	movl	24(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L13:
	cmpl	$9, -92(%rbp)
	jle	.L14
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	binToDec@PLT
	movl	%eax, -84(%rbp)
	movl	-96(%rbp), %eax
	leal	100(%rax), %edx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	decTo32@PLT
	leaq	-10(%rbp), %rdx
	movl	-84(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decTo32@PLT
	movzbl	-9(%rbp), %eax
	movsbl	%al, %edi
	movzbl	-10(%rbp), %eax
	movsbl	%al, %esi
	movzbl	-11(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-12(%rbp), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L26
.L6:
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L16
.L17:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	16(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L16:
	cmpl	$3, -92(%rbp)
	jle	.L17
	movl	$0, -88(%rbp)
	jmp	.L18
.L19:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movl	24(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L18:
	cmpl	$7, -92(%rbp)
	jle	.L19
	movl	$0, -88(%rbp)
	jmp	.L20
.L21:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$20, %rax
	movl	16(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L20:
	cmpl	$9, -92(%rbp)
	jle	.L21
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	binToDec@PLT
	movl	%eax, -84(%rbp)
	movl	-96(%rbp), %eax
	leal	100(%rax), %edx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	decTo32@PLT
	leaq	-10(%rbp), %rdx
	movl	-84(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decTo32@PLT
	movzbl	-9(%rbp), %eax
	movsbl	%al, %edi
	movzbl	-10(%rbp), %eax
	movsbl	%al, %esi
	movzbl	-11(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-12(%rbp), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	jmp	.L26
.L3:
	movl	$0, -92(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L22
.L23:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	movl	16(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L22:
	cmpl	$7, -92(%rbp)
	jle	.L23
	movl	$0, -88(%rbp)
	jmp	.L24
.L25:
	movq	-120(%rbp), %rcx
	movl	-88(%rbp), %eax
	movslq	%eax, %rsi
	movl	-96(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rsi, %rax
	addq	$8, %rax
	movl	24(%rcx,%rax,4), %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -64(%rbp,%rax,4)
	addl	$1, -92(%rbp)
	addl	$1, -88(%rbp)
.L24:
	cmpl	$9, -92(%rbp)
	jle	.L25
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	binToDec@PLT
	movl	%eax, -84(%rbp)
	movl	-96(%rbp), %eax
	leal	100(%rax), %edx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	decTo32@PLT
	leaq	-10(%rbp), %rdx
	movl	-84(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decTo32@PLT
	movzbl	-9(%rbp), %eax
	movsbl	%al, %edi
	movzbl	-10(%rbp), %eax
	movsbl	%al, %esi
	movzbl	-11(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-12(%rbp), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	nop
.L26:
	addl	$1, -96(%rbp)
.L2:
	movq	-120(%rbp), %rax
	movl	46464(%rax), %eax
	cmpl	%eax, -96(%rbp)
	jl	.L27
	movl	$0, -92(%rbp)
	jmp	.L28
.L29:
	movl	-96(%rbp), %eax
	leal	100(%rax), %edx
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	%edx, %edi
	call	decTo32@PLT
	movq	-112(%rbp), %rax
	movl	-92(%rbp), %edx
	movslq	%edx, %rdx
	movl	4(%rax,%rdx,4), %eax
	leaq	-10(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	decTo32@PLT
	movzbl	-9(%rbp), %eax
	movsbl	%al, %edi
	movzbl	-10(%rbp), %eax
	movsbl	%al, %esi
	movzbl	-11(%rbp), %eax
	movsbl	%al, %ecx
	movzbl	-12(%rbp), %eax
	movsbl	%al, %edx
	movq	-72(%rbp), %rax
	movl	%edi, %r9d
	movl	%esi, %r8d
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	addl	$1, -92(%rbp)
	addl	$1, -96(%rbp)
.L28:
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -92(%rbp)
	jl	.L29
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L30
	call	__stack_chk_fail@PLT
.L30:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	printObject, .-printObject
	.section	.rodata
.LC3:
	.string	".ent"
.LC4:
	.string	"name: %s  ,  address: %d\n"
	.text
	.globl	printEntry
	.type	printEntry, @function
printEntry:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringConnect@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L32
.L34:
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	$1, %eax
	jne	.L33
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
.L33:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.L32:
	cmpq	$0, -24(%rbp)
	jne	.L34
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	printEntry, .-printEntry
	.section	.rodata
.LC5:
	.string	".ext"
	.text
	.globl	printExtern
	.type	printExtern, @function
printExtern:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringConnect@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.L36
.L37:
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	leal	100(%rax), %ecx
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
.L36:
	cmpq	$0, -24(%rbp)
	jne	.L37
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	printExtern, .-printExtern
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
