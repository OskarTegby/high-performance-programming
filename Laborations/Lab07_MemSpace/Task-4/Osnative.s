	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4566650022153682944     ## double 0.001953125
LCPI0_1:
	.quad	9223372036854775807     ## double NaN
LCPI0_2:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
LCPI0_3:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	leaq	-80(%rbp), %r12
	movl	$7627108, 3(%r12)       ## imm = 0x746164
	movl	$1680762733, (%r12)     ## imm = 0x642E676D
	movl	$513, %edi              ## imm = 0x201
	callq	_alloc_matrix
	movq	%rax, %r14
	movl	$513, %edi              ## imm = 0x201
	callq	_alloc_matrix
	movq	%rax, %r15
	movl	$513, %edi              ## imm = 0x201
	callq	_alloc_matrix
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%r12, %rsi
	movl	$513, %edx              ## imm = 0x201
	callq	_read_data
	vmovsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movq	%rbx, %rdi
	movl	$513, %esi              ## imm = 0x201
	callq	_fill_f
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_2 Depth 2
	movq	(%rbx,%rax,8), %rcx
	xorl	%edx, %edx
LBB0_2:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	incq	%rdx
	cmpq	$513, %rdx              ## imm = 0x201
	jne	LBB0_2
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	incq	%rax
	cmpq	$513, %rax              ## imm = 0x201
	jne	LBB0_1
## %bb.4:
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, -40(%rbp)        ## 8-byte Spill
	xorl	%r12d, %r12d
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	vmovsd	LCPI0_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	$9, %edi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	vmovsd	-40(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	leaq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	vmovddup	LCPI0_1(%rip), %xmm0 ## xmm0 = [NaN,NaN]
                                        ## xmm0 = mem[0,0]
	vmovsd	LCPI0_2(%rip), %xmm1    ## xmm1 = mem[0],zero
	leaq	L_str(%rip), %rdi
	leaq	L_str.8(%rip), %rax
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movq	(%r15,%r12,8), %rcx
	movq	(%r14,%r12,8), %rdx
	xorl	%esi, %esi
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rsi,8), %xmm2    ## xmm2 = mem[0],zero
	vsubsd	(%rdx,%rsi,8), %xmm2, %xmm2
	vandpd	%xmm0, %xmm2, %xmm2
	vucomisd	%xmm1, %xmm2
	ja	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_7 Depth=2
	incq	%rsi
	cmpq	$513, %rsi              ## imm = 0x201
	jne	LBB0_7
## %bb.8:                               ##   in Loop: Header=BB0_5 Depth=1
	incq	%r12
	cmpq	$513, %r12              ## imm = 0x201
	jne	LBB0_5
## %bb.9:
	movq	%rax, %rdi
LBB0_10:
	callq	_puts
	vcvtsi2sdq	-56(%rbp), %xmm3, %xmm0
	vcvtsi2sdl	-48(%rbp), %xmm3, %xmm1
	vmovsd	LCPI0_3(%rip), %xmm2    ## xmm2 = mem[0],zero
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsi2sdq	-72(%rbp), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm1, %xmm0
	vcvtsi2sdl	-64(%rbp), %xmm4, %xmm1
	vdivsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	%r14, %rdi
	movl	$513, %esi              ## imm = 0x201
	callq	_dealloc_matrix
	movq	%r15, %rdi
	movl	$513, %esi              ## imm = 0x201
	callq	_dealloc_matrix
	movq	%rbx, %rdi
	movl	$513, %esi              ## imm = 0x201
	callq	_dealloc_matrix
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_get_m                  ## -- Begin function get_m
_get_m:                                 ## @get_m
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	testl	%edi, %edi
	jle	LBB1_2
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	addl	%eax, %eax
	decl	%edi
	jne	LBB1_1
LBB1_2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_alloc_matrix           ## -- Begin function alloc_matrix
_alloc_matrix:                          ## @alloc_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edi, %r15d
	movslq	%edi, %r14
	leaq	(,%r14,8), %rdi
	callq	_malloc
	movq	%rax, %r12
	testl	%r14d, %r14d
	jle	LBB2_3
## %bb.1:
	movl	%r15d, %r15d
	xorl	%ebx, %ebx
LBB2_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r14, %rdi
	callq	_calloc
	movq	%rax, (%r12,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB2_2
LBB2_3:
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_read_data              ## -- Begin function read_data
_read_data:                             ## @read_data
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%edx, %r12d
	movq	%rsi, %rax
	movq	%rdi, %r14
	leaq	L_.str.3(%rip), %rsi
	movq	%rax, %rdi
	callq	_fopen
	testq	%rax, %rax
	je	LBB3_1
## %bb.2:
	movq	%rax, %rcx
	movl	$1, %eax
	testl	%r12d, %r12d
	jle	LBB3_8
## %bb.3:
	movq	%r14, -56(%rbp)         ## 8-byte Spill
	movl	%r12d, %eax
	movq	%rax, -48(%rbp)         ## 8-byte Spill
	leaq	(,%rax,8), %r13
	leaq	L_.str.4(%rip), %r15
	xorl	%ebx, %ebx
LBB3_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_5 Depth 2
	xorl	%r12d, %r12d
LBB3_5:                                 ##   Parent Loop BB3_4 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-56(%rbp), %rdx         ## 8-byte Reload
	movq	(%rdx,%rbx,8), %rdx
	addq	%r12, %rdx
	movq	%rcx, %r14
	movq	%rcx, %rdi
	movq	%r15, %rsi
	xorl	%eax, %eax
	callq	_fscanf
	movq	%r14, %rcx
	addq	$8, %r12
	cmpq	%r12, %r13
	jne	LBB3_5
## %bb.6:                               ##   in Loop: Header=BB3_4 Depth=1
	incq	%rbx
	cmpq	-48(%rbp), %rbx         ## 8-byte Folded Reload
	jne	LBB3_4
## %bb.7:
	movl	$1, %eax
	jmp	LBB3_8
LBB3_1:
	movl	$-1, %eax
LBB3_8:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function fill_f
LCPI4_0:
	.quad	4614256656552045848     ## double 3.1415926535897931
LCPI4_1:
	.quad	4616688259913573092     ## double 4.4428829381583661
LCPI4_2:
	.quad	4617812488033055453     ## double 5.4413980927026531
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_fill_f
_fill_f:                                ## @fill_f
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %r15
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	vmovsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	testl	%r14d, %r14d
	jle	LBB4_5
## %bb.1:
	vmulsd	%xmm1, %xmm1, %xmm0
	vmovsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	movl	%r14d, %r12d
	xorl	%r14d, %r14d
	vmovsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_3 Depth 2
	vcvtsi2sd	%r14d, %xmm3, %xmm2
	vmovsd	%xmm2, -56(%rbp)        ## 8-byte Spill
	vmulsd	%xmm0, %xmm2, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	callq	_sin
	vmovsd	%xmm0, -80(%rbp)        ## 8-byte Spill
	vmovsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI4_1(%rip), %xmm0, %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	callq	_sin
	vmovsd	%xmm0, -72(%rbp)        ## 8-byte Spill
	movq	(%r15,%r14,8), %r13
	xorl	%ebx, %ebx
LBB4_3:                                 ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vcvtsi2sd	%ebx, %xmm3, %xmm0
	vmovsd	%xmm0, -88(%rbp)        ## 8-byte Spill
	vmulsd	LCPI4_0(%rip), %xmm0, %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	callq	_sin
	vmulsd	-64(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmovsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	vmovsd	-88(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI4_2(%rip), %xmm0, %xmm0
	vmulsd	-48(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	callq	_sin
	vmulsd	-56(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmulsd	-80(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmulsd	-72(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmovsd	%xmm0, (%r13,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB4_3
## %bb.4:                               ##   in Loop: Header=BB4_2 Depth=1
	incq	%r14
	cmpq	%r12, %r14
	vmovsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vmovsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	jne	LBB4_2
LBB4_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_L2_norm                ## -- Begin function L2_norm
_L2_norm:                               ## @L2_norm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	LBB5_1
## %bb.2:
	movl	%esi, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
LBB5_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_4 Depth 2
	movq	(%rdi,%rcx,8), %rdx
	xorl	%esi, %esi
LBB5_4:                                 ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rsi,8), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	incq	%rsi
	cmpq	%rsi, %rax
	jne	LBB5_4
## %bb.5:                               ##   in Loop: Header=BB5_3 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jne	LBB5_3
	jmp	LBB5_6
LBB5_1:
	vxorpd	%xmm0, %xmm0, %xmm0
LBB5_6:
	vsqrtsd	%xmm0, %xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function multigrid_vcycle
LCPI6_0:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
LCPI6_1:
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_multigrid_vcycle
_multigrid_vcycle:                      ## @multigrid_vcycle
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovsd	%xmm1, -88(%rbp)        ## 8-byte Spill
	vmovsd	%xmm0, -112(%rbp)       ## 8-byte Spill
	movq	%rdx, -64(%rbp)         ## 8-byte Spill
                                        ## kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	jle	LBB6_9
## %bb.1:
	movl	$1, %ebx
	movl	%edi, %eax
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	addl	%ebx, %ebx
	decl	%eax
	jne	LBB6_2
## %bb.3:
	movl	$1, %edx
	cmpl	$2, %edi
	jl	LBB6_6
## %bb.4:
	leal	-1(%rdi), %eax
	movl	$1, %edx
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	addl	%edx, %edx
	decl	%eax
	jne	LBB6_5
LBB6_6:
	cmpl	$1, %edi
	jne	LBB6_7
## %bb.8:
	vmovsd	-112(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	%xmm0, %xmm0, %xmm0
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	8(%rax), %rax
	vmulsd	8(%rax), %xmm0, %xmm0
	movq	8(%rsi), %rax
	vmovsd	%xmm0, 8(%rax)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_9:
	decl	%edi
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movl	$1, %eax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movl	$2, %r12d
	movl	$1, -68(%rbp)           ## 4-byte Folded Spill
	movl	$2, %ebx
	jmp	LBB6_10
LBB6_7:
	movl	%ebx, -68(%rbp)         ## 4-byte Spill
	orl	$1, %ebx
	decl	%edi
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	leal	1(%rdx), %r12d
LBB6_10:
	movl	%ebx, %edi
	callq	_alloc_matrix
	movq	%rax, %r15
	movl	%r12d, %edi
	callq	_alloc_matrix
	movq	%rax, -120(%rbp)        ## 8-byte Spill
	movl	%ebx, -44(%rbp)         ## 4-byte Spill
	movl	%ebx, %edi
	callq	_alloc_matrix
	movq	%rax, %r14
	movl	%r12d, -48(%rbp)        ## 4-byte Spill
	movl	%r12d, %edi
	callq	_alloc_matrix
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	vmovsd	-88(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vdivsd	%xmm0, %xmm0, %xmm0
	vucomisd	LCPI6_0(%rip), %xmm0
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	jbe	LBB6_27
## %bb.11:
	movl	-48(%rbp), %r13d        ## 4-byte Reload
	movl	-44(%rbp), %ebx         ## 4-byte Reload
	leaq	(,%r13,8), %r12
LBB6_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_14 Depth 2
                                        ##       Child Loop BB6_15 Depth 3
                                        ##     Child Loop BB6_19 Depth 2
                                        ##       Child Loop BB6_20 Depth 3
                                        ##     Child Loop BB6_23 Depth 2
                                        ##       Child Loop BB6_24 Depth 3
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movl	-44(%rbp), %edx         ## 4-byte Reload
	callq	_GS_update
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	%r15, %rsi
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	movl	-44(%rbp), %ecx         ## 4-byte Reload
	callq	_L_def
	cmpl	$0, -96(%rbp)           ## 4-byte Folded Reload
	movq	-104(%rbp), %r8         ## 8-byte Reload
	movq	-120(%rbp), %rdx        ## 8-byte Reload
	vmovsd	LCPI6_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	js	LBB6_17
## %bb.13:                              ##   in Loop: Header=BB6_12 Depth=1
	xorl	%eax, %eax
LBB6_14:                                ##   Parent Loop BB6_12 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_15 Depth 3
	movq	%rax, %rcx
	shlq	$4, %rcx
	movq	(%r15,%rcx), %rcx
	movq	(%rdx,%rax,8), %rdi
	xorl	%esi, %esi
LBB6_15:                                ##   Parent Loop BB6_12 Depth=1
                                        ##     Parent Loop BB6_14 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	(%rcx,%rsi,2), %xmm1, %xmm0
	vmovsd	%xmm0, (%rdi,%rsi)
	addq	$8, %rsi
	cmpq	%rsi, %r12
	jne	LBB6_15
## %bb.16:                              ##   in Loop: Header=BB6_14 Depth=2
	incq	%rax
	cmpq	%r13, %rax
	jne	LBB6_14
LBB6_17:                                ##   in Loop: Header=BB6_12 Depth=1
	movq	%r8, %rdi
                                        ## kill: def $edi killed $edi killed $rdi
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	vmovsd	-112(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmovsd	-88(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	movq	%r14, %rdi
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	movl	-44(%rbp), %edx         ## 4-byte Reload
	movl	-48(%rbp), %ecx         ## 4-byte Reload
	callq	_prol_P
	cmpl	$0, -68(%rbp)           ## 4-byte Folded Reload
	js	LBB6_28
## %bb.18:                              ##   in Loop: Header=BB6_12 Depth=1
	xorl	%eax, %eax
	movq	-56(%rbp), %rdi         ## 8-byte Reload
LBB6_19:                                ##   Parent Loop BB6_12 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_20 Depth 3
	movq	(%rdi,%rax,8), %rcx
	movq	(%r14,%rax,8), %rdx
	xorl	%esi, %esi
LBB6_20:                                ##   Parent Loop BB6_12 Depth=1
                                        ##     Parent Loop BB6_19 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	vsubsd	(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	incq	%rsi
	cmpq	%rsi, %rbx
	jne	LBB6_20
## %bb.21:                              ##   in Loop: Header=BB6_19 Depth=2
	incq	%rax
	cmpq	%rbx, %rax
	jne	LBB6_19
## %bb.22:                              ##   in Loop: Header=BB6_12 Depth=1
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movl	-44(%rbp), %edx         ## 4-byte Reload
	callq	_GS_update
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
LBB6_23:                                ##   Parent Loop BB6_12 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_24 Depth 3
	movq	(%r15,%rax,8), %rcx
	xorl	%edx, %edx
LBB6_24:                                ##   Parent Loop BB6_12 Depth=1
                                        ##     Parent Loop BB6_23 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	LBB6_24
## %bb.25:                              ##   in Loop: Header=BB6_23 Depth=2
	incq	%rax
	cmpq	%rbx, %rax
	jne	LBB6_23
	jmp	LBB6_26
LBB6_28:                                ##   in Loop: Header=BB6_12 Depth=1
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	movq	-64(%rbp), %rsi         ## 8-byte Reload
	movl	-44(%rbp), %edx         ## 4-byte Reload
	callq	_GS_update
	movq	-56(%rbp), %rdi         ## 8-byte Reload
	vxorpd	%xmm0, %xmm0, %xmm0
LBB6_26:                                ##   in Loop: Header=BB6_12 Depth=1
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vdivsd	-88(%rbp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vucomisd	LCPI6_0(%rip), %xmm0
	ja	LBB6_12
LBB6_27:
	movq	%r15, %rdi
	movl	-44(%rbp), %r15d        ## 4-byte Reload
	movl	%r15d, %esi
	callq	_dealloc_matrix
	movq	-120(%rbp), %rdi        ## 8-byte Reload
	movl	-48(%rbp), %ebx         ## 4-byte Reload
	movl	%ebx, %esi
	callq	_dealloc_matrix
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	_dealloc_matrix
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movl	%ebx, %esi
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_dealloc_matrix         ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function verify
LCPI7_0:
	.quad	9223372036854775807     ## double NaN
LCPI7_1:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_verify
_verify:                                ## @verify
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$1, %eax
	testl	%edx, %edx
	jle	LBB7_7
## %bb.1:
	movl	%edx, %r9d
	xorl	%r8d, %r8d
	vmovddup	LCPI7_0(%rip), %xmm0 ## xmm0 = [NaN,NaN]
                                        ## xmm0 = mem[0,0]
	vmovsd	LCPI7_1(%rip), %xmm1    ## xmm1 = mem[0],zero
LBB7_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movq	(%rdi,%r8,8), %r10
	movq	(%rsi,%r8,8), %rcx
	xorl	%edx, %edx
LBB7_4:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%r10,%rdx,8), %xmm2    ## xmm2 = mem[0],zero
	vsubsd	(%rcx,%rdx,8), %xmm2, %xmm2
	vandpd	%xmm0, %xmm2, %xmm2
	vucomisd	%xmm1, %xmm2
	ja	LBB7_5
## %bb.3:                               ##   in Loop: Header=BB7_4 Depth=2
	incq	%rdx
	cmpq	%rdx, %r9
	jne	LBB7_4
## %bb.6:                               ##   in Loop: Header=BB7_2 Depth=1
	incq	%r8
	cmpq	%r9, %r8
	jne	LBB7_2
	jmp	LBB7_7
LBB7_5:
	xorl	%eax, %eax
LBB7_7:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dealloc_matrix         ## -- Begin function dealloc_matrix
_dealloc_matrix:                        ## @dealloc_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r14
	testl	%esi, %esi
	jle	LBB8_3
## %bb.1:
	movl	%esi, %r15d
	xorl	%ebx, %ebx
LBB8_2:                                 ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB8_2
LBB8_3:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_free                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function GS_update
LCPI9_0:
	.quad	4598175219545276416     ## double 0.25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_GS_update
_GS_update:                             ## @GS_update
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
                                        ## kill: def $edx killed $edx def $rdx
	cmpl	$3, %edx
	jl	LBB9_5
## %bb.1:
	decl	%edx
	movl	$1, %r8d
	vmovsd	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero
LBB9_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movq	-8(%rdi,%r8,8), %r9
	movq	(%rdi,%r8,8), %rax
	movq	8(%rdi,%r8,8), %r10
	movq	(%rsi,%r8,8), %r11
	incq	%r8
	vmovsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %ecx
LBB9_3:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%r9,%rcx,8), %xmm2     ## xmm2 = mem[0],zero
	vaddsd	(%r10,%rcx,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	8(%rax,%rcx,8), %xmm1, %xmm1
	vaddsd	(%r11,%rcx,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, (%rax,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB9_3
## %bb.4:                               ##   in Loop: Header=BB9_2 Depth=1
	cmpq	%rdx, %r8
	jne	LBB9_2
LBB9_5:
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
_L_def:                                 ## @L_def
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $ecx killed $ecx def $rcx
	cmpl	$3, %ecx
	jl	LBB10_5
## %bb.1:
	decl	%ecx
	leaq	-1(%rcx), %r9
	movl	$1, %r8d
	vmovsd	LCPI10_0(%rip), %xmm0   ## xmm0 = mem[0],zero
LBB10_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_3 Depth 2
	movq	-8(%rdi,%r8,8), %r10
	movq	(%rdi,%r8,8), %rax
	movq	8(%rdi,%r8,8), %r11
	movq	(%rdx,%r8,8), %r14
	movq	(%rsi,%r8,8), %r15
	incq	%r8
	xorl	%ebx, %ebx
LBB10_3:                                ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulsd	8(%rax,%rbx,8), %xmm0, %xmm1
	vsubsd	8(%r10,%rbx,8), %xmm1, %xmm1
	vsubsd	8(%r11,%rbx,8), %xmm1, %xmm1
	vsubsd	(%rax,%rbx,8), %xmm1, %xmm1
	vsubsd	16(%rax,%rbx,8), %xmm1, %xmm1
	vsubsd	8(%r14,%rbx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 8(%r15,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r9
	jne	LBB10_3
## %bb.4:                               ##   in Loop: Header=BB10_2 Depth=1
	cmpq	%rcx, %r8
	jne	LBB10_2
LBB10_5:
	popq	%rbx
	popq	%r14
	popq	%r15
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
_res_R:                                 ## @res_R
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%edx, %edx
	jle	LBB11_5
## %bb.1:
	movl	%edx, %r8d
	leaq	(,%r8,8), %r10
	xorl	%r9d, %r9d
	vmovsd	LCPI11_0(%rip), %xmm0   ## xmm0 = mem[0],zero
LBB11_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
	movq	%r9, %rax
	shlq	$4, %rax
	movq	(%rdi,%rax), %rax
	movq	(%rsi,%r9,8), %rdx
	xorl	%ecx, %ecx
LBB11_3:                                ##   Parent Loop BB11_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%rcx,2), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdx,%rcx)
	addq	$8, %rcx
	cmpq	%rcx, %r10
	jne	LBB11_3
## %bb.4:                               ##   in Loop: Header=BB11_2 Depth=1
	incq	%r9
	cmpq	%r8, %r9
	jne	LBB11_2
LBB11_5:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function prol_P
LCPI12_0:
	.quad	4602678819172646912     ## double 0.5
LCPI12_1:
	.quad	4598175219545276416     ## double 0.25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_prol_P
_prol_P:                                ## @prol_P
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rdi, %r13
	testl	%edx, %edx
	jle	LBB12_3
## %bb.1:
	movl	%edx, %ebx
	leaq	(,%rbx,8), %r12
	xorl	%r14d, %r14d
LBB12_2:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r13,%r14,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	incq	%r14
	cmpq	%r14, %rbx
	jne	LBB12_2
LBB12_3:
	cmpl	$2, %r15d
	movq	-48(%rbp), %r10         ## 8-byte Reload
	jl	LBB12_8
## %bb.4:
	decl	%r15d
	xorl	%r8d, %r8d
	vmovsd	LCPI12_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	vmovsd	LCPI12_1(%rip), %xmm1   ## xmm1 = mem[0],zero
LBB12_5:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_6 Depth 2
	movq	(%r10,%r8,8), %rcx
	movq	8(%r10,%r8,8), %rdx
	movq	%r8, %rax
	shlq	$4, %rax
	movq	(%r13,%rax), %r9
	movq	8(%r13,%rax), %rdi
	incq	%r8
	movq	%r15, %rbx
	xorl	%eax, %eax
LBB12_6:                                ##   Parent Loop BB12_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rax), %rsi
	movq	%rsi, (%r9,%rax,2)
	vmovsd	(%rcx,%rax), %xmm2      ## xmm2 = mem[0],zero
	vaddsd	(%rdx,%rax), %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdi,%rax,2)
	vmovsd	(%rcx,%rax), %xmm2      ## xmm2 = mem[0],zero
	vaddsd	8(%rcx,%rax), %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm2
	vmovsd	%xmm2, 8(%r9,%rax,2)
	vmovsd	(%rcx,%rax), %xmm2      ## xmm2 = mem[0],zero
	vaddsd	8(%rcx,%rax), %xmm2, %xmm2
	vaddsd	(%rdx,%rax), %xmm2, %xmm2
	vaddsd	8(%rdx,%rax), %xmm2, %xmm2
	vmulsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm2, 8(%rdi,%rax,2)
	addq	$8, %rax
	decq	%rbx
	jne	LBB12_6
## %bb.7:                               ##   in Loop: Header=BB12_5 Depth=1
	cmpq	%r15, %r8
	jne	LBB12_5
LBB12_8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_u_update               ## -- Begin function u_update
_u_update:                              ## @u_update
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%edx, %edx
	jle	LBB13_5
## %bb.1:
	movl	%edx, %r9d
	xorl	%r8d, %r8d
LBB13_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_3 Depth 2
	movq	(%rdi,%r8,8), %rdx
	movq	(%rsi,%r8,8), %rcx
	xorl	%eax, %eax
LBB13_3:                                ##   Parent Loop BB13_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	vsubsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	incq	%rax
	cmpq	%rax, %r9
	jne	LBB13_3
## %bb.4:                               ##   in Loop: Header=BB13_2 Depth=1
	incq	%r8
	cmpq	%r9, %r8
	jne	LBB13_2
LBB13_5:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function L1_norm
LCPI14_0:
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_L1_norm
_L1_norm:                               ## @L1_norm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	LBB14_1
## %bb.2:
	movl	%esi, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%ecx, %ecx
	vmovddup	LCPI14_0(%rip), %xmm1 ## xmm1 = [NaN,NaN]
                                        ## xmm1 = mem[0,0]
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_4 Depth 2
	movq	(%rdi,%rcx,8), %rdx
	xorl	%esi, %esi
LBB14_4:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rsi,8), %xmm2    ## xmm2 = mem[0],zero
	vandpd	%xmm1, %xmm2, %xmm2
	vaddsd	%xmm2, %xmm0, %xmm0
	incq	%rsi
	cmpq	%rsi, %rax
	jne	LBB14_4
## %bb.5:                               ##   in Loop: Header=BB14_3 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jne	LBB14_3
	jmp	LBB14_6
LBB14_1:
	vxorpd	%xmm0, %xmm0, %xmm0
LBB14_6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function Max_norm
LCPI15_0:
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_Max_norm
_Max_norm:                              ## @Max_norm
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	(%rdi), %rax
	vmovsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	testl	%esi, %esi
	jle	LBB15_5
## %bb.1:
	movl	%esi, %eax
	xorl	%ecx, %ecx
	vmovddup	LCPI15_0(%rip), %xmm1 ## xmm1 = [NaN,NaN]
                                        ## xmm1 = mem[0,0]
LBB15_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_3 Depth 2
	movq	(%rdi,%rcx,8), %rdx
	xorl	%esi, %esi
LBB15_3:                                ##   Parent Loop BB15_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rdx,%rsi,8), %xmm2    ## xmm2 = mem[0],zero
	vandpd	%xmm1, %xmm2, %xmm2
	vmaxsd	%xmm0, %xmm2, %xmm0
	incq	%rsi
	cmpq	%rsi, %rax
	jne	LBB15_3
## %bb.4:                               ##   in Loop: Header=BB15_2 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jne	LBB15_2
LBB15_5:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_set_BC                 ## -- Begin function set_BC
_set_BC:                                ## @set_BC
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	LBB16_4
## %bb.1:
	movq	(%rdi), %r9
	movslq	%esi, %r10
	movq	-8(%rdi,%r10,8), %r8
	xorl	%eax, %eax
	movq	%rax, (%r9)
	movq	%rax, (%r8)
	movq	%rax, (%r9)
	movq	%rax, -8(%r9,%r10,8)
	cmpl	$1, %esi
	je	LBB16_4
## %bb.2:
	decq	%r10
	movl	%esi, %esi
	movl	$1, %edx
	xorl	%eax, %eax
LBB16_3:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rcx
	movq	%rax, (%r9,%rdx,8)
	movq	%rax, (%r8,%rdx,8)
	movq	%rax, (%rcx)
	movq	%rax, (%rcx,%r10,8)
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	LBB16_3
LBB16_4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_set_zeros              ## -- Begin function set_zeros
_set_zeros:                             ## @set_zeros
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%esi, %esi
	jle	LBB17_3
## %bb.1:
	movq	%rdi, %r14
	movl	%esi, %r15d
	leaq	(,%r15,8), %r12
	xorl	%ebx, %ebx
LBB17_2:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB17_2
LBB17_3:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_print_matrix           ## -- Begin function print_matrix
_print_matrix:                          ## @print_matrix
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%esi, %esi
	jle	LBB18_5
## %bb.1:
	movq	%rdi, %r15
	movl	%esi, %r12d
	xorl	%r13d, %r13d
	leaq	L_.str.6(%rip), %r14
LBB18_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB18_3 Depth 2
	xorl	%ebx, %ebx
LBB18_3:                                ##   Parent Loop BB18_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r15,%r13,8), %rax
	vmovsd	(%rax,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	movq	%r14, %rdi
	movb	$1, %al
	callq	_printf
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB18_3
## %bb.4:                               ##   in Loop: Header=BB18_2 Depth=1
	movl	$10, %edi
	callq	_putchar
	incq	%r13
	cmpq	%r12, %r13
	jne	LBB18_2
LBB18_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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

L_.str.2:                               ## @.str.2
	.asciz	"time = %lf s\n"

L_.str.3:                               ## @.str.3
	.asciz	"r"

L_.str.4:                               ## @.str.4
	.asciz	"%lf\n"

L_.str.6:                               ## @.str.6
	.asciz	"%lf "

L_str:                                  ## @str
	.asciz	"\nResult not OK!"

L_str.8:                                ## @str.8
	.asciz	"\nResult OK!"

L_str.9:                                ## @str.9
	.asciz	"\n"

.subsections_via_symbols
