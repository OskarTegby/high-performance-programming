	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function ffff
LCPI0_0:
	.quad	4599075939470750515     ## double 0.29999999999999999
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_ffff
	.p2align	4, 0x90
_ffff:                                  ## @ffff
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	$0, -16(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -28(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$0, %eax
	movl	%eax, -28(%rbp)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	addsd	-24(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_1
LBB0_8:
	movsd	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
