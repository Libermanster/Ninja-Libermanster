	.file	"pre_asmbler.c"
	.text
	.section	.rodata
.LC0:
	.string	".am"
.LC1:
	.string	"w"
.LC2:
	.string	"endm"
.LC3:
	.string	"macro"
	.text
	.globl	preasmbler_algorithm
	.type	preasmbler_algorithm, @function
preasmbler_algorithm:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movl	$0, %eax
	call	createMacroList@PLT
	movq	%rax, -56(%rbp)
	movl	$81, %edi
	call	malloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -76(%rbp)
	movq	-96(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	stringConnect@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	jmp	.L2
.L11:
	movl	$0, -68(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	countSpaces@PLT
	movl	%eax, -68(%rbp)
	cmpl	$0, -76(%rbp)
	je	.L3
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movl	$4, %edx
	leaq	.LC2(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	isLastWord@PLT
	testl	%eax, %eax
	je	.L4
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addMacroToList@PLT
	movl	$0, -76(%rbp)
	jmp	.L2
.L4:
	movq	-48(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	addLineToMacro@PLT
	jmp	.L2
.L3:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	startsWithWord@PLT
	testl	%eax, %eax
	je	.L6
	addl	$6, -68(%rbp)
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	deleteSpacesAtEnd@PLT
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	createMacro@PLT
	movq	%rax, -64(%rbp)
	movl	$1, -76(%rbp)
	jmp	.L2
.L6:
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	isLastWord@PLT
	testl	%eax, %eax
	je	.L7
	movl	-68(%rbp), %eax
	movslq	%eax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	duplicateString@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	deleteSpacesAtEnd@PLT
	movq	-24(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	getMacroFromList@PLT
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	cmpq	$0, -16(%rbp)
	je	.L8
	movl	$0, -72(%rbp)
	jmp	.L9
.L10:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L9:
	movl	-72(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -72(%rbp)
	movq	-16(%rbp), %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	getLineFromMacro@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L10
	jmp	.L2
.L8:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
	jmp	.L2
.L7:
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rsi
	movq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	call	fwrite@PLT
.L2:
	movq	-88(%rbp), %rdx
	movq	-48(%rbp), %rax
	movl	$80, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L11
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	freeMacroList@PLT
	movq	-32(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	preasmbler_algorithm, .-preasmbler_algorithm
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
