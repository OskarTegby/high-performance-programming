	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4562254508917369340     ## double 0.001
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$10000, -20(%rbp)       ## imm = 0x2710
	movl	$80000, %edi            ## imm = 0x13880
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10000, -36(%rbp)       ## imm = 0x2710
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	callq	_rand
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cltd
	movl	$1000, %ecx             ## imm = 0x3E8
	idivl	%ecx
	cvtsi2sd	%edx, %xmm1
	mulsd	%xmm0, %xmm1
	movq	-32(%rbp), %rsi
	movslq	-36(%rbp), %rdi
	movsd	%xmm1, (%rsi,%rdi,8)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$5000, -44(%rbp)        ## imm = 0x1388
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movl	$0, -40(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rdi
	movl	$10000, %esi            ## imm = 0x2710
	callq	_ffff
	movsd	%xmm0, -56(%rbp)
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_5
LBB0_8:
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	-32(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_free
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"result = %f\n"

.subsections_via_symbols
