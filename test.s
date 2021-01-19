	.file	"test.c"
	.text
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leaq	a(%rip), %r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	leaq	b(%rip), %r15
	movq	%r12, %rax
	leaq	c(%rip), %r14
	leaq	r(%rip), %r13
	shrq	$3, %rax
	negq	%rax
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movl	%eax, %ebx
	movl	$10000, %eax
	andl	$3, %ebx
	subl	%ebx, %eax
	movl	%ebx, %ecx
	salq	$3, %rcx
	movl	%eax, %r9d
	movl	%eax, -60(%rbp)
	andl	$-4, %eax
	movl	%ebx, -56(%rbp)
	leaq	(%r12,%rcx), %r8
	leaq	(%r15,%rcx), %rdi
	leaq	(%r14,%rcx), %rsi
	shrl	$2, %r9d
	addq	%r13, %rcx
	movl	%eax, %ebx
	movl	$100000, -52(%rbp)
	.p2align 4,,10
	.p2align 3
.L2:
	movl	-56(%rbp), %eax
	testl	%eax, %eax
	je	.L9
	vmovsd	(%r12), %xmm0
	cmpl	$1, %eax
	vaddsd	(%r15), %xmm0, %xmm0
	vmulsd	(%r14), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13)
	je	.L10
	vmovsd	8+a(%rip), %xmm0
	cmpl	$3, %eax
	vaddsd	8+b(%rip), %xmm0, %xmm0
	vmulsd	8+c(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 8+r(%rip)
	jne	.L11
	vmovsd	16+b(%rip), %xmm0
	movl	$9997, %r11d
	movl	$3, %r10d
	vaddsd	16+a(%rip), %xmm0, %xmm0
	vmulsd	16+c(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, 16+r(%rip)
.L7:
	xorl	%eax, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L4:
	addl	$1, %edx
	vmovupd	(%rdi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rdi,%rax), %ymm0, %ymm0
	vaddpd	(%r8,%rax), %ymm0, %ymm1
	vmovupd	(%rsi,%rax), %xmm0
	vinsertf128	$0x1, 16(%rsi,%rax), %ymm0, %ymm0
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovups	%xmm0, (%rcx,%rax)
	vextractf128	$0x1, %ymm0, 16(%rcx,%rax)
	addq	$32, %rax
	cmpl	%r9d, %edx
	jb	.L4
	addl	%ebx, %r10d
	subl	%ebx, %r11d
	cmpl	%ebx, -60(%rbp)
	je	.L3
	movslq	%r10d, %rax
	cmpl	$1, %r11d
	vmovsd	(%r12,%rax,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%r14,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	leal	1(%r10), %eax
	je	.L3
	cltq
	addl	$2, %r10d
	cmpl	$2, %r11d
	vmovsd	(%r12,%rax,8), %xmm0
	vaddsd	(%r15,%rax,8), %xmm0, %xmm0
	vmulsd	(%r14,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%rax,8)
	je	.L3
	movslq	%r10d, %r10
	vmovsd	(%r12,%r10,8), %xmm0
	vaddsd	(%r15,%r10,8), %xmm0, %xmm0
	vmulsd	(%r14,%r10,8), %xmm0, %xmm0
	vmovsd	%xmm0, 0(%r13,%r10,8)
.L3:
	subl	$1, -52(%rbp)
	jne	.L2
	vzeroupper
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	xorl	%eax, %eax
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L10:
	.cfi_restore_state
	movl	$9999, %r11d
	movl	$1, %r10d
	jmp	.L7
.L9:
	movl	$10000, %r11d
	xorl	%r10d, %r10d
	jmp	.L7
.L11:
	movl	$9998, %r11d
	movl	$2, %r10d
	jmp	.L7
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.comm	r,80000,16
	.comm	c,80000,16
	.comm	b,80000,16
	.comm	a,80000,16
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
