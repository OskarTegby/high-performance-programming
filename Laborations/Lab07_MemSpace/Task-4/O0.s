	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4607182418800017408     ## double 1
LCPI0_1:
	.quad	4696837146684686336     ## double 1.0E+6
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
	subq	$128, %rsp
	movl	$0, -4(%rbp)
	movl	$9, %edi
	callq	_get_m
	movsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	movsd	%xmm1, -48(%rbp)
	movaps	%xmm0, %xmm1
	divsd	-48(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movl	L___const.main.filename(%rip), %eax
	movl	%eax, -67(%rbp)
	movw	L___const.main.filename+4(%rip), %cx
	movw	%cx, -63(%rbp)
	movb	L___const.main.filename+6(%rip), %dl
	movb	%dl, -61(%rbp)
	movl	-60(%rbp), %edi
	callq	_alloc_matrix
	movq	%rax, -40(%rbp)
	movl	-60(%rbp), %edi
	callq	_alloc_matrix
	movq	%rax, -24(%rbp)
	movl	-60(%rbp), %edi
	callq	_alloc_matrix
	leaq	-67(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %edx
	callq	_read_data
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movl	%eax, -108(%rbp)        ## 4-byte Spill
	callq	_fill_f
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	_L2_norm
	xorl	%eax, %eax
	movl	%eax, %esi
	movsd	%xmm0, -16(%rbp)
	leaq	-88(%rbp), %rdi
	callq	_gettimeofday
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-56(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-16(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movl	$9, %edi
	movl	%eax, -112(%rbp)        ## 4-byte Spill
	callq	_multigrid_vcycle
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	-104(%rbp), %rdi
	callq	_gettimeofday
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-60(%rbp), %edx
	movl	%eax, -116(%rbp)        ## 4-byte Spill
	callq	_verify
	cmpl	$0, %eax
	je	LBB0_2
## %bb.1:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	jmp	LBB0_3
LBB0_2:
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB0_3:
	movsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtsi2sdq	-104(%rbp), %xmm1
	cvtsi2sdl	-96(%rbp), %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	cvtsi2sdq	-88(%rbp), %xmm2
	cvtsi2sdl	-80(%rbp), %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm3, %xmm2
	subsd	%xmm2, %xmm1
	leaq	L_.str.2(%rip), %rdi
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	_printf
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	%eax, -120(%rbp)        ## 4-byte Spill
	callq	_dealloc_matrix
	movq	-24(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	_dealloc_matrix
	movq	-32(%rbp), %rdi
	movl	-60(%rbp), %esi
	callq	_dealloc_matrix
	xorl	%eax, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_m                  ## -- Begin function get_m
	.p2align	4, 0x90
_get_m:                                 ## @get_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	$1, -12(%rbp)
	movl	$1, -8(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB1_4
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -12(%rbp)
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB1_1
LBB1_4:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_alloc_matrix           ## -- Begin function alloc_matrix
	.p2align	4, 0x90
_alloc_matrix:                          ## @alloc_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	_malloc
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB2_4
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movslq	-4(%rbp), %rdi
	movl	$8, %esi
	callq	_calloc
	movq	-16(%rbp), %rcx
	movslq	-20(%rbp), %rdx
	movq	%rax, (%rcx,%rdx,8)
## %bb.3:                               ##   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB2_1
LBB2_4:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_read_data              ## -- Begin function read_data
	.p2align	4, 0x90
_read_data:                             ## @read_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	-24(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_fopen
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB3_2
## %bb.1:
	movl	$-1, -4(%rbp)
	jmp	LBB3_11
LBB3_2:
	movl	$0, -40(%rbp)
	movl	$0, -32(%rbp)
LBB3_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_5 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB3_10
## %bb.4:                               ##   in Loop: Header=BB3_3 Depth=1
	movl	$0, -36(%rbp)
LBB3_5:                                 ##   Parent Loop BB3_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB3_8
## %bb.6:                               ##   in Loop: Header=BB3_5 Depth=2
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	leaq	L_.str.4(%rip), %rsi
	movq	%rax, %rdx
	movb	$0, %al
	callq	_fscanf
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
## %bb.7:                               ##   in Loop: Header=BB3_5 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB3_5
LBB3_8:                                 ##   in Loop: Header=BB3_3 Depth=1
	jmp	LBB3_9
LBB3_9:                                 ##   in Loop: Header=BB3_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB3_3
LBB3_10:
	movl	$1, -4(%rbp)
LBB3_11:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function fill_f
LCPI4_0:
	.quad	4614256656552045848     ## double 3.1415926535897931
LCPI4_1:
	.quad	4611686018427387904     ## double 2
LCPI4_2:
	.quad	4613937818241073152     ## double 3
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fill_f
	.p2align	4, 0x90
_fill_f:                                ## @fill_f
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	leaq	L_.str.5(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$0, -28(%rbp)
LBB4_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB4_8
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	$0, -32(%rbp)
LBB4_3:                                 ##   Parent Loop BB4_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB4_6
## %bb.4:                               ##   in Loop: Header=BB4_3 Depth=2
	movsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	LCPI4_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	LCPI4_2(%rip), %xmm2    ## xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        ## xmm3 = mem[0],zero
	mulsd	-24(%rbp), %xmm3
	cvtsi2sdl	-32(%rbp), %xmm4
	movaps	%xmm0, %xmm5
	mulsd	%xmm4, %xmm5
	mulsd	-24(%rbp), %xmm5
	movsd	%xmm0, -40(%rbp)        ## 8-byte Spill
	movaps	%xmm5, %xmm0
	movsd	%xmm1, -48(%rbp)        ## 8-byte Spill
	movsd	%xmm2, -56(%rbp)        ## 8-byte Spill
	movsd	%xmm3, -64(%rbp)        ## 8-byte Spill
	callq	_sin
	movsd	-64(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3        ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	cvtsi2sdl	-32(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	mulsd	-24(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -72(%rbp)        ## 8-byte Spill
	callq	_sin
	movsd	-72(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	cvtsi2sdl	-28(%rbp), %xmm0
	movsd	-40(%rbp), %xmm2        ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	-24(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -80(%rbp)        ## 8-byte Spill
	callq	_sin
	movsd	-80(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm2
	movsd	-40(%rbp), %xmm3        ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm2
	cvtsi2sdl	-28(%rbp), %xmm4
	mulsd	%xmm4, %xmm2
	mulsd	-24(%rbp), %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -88(%rbp)        ## 8-byte Spill
	callq	_sin
	movsd	-88(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movsd	%xmm1, (%rax,%rcx,8)
## %bb.5:                               ##   in Loop: Header=BB4_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB4_3
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_7
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB4_1
LBB4_8:
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_L2_norm                ## -- Begin function L2_norm
	.p2align	4, 0x90
_L2_norm:                               ## @L2_norm
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
	movsd	%xmm0, -40(%rbp)
	movl	$0, -16(%rbp)
LBB5_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB5_8
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	$0, -20(%rbp)
LBB5_3:                                 ##   Parent Loop BB5_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB5_6
## %bb.4:                               ##   in Loop: Header=BB5_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	addsd	-40(%rbp), %xmm0
	movsd	%xmm0, -40(%rbp)
## %bb.5:                               ##   in Loop: Header=BB5_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB5_3
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	jmp	LBB5_7
LBB5_7:                                 ##   in Loop: Header=BB5_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB5_1
LBB5_8:
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function multigrid_vcycle
LCPI6_0:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_multigrid_vcycle
	.p2align	4, 0x90
_multigrid_vcycle:                      ## @multigrid_vcycle
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -40(%rbp)
	movl	-4(%rbp), %edi
	callq	_get_m
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	_get_m
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	cmpl	$1, -4(%rbp)
	jne	LBB6_2
## %bb.1:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	mulsd	-32(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	mulsd	8(%rax), %xmm0
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movsd	%xmm0, 8(%rax)
	jmp	LBB6_6
LBB6_2:
	movl	-44(%rbp), %edi
	callq	_alloc_matrix
	movq	%rax, -64(%rbp)
	movl	-48(%rbp), %edi
	callq	_alloc_matrix
	movq	%rax, -72(%rbp)
	movl	-44(%rbp), %edi
	callq	_alloc_matrix
	movq	%rax, -80(%rbp)
	movl	-48(%rbp), %edi
	callq	_alloc_matrix
	movq	%rax, -88(%rbp)
	movsd	-40(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
LBB6_3:                                 ## =>This Inner Loop Header: Depth=1
	movsd	LCPI6_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        ## xmm1 = mem[0],zero
	divsd	-40(%rbp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB6_5
## %bb.4:                               ##   in Loop: Header=BB6_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	_GS_update
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-44(%rbp), %ecx
	callq	_L_def
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	_res_R
	movl	-4(%rbp), %eax
	subl	$1, %eax
	movq	-88(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        ## xmm1 = mem[0],zero
	movl	%eax, %edi
	callq	_multigrid_vcycle
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	callq	_prol_P
	movq	-16(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	_u_update
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-44(%rbp), %edx
	callq	_GS_update
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	_L2_norm
	movsd	%xmm0, -56(%rbp)
	jmp	LBB6_3
LBB6_5:
	movq	-64(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	_dealloc_matrix
	movq	-72(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	_dealloc_matrix
	movq	-80(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	_dealloc_matrix
	movq	-88(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	_dealloc_matrix
LBB6_6:
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function verify
LCPI7_0:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI7_1:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_verify
	.p2align	4, 0x90
_verify:                                ## @verify
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
LBB7_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB7_10
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movl	$0, -36(%rbp)
LBB7_3:                                 ##   Parent Loop BB7_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB7_8
## %bb.4:                               ##   in Loop: Header=BB7_3 Depth=2
	movsd	LCPI7_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	subsd	(%rax,%rcx,8), %xmm1
	movaps	LCPI7_1(%rip), %xmm2    ## xmm2 = [NaN,NaN]
	pand	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_6
## %bb.5:
	movl	$0, -4(%rbp)
	jmp	LBB7_11
LBB7_6:                                 ##   in Loop: Header=BB7_3 Depth=2
	jmp	LBB7_7
LBB7_7:                                 ##   in Loop: Header=BB7_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB7_3
LBB7_8:                                 ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_9
LBB7_9:                                 ##   in Loop: Header=BB7_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB7_1
LBB7_10:
	movl	$1, -4(%rbp)
LBB7_11:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dealloc_matrix         ## -- Begin function dealloc_matrix
	.p2align	4, 0x90
_dealloc_matrix:                        ## @dealloc_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB8_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB8_4
## %bb.2:                               ##   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	_free
## %bb.3:                               ##   in Loop: Header=BB8_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB8_1
LBB8_4:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	_free
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function GS_update
LCPI9_0:
	.quad	4598175219545276416     ## double 0.25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_GS_update
	.p2align	4, 0x90
_GS_update:                             ## @GS_update
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -24(%rbp)
LBB9_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movl	-24(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB9_8
## %bb.2:                               ##   in Loop: Header=BB9_1 Depth=1
	movl	$1, -28(%rbp)
LBB9_3:                                 ##   Parent Loop BB9_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB9_6
## %bb.4:                               ##   in Loop: Header=BB9_3 Depth=2
	movsd	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-28(%rbp), %rdx
	movsd	(%rax,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-28(%rbp), %rdx
	addsd	(%rax,%rdx,8), %xmm1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	addsd	(%rax,%rdx,8), %xmm1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	addsd	(%rax,%rdx,8), %xmm1
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-28(%rbp), %rdx
	addsd	(%rax,%rdx,8), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-28(%rbp), %rdx
	movsd	%xmm0, (%rax,%rdx,8)
## %bb.5:                               ##   in Loop: Header=BB9_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB9_3
LBB9_6:                                 ##   in Loop: Header=BB9_1 Depth=1
	jmp	LBB9_7
LBB9_7:                                 ##   in Loop: Header=BB9_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB9_1
LBB9_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function L_def
LCPI10_0:
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_L_def
	.p2align	4, 0x90
_L_def:                                 ## @L_def
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	$1, -32(%rbp)
LBB10_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_3 Depth 2
	movl	-32(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB10_8
## %bb.2:                               ##   in Loop: Header=BB10_1 Depth=1
	movl	$1, -36(%rbp)
LBB10_3:                                ##   Parent Loop BB10_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB10_6
## %bb.4:                               ##   in Loop: Header=BB10_3 Depth=2
	movsd	LCPI10_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-36(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-36(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-36(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.5:                               ##   in Loop: Header=BB10_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB10_3
LBB10_6:                                ##   in Loop: Header=BB10_1 Depth=1
	jmp	LBB10_7
LBB10_7:                                ##   in Loop: Header=BB10_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB10_1
LBB10_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function res_R
LCPI11_0:
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_res_R
	.p2align	4, 0x90
_res_R:                                 ## @res_R
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB11_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB11_8
## %bb.2:                               ##   in Loop: Header=BB11_1 Depth=1
	movl	$0, -28(%rbp)
LBB11_3:                                ##   Parent Loop BB11_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB11_6
## %bb.4:                               ##   in Loop: Header=BB11_3 Depth=2
	movsd	LCPI11_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	movq	(%rax,%rdx,8), %rax
	movl	-28(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rdx
	mulsd	(%rax,%rdx,8), %xmm0
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	movslq	-28(%rbp), %rdx
	movsd	%xmm0, (%rax,%rdx,8)
## %bb.5:                               ##   in Loop: Header=BB11_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB11_3
LBB11_6:                                ##   in Loop: Header=BB11_1 Depth=1
	jmp	LBB11_7
LBB11_7:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB11_1
LBB11_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function prol_P
LCPI12_0:
	.quad	4598175219545276416     ## double 0.25
LCPI12_1:
	.quad	4602678819172646912     ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_prol_P
	.p2align	4, 0x90
_prol_P:                                ## @prol_P
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$0, -28(%rbp)
LBB12_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB12_8
## %bb.2:                               ##   in Loop: Header=BB12_1 Depth=1
	movl	$0, -32(%rbp)
LBB12_3:                                ##   Parent Loop BB12_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB12_6
## %bb.4:                               ##   in Loop: Header=BB12_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.5:                               ##   in Loop: Header=BB12_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB12_3
LBB12_6:                                ##   in Loop: Header=BB12_1 Depth=1
	jmp	LBB12_7
LBB12_7:                                ##   in Loop: Header=BB12_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB12_1
LBB12_8:
	movl	$0, -28(%rbp)
LBB12_9:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_11 Depth 2
	movl	-28(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB12_16
## %bb.10:                              ##   in Loop: Header=BB12_9 Depth=1
	movl	$0, -32(%rbp)
LBB12_11:                               ##   Parent Loop BB12_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB12_14
## %bb.12:                              ##   in Loop: Header=BB12_11 Depth=2
	movsd	LCPI12_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	movsd	LCPI12_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm2    ## xmm2 = mem[0],zero
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	movsd	%xmm2, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm2    ## xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	addsd	(%rax,%rcx,8), %xmm2
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	movsd	%xmm3, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm2    ## xmm2 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	addsd	(%rax,%rcx,8), %xmm2
	mulsd	%xmm2, %xmm1
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	shll	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movsd	%xmm1, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	addsd	(%rax,%rcx,8), %xmm1
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	addsd	(%rax,%rcx,8), %xmm1
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	addsd	(%rax,%rcx,8), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-8(%rbp), %rax
	movl	-28(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-32(%rbp), %edx
	shll	$1, %edx
	addl	$1, %edx
	movslq	%edx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.13:                              ##   in Loop: Header=BB12_11 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB12_11
LBB12_14:                               ##   in Loop: Header=BB12_9 Depth=1
	jmp	LBB12_15
LBB12_15:                               ##   in Loop: Header=BB12_9 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB12_9
LBB12_16:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_u_update               ## -- Begin function u_update
	.p2align	4, 0x90
_u_update:                              ## @u_update
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -24(%rbp)
LBB13_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB13_8
## %bb.2:                               ##   in Loop: Header=BB13_1 Depth=1
	movl	$0, -28(%rbp)
LBB13_3:                                ##   Parent Loop BB13_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB13_6
## %bb.4:                               ##   in Loop: Header=BB13_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	subsd	(%rax,%rcx,8), %xmm0
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-28(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.5:                               ##   in Loop: Header=BB13_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB13_3
LBB13_6:                                ##   in Loop: Header=BB13_1 Depth=1
	jmp	LBB13_7
LBB13_7:                                ##   in Loop: Header=BB13_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB13_1
LBB13_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function L1_norm
LCPI14_0:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_L1_norm
	.p2align	4, 0x90
_L1_norm:                               ## @L1_norm
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
	movsd	%xmm0, -32(%rbp)
	movl	$0, -16(%rbp)
LBB14_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB14_8
## %bb.2:                               ##   in Loop: Header=BB14_1 Depth=1
	movl	$0, -20(%rbp)
LBB14_3:                                ##   Parent Loop BB14_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB14_6
## %bb.4:                               ##   in Loop: Header=BB14_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movaps	LCPI14_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	pand	%xmm1, %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
## %bb.5:                               ##   in Loop: Header=BB14_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB14_3
LBB14_6:                                ##   in Loop: Header=BB14_1 Depth=1
	jmp	LBB14_7
LBB14_7:                                ##   in Loop: Header=BB14_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB14_1
LBB14_8:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function Max_norm
LCPI15_0:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_Max_norm
	.p2align	4, 0x90
_Max_norm:                              ## @Max_norm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$0, -16(%rbp)
LBB15_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB15_10
## %bb.2:                               ##   in Loop: Header=BB15_1 Depth=1
	movl	$0, -20(%rbp)
LBB15_3:                                ##   Parent Loop BB15_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB15_8
## %bb.4:                               ##   in Loop: Header=BB15_3 Depth=2
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	movaps	LCPI15_0(%rip), %xmm2   ## xmm2 = [NaN,NaN]
	pand	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	LBB15_6
## %bb.5:                               ##   in Loop: Header=BB15_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	movaps	LCPI15_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	pand	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
LBB15_6:                                ##   in Loop: Header=BB15_3 Depth=2
	jmp	LBB15_7
LBB15_7:                                ##   in Loop: Header=BB15_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB15_3
LBB15_8:                                ##   in Loop: Header=BB15_1 Depth=1
	jmp	LBB15_9
LBB15_9:                                ##   in Loop: Header=BB15_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB15_1
LBB15_10:
	movsd	-32(%rbp), %xmm0        ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_set_BC                 ## -- Begin function set_BC
	.p2align	4, 0x90
_set_BC:                                ## @set_BC
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB16_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB16_4
## %bb.2:                               ##   in Loop: Header=BB16_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-16(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-16(%rbp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movsd	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.3:                               ##   in Loop: Header=BB16_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB16_1
LBB16_4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_set_zeros              ## -- Begin function set_zeros
	.p2align	4, 0x90
_set_zeros:                             ## @set_zeros
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB17_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB17_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB17_8
## %bb.2:                               ##   in Loop: Header=BB17_1 Depth=1
	movl	$0, -20(%rbp)
LBB17_3:                                ##   Parent Loop BB17_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB17_6
## %bb.4:                               ##   in Loop: Header=BB17_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	xorps	%xmm0, %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
## %bb.5:                               ##   in Loop: Header=BB17_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB17_3
LBB17_6:                                ##   in Loop: Header=BB17_1 Depth=1
	jmp	LBB17_7
LBB17_7:                                ##   in Loop: Header=BB17_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB17_1
LBB17_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_matrix           ## -- Begin function print_matrix
	.p2align	4, 0x90
_print_matrix:                          ## @print_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -16(%rbp)
LBB18_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB18_3 Depth 2
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB18_8
## %bb.2:                               ##   in Loop: Header=BB18_1 Depth=1
	movl	$0, -20(%rbp)
LBB18_3:                                ##   Parent Loop BB18_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB18_6
## %bb.4:                               ##   in Loop: Header=BB18_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-20(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	leaq	L_.str.6(%rip), %rdi
	movb	$1, %al
	callq	_printf
## %bb.5:                               ##   in Loop: Header=BB18_3 Depth=2
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB18_3
LBB18_6:                                ##   in Loop: Header=BB18_1 Depth=1
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
## %bb.7:                               ##   in Loop: Header=BB18_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB18_1
LBB18_8:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.globl	_l                      ## @l
	.p2align	2
_l:
	.long	9                       ## 0x9

	.globl	_pi                     ## @pi
	.p2align	3
_pi:
	.quad	4614256656552045848     ## double 3.1415926535897931

	.globl	_epsilon                ## @epsilon
	.p2align	3
_epsilon:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5

	.section	__TEXT,__cstring,cstring_literals
L___const.main.filename:                ## @__const.main.filename
	.asciz	"mg.dat"

L_.str:                                 ## @.str
	.asciz	"\nResult OK!\n"

L_.str.1:                               ## @.str.1
	.asciz	"\nResult not OK!\n"

L_.str.2:                               ## @.str.2
	.asciz	"time = %lf s\n"

L_.str.3:                               ## @.str.3
	.asciz	"r"

L_.str.4:                               ## @.str.4
	.asciz	"%lf\n"

L_.str.5:                               ## @.str.5
	.asciz	"\n\n"

L_.str.6:                               ## @.str.6
	.asciz	"%lf "

L_.str.7:                               ## @.str.7
	.asciz	"\n"

.subsections_via_symbols
