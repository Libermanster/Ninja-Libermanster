	.file	"inctractionArray.c"
	.text
	.globl	createInstractionArray
	.type	createInstractionArray, @function
createInstractionArray:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$46472, %edi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, 46464(%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	createInstractionArray, .-createInstractionArray
	.globl	fillOpcodeFormat
	.type	fillOpcodeFormat, @function
fillOpcodeFormat:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	24(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	112(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	24(%rax), %rdx
	movl	-24(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	$1, (%rax)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 46464(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	fillOpcodeFormat, .-fillOpcodeFormat
	.globl	fillDataFormat
	.type	fillDataFormat, @function
fillDataFormat:
.LFB8:
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
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	$8, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	24(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	$3, (%rax)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 46464(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fillDataFormat, .-fillDataFormat
	.globl	fillRegisterFormat
	.type	fillRegisterFormat, @function
fillRegisterFormat:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	-8(%rbp), %rdx
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movl	-12(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	32(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	24(%rax), %rdx
	movl	-16(%rbp), %eax
	movl	$4, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	80(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	leaq	16(%rax), %rdx
	movl	-20(%rbp), %eax
	movl	$2, %esi
	movl	%eax, %edi
	call	decToBin@PLT
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-8(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movl	$2, (%rax)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 46464(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	fillRegisterFormat, .-fillRegisterFormat
	.globl	addInstractionToArray
	.type	addInstractionToArray, @function
addInstractionToArray:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	cmpl	$2, -32(%rbp)
	je	.L7
	cmpl	$2, -32(%rbp)
	jg	.L41
	cmpl	$0, -32(%rbp)
	je	.L9
	cmpl	$1, -32(%rbp)
	je	.L10
	jmp	.L41
.L9:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$0, (%rax)
	jmp	.L8
.L10:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L11
	cmpl	$3, %eax
	jg	.L42
	cmpl	$2, %eax
	je	.L13
	cmpl	$2, %eax
	jg	.L42
	testl	%eax, %eax
	je	.L14
	cmpl	$1, %eax
	je	.L15
	jmp	.L42
.L14:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L12
.L15:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	jmp	.L12
.L13:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L12
.L11:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillRegisterFormat
	nop
.L12:
	jmp	.L42
.L7:
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L16
	cmpl	$3, %eax
	jg	.L43
	cmpl	$2, %eax
	je	.L18
	cmpl	$2, %eax
	jg	.L43
	testl	%eax, %eax
	je	.L19
	cmpl	$1, %eax
	je	.L20
	jmp	.L43
.L19:
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L21
	cmpl	$3, %eax
	jg	.L44
	cmpl	$2, %eax
	je	.L23
	cmpl	$2, %eax
	jg	.L44
	testl	%eax, %eax
	je	.L24
	cmpl	$1, %eax
	je	.L25
	jmp	.L44
.L24:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L22
.L25:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	jmp	.L22
.L23:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L22
.L21:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fillRegisterFormat
	nop
.L22:
	jmp	.L44
.L20:
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L26
	cmpl	$3, %eax
	jg	.L45
	cmpl	$2, %eax
	je	.L28
	cmpl	$2, %eax
	jg	.L45
	testl	%eax, %eax
	je	.L29
	cmpl	$1, %eax
	je	.L30
	jmp	.L45
.L29:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L27
.L30:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	jmp	.L27
.L28:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L27
.L26:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$1, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fillRegisterFormat
	nop
.L27:
	jmp	.L45
.L18:
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L31
	cmpl	$3, %eax
	jg	.L46
	cmpl	$2, %eax
	je	.L33
	cmpl	$2, %eax
	jg	.L46
	testl	%eax, %eax
	je	.L34
	cmpl	$1, %eax
	je	.L35
	jmp	.L46
.L34:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L32
.L35:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	jmp	.L32
.L33:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L32
.L31:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$2, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fillRegisterFormat
	nop
.L32:
	jmp	.L46
.L16:
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	(%rax), %eax
	cmpl	$3, %eax
	je	.L36
	cmpl	$3, %eax
	jg	.L47
	cmpl	$2, %eax
	je	.L38
	cmpl	$2, %eax
	jg	.L47
	testl	%eax, %eax
	je	.L39
	cmpl	$1, %eax
	je	.L40
	jmp	.L47
.L39:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillRegisterFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L37
.L40:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$1, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillRegisterFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	jmp	.L37
.L38:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	call	fillRegisterFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rdx
	movl	46464(%rdx), %ebx
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, %rcx
	movq	-24(%rbp), %rsi
	movslq	%ebx, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rsi, %rax
	addq	$16, %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	addq	%rcx, %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	movl	46464(%rax), %eax
	leal	1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 46464(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	16(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	$0, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	fillDataFormat
	jmp	.L37
.L36:
	movl	-28(%rbp), %esi
	movq	-24(%rbp), %rax
	movl	$0, %r8d
	movl	$3, %ecx
	movl	$3, %edx
	movq	%rax, %rdi
	call	fillOpcodeFormat
	movq	-40(%rbp), %rax
	addq	$48, %rax
	movl	8(%rax), %edx
	movq	-40(%rbp), %rax
	addq	$24, %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rax
	movl	$0, %ecx
	movq	%rax, %rdi
	call	fillRegisterFormat
	nop
.L37:
	jmp	.L47
.L44:
	nop
	jmp	.L43
.L45:
	nop
	jmp	.L43
.L46:
	nop
	jmp	.L43
.L47:
	nop
	jmp	.L43
.L42:
	nop
	jmp	.L41
.L43:
	nop
.L8:
.L41:
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	addInstractionToArray, .-addInstractionToArray
	.globl	getIC
	.type	getIC, @function
getIC:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	46464(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	getIC, .-getIC
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
