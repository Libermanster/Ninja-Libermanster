	.file	"first_run.c"
	.text
	.section	.rodata
.LC0:
	.string	".entry"
.LC1:
	.string	".extern"
	.align 8
.LC2:
	.string	"ERROR IN LINE: %d , LABEL IS ALREADY DEFINED\n"
.LC3:
	.string	".data"
.LC4:
	.string	","
.LC5:
	.string	".string"
.LC6:
	.string	".struct"
	.align 8
.LC7:
	.string	"error first_run-> startsWithWord .struct -> isLastWord"
	.align 8
.LC8:
	.string	"error first_run-> startsWithWord .struct"
	.align 8
.LC9:
	.string	"ERROR IN LINE: %d , UNKNOWN OPCODE\n"
	.text
	.globl	first_run_algorithm
	.type	first_run_algorithm, @function
first_run_algorithm:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$264, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -184(%rbp)
	movq	%rsi, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movq	%rcx, -208(%rbp)
	movq	%r8, -216(%rbp)
	movq	%r9, -224(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	24(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$81, %edi
	call	malloc@PLT
	movq	%rax, -160(%rbp)
	movl	$0, -176(%rbp)
	jmp	.L2
.L28:
	movl	$0, -172(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	isEmpty@PLT
	testl	%eax, %eax
	jne	.L2
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	isComment@PLT
	testl	%eax, %eax
	je	.L4
	jmp	.L2
.L4:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	startsWithWord@PLT
	testl	%eax, %eax
	je	.L5
	addq	$6, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	getNextWord@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	createSymbol@PLT
	movq	%rax, -152(%rbp)
	movq	-208(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addSymbolToList@PLT
	movq	-232(%rbp), %rax
	movl	$1, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L2
.L5:
	movq	-160(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	startsWithWord@PLT
	testl	%eax, %eax
	je	.L6
	addq	$7, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	getNextWord@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movl	$2, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	createSymbol@PLT
	movq	%rax, -152(%rbp)
	movq	-208(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addSymbolToList@PLT
	movq	-240(%rbp), %rax
	movl	$1, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L2
.L6:
	addl	$1, -176(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	startsWithLabel@PLT
	testl	%eax, %eax
	je	.L7
	movl	$80, %edi
	call	malloc@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getLabelName@PLT
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isLabelExsits@PLT
	cmpl	$1, %eax
	jne	.L8
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	isEntryLabel@PLT
	cmpl	$1, %eax
	jne	.L9
	movl	$1, -172(%rbp)
	movq	-208(%rbp), %rdx
	movq	-144(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getLabelByName@PLT
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_symbol_name@PLT
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	jmp	.L7
.L9:
	movl	-176(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-224(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L2
.L8:
	movl	$1, -172(%rbp)
	movq	-144(%rbp), %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	createSymbol@PLT
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_symbol_name@PLT
	movq	%rax, %rdi
	call	strlen@PLT
	addq	$1, %rax
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
.L7:
	movq	-160(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	startsWithWord@PLT
	testl	%eax, %eax
	je	.L10
	cmpl	$1, -172(%rbp)
	jne	.L11
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	getDC@PLT
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	setLabelAddress@PLT
	movq	-152(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	setLabelType@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_symbol_name@PLT
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isEntryLabel@PLT
	testl	%eax, %eax
	jne	.L11
	movq	-208(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addSymbolToList@PLT
.L11:
	addq	$5, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -104(%rbp)
	movq	-200(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addInt@PLT
	jmp	.L12
.L13:
	movq	-200(%rbp), %rdx
	movq	-104(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addInt@PLT
.L12:
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.L13
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	jmp	.L2
.L10:
	movq	-160(%rbp), %rax
	leaq	.LC5(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	startsWithWord@PLT
	testl	%eax, %eax
	je	.L14
	cmpl	$1, -172(%rbp)
	jne	.L15
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	getDC@PLT
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	setLabelAddress@PLT
	movq	-152(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	setLabelType@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_symbol_name@PLT
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isEntryLabel@PLT
	testl	%eax, %eax
	jne	.L15
	movq	-208(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addSymbolToList@PLT
.L15:
	addq	$7, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	addq	$1, -160(%rbp)
	movq	-160(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -136(%rbp)
	cmpq	$0, -136(%rbp)
	je	.L14
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	isLastWord@PLT
	testl	%eax, %eax
	je	.L14
	movq	-136(%rbp), %rax
	movb	$0, (%rax)
	movq	-200(%rbp), %rdx
	movq	-160(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addString@PLT
	jmp	.L2
.L14:
	movq	-160(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	startsWithWord@PLT
	testl	%eax, %eax
	je	.L16
	cmpl	$1, -172(%rbp)
	jne	.L17
	movq	-200(%rbp), %rax
	movq	%rax, %rdi
	call	getDC@PLT
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	setLabelAddress@PLT
	movq	-152(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	setLabelType@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_symbol_name@PLT
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isEntryLabel@PLT
	testl	%eax, %eax
	jne	.L17
	movq	-208(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addSymbolToList@PLT
.L17:
	addq	$7, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -120(%rbp)
	movq	-200(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addInt@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -120(%rbp)
	addq	$1, -120(%rbp)
	movq	-120(%rbp), %rax
	movl	$34, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -112(%rbp)
	cmpq	$0, -112(%rbp)
	je	.L18
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	isLastWord@PLT
	testl	%eax, %eax
	je	.L19
	movq	-112(%rbp), %rax
	movb	$0, (%rax)
	movq	-200(%rbp), %rdx
	movq	-120(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addString@PLT
	jmp	.L2
.L19:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L18:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L2
.L16:
	cmpl	$1, -172(%rbp)
	jne	.L20
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	getIC@PLT
	movl	%eax, %edx
	movq	-152(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	setLabelAddress@PLT
	movq	-152(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	setLabelType@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rdi
	call	get_symbol_name@PLT
	movq	%rax, %rdx
	movq	-208(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	isEntryLabel@PLT
	testl	%eax, %eax
	jne	.L20
	movq	-208(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addSymbolToList@PLT
.L20:
	movl	$0, -168(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	cltq
	addq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	getNextWord@PLT
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	addq	%rax, -160(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	getOpcode@PLT
	movl	%eax, -164(%rbp)
	cmpl	$-1, -164(%rbp)
	jne	.L21
	movl	-176(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-224(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L2
.L21:
	movq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	isEmpty@PLT
	testl	%eax, %eax
	je	.L23
	movl	-168(%rbp), %ecx
	leaq	-96(%rbp), %rdx
	movl	-164(%rbp), %esi
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	addInstractionToArray@PLT
	jmp	.L2
.L23:
	movq	-160(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L24
	addl	$1, -168(%rbp)
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-80(%rax), %rbx
	leaq	-272(%rbp), %rax
	movq	-192(%rbp), %r8
	movq	-208(%rbp), %rdi
	movl	-176(%rbp), %ecx
	movq	-216(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	createOperand@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rbx)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -128(%rbp)
	cmpq	$0, -128(%rbp)
	je	.L25
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	movslq	%eax, %rbx
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	cmpq	%rax, %rbx
	je	.L25
	addl	$1, -168(%rbp)
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-80(%rax), %rbx
	leaq	-272(%rbp), %rax
	movq	-192(%rbp), %r8
	movq	-208(%rbp), %rdi
	movl	-176(%rbp), %ecx
	movq	-216(%rbp), %rdx
	movq	-128(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	createOperand@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rbx)
.L25:
	movl	-176(%rbp), %ecx
	movl	-168(%rbp), %edx
	leaq	-96(%rbp), %rsi
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	checkOperandsError@PLT
	testl	%eax, %eax
	jne	.L26
	movq	-224(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L2
.L26:
	movl	-168(%rbp), %ecx
	leaq	-96(%rbp), %rdx
	movl	-164(%rbp), %esi
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	addInstractionToArray@PLT
	jmp	.L2
.L24:
	addl	$1, -168(%rbp)
	movl	-168(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-16(%rax), %rax
	addq	%rbp, %rax
	leaq	-80(%rax), %rbx
	leaq	-272(%rbp), %rax
	movq	-192(%rbp), %r8
	movq	-208(%rbp), %rdi
	movl	-176(%rbp), %ecx
	movq	-216(%rbp), %rdx
	movq	-160(%rbp), %rsi
	movq	%r8, %r9
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	createOperand@PLT
	movq	-272(%rbp), %rax
	movq	-264(%rbp), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movq	-256(%rbp), %rax
	movq	%rax, 16(%rbx)
	movl	-176(%rbp), %ecx
	movl	-168(%rbp), %edx
	leaq	-96(%rbp), %rsi
	movl	-164(%rbp), %eax
	movl	%eax, %edi
	call	checkOperandsError@PLT
	testl	%eax, %eax
	jne	.L27
	movq	-224(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L2
.L27:
	movl	-168(%rbp), %ecx
	leaq	-96(%rbp), %rdx
	movl	-164(%rbp), %esi
	movq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	addInstractionToArray@PLT
	nop
.L2:
	movq	-184(%rbp), %rdx
	movq	-160(%rbp), %rax
	movl	$81, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L28
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	first_run_algorithm, .-first_run_algorithm
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
