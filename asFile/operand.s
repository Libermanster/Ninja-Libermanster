	.file	"operand.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"ERROR IN LINE: %d , ILLIGAL REGISTER NUMBER"
	.align 8
.LC1:
	.string	"ERROR IN LINE: %d , ILLIGAL OPERANDS"
	.text
	.globl	createOperand
	.type	createOperand, @function
createOperand:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movl	%ecx, -108(%rbp)
	movq	%r8, -120(%rbp)
	movq	%r9, -128(%rbp)
	movl	$81, %edi
	call	malloc@PLT
	movq	%rax, -72(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	deleteSpacesAtEnd@PLT
	movq	-96(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$35, %al
	jne	.L2
	addq	$1, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	getNextWord@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	$45, %al
	jne	.L3
	addq	$1, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	negl	%eax
	movl	%eax, -80(%rbp)
	jmp	.L4
.L3:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -80(%rbp)
.L4:
	movl	$0, -48(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L11
.L2:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	isRegister@PLT
	cmpl	$1, %eax
	jne	.L6
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	getRegister@PLT
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	js	.L7
	cmpl	$7, -76(%rbp)
	jg	.L7
	movl	$3, -48(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L11
.L7:
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
.L6:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	hasDott@PLT
	cmpl	$1, %eax
	jne	.L9
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getLabelOperandName@PLT
	movl	$2, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, -40(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	getLabelOperandNumber@PLT
	movl	%eax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L11
.L9:
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	hasDott@PLT
	testl	%eax, %eax
	jne	.L8
	movl	$1, -48(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, -40(%rbp)
	movq	-120(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isExternLabel@PLT
	cmpl	$1, %eax
	jne	.L10
	movq	-128(%rbp), %rax
	movl	46464(%rax), %ebx
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	duplicateString@PLT
	movl	%ebx, %esi
	movq	%rax, %rdi
	call	createExtern@PLT
	movq	%rax, -64(%rbp)
	movq	-104(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addExternToList@PLT
.L10:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
	jmp	.L11
.L8:
	movl	$-1, -48(%rbp)
	movl	$-1, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-88(%rbp), %rcx
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, 16(%rcx)
.L11:
	movq	-88(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	createOperand, .-createOperand
	.section	.rodata
	.align 8
.LC2:
	.string	"ERROR IN LINE: %d , OPERANDS REFFERNCE MODE VALUE IS ILLEGAL"
	.align 8
.LC3:
	.string	"ERROR IN LINE: %d , OPERANDS COUNT MISMATCH"
	.text
	.globl	checkOperandsError
	.type	checkOperandsError, @function
checkOperandsError:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movl	%edi, -68(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, -72(%rbp)
	movl	%ecx, -84(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -64(%rbp)
	movl	$1, -60(%rbp)
	movl	$2, -56(%rbp)
	movl	$3, -52(%rbp)
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$-1, -40(%rbp)
	movl	$-1, -36(%rbp)
	movl	$1, -32(%rbp)
	movl	$2, -28(%rbp)
	movl	$3, -24(%rbp)
	movl	$-1, -20(%rbp)
	cmpl	$15, -68(%rbp)
	ja	.L13
	movl	-68(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L15(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L15(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L15:
	.long	.L30-.L15
	.long	.L29-.L15
	.long	.L28-.L15
	.long	.L27-.L15
	.long	.L26-.L15
	.long	.L25-.L15
	.long	.L24-.L15
	.long	.L23-.L15
	.long	.L22-.L15
	.long	.L21-.L15
	.long	.L20-.L15
	.long	.L19-.L15
	.long	.L18-.L15
	.long	.L17-.L15
	.long	.L16-.L15
	.long	.L14-.L15
	.text
.L30:
	cmpl	$2, -72(%rbp)
	jne	.L31
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L32
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L32
	movl	$1, %eax
	jmp	.L62
.L32:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L31:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L29:
	cmpl	$2, -72(%rbp)
	jne	.L34
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L35
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L35
	movl	$1, %eax
	jmp	.L62
.L35:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L34:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L28:
	cmpl	$2, -72(%rbp)
	jne	.L36
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L37
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L37
	movl	$1, %eax
	jmp	.L62
.L37:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L36:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L27:
	cmpl	$2, -72(%rbp)
	jne	.L38
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L39
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L39
	movl	$1, %eax
	jmp	.L62
.L39:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L38:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L26:
	cmpl	$1, -72(%rbp)
	jne	.L40
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L41
	movl	$1, %eax
	jmp	.L62
.L41:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L40:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L25:
	cmpl	$1, -72(%rbp)
	jne	.L42
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L43
	movl	$1, %eax
	jmp	.L62
.L43:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L42:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L24:
	cmpl	$2, -72(%rbp)
	jne	.L44
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L45
	movq	-80(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L45
	movl	$1, %eax
	jmp	.L62
.L45:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L44:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L23:
	cmpl	$1, -72(%rbp)
	jne	.L46
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L47
	movl	$1, %eax
	jmp	.L62
.L47:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L46:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L22:
	cmpl	$1, -72(%rbp)
	jne	.L48
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L49
	movl	$1, %eax
	jmp	.L62
.L49:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L48:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L21:
	cmpl	$1, -72(%rbp)
	jne	.L50
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L51
	movl	$1, %eax
	jmp	.L62
.L51:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L50:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L20:
	cmpl	$1, -72(%rbp)
	jne	.L52
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L53
	movl	$1, %eax
	jmp	.L62
.L53:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L52:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L19:
	cmpl	$1, -72(%rbp)
	jne	.L54
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L55
	movl	$1, %eax
	jmp	.L62
.L55:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L54:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L18:
	cmpl	$1, -72(%rbp)
	jne	.L56
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L57
	movl	$1, %eax
	jmp	.L62
.L57:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L56:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L17:
	cmpl	$1, -72(%rbp)
	jne	.L58
	movq	-80(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	leaq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	isIn@PLT
	cmpl	$1, %eax
	jne	.L59
	movl	$1, %eax
	jmp	.L62
.L59:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L58:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L16:
	cmpl	$0, -72(%rbp)
	jne	.L60
	movl	$1, %eax
	jmp	.L62
.L60:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L14:
	cmpl	$0, -72(%rbp)
	jne	.L61
	movl	$1, %eax
	jmp	.L62
.L61:
	movl	-84(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	jmp	.L62
.L13:
	movl	$-1, %eax
.L62:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L63
	call	__stack_chk_fail@PLT
.L63:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	checkOperandsError, .-checkOperandsError
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
