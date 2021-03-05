	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4614256656552045848     ## double 3.1415926535897931
LCPI0_1:
	.quad	4566650022153682944     ## double 0.001953125
LCPI0_2:
	.quad	4616688259913573092     ## double 4.4428829381583661
LCPI0_3:
	.quad	4526117625507348480     ## double 3.814697265625E-6
LCPI0_4:
	.quad	4617812488033055453     ## double 5.4413980927026531
LCPI0_6:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
LCPI0_7:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_5:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$7627108, -53(%rbp)     ## imm = 0x746164
	movl	$1680762733, -56(%rbp)  ## imm = 0x642E676D
	movl	$4104, %edi             ## imm = 0x1008
	callq	_malloc
	movq	%rax, %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	$513, %edi              ## imm = 0x201
	movl	$8, %esi
	callq	_calloc
	movq	%rax, (%r15,%rbx,8)
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_1
## %bb.2:
	movl	$4104, %edi             ## imm = 0x1008
	callq	_malloc
	movq	%rax, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	$513, %edi              ## imm = 0x201
	movl	$8, %esi
	callq	_calloc
	movq	%rax, (%r14,%rbx,8)
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_3
## %bb.4:
	movl	$4104, %edi             ## imm = 0x1008
	callq	_malloc
	movq	%rax, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	$513, %edi              ## imm = 0x201
	movl	$8, %esi
	callq	_calloc
	movq	%rax, (%r12,%rbx,8)
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_5
## %bb.6:
	movq	%r12, -64(%rbp)         ## 8-byte Spill
	movq	%r14, -72(%rbp)         ## 8-byte Spill
	leaq	L_.str.3(%rip), %rsi
	leaq	-56(%rbp), %rdi
	callq	_fopen
	testq	%rax, %rax
	je	LBB0_11
## %bb.7:
	movq	%rax, %rbx
	leaq	L_.str.4(%rip), %r13
	xorl	%r14d, %r14d
	movq	%r15, -80(%rbp)         ## 8-byte Spill
	.p2align	4, 0x90
LBB0_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
	movq	(%r15,%r14,8), %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
LBB0_9:                                 ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	leaq	(%r15,%r12), %rdx
	movq	%rbx, %rdi
	movq	%r13, %rsi
	xorl	%eax, %eax
	callq	_fscanf
	addq	$8, %r12
	cmpq	$4104, %r12             ## imm = 0x1008
	jne	LBB0_9
## %bb.10:                              ##   in Loop: Header=BB0_8 Depth=1
	incq	%r14
	cmpq	$513, %r14              ## imm = 0x201
	movq	-80(%rbp), %r15         ## 8-byte Reload
	jne	LBB0_8
LBB0_11:
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	xorl	%r13d, %r13d
	movsd	LCPI0_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	LCPI0_1(%rip), %xmm2    ## xmm2 = mem[0],zero
	movq	-64(%rbp), %r12         ## 8-byte Reload
	.p2align	4, 0x90
LBB0_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_13 Depth 2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r13d, %xmm0
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	mulsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	callq	_sin
	movsd	%xmm0, -96(%rbp)        ## 8-byte Spill
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI0_2(%rip), %xmm0
	mulsd	LCPI0_1(%rip), %xmm0
	callq	_sin
	movsd	%xmm0, -88(%rbp)        ## 8-byte Spill
	movq	(%r12,%r13,8), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB0_13:                                ##   Parent Loop BB0_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	mulsd	LCPI0_0(%rip), %xmm0
	movsd	LCPI0_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	_sin
	mulsd	LCPI0_3(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)       ## 8-byte Spill
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI0_4(%rip), %xmm0
	mulsd	LCPI0_1(%rip), %xmm0
	callq	_sin
	mulsd	-104(%rbp), %xmm0       ## 8-byte Folded Reload
	mulsd	-96(%rbp), %xmm0        ## 8-byte Folded Reload
	mulsd	-88(%rbp), %xmm0        ## 8-byte Folded Reload
	movsd	%xmm0, (%rbx,%r14,8)
	incq	%r14
	cmpq	$513, %r14              ## imm = 0x201
	jne	LBB0_13
## %bb.14:                              ##   in Loop: Header=BB0_12 Depth=1
	incq	%r13
	cmpq	$513, %r13              ## imm = 0x201
	movsd	LCPI0_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	LCPI0_1(%rip), %xmm2    ## xmm2 = mem[0],zero
	jne	LBB0_12
## %bb.15:
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	movq	-72(%rbp), %r14         ## 8-byte Reload
	.p2align	4, 0x90
LBB0_16:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_17 Depth 2
	movq	(%r12,%rax,8), %rcx
	movl	$2, %edx
	.p2align	4, 0x90
LBB0_17:                                ##   Parent Loop BB0_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-16(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	movsd	-8(%rcx,%rdx,8), %xmm2  ## xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	movsd	(%rcx,%rdx,8), %xmm0    ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm2, %xmm0
	addq	$3, %rdx
	cmpq	$515, %rdx              ## imm = 0x203
	jne	LBB0_17
## %bb.18:                              ##   in Loop: Header=BB0_16 Depth=1
	incq	%rax
	cmpq	$513, %rax              ## imm = 0x201
	jne	LBB0_16
## %bb.19:
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	xorl	%ebx, %ebx
	leaq	-136(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	$9, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	leaq	-120(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movapd	LCPI0_5(%rip), %xmm0    ## xmm0 = [NaN,NaN]
	leaq	L_str(%rip), %rdi
	movsd	LCPI0_6(%rip), %xmm1    ## xmm1 = mem[0],zero
	leaq	L_str.8(%rip), %rax
LBB0_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_21 Depth 2
	movq	(%r14,%rbx,8), %rcx
	movq	(%r15,%rbx,8), %rdx
	movl	$2, %esi
	.p2align	4, 0x90
LBB0_21:                                ##   Parent Loop BB0_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-16(%rcx,%rsi,8), %xmm2 ## xmm2 = mem[0],zero
	subsd	-16(%rdx,%rsi,8), %xmm2
	andpd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	ja	LBB0_27
## %bb.22:                              ##   in Loop: Header=BB0_21 Depth=2
	movsd	-8(%rcx,%rsi,8), %xmm2  ## xmm2 = mem[0],zero
	subsd	-8(%rdx,%rsi,8), %xmm2
	andpd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	ja	LBB0_27
## %bb.23:                              ##   in Loop: Header=BB0_21 Depth=2
	movsd	(%rcx,%rsi,8), %xmm2    ## xmm2 = mem[0],zero
	subsd	(%rdx,%rsi,8), %xmm2
	andpd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	ja	LBB0_27
## %bb.24:                              ##   in Loop: Header=BB0_21 Depth=2
	addq	$3, %rsi
	cmpq	$515, %rsi              ## imm = 0x203
	jne	LBB0_21
## %bb.25:                              ##   in Loop: Header=BB0_20 Depth=1
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_20
## %bb.26:
	movq	%rax, %rdi
LBB0_27:
	callq	_puts
	xorps	%xmm1, %xmm1
	cvtsi2sdq	-120(%rbp), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-112(%rbp), %xmm0
	movsd	LCPI0_7(%rip), %xmm2    ## xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvtsi2sdq	-136(%rbp), %xmm3
	cvtsi2sdl	-128(%rbp), %xmm4
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm0
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_28:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_28
## %bb.29:
	movq	%r15, %rdi
	callq	_free
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_30:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_30
## %bb.31:
	movq	%r14, %rdi
	callq	_free
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB0_32:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	$513, %rbx              ## imm = 0x201
	jne	LBB0_32
## %bb.33:
	movq	%r12, %rdi
	callq	_free
	xorl	%eax, %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
                                        ## kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	jle	LBB1_1
## %bb.2:
	leal	-1(%rdi), %eax
	movl	%edi, %ecx
	andl	$7, %ecx
	cmpl	$7, %eax
	jae	LBB1_4
## %bb.3:
	movl	$1, %eax
	jmp	LBB1_6
LBB1_1:
	movl	$1, %eax
	popq	%rbp
	retq
LBB1_4:
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	$1, %eax
	.p2align	4, 0x90
LBB1_5:                                 ## =>This Inner Loop Header: Depth=1
	shll	$8, %eax
	addl	$8, %edx
	jne	LBB1_5
LBB1_6:
	testl	%ecx, %ecx
	je	LBB1_8
	.p2align	4, 0x90
LBB1_7:                                 ## =>This Inner Loop Header: Depth=1
	addl	%eax, %eax
	decl	%ecx
	jne	LBB1_7
LBB1_8:
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
	.p2align	4, 0x90
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
	.p2align	4, 0x90
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
	.p2align	4, 0x90
LBB3_4:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB3_5 Depth 2
	xorl	%r12d, %r12d
	.p2align	4, 0x90
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
	.p2align	4, 0x90
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
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %r15
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	movsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	testl	%r14d, %r14d
	jle	LBB4_5
## %bb.1:
	movapd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)        ## 8-byte Spill
	movl	%r14d, %r12d
	xorl	%r14d, %r14d
	movsd	LCPI4_0(%rip), %xmm2    ## xmm2 = mem[0],zero
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_3 Depth 2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm0
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	mulsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	callq	_sin
	movsd	%xmm0, -80(%rbp)        ## 8-byte Spill
	movsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI4_1(%rip), %xmm0
	mulsd	-48(%rbp), %xmm0        ## 8-byte Folded Reload
	callq	_sin
	movsd	%xmm0, -72(%rbp)        ## 8-byte Spill
	movq	(%r15,%r14,8), %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB4_3:                                 ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	mulsd	LCPI4_0(%rip), %xmm0
	mulsd	-48(%rbp), %xmm0        ## 8-byte Folded Reload
	callq	_sin
	mulsd	-64(%rbp), %xmm0        ## 8-byte Folded Reload
	movsd	%xmm0, -88(%rbp)        ## 8-byte Spill
	movsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	LCPI4_2(%rip), %xmm0
	mulsd	-48(%rbp), %xmm0        ## 8-byte Folded Reload
	callq	_sin
	mulsd	-88(%rbp), %xmm0        ## 8-byte Folded Reload
	mulsd	-80(%rbp), %xmm0        ## 8-byte Folded Reload
	mulsd	-72(%rbp), %xmm0        ## 8-byte Folded Reload
	movsd	%xmm0, (%r13,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB4_3
## %bb.4:                               ##   in Loop: Header=BB4_2 Depth=1
	incq	%r14
	cmpq	%r12, %r14
	movsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	movsd	LCPI4_0(%rip), %xmm2    ## xmm2 = mem[0],zero
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
	.p2align	4, 0x90
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
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %edx
	andl	$3, %edx
	movl	%r9d, %esi
	andl	$-4, %esi
	xorpd	%xmm0, %xmm0
	xorl	%r10d, %r10d
	jmp	LBB5_3
	.p2align	4, 0x90
LBB5_8:                                 ##   in Loop: Header=BB5_3 Depth=1
	incq	%r10
	cmpq	%r9, %r10
	je	LBB5_9
LBB5_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_4 Depth 2
                                        ##     Child Loop BB5_7 Depth 2
	movq	(%rdi,%r10,8), %rax
	xorl	%ecx, %ecx
	cmpq	$3, %r8
	jb	LBB5_5
	.p2align	4, 0x90
LBB5_4:                                 ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	movsd	8(%rax,%rcx,8), %xmm2   ## xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	movsd	16(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	24(%rax,%rcx,8), %xmm0  ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	addq	$4, %rcx
	cmpq	%rcx, %rsi
	jne	LBB5_4
LBB5_5:                                 ##   in Loop: Header=BB5_3 Depth=1
	testq	%rdx, %rdx
	je	LBB5_8
## %bb.6:                               ##   in Loop: Header=BB5_3 Depth=1
	leaq	(%rax,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB5_7:                                 ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB5_7
	jmp	LBB5_8
LBB5_1:
	xorpd	%xmm0, %xmm0
LBB5_9:
	sqrtsd	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function multigrid_vcycle
LCPI6_0:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
LCPI6_1:
	.quad	4598175219545276416     ## double 0.25
LCPI6_3:
	.quad	4616189618054758400     ## double 4
LCPI6_4:
	.quad	4602678819172646912     ## double 0.5
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI6_2:
	.quad	4616189618054758400     ## double 4
	.quad	4616189618054758400     ## double 4
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$296, %rsp              ## imm = 0x128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm0, -208(%rbp)       ## 8-byte Spill
                                        ## kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	movq	%rsi, -144(%rbp)        ## 8-byte Spill
	movq	%rdx, -176(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -216(%rbp)       ## 8-byte Spill
	jle	LBB6_3
## %bb.1:
	leal	-1(%rdi), %r8d
	movl	%edi, %eax
	andl	$7, %eax
	cmpl	$7, %r8d
	jae	LBB6_4
## %bb.2:
	movl	$1, %ebx
	jmp	LBB6_6
LBB6_3:
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	movl	$1, %r12d
	movl	$2, -84(%rbp)           ## 4-byte Folded Spill
	movl	$1, %ebx
	movl	$2, %eax
	jmp	LBB6_18
LBB6_4:
	movl	%eax, %ecx
	subl	%edi, %ecx
	movl	$1, %ebx
	.p2align	4, 0x90
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	shll	$8, %ebx
	addl	$8, %ecx
	jne	LBB6_5
LBB6_6:
	testl	%eax, %eax
	je	LBB6_8
	.p2align	4, 0x90
LBB6_7:                                 ## =>This Inner Loop Header: Depth=1
	addl	%ebx, %ebx
	decl	%eax
	jne	LBB6_7
LBB6_8:
	movl	$1, %r12d
	cmpl	$2, %edi
	jl	LBB6_15
## %bb.9:
	leal	-2(%rdi), %ecx
	andl	$7, %r8d
	cmpl	$7, %ecx
	jae	LBB6_11
## %bb.10:
	movl	$1, %r12d
	jmp	LBB6_13
LBB6_11:
	movl	%r8d, %ecx
	subl	%edi, %ecx
	incl	%ecx
	movl	$1, %r12d
	.p2align	4, 0x90
LBB6_12:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %r12d
	addl	$8, %ecx
	jne	LBB6_12
LBB6_13:
	testl	%r8d, %r8d
	je	LBB6_15
	.p2align	4, 0x90
LBB6_14:                                ## =>This Inner Loop Header: Depth=1
	addl	%r12d, %r12d
	decl	%r8d
	jne	LBB6_14
LBB6_15:
	cmpl	$1, %edi
	jne	LBB6_17
## %bb.16:
	movsd	-208(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movq	8(%rdx), %rax
	mulsd	8(%rax), %xmm0
	movq	8(%rsi), %rax
	movsd	%xmm0, 8(%rax)
	addq	$296, %rsp              ## imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_17:
	movq	%rdi, -112(%rbp)        ## 8-byte Spill
	movl	%ebx, %eax
	orl	$1, %eax
	leal	1(%r12), %ecx
	movl	%ecx, -84(%rbp)         ## 4-byte Spill
LBB6_18:
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movslq	%eax, %r15
	leaq	(,%r15,8), %rdi
	movq	%rdi, -64(%rbp)         ## 8-byte Spill
	callq	_malloc
	movq	%rax, %r13
	movl	%ebx, -44(%rbp)         ## 4-byte Spill
	testl	%ebx, %ebx
	js	LBB6_21
## %bb.19:
	movl	-52(%rbp), %r14d        ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_20:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r15, %rdi
	callq	_calloc
	movq	%rax, (%r13,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_20
LBB6_21:
	movq	%r15, -80(%rbp)         ## 8-byte Spill
	movq	%r13, -128(%rbp)        ## 8-byte Spill
	movl	-84(%rbp), %ebx         ## 4-byte Reload
	movslq	%ebx, %r14
	leaq	(,%r14,8), %rdi
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	callq	_malloc
	movq	%rax, %r15
	movl	%ebx, %r13d
	testl	%r12d, %r12d
	js	LBB6_24
## %bb.22:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_23:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r14, %rdi
	callq	_calloc
	movq	%rax, (%r15,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r13
	jne	LBB6_23
LBB6_24:
	movq	%r14, -72(%rbp)         ## 8-byte Spill
	movq	%r15, -136(%rbp)        ## 8-byte Spill
	movq	%r13, -96(%rbp)         ## 8-byte Spill
	movq	-64(%rbp), %rdi         ## 8-byte Reload
	callq	_malloc
	movq	%rax, %r13
	cmpl	$0, -44(%rbp)           ## 4-byte Folded Reload
	movq	-80(%rbp), %r14         ## 8-byte Reload
	js	LBB6_27
## %bb.25:
	movl	-52(%rbp), %r15d        ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_26:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r14, %rdi
	callq	_calloc
	movq	%rax, (%r13,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB6_26
LBB6_27:
	movq	%r13, -64(%rbp)         ## 8-byte Spill
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	callq	_malloc
	movq	%rax, %r13
	movq	%r12, -120(%rbp)        ## 8-byte Spill
	testl	%r12d, %r12d
	movq	-96(%rbp), %r15         ## 8-byte Reload
	movq	-72(%rbp), %r14         ## 8-byte Reload
	js	LBB6_30
## %bb.28:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_29:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r14, %rdi
	callq	_calloc
	movq	%rax, (%r13,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB6_29
LBB6_30:
	movsd	-216(%rbp), %xmm8       ## 8-byte Reload
                                        ## xmm8 = mem[0],zero
	movapd	%xmm8, %xmm0
	divsd	%xmm8, %xmm0
	ucomisd	LCPI6_0(%rip), %xmm0
	movq	-176(%rbp), %r10        ## 8-byte Reload
	movq	-128(%rbp), %r15        ## 8-byte Reload
	movq	%r13, -192(%rbp)        ## 8-byte Spill
	jbe	LBB6_117
## %bb.31:
	movq	-112(%rbp), %rax        ## 8-byte Reload
	decl	%eax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	movl	-44(%rbp), %ebx         ## 4-byte Reload
	leaq	-1(%rbx), %rdx
	movl	-52(%rbp), %esi         ## 4-byte Reload
	movl	%esi, %r9d
	andl	$-4, %r9d
	leaq	-4(%r9), %rax
	movq	%rax, -312(%rbp)        ## 8-byte Spill
	shrq	$2, %rax
	incq	%rax
	movl	%edx, %edi
	andl	$1, %edi
	movq	%rdx, %rcx
	andq	$-2, %rcx
	movq	%rcx, -296(%rbp)        ## 8-byte Spill
	movq	%rdx, %rcx
	movq	%rdx, -104(%rbp)        ## 8-byte Spill
	orq	$1, %rdx
	movq	%rdx, -288(%rbp)        ## 8-byte Spill
	movq	-96(%rbp), %r13         ## 8-byte Reload
	movl	%r13d, %ecx
	andl	$3, %ecx
	testq	%rcx, %rcx
	movl	$4, %edx
	cmovneq	%rcx, %rdx
	movq	%r13, %r8
	subq	%rdx, %r8
	movl	%esi, %ecx
	andl	$7, %ecx
	movq	%rcx, -248(%rbp)        ## 8-byte Spill
	movl	%eax, %ecx
	andl	$1, %ecx
	movl	%esi, %edx
	andl	$3, %edx
	movq	%rdx, -184(%rbp)        ## 8-byte Spill
	movq	%rcx, -304(%rbp)        ## 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, -280(%rbp)        ## 8-byte Spill
	movq	%rbx, %r14
	movq	%rdi, -240(%rbp)        ## 8-byte Spill
	subq	%rdi, %r14
	movl	%esi, %edi
	andl	$-8, %edi
	movsd	LCPI6_3(%rip), %xmm5    ## xmm5 = mem[0],zero
	movapd	LCPI6_2(%rip), %xmm9    ## xmm9 = [4.0E+0,4.0E+0]
	movsd	LCPI6_1(%rip), %xmm7    ## xmm7 = mem[0],zero
	movapd	LCPI6_2(%rip), %xmm4    ## xmm4 = [4.0E+0,4.0E+0]
	movl	%esi, %esi
	leaq	(,%rsi,8), %rcx
	movl	-120(%rbp), %eax        ## 4-byte Reload
	movq	%rax, -264(%rbp)        ## 8-byte Spill
	leaq	-1(%r13,%r13), %rdx
	movq	%rdx, -328(%rbp)        ## 8-byte Spill
	leaq	1(%rbx), %rdx
	movq	%rdx, -320(%rbp)        ## 8-byte Spill
	movq	%rbx, -80(%rbp)         ## 8-byte Spill
	leaq	-2(%rbx), %r12
	leaq	-1(%rsi), %rbx
	leaq	(,%rax,8), %r13
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	movq	%r12, -256(%rbp)        ## 8-byte Spill
	movq	%r9, -232(%rbp)         ## 8-byte Spill
	movq	%r8, -272(%rbp)         ## 8-byte Spill
	movq	%rdi, -336(%rbp)        ## 8-byte Spill
	movq	%rcx, -200(%rbp)        ## 8-byte Spill
	movq	%rbx, -224(%rbp)        ## 8-byte Spill
	jmp	LBB6_33
	.p2align	4, 0x90
LBB6_32:                                ##   in Loop: Header=BB6_33 Depth=1
	sqrtsd	%xmm0, %xmm0
	divsd	%xmm8, %xmm0
	ucomisd	LCPI6_0(%rip), %xmm0
	jbe	LBB6_117
LBB6_33:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_36 Depth 2
                                        ##       Child Loop BB6_37 Depth 3
                                        ##     Child Loop BB6_42 Depth 2
                                        ##       Child Loop BB6_50 Depth 3
                                        ##       Child Loop BB6_44 Depth 3
                                        ##     Child Loop BB6_55 Depth 2
                                        ##       Child Loop BB6_61 Depth 3
                                        ##       Child Loop BB6_65 Depth 3
                                        ##       Child Loop BB6_69 Depth 3
                                        ##     Child Loop BB6_74 Depth 2
                                        ##     Child Loop BB6_77 Depth 2
                                        ##     Child Loop BB6_80 Depth 2
                                        ##       Child Loop BB6_81 Depth 3
                                        ##     Child Loop BB6_86 Depth 2
                                        ##       Child Loop BB6_93 Depth 3
                                        ##       Child Loop BB6_98 Depth 3
                                        ##       Child Loop BB6_100 Depth 3
                                        ##     Child Loop BB6_105 Depth 2
                                        ##       Child Loop BB6_106 Depth 3
                                        ##     Child Loop BB6_112 Depth 2
                                        ##       Child Loop BB6_113 Depth 3
                                        ##       Child Loop BB6_116 Depth 3
	cmpl	$2, -44(%rbp)           ## 4-byte Folded Reload
	jl	LBB6_52
## %bb.34:                              ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %eax
	movq	-240(%rbp), %r8         ## 8-byte Reload
	jmp	LBB6_36
	.p2align	4, 0x90
LBB6_35:                                ##   in Loop: Header=BB6_36 Depth=2
	cmpq	-80(%rbp), %rax         ## 8-byte Folded Reload
	je	LBB6_40
LBB6_36:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_37 Depth 3
	movq	-144(%rbp), %rdx        ## 8-byte Reload
	movq	-8(%rdx,%rax,8), %rdi
	movq	(%rdx,%rax,8), %rcx
	movq	8(%rdx,%rax,8), %rbx
	movq	(%r10,%rax,8), %rdx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movl	$1, %esi
	testq	%r12, %r12
	je	LBB6_38
	.p2align	4, 0x90
LBB6_37:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_36 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rdi,%rsi,8), %xmm1    ## xmm1 = mem[0],zero
	addsd	(%rbx,%rsi,8), %xmm1
	addsd	%xmm0, %xmm1
	addsd	8(%rcx,%rsi,8), %xmm1
	addsd	(%rdx,%rsi,8), %xmm1
	mulsd	%xmm7, %xmm1
	movsd	%xmm1, (%rcx,%rsi,8)
	movsd	8(%rdi,%rsi,8), %xmm0   ## xmm0 = mem[0],zero
	addsd	8(%rbx,%rsi,8), %xmm0
	addsd	%xmm1, %xmm0
	addsd	16(%rcx,%rsi,8), %xmm0
	addsd	8(%rdx,%rsi,8), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm0, 8(%rcx,%rsi,8)
	addq	$2, %rsi
	cmpq	%rsi, %r14
	jne	LBB6_37
LBB6_38:                                ##   in Loop: Header=BB6_36 Depth=2
	incq	%rax
	testq	%r8, %r8
	je	LBB6_35
## %bb.39:                              ##   in Loop: Header=BB6_36 Depth=2
	movsd	(%rdi,%rsi,8), %xmm1    ## xmm1 = mem[0],zero
	addsd	(%rbx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	addsd	8(%rcx,%rsi,8), %xmm0
	addsd	(%rdx,%rsi,8), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm0, (%rcx,%rsi,8)
	jmp	LBB6_35
	.p2align	4, 0x90
LBB6_40:                                ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %r8d
	jmp	LBB6_42
	.p2align	4, 0x90
LBB6_41:                                ##   in Loop: Header=BB6_42 Depth=2
	cmpq	-80(%rbp), %r8          ## 8-byte Folded Reload
	movq	-176(%rbp), %r10        ## 8-byte Reload
	movq	-128(%rbp), %r15        ## 8-byte Reload
	je	LBB6_52
LBB6_42:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_50 Depth 3
                                        ##       Child Loop BB6_44 Depth 3
	movq	-144(%rbp), %rax        ## 8-byte Reload
	movq	-8(%rax,%r8,8), %r9
	movq	(%rax,%r8,8), %rdx
	movq	8(%rax,%r8,8), %r11
	movq	(%r10,%r8,8), %rdi
	movq	(%r15,%r8,8), %rbx
	incq	%r8
	movl	$1, %ecx
	cmpq	$2, -104(%rbp)          ## 8-byte Folded Reload
	jae	LBB6_45
LBB6_43:                                ##   in Loop: Header=BB6_42 Depth=2
	leaq	(%rbx,%rcx,8), %r10
	leaq	(%rdi,%rcx,8), %rdi
	movq	-80(%rbp), %rax         ## 8-byte Reload
	subq	%rcx, %rax
	leaq	(%rdx,%rcx,8), %rdx
	leaq	(%r11,%rcx,8), %rsi
	leaq	(%r9,%rcx,8), %rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_44:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_42 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rdx,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	subsd	(%rcx,%rbx,8), %xmm0
	subsd	(%rsi,%rbx,8), %xmm0
	subsd	-8(%rdx,%rbx,8), %xmm0
	subsd	8(%rdx,%rbx,8), %xmm0
	subsd	(%rdi,%rbx,8), %xmm0
	movsd	%xmm0, (%r10,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %rax
	jne	LBB6_44
	jmp	LBB6_41
	.p2align	4, 0x90
LBB6_45:                                ##   in Loop: Header=BB6_42 Depth=2
	leaq	8(%rbx), %rcx
	movq	-80(%rbp), %r12         ## 8-byte Reload
	leaq	(%rbx,%r12,8), %r15
	movq	-320(%rbp), %rax        ## 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	leaq	8(%r9), %rsi
	movq	%rsi, -152(%rbp)        ## 8-byte Spill
	leaq	(%r9,%r12,8), %rsi
	leaq	8(%r11), %r10
	movq	%r10, -160(%rbp)        ## 8-byte Spill
	cmpq	%rax, %rcx
	setb	-168(%rbp)              ## 1-byte Folded Spill
	cmpq	%r15, %rdx
	setb	-45(%rbp)               ## 1-byte Folded Spill
	cmpq	%rsi, %rcx
	setb	%sil
	cmpq	%r15, -152(%rbp)        ## 8-byte Folded Reload
	leaq	(%r11,%r12,8), %rax
	setb	-152(%rbp)              ## 1-byte Folded Spill
	cmpq	%rax, %rcx
	setb	%r10b
	cmpq	%r15, -160(%rbp)        ## 8-byte Folded Reload
	leaq	(%rdi,%r12,8), %rax
	setb	%r12b
	cmpq	%rax, %rcx
	leaq	8(%rdi), %rcx
	setb	%al
	cmpq	%r15, %rcx
	setb	-160(%rbp)              ## 1-byte Folded Spill
	movl	$1, %ecx
	movb	-45(%rbp), %r15b        ## 1-byte Reload
	testb	%r15b, -168(%rbp)       ## 1-byte Folded Reload
	jne	LBB6_43
## %bb.46:                              ##   in Loop: Header=BB6_42 Depth=2
	movl	$1, %ecx
	andb	-152(%rbp), %sil        ## 1-byte Folded Reload
	jne	LBB6_43
## %bb.47:                              ##   in Loop: Header=BB6_42 Depth=2
	movl	$1, %ecx
	andb	%r12b, %r10b
	jne	LBB6_43
## %bb.48:                              ##   in Loop: Header=BB6_42 Depth=2
	movl	$1, %ecx
	andb	-160(%rbp), %al         ## 1-byte Folded Reload
	jne	LBB6_43
## %bb.49:                              ##   in Loop: Header=BB6_42 Depth=2
	xorl	%eax, %eax
	movq	-296(%rbp), %rsi        ## 8-byte Reload
	.p2align	4, 0x90
LBB6_50:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_42 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	(%rdx,%rax,8), %xmm0
	movupd	8(%rdx,%rax,8), %xmm1
	mulpd	%xmm9, %xmm1
	movupd	16(%rdx,%rax,8), %xmm2
	movupd	8(%r9,%rax,8), %xmm3
	subpd	%xmm3, %xmm1
	movupd	8(%r11,%rax,8), %xmm3
	subpd	%xmm3, %xmm1
	subpd	%xmm0, %xmm1
	subpd	%xmm2, %xmm1
	movupd	8(%rdi,%rax,8), %xmm0
	subpd	%xmm0, %xmm1
	movupd	%xmm1, 8(%rbx,%rax,8)
	addq	$2, %rax
	cmpq	%rax, %rsi
	jne	LBB6_50
## %bb.51:                              ##   in Loop: Header=BB6_42 Depth=2
	movq	-288(%rbp), %rcx        ## 8-byte Reload
	cmpq	%rsi, -104(%rbp)        ## 8-byte Folded Reload
	je	LBB6_41
	jmp	LBB6_43
	.p2align	4, 0x90
LBB6_52:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, -120(%rbp)          ## 4-byte Folded Reload
	movq	-96(%rbp), %r10         ## 8-byte Reload
	movq	-136(%rbp), %rdi        ## 8-byte Reload
	movq	-272(%rbp), %r11        ## 8-byte Reload
	js	LBB6_70
## %bb.53:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%r8d, %r8d
	jmp	LBB6_55
	.p2align	4, 0x90
LBB6_54:                                ##   in Loop: Header=BB6_55 Depth=2
	incq	%r8
	cmpq	%r10, %r8
	je	LBB6_70
LBB6_55:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_61 Depth 3
                                        ##       Child Loop BB6_65 Depth 3
                                        ##       Child Loop BB6_69 Depth 3
	movq	%r8, %rax
	shlq	$4, %rax
	movq	(%r15,%rax), %rdx
	movq	(%rdi,%r8,8), %rcx
	cmpl	$5, -84(%rbp)           ## 4-byte Folded Reload
	jb	LBB6_56
## %bb.57:                              ##   in Loop: Header=BB6_55 Depth=2
	movq	-328(%rbp), %rax        ## 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	cmpq	%rax, %rcx
	jae	LBB6_60
## %bb.58:                              ##   in Loop: Header=BB6_55 Depth=2
	leaq	(%rcx,%r10,8), %rax
	cmpq	%rax, %rdx
	jae	LBB6_60
LBB6_56:                                ##   in Loop: Header=BB6_55 Depth=2
	xorl	%esi, %esi
	jmp	LBB6_63
	.p2align	4, 0x90
LBB6_60:                                ##   in Loop: Header=BB6_55 Depth=2
	leaq	32(%rdx), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB6_61:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_55 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	-32(%rsi), %xmm0
	movupd	(%rsi), %xmm1
	movhpd	-16(%rsi), %xmm0        ## xmm0 = xmm0[0],mem[0]
	movhpd	16(%rsi), %xmm1         ## xmm1 = xmm1[0],mem[0]
	mulpd	%xmm4, %xmm0
	mulpd	%xmm4, %xmm1
	movupd	%xmm0, (%rcx,%rdi,8)
	movupd	%xmm1, 16(%rcx,%rdi,8)
	addq	$4, %rdi
	addq	$64, %rsi
	cmpq	%rdi, %r11
	jne	LBB6_61
## %bb.62:                              ##   in Loop: Header=BB6_55 Depth=2
	movq	%r11, %rsi
	movq	-136(%rbp), %rdi        ## 8-byte Reload
LBB6_63:                                ##   in Loop: Header=BB6_55 Depth=2
	movl	%r10d, %ebx
	subl	%esi, %ebx
	movq	%rsi, %r9
	notq	%r9
	addq	%r10, %r9
	andq	$3, %rbx
	je	LBB6_67
## %bb.64:                              ##   in Loop: Header=BB6_55 Depth=2
	leaq	(,%rsi,8), %rax
	negq	%rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB6_65:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_55 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rdx,%rax,2), %xmm0    ## xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, (%rcx,%rax)
	decq	%rdi
	addq	$8, %rax
	cmpq	%rdi, %rbx
	jne	LBB6_65
## %bb.66:                              ##   in Loop: Header=BB6_55 Depth=2
	subq	%rdi, %rsi
	movq	-136(%rbp), %rdi        ## 8-byte Reload
LBB6_67:                                ##   in Loop: Header=BB6_55 Depth=2
	cmpq	$3, %r9
	jb	LBB6_54
## %bb.68:                              ##   in Loop: Header=BB6_55 Depth=2
	movq	%rsi, %rax
	shlq	$4, %rax
	leaq	48(%rdx,%rax), %rdx
	.p2align	4, 0x90
LBB6_69:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_55 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	-48(%rdx), %xmm0        ## xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, (%rcx,%rsi,8)
	movsd	-32(%rdx), %xmm0        ## xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, 8(%rcx,%rsi,8)
	movsd	-16(%rdx), %xmm0        ## xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, 16(%rcx,%rsi,8)
	movsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	mulsd	%xmm5, %xmm0
	movsd	%xmm0, 24(%rcx,%rsi,8)
	addq	$4, %rsi
	addq	$64, %rdx
	cmpq	%rsi, %r10
	jne	LBB6_69
	jmp	LBB6_54
	.p2align	4, 0x90
LBB6_70:                                ##   in Loop: Header=BB6_33 Depth=1
	movq	%rdi, %rdx
	movq	-112(%rbp), %rdi        ## 8-byte Reload
                                        ## kill: def $edi killed $edi killed $rdi
	movq	-192(%rbp), %rsi        ## 8-byte Reload
	movsd	-208(%rbp), %xmm0       ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movapd	%xmm8, %xmm1
	callq	_multigrid_vcycle
	cmpl	$0, -44(%rbp)           ## 4-byte Folded Reload
	js	LBB6_78
## %bb.71:                              ##   in Loop: Header=BB6_33 Depth=1
	cmpq	$7, -224(%rbp)          ## 8-byte Folded Reload
	jae	LBB6_73
## %bb.72:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%ebx, %ebx
	movq	-200(%rbp), %r12        ## 8-byte Reload
	jmp	LBB6_75
	.p2align	4, 0x90
LBB6_73:                                ##   in Loop: Header=BB6_33 Depth=1
	xorl	%ebx, %ebx
	movq	-64(%rbp), %r15         ## 8-byte Reload
	movq	-200(%rbp), %r12        ## 8-byte Reload
	.p2align	4, 0x90
LBB6_74:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	8(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	16(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	24(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	32(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	40(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	48(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	movq	56(%r15,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	addq	$8, %rbx
	cmpq	%rbx, -336(%rbp)        ## 8-byte Folded Reload
	jne	LBB6_74
LBB6_75:                                ##   in Loop: Header=BB6_33 Depth=1
	movq	-248(%rbp), %r15        ## 8-byte Reload
	testq	%r15, %r15
	je	LBB6_78
## %bb.76:                              ##   in Loop: Header=BB6_33 Depth=1
	movq	-64(%rbp), %rax         ## 8-byte Reload
	leaq	(%rax,%rbx,8), %rax
	movq	%rax, -168(%rbp)        ## 8-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_77:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-168(%rbp), %rax        ## 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB6_77
LBB6_78:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, -120(%rbp)          ## 4-byte Folded Reload
	movq	-176(%rbp), %r10        ## 8-byte Reload
	movsd	-216(%rbp), %xmm8       ## 8-byte Reload
                                        ## xmm8 = mem[0],zero
	movl	-52(%rbp), %r9d         ## 4-byte Reload
	movq	-128(%rbp), %r15        ## 8-byte Reload
	movsd	LCPI6_3(%rip), %xmm5    ## xmm5 = mem[0],zero
	movapd	LCPI6_2(%rip), %xmm9    ## xmm9 = [4.0E+0,4.0E+0]
	movsd	LCPI6_1(%rip), %xmm7    ## xmm7 = mem[0],zero
	movapd	LCPI6_2(%rip), %xmm4    ## xmm4 = [4.0E+0,4.0E+0]
	movsd	LCPI6_4(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	-264(%rbp), %r12        ## 8-byte Reload
	jle	LBB6_83
## %bb.79:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB6_80:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_81 Depth 3
	movq	-192(%rbp), %rax        ## 8-byte Reload
	movq	(%rax,%r8,8), %rcx
	movq	8(%rax,%r8,8), %rdx
	movq	%r8, %rdi
	shlq	$4, %rdi
	movq	-64(%rbp), %rax         ## 8-byte Reload
	movq	(%rax,%rdi), %rsi
	movq	8(%rax,%rdi), %rdi
	incq	%r8
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_81:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_80 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rbx), %rax
	movq	%rax, (%rsi,%rbx,2)
	movsd	(%rcx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	addsd	(%rdx,%rbx), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, (%rdi,%rbx,2)
	movsd	(%rcx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	addsd	8(%rcx,%rbx), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsi,%rbx,2)
	movsd	(%rcx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	addsd	8(%rcx,%rbx), %xmm0
	addsd	(%rdx,%rbx), %xmm0
	addsd	8(%rdx,%rbx), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm0, 8(%rdi,%rbx,2)
	addq	$8, %rbx
	cmpq	%rbx, %r13
	jne	LBB6_81
## %bb.82:                              ##   in Loop: Header=BB6_80 Depth=2
	cmpq	%r12, %r8
	jne	LBB6_80
LBB6_83:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, -44(%rbp)           ## 4-byte Folded Reload
	movq	-184(%rbp), %r8         ## 8-byte Reload
	movq	-256(%rbp), %r12        ## 8-byte Reload
	movq	-72(%rbp), %r11         ## 8-byte Reload
	js	LBB6_102
## %bb.84:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	jmp	LBB6_86
	.p2align	4, 0x90
LBB6_85:                                ##   in Loop: Header=BB6_86 Depth=2
	incq	%rax
	cmpq	%r11, %rax
	je	LBB6_102
LBB6_86:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_93 Depth 3
                                        ##       Child Loop BB6_98 Depth 3
                                        ##       Child Loop BB6_100 Depth 3
	movq	-144(%rbp), %rcx        ## 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movq	-64(%rbp), %rdx         ## 8-byte Reload
	movq	(%rdx,%rax,8), %rdx
	cmpl	$4, %r9d
	jb	LBB6_87
## %bb.88:                              ##   in Loop: Header=BB6_86 Depth=2
	leaq	(%rdx,%r11,8), %rsi
	cmpq	%rsi, %rcx
	jae	LBB6_91
## %bb.89:                              ##   in Loop: Header=BB6_86 Depth=2
	leaq	(%rcx,%r11,8), %rsi
	cmpq	%rsi, %rdx
	jae	LBB6_91
LBB6_87:                                ##   in Loop: Header=BB6_86 Depth=2
	xorl	%esi, %esi
LBB6_97:                                ##   in Loop: Header=BB6_86 Depth=2
	movq	%rsi, %rdi
	notq	%rdi
	addq	%r11, %rdi
	testq	%r8, %r8
	je	LBB6_99
	.p2align	4, 0x90
LBB6_98:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_86 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rcx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	subsd	(%rdx,%rsi,8), %xmm0
	movsd	%xmm0, (%rcx,%rsi,8)
	incq	%rsi
	decq	%r8
	jne	LBB6_98
LBB6_99:                                ##   in Loop: Header=BB6_86 Depth=2
	cmpq	$3, %rdi
	movq	-184(%rbp), %r8         ## 8-byte Reload
	movq	-72(%rbp), %r11         ## 8-byte Reload
	jb	LBB6_85
	.p2align	4, 0x90
LBB6_100:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_86 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rcx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	subsd	(%rdx,%rsi,8), %xmm0
	movsd	8(%rcx,%rsi,8), %xmm1   ## xmm1 = mem[0],zero
	movsd	%xmm0, (%rcx,%rsi,8)
	subsd	8(%rdx,%rsi,8), %xmm1
	movsd	%xmm1, 8(%rcx,%rsi,8)
	movsd	16(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	subsd	16(%rdx,%rsi,8), %xmm0
	movsd	%xmm0, 16(%rcx,%rsi,8)
	movsd	24(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	subsd	24(%rdx,%rsi,8), %xmm0
	movsd	%xmm0, 24(%rcx,%rsi,8)
	addq	$4, %rsi
	cmpq	%rsi, %r11
	jne	LBB6_100
	jmp	LBB6_85
	.p2align	4, 0x90
LBB6_91:                                ##   in Loop: Header=BB6_86 Depth=2
	cmpq	$0, -312(%rbp)          ## 8-byte Folded Reload
	je	LBB6_101
## %bb.92:                              ##   in Loop: Header=BB6_86 Depth=2
	movq	-280(%rbp), %rdi        ## 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB6_93:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_86 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movupd	(%rdx,%rsi,8), %xmm0
	movupd	16(%rdx,%rsi,8), %xmm1
	movupd	(%rcx,%rsi,8), %xmm2
	subpd	%xmm0, %xmm2
	movupd	16(%rcx,%rsi,8), %xmm0
	subpd	%xmm1, %xmm0
	movupd	32(%rcx,%rsi,8), %xmm1
	movupd	48(%rcx,%rsi,8), %xmm3
	movupd	%xmm2, (%rcx,%rsi,8)
	movupd	%xmm0, 16(%rcx,%rsi,8)
	movupd	32(%rdx,%rsi,8), %xmm0
	subpd	%xmm0, %xmm1
	movupd	48(%rdx,%rsi,8), %xmm0
	subpd	%xmm0, %xmm3
	movupd	%xmm1, 32(%rcx,%rsi,8)
	movupd	%xmm3, 48(%rcx,%rsi,8)
	addq	$8, %rsi
	addq	$2, %rdi
	jne	LBB6_93
## %bb.94:                              ##   in Loop: Header=BB6_86 Depth=2
	cmpq	$0, -304(%rbp)          ## 8-byte Folded Reload
	je	LBB6_96
LBB6_95:                                ##   in Loop: Header=BB6_86 Depth=2
	movupd	(%rcx,%rsi,8), %xmm0
	movupd	16(%rcx,%rsi,8), %xmm1
	movupd	(%rdx,%rsi,8), %xmm2
	subpd	%xmm2, %xmm0
	movupd	16(%rdx,%rsi,8), %xmm2
	subpd	%xmm2, %xmm1
	movupd	%xmm0, (%rcx,%rsi,8)
	movupd	%xmm1, 16(%rcx,%rsi,8)
LBB6_96:                                ##   in Loop: Header=BB6_86 Depth=2
	movq	-232(%rbp), %rdi        ## 8-byte Reload
	movq	%rdi, %rsi
	movq	-72(%rbp), %r11         ## 8-byte Reload
	cmpq	%r11, %rdi
	je	LBB6_85
	jmp	LBB6_97
LBB6_101:                               ##   in Loop: Header=BB6_86 Depth=2
	xorl	%esi, %esi
	cmpq	$0, -304(%rbp)          ## 8-byte Folded Reload
	jne	LBB6_95
	jmp	LBB6_96
	.p2align	4, 0x90
LBB6_102:                               ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$2, -44(%rbp)           ## 4-byte Folded Reload
	movq	-232(%rbp), %r9         ## 8-byte Reload
	jl	LBB6_109
## %bb.103:                             ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %eax
	jmp	LBB6_105
	.p2align	4, 0x90
LBB6_104:                               ##   in Loop: Header=BB6_105 Depth=2
	cmpq	-80(%rbp), %rax         ## 8-byte Folded Reload
	je	LBB6_109
LBB6_105:                               ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_106 Depth 3
	movq	-144(%rbp), %rdx        ## 8-byte Reload
	movq	-8(%rdx,%rax,8), %rdi
	movq	(%rdx,%rax,8), %rcx
	movq	8(%rdx,%rax,8), %rbx
	movq	(%r10,%rax,8), %rdx
	movsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	movl	$1, %esi
	testq	%r12, %r12
	je	LBB6_107
	.p2align	4, 0x90
LBB6_106:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_105 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rdi,%rsi,8), %xmm1    ## xmm1 = mem[0],zero
	addsd	(%rbx,%rsi,8), %xmm1
	addsd	%xmm0, %xmm1
	addsd	8(%rcx,%rsi,8), %xmm1
	addsd	(%rdx,%rsi,8), %xmm1
	mulsd	%xmm7, %xmm1
	movsd	%xmm1, (%rcx,%rsi,8)
	movsd	8(%rdi,%rsi,8), %xmm0   ## xmm0 = mem[0],zero
	addsd	8(%rbx,%rsi,8), %xmm0
	addsd	%xmm1, %xmm0
	addsd	16(%rcx,%rsi,8), %xmm0
	addsd	8(%rdx,%rsi,8), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm0, 8(%rcx,%rsi,8)
	addq	$2, %rsi
	cmpq	%rsi, %r14
	jne	LBB6_106
LBB6_107:                               ##   in Loop: Header=BB6_105 Depth=2
	incq	%rax
	testb	$1, -104(%rbp)          ## 1-byte Folded Reload
	je	LBB6_104
## %bb.108:                             ##   in Loop: Header=BB6_105 Depth=2
	movsd	(%rdi,%rsi,8), %xmm1    ## xmm1 = mem[0],zero
	addsd	(%rbx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	addsd	8(%rcx,%rsi,8), %xmm0
	addsd	(%rdx,%rsi,8), %xmm0
	mulsd	%xmm7, %xmm0
	movsd	%xmm0, (%rcx,%rsi,8)
	jmp	LBB6_104
	.p2align	4, 0x90
LBB6_109:                               ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, -44(%rbp)           ## 4-byte Folded Reload
	movq	-224(%rbp), %rbx        ## 8-byte Reload
	xorpd	%xmm0, %xmm0
	js	LBB6_32
## %bb.110:                             ##   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	movq	-184(%rbp), %rsi        ## 8-byte Reload
	jmp	LBB6_112
	.p2align	4, 0x90
LBB6_111:                               ##   in Loop: Header=BB6_112 Depth=2
	incq	%rax
	cmpq	-72(%rbp), %rax         ## 8-byte Folded Reload
	je	LBB6_32
LBB6_112:                               ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_113 Depth 3
                                        ##       Child Loop BB6_116 Depth 3
	movq	(%r15,%rax,8), %rcx
	xorl	%edx, %edx
	cmpq	$3, %rbx
	jb	LBB6_114
	.p2align	4, 0x90
LBB6_113:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_112 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	movsd	8(%rcx,%rdx,8), %xmm2   ## xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm2
	addsd	%xmm1, %xmm2
	movsd	16(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm2, %xmm1
	movsd	24(%rcx,%rdx,8), %xmm0  ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	addq	$4, %rdx
	cmpq	%rdx, %r9
	jne	LBB6_113
LBB6_114:                               ##   in Loop: Header=BB6_112 Depth=2
	testb	$3, -72(%rbp)           ## 1-byte Folded Reload
	je	LBB6_111
## %bb.115:                             ##   in Loop: Header=BB6_112 Depth=2
	leaq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_116:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_112 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	LBB6_116
	jmp	LBB6_111
LBB6_117:
	cmpl	$0, -44(%rbp)           ## 4-byte Folded Reload
	js	LBB6_120
## %bb.118:
	movl	-52(%rbp), %r14d        ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_119:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	callq	_free
	movq	-128(%rbp), %r15        ## 8-byte Reload
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_119
LBB6_120:
	movq	%r15, %rdi
	callq	_free
	movq	-120(%rbp), %r15        ## 8-byte Reload
	testl	%r15d, %r15d
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-136(%rbp), %r12        ## 8-byte Reload
	movq	-64(%rbp), %r13         ## 8-byte Reload
	js	LBB6_123
## %bb.121:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_122:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_122
LBB6_123:
	movq	%r12, %rdi
	callq	_free
	cmpl	$0, -44(%rbp)           ## 4-byte Folded Reload
	js	LBB6_126
## %bb.124:
	movl	-52(%rbp), %r14d        ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_125:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_125
LBB6_126:
	movq	%r13, %rdi
	callq	_free
	testl	%r15d, %r15d
	movq	-96(%rbp), %r14         ## 8-byte Reload
	movq	-192(%rbp), %r15        ## 8-byte Reload
	js	LBB6_129
## %bb.127:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_128:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_128
LBB6_129:
	movq	%r15, %rdi
	addq	$296, %rsp              ## imm = 0x128
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_free                   ## TAILCALL
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function verify
LCPI7_0:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI7_1:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
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
	movl	$1, %eax
	testl	%edx, %edx
	jle	LBB7_7
## %bb.1:
	movl	%edx, %r9d
	xorl	%r8d, %r8d
	movapd	LCPI7_0(%rip), %xmm0    ## xmm0 = [NaN,NaN]
	movsd	LCPI7_1(%rip), %xmm1    ## xmm1 = mem[0],zero
LBB7_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movq	(%rdi,%r8,8), %r10
	movq	(%rsi,%r8,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB7_4:                                 ##   Parent Loop BB7_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%r10,%rdx,8), %xmm2    ## xmm2 = mem[0],zero
	subsd	(%rcx,%rdx,8), %xmm2
	andpd	%xmm0, %xmm2
	ucomisd	%xmm1, %xmm2
	ja	LBB7_5
## %bb.3:                               ##   in Loop: Header=BB7_4 Depth=2
	incq	%rdx
	cmpq	%rdx, %r9
	jne	LBB7_4
## %bb.6:                               ##   in Loop: Header=BB7_2 Depth=1
	incq	%r8
	cmpq	%r9, %r8
	jne	LBB7_2
LBB7_7:
	popq	%rbp
	retq
LBB7_5:
	xorl	%eax, %eax
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
	.p2align	4, 0x90
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
	.p2align	4, 0x90
_GS_update:                             ## @GS_update
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
                                        ## kill: def $edx killed $edx def $rdx
	cmpl	$3, %edx
	jl	LBB9_7
## %bb.1:
	leal	-1(%rdx), %r8d
	addl	$-2, %edx
	andl	$1, %edx
	movq	%r8, %r10
	subq	%rdx, %r10
	movl	$1, %r9d
	movsd	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	jmp	LBB9_2
	.p2align	4, 0x90
LBB9_6:                                 ##   in Loop: Header=BB9_2 Depth=1
	cmpq	%r8, %r9
	je	LBB9_7
LBB9_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movq	-8(%rdi,%r9,8), %rbx
	movq	(%rdi,%r9,8), %rax
	movq	8(%rdi,%r9,8), %r14
	movq	(%rsi,%r9,8), %r11
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %ecx
	cmpl	$2, %r8d
	je	LBB9_4
	.p2align	4, 0x90
LBB9_3:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rbx,%rcx,8), %xmm2    ## xmm2 = mem[0],zero
	addsd	(%r14,%rcx,8), %xmm2
	addsd	%xmm1, %xmm2
	addsd	8(%rax,%rcx,8), %xmm2
	addsd	(%r11,%rcx,8), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rax,%rcx,8)
	movsd	8(%rbx,%rcx,8), %xmm1   ## xmm1 = mem[0],zero
	addsd	8(%r14,%rcx,8), %xmm1
	addsd	%xmm2, %xmm1
	addsd	16(%rax,%rcx,8), %xmm1
	addsd	8(%r11,%rcx,8), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rax,%rcx,8)
	addq	$2, %rcx
	cmpq	%rcx, %r10
	jne	LBB9_3
LBB9_4:                                 ##   in Loop: Header=BB9_2 Depth=1
	incq	%r9
	testq	%rdx, %rdx
	je	LBB9_6
## %bb.5:                               ##   in Loop: Header=BB9_2 Depth=1
	movsd	(%rbx,%rcx,8), %xmm2    ## xmm2 = mem[0],zero
	addsd	(%r14,%rcx,8), %xmm2
	addsd	%xmm1, %xmm2
	addsd	8(%rax,%rcx,8), %xmm2
	addsd	(%r11,%rcx,8), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rax,%rcx,8)
	jmp	LBB9_6
LBB9_7:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function L_def
LCPI10_0:
	.quad	4616189618054758400     ## double 4
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI10_1:
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $ecx killed $ecx def $rcx
	movq	%rdx, -96(%rbp)         ## 8-byte Spill
	movq	%rsi, -88(%rbp)         ## 8-byte Spill
	cmpl	$3, %ecx
	jl	LBB10_13
## %bb.1:
	decl	%ecx
	leaq	-1(%rcx), %rax
	leaq	1(%rcx), %rdx
	movq	%rdx, -72(%rbp)         ## 8-byte Spill
	movq	%rax, %r14
	andq	$-2, %r14
	movq	%rax, -56(%rbp)         ## 8-byte Spill
	orq	$1, %rax
	movq	%rax, -64(%rbp)         ## 8-byte Spill
	movl	$1, %r11d
	movsd	LCPI10_1(%rip), %xmm0   ## xmm0 = mem[0],zero
	movapd	LCPI10_0(%rip), %xmm1   ## xmm1 = [4.0E+0,4.0E+0]
	movq	%rdi, -80(%rbp)         ## 8-byte Spill
	jmp	LBB10_2
	.p2align	4, 0x90
LBB10_12:                               ##   in Loop: Header=BB10_2 Depth=1
	cmpq	%rcx, %r11
	je	LBB10_13
LBB10_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_8 Depth 2
                                        ##     Child Loop BB10_11 Depth 2
	movq	-8(%rdi,%r11,8), %r15
	movq	(%rdi,%r11,8), %r10
	movq	8(%rdi,%r11,8), %r12
	movq	-96(%rbp), %rax         ## 8-byte Reload
	movq	(%rax,%r11,8), %r13
	movq	-88(%rbp), %rax         ## 8-byte Reload
	movq	(%rax,%r11,8), %rax
	incq	%r11
	movl	$1, %r9d
	cmpq	$2, -56(%rbp)           ## 8-byte Folded Reload
	jae	LBB10_3
LBB10_10:                               ##   in Loop: Header=BB10_2 Depth=1
	leaq	(%rax,%r9,8), %r8
	leaq	(%r13,%r9,8), %r13
	leaq	(%r12,%r9,8), %r12
	leaq	(%r15,%r9,8), %r15
	leaq	(%r10,%r9,8), %rax
	movq	%rcx, %rbx
	subq	%r9, %rbx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB10_11:                               ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rdx,8), %xmm2    ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	subsd	(%r15,%rdx,8), %xmm2
	subsd	(%r12,%rdx,8), %xmm2
	subsd	-8(%rax,%rdx,8), %xmm2
	subsd	8(%rax,%rdx,8), %xmm2
	subsd	(%r13,%rdx,8), %xmm2
	movsd	%xmm2, (%r8,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %rbx
	jne	LBB10_11
	jmp	LBB10_12
	.p2align	4, 0x90
LBB10_3:                                ##   in Loop: Header=BB10_2 Depth=1
	leaq	8(%rax), %rdx
	leaq	(%rax,%rcx,8), %rdi
	movq	-72(%rbp), %rsi         ## 8-byte Reload
	leaq	(%r10,%rsi,8), %rsi
	leaq	8(%r15), %r8
	leaq	(%r15,%rcx,8), %rbx
	leaq	8(%r12), %r9
	cmpq	%rsi, %rdx
	setb	-45(%rbp)               ## 1-byte Folded Spill
	cmpq	%rdi, %r10
	setb	-44(%rbp)               ## 1-byte Folded Spill
	cmpq	%rbx, %rdx
	setb	%sil
	cmpq	%rdi, %r8
	leaq	(%r12,%rcx,8), %rbx
	setb	-43(%rbp)               ## 1-byte Folded Spill
	cmpq	%rbx, %rdx
	setb	%r8b
	cmpq	%rdi, %r9
	leaq	(%r13,%rcx,8), %rbx
	setb	-42(%rbp)               ## 1-byte Folded Spill
	cmpq	%rbx, %rdx
	leaq	8(%r13), %rbx
	setb	%dl
	cmpq	%rdi, %rbx
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	setb	-41(%rbp)               ## 1-byte Folded Spill
	movl	$1, %r9d
	movb	-44(%rbp), %bl          ## 1-byte Reload
	testb	%bl, -45(%rbp)          ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.4:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r9d
	andb	-43(%rbp), %sil         ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.5:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r9d
	andb	-42(%rbp), %r8b         ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.6:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r9d
	andb	-41(%rbp), %dl          ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.7:                               ##   in Loop: Header=BB10_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB10_8:                                ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movupd	(%r10,%rbx,8), %xmm2
	movupd	8(%r10,%rbx,8), %xmm3
	mulpd	%xmm1, %xmm3
	movupd	16(%r10,%rbx,8), %xmm4
	movupd	8(%r15,%rbx,8), %xmm5
	subpd	%xmm5, %xmm3
	movupd	8(%r12,%rbx,8), %xmm5
	subpd	%xmm5, %xmm3
	subpd	%xmm2, %xmm3
	subpd	%xmm4, %xmm3
	movupd	8(%r13,%rbx,8), %xmm2
	subpd	%xmm2, %xmm3
	movupd	%xmm3, 8(%rax,%rbx,8)
	addq	$2, %rbx
	cmpq	%rbx, %r14
	jne	LBB10_8
## %bb.9:                               ##   in Loop: Header=BB10_2 Depth=1
	movq	-64(%rbp), %r9          ## 8-byte Reload
	cmpq	%r14, -56(%rbp)         ## 8-byte Folded Reload
	je	LBB10_12
	jmp	LBB10_10
LBB10_13:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4               ## -- Begin function res_R
LCPI11_0:
	.quad	4616189618054758400     ## double 4
	.quad	4616189618054758400     ## double 4
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI11_1:
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%edx, %edx
	jle	LBB11_18
## %bb.1:
	movl	%edx, %r11d
	leaq	-1(%r11,%r11), %r8
	movl	%r11d, %eax
	andl	$3, %eax
	testq	%rax, %rax
	movl	$4, %ecx
	cmovneq	%rax, %rcx
	movq	%r11, %r9
	subq	%rcx, %r9
	xorl	%r10d, %r10d
	movsd	LCPI11_1(%rip), %xmm0   ## xmm0 = mem[0],zero
	movapd	LCPI11_0(%rip), %xmm1   ## xmm1 = [4.0E+0,4.0E+0]
	jmp	LBB11_3
	.p2align	4, 0x90
LBB11_2:                                ##   in Loop: Header=BB11_3 Depth=1
	incq	%r10
	cmpq	%r11, %r10
	je	LBB11_18
LBB11_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_9 Depth 2
                                        ##     Child Loop BB11_13 Depth 2
                                        ##     Child Loop BB11_17 Depth 2
	movq	%r10, %rax
	shlq	$4, %rax
	movq	(%rdi,%rax), %r15
	movq	(%rsi,%r10,8), %r13
	cmpl	$5, %edx
	jb	LBB11_4
## %bb.5:                               ##   in Loop: Header=BB11_3 Depth=1
	leaq	(%r15,%r8,8), %rax
	cmpq	%rax, %r13
	jae	LBB11_8
## %bb.6:                               ##   in Loop: Header=BB11_3 Depth=1
	leaq	(%r13,%r11,8), %rax
	cmpq	%rax, %r15
	jae	LBB11_8
LBB11_4:                                ##   in Loop: Header=BB11_3 Depth=1
	xorl	%ebx, %ebx
	jmp	LBB11_11
	.p2align	4, 0x90
LBB11_8:                                ##   in Loop: Header=BB11_3 Depth=1
	leaq	32(%r15), %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB11_9:                                ##   Parent Loop BB11_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movupd	-32(%rax), %xmm2
	movupd	(%rax), %xmm3
	movhpd	-16(%rax), %xmm2        ## xmm2 = xmm2[0],mem[0]
	movhpd	16(%rax), %xmm3         ## xmm3 = xmm3[0],mem[0]
	mulpd	%xmm1, %xmm2
	mulpd	%xmm1, %xmm3
	movupd	%xmm2, (%r13,%rbx,8)
	movupd	%xmm3, 16(%r13,%rbx,8)
	addq	$4, %rbx
	addq	$64, %rax
	cmpq	%rbx, %r9
	jne	LBB11_9
## %bb.10:                              ##   in Loop: Header=BB11_3 Depth=1
	movq	%r9, %rbx
LBB11_11:                               ##   in Loop: Header=BB11_3 Depth=1
	movl	%r11d, %r12d
	subl	%ebx, %r12d
	movq	%rbx, %r14
	notq	%r14
	addq	%r11, %r14
	andq	$3, %r12
	je	LBB11_15
## %bb.12:                              ##   in Loop: Header=BB11_3 Depth=1
	leaq	(,%rbx,8), %rax
	negq	%r12
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB11_13:                               ##   Parent Loop BB11_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%r15,%rax,2), %xmm2    ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%r13,%rax)
	decq	%rcx
	addq	$8, %rax
	cmpq	%rcx, %r12
	jne	LBB11_13
## %bb.14:                              ##   in Loop: Header=BB11_3 Depth=1
	subq	%rcx, %rbx
LBB11_15:                               ##   in Loop: Header=BB11_3 Depth=1
	cmpq	$3, %r14
	jb	LBB11_2
## %bb.16:                              ##   in Loop: Header=BB11_3 Depth=1
	movq	%rbx, %rax
	shlq	$4, %rax
	leaq	48(%r15,%rax), %rax
	.p2align	4, 0x90
LBB11_17:                               ##   Parent Loop BB11_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	-48(%rax), %xmm2        ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%r13,%rbx,8)
	movsd	-32(%rax), %xmm2        ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%r13,%rbx,8)
	movsd	-16(%rax), %xmm2        ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 16(%r13,%rbx,8)
	movsd	(%rax), %xmm2           ## xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 24(%r13,%rbx,8)
	addq	$4, %rbx
	addq	$64, %rax
	cmpq	%rbx, %r11
	jne	LBB11_17
	jmp	LBB11_2
LBB11_18:
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
	.p2align	3               ## -- Begin function prol_P
LCPI12_0:
	.quad	4602678819172646912     ## double 0.5
LCPI12_1:
	.quad	4598175219545276416     ## double 0.25
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
                                        ## kill: def $ecx killed $ecx def $rcx
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	testl	%edx, %edx
	jle	LBB12_6
## %bb.1:
	movl	%edx, %r15d
	leaq	(,%r15,8), %rbx
	leaq	-1(%r15), %rax
	movl	%r15d, %r14d
	andl	$7, %r14d
	cmpq	$7, %rax
	jae	LBB12_12
## %bb.2:
	xorl	%r13d, %r13d
	jmp	LBB12_3
LBB12_12:
	subq	%r14, %r15
	xorl	%r13d, %r13d
	.p2align	4, 0x90
LBB12_13:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	8(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	16(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	24(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	32(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	40(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	48(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	movq	56(%r12,%r13,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	addq	$8, %r13
	cmpq	%r13, %r15
	jne	LBB12_13
LBB12_3:
	testq	%r14, %r14
	je	LBB12_6
## %bb.4:
	movq	%r14, %r15
	leaq	(%r12,%r13,8), %r13
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB12_5:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r13,%r14,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	incq	%r14
	cmpq	%r14, %r15
	jne	LBB12_5
LBB12_6:
	movq	-48(%rbp), %r11         ## 8-byte Reload
	cmpl	$2, %r11d
	movq	-56(%rbp), %r10         ## 8-byte Reload
	jl	LBB12_11
## %bb.7:
	decl	%r11d
	xorl	%r8d, %r8d
	movsd	LCPI12_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	movsd	LCPI12_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB12_8:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_9 Depth 2
	movq	(%r10,%r8,8), %rcx
	movq	8(%r10,%r8,8), %rdx
	movq	%r8, %rax
	shlq	$4, %rax
	movq	(%r12,%rax), %r9
	movq	8(%r12,%rax), %rdi
	incq	%r8
	movq	%r11, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB12_9:                                ##   Parent Loop BB12_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rax), %rsi
	movq	%rsi, (%r9,%rax,2)
	movsd	(%rcx,%rax), %xmm2      ## xmm2 = mem[0],zero
	addsd	(%rdx,%rax), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rdi,%rax,2)
	movsd	(%rcx,%rax), %xmm2      ## xmm2 = mem[0],zero
	addsd	8(%rcx,%rax), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, 8(%r9,%rax,2)
	movsd	(%rcx,%rax), %xmm2      ## xmm2 = mem[0],zero
	addsd	8(%rcx,%rax), %xmm2
	addsd	(%rdx,%rax), %xmm2
	addsd	8(%rdx,%rax), %xmm2
	mulsd	%xmm1, %xmm2
	movsd	%xmm2, 8(%rdi,%rax,2)
	addq	$8, %rax
	decq	%rbx
	jne	LBB12_9
## %bb.10:                              ##   in Loop: Header=BB12_8 Depth=1
	cmpq	%r11, %r8
	jne	LBB12_8
LBB12_11:
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%edx, %edx
	jle	LBB13_20
## %bb.1:
	movl	%edx, %r12d
	movl	%r12d, %r10d
	andl	$-4, %r10d
	leaq	-4(%r10), %r8
	movq	%r8, %rax
	shrq	$2, %rax
	incq	%rax
	movl	%eax, %r9d
	andl	$1, %r9d
	movl	%r12d, %r11d
	andl	$3, %r11d
	movq	%r9, %rcx
	subq	%rax, %rcx
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	xorl	%r15d, %r15d
	jmp	LBB13_3
	.p2align	4, 0x90
LBB13_2:                                ##   in Loop: Header=BB13_3 Depth=1
	incq	%r15
	cmpq	%r12, %r15
	je	LBB13_20
LBB13_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_10 Depth 2
                                        ##     Child Loop BB13_16 Depth 2
                                        ##     Child Loop BB13_18 Depth 2
	movq	(%rdi,%r15,8), %rcx
	movq	(%rsi,%r15,8), %rbx
	cmpl	$4, %edx
	jb	LBB13_4
## %bb.5:                               ##   in Loop: Header=BB13_3 Depth=1
	leaq	(%rbx,%r12,8), %rax
	cmpq	%rax, %rcx
	jae	LBB13_8
## %bb.6:                               ##   in Loop: Header=BB13_3 Depth=1
	leaq	(%rcx,%r12,8), %rax
	cmpq	%rax, %rbx
	jae	LBB13_8
LBB13_4:                                ##   in Loop: Header=BB13_3 Depth=1
	xorl	%eax, %eax
LBB13_14:                               ##   in Loop: Header=BB13_3 Depth=1
	movq	%rax, %r13
	notq	%r13
	addq	%r12, %r13
	testq	%r11, %r11
	je	LBB13_17
## %bb.15:                              ##   in Loop: Header=BB13_3 Depth=1
	movq	%r11, %r14
	.p2align	4, 0x90
LBB13_16:                               ##   Parent Loop BB13_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	subsd	(%rbx,%rax,8), %xmm0
	movsd	%xmm0, (%rcx,%rax,8)
	incq	%rax
	decq	%r14
	jne	LBB13_16
LBB13_17:                               ##   in Loop: Header=BB13_3 Depth=1
	cmpq	$3, %r13
	jb	LBB13_2
	.p2align	4, 0x90
LBB13_18:                               ##   Parent Loop BB13_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	subsd	(%rbx,%rax,8), %xmm0
	movsd	8(%rcx,%rax,8), %xmm1   ## xmm1 = mem[0],zero
	movsd	%xmm0, (%rcx,%rax,8)
	subsd	8(%rbx,%rax,8), %xmm1
	movsd	%xmm1, 8(%rcx,%rax,8)
	movsd	16(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	subsd	16(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 16(%rcx,%rax,8)
	movsd	24(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	subsd	24(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 24(%rcx,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %r12
	jne	LBB13_18
	jmp	LBB13_2
	.p2align	4, 0x90
LBB13_8:                                ##   in Loop: Header=BB13_3 Depth=1
	testq	%r8, %r8
	je	LBB13_19
## %bb.9:                               ##   in Loop: Header=BB13_3 Depth=1
	movq	-48(%rbp), %r13         ## 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB13_10:                               ##   Parent Loop BB13_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movupd	(%rbx,%rax,8), %xmm0
	movupd	16(%rbx,%rax,8), %xmm1
	movupd	(%rcx,%rax,8), %xmm2
	subpd	%xmm0, %xmm2
	movupd	16(%rcx,%rax,8), %xmm0
	subpd	%xmm1, %xmm0
	movupd	32(%rcx,%rax,8), %xmm1
	movupd	48(%rcx,%rax,8), %xmm3
	movupd	%xmm2, (%rcx,%rax,8)
	movupd	%xmm0, 16(%rcx,%rax,8)
	movupd	32(%rbx,%rax,8), %xmm0
	subpd	%xmm0, %xmm1
	movupd	48(%rbx,%rax,8), %xmm0
	subpd	%xmm0, %xmm3
	movupd	%xmm1, 32(%rcx,%rax,8)
	movupd	%xmm3, 48(%rcx,%rax,8)
	addq	$8, %rax
	addq	$2, %r13
	jne	LBB13_10
## %bb.11:                              ##   in Loop: Header=BB13_3 Depth=1
	testq	%r9, %r9
	je	LBB13_13
LBB13_12:                               ##   in Loop: Header=BB13_3 Depth=1
	movupd	(%rcx,%rax,8), %xmm0
	movupd	16(%rcx,%rax,8), %xmm1
	movupd	(%rbx,%rax,8), %xmm2
	subpd	%xmm2, %xmm0
	movupd	16(%rbx,%rax,8), %xmm2
	subpd	%xmm2, %xmm1
	movupd	%xmm0, (%rcx,%rax,8)
	movupd	%xmm1, 16(%rcx,%rax,8)
LBB13_13:                               ##   in Loop: Header=BB13_3 Depth=1
	movq	%r10, %rax
	cmpq	%r12, %r10
	je	LBB13_2
	jmp	LBB13_14
LBB13_19:                               ##   in Loop: Header=BB13_3 Depth=1
	xorl	%eax, %eax
	testq	%r9, %r9
	jne	LBB13_12
	jmp	LBB13_13
LBB13_20:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	testl	%esi, %esi
	jle	LBB14_1
## %bb.2:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %edx
	andl	$3, %edx
	movl	%r9d, %esi
	andl	$-4, %esi
	xorpd	%xmm0, %xmm0
	xorl	%r10d, %r10d
	movapd	LCPI14_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	movapd	LCPI14_0(%rip), %xmm2   ## xmm2 = [NaN,NaN]
	jmp	LBB14_3
	.p2align	4, 0x90
LBB14_9:                                ##   in Loop: Header=BB14_3 Depth=1
	incq	%r10
	cmpq	%r9, %r10
	je	LBB14_10
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_5 Depth 2
                                        ##     Child Loop BB14_8 Depth 2
	movq	(%rdi,%r10,8), %rax
	xorl	%ecx, %ecx
	cmpq	$3, %r8
	jb	LBB14_6
## %bb.4:                               ##   in Loop: Header=BB14_3 Depth=1
	movapd	%xmm0, %xmm3
	.p2align	4, 0x90
LBB14_5:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,8), %xmm4    ## xmm4 = mem[0],zero
	movsd	8(%rax,%rcx,8), %xmm5   ## xmm5 = mem[0],zero
	movsd	16(%rax,%rcx,8), %xmm6  ## xmm6 = mem[0],zero
	movsd	24(%rax,%rcx,8), %xmm0  ## xmm0 = mem[0],zero
	andpd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	andpd	%xmm2, %xmm5
	addsd	%xmm4, %xmm5
	andpd	%xmm2, %xmm6
	addsd	%xmm5, %xmm6
	andpd	%xmm2, %xmm0
	addsd	%xmm6, %xmm0
	addq	$4, %rcx
	movapd	%xmm0, %xmm3
	cmpq	%rcx, %rsi
	jne	LBB14_5
LBB14_6:                                ##   in Loop: Header=BB14_3 Depth=1
	testq	%rdx, %rdx
	je	LBB14_9
## %bb.7:                               ##   in Loop: Header=BB14_3 Depth=1
	leaq	(%rax,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB14_8:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,8), %xmm3    ## xmm3 = mem[0],zero
	andpd	%xmm1, %xmm3
	addsd	%xmm3, %xmm0
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB14_8
	jmp	LBB14_9
LBB14_10:
	popq	%rbp
	retq
LBB14_1:
	xorps	%xmm0, %xmm0
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
	movq	(%rdi), %rax
	movsd	(%rax), %xmm3           ## xmm3 = mem[0],zero
	testl	%esi, %esi
	jle	LBB15_1
## %bb.2:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %edx
	andl	$3, %edx
	movl	%r9d, %esi
	andl	$-4, %esi
	xorl	%r10d, %r10d
	movapd	LCPI15_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	movapd	LCPI15_0(%rip), %xmm2   ## xmm2 = [NaN,NaN]
	jmp	LBB15_3
	.p2align	4, 0x90
LBB15_9:                                ##   in Loop: Header=BB15_3 Depth=1
	incq	%r10
	movapd	%xmm0, %xmm3
	cmpq	%r9, %r10
	je	LBB15_10
LBB15_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_5 Depth 2
                                        ##     Child Loop BB15_8 Depth 2
	movq	(%rdi,%r10,8), %rax
	xorl	%ecx, %ecx
	cmpq	$3, %r8
	jb	LBB15_6
## %bb.4:                               ##   in Loop: Header=BB15_3 Depth=1
	movapd	%xmm3, %xmm0
	.p2align	4, 0x90
LBB15_5:                                ##   Parent Loop BB15_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,8), %xmm4    ## xmm4 = mem[0],zero
	movsd	8(%rax,%rcx,8), %xmm5   ## xmm5 = mem[0],zero
	movsd	16(%rax,%rcx,8), %xmm6  ## xmm6 = mem[0],zero
	movsd	24(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	andpd	%xmm2, %xmm4
	maxsd	%xmm0, %xmm4
	andpd	%xmm2, %xmm5
	maxsd	%xmm4, %xmm5
	andpd	%xmm2, %xmm6
	maxsd	%xmm5, %xmm6
	andpd	%xmm2, %xmm3
	maxsd	%xmm6, %xmm3
	addq	$4, %rcx
	movapd	%xmm3, %xmm0
	cmpq	%rcx, %rsi
	jne	LBB15_5
LBB15_6:                                ##   in Loop: Header=BB15_3 Depth=1
	movapd	%xmm3, %xmm0
	testq	%rdx, %rdx
	je	LBB15_9
## %bb.7:                               ##   in Loop: Header=BB15_3 Depth=1
	leaq	(%rax,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB15_8:                                ##   Parent Loop BB15_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,8), %xmm0    ## xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	maxsd	%xmm3, %xmm0
	incq	%rcx
	movapd	%xmm0, %xmm3
	cmpq	%rcx, %rdx
	jne	LBB15_8
	jmp	LBB15_9
LBB15_10:
	popq	%rbp
	retq
LBB15_1:
	movapd	%xmm3, %xmm0
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
                                        ## kill: def $esi killed $esi def $rsi
	testl	%esi, %esi
	jle	LBB16_7
## %bb.1:
	movq	(%rdi), %rcx
	movslq	%esi, %rax
	movq	-8(%rdi,%rax,8), %r9
	movq	$0, (%rcx)
	movq	$0, (%r9)
	movq	$0, (%rcx)
	movq	$0, -8(%rcx,%rax,8)
	cmpl	$1, %esi
	je	LBB16_7
## %bb.2:
	decq	%rax
	leal	-1(%rsi), %r8d
	andl	$1, %r8d
	movl	$1, %edx
	cmpl	$2, %esi
	je	LBB16_5
## %bb.3:
	movl	%esi, %r10d
	subq	%r8, %r10
	movl	$1, %edx
	.p2align	4, 0x90
LBB16_4:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rdx,8), %rsi
	movq	$0, (%rcx,%rdx,8)
	movq	$0, (%r9,%rdx,8)
	movq	$0, (%rsi)
	movq	$0, (%rsi,%rax,8)
	movq	8(%rdi,%rdx,8), %rsi
	movq	$0, 8(%rcx,%rdx,8)
	movq	$0, 8(%r9,%rdx,8)
	movq	$0, (%rsi)
	movq	$0, (%rsi,%rax,8)
	addq	$2, %rdx
	cmpq	%rdx, %r10
	jne	LBB16_4
LBB16_5:
	testq	%r8, %r8
	je	LBB16_7
## %bb.6:
	movq	(%rdi,%rdx,8), %rsi
	movq	$0, (%rcx,%rdx,8)
	movq	$0, (%r9,%rdx,8)
	movq	$0, (%rsi)
	movq	$0, (%rsi,%rax,8)
LBB16_7:
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
	jle	LBB17_8
## %bb.1:
	movq	%rdi, %r14
	movl	%esi, %r12d
	leaq	(,%r12,8), %r13
	leaq	-1(%r12), %rax
	movl	%r12d, %r15d
	andl	$7, %r15d
	cmpq	$7, %rax
	jae	LBB17_3
## %bb.2:
	xorl	%ebx, %ebx
	jmp	LBB17_5
LBB17_3:
	subq	%r15, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB17_4:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	8(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	16(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	24(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	32(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	40(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	48(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	56(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	addq	$8, %rbx
	cmpq	%rbx, %r12
	jne	LBB17_4
LBB17_5:
	testq	%r15, %r15
	je	LBB17_8
## %bb.6:
	leaq	(%r14,%rbx,8), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB17_7:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB17_7
LBB17_8:
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
	.p2align	4, 0x90
LBB18_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB18_3 Depth 2
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB18_3:                                ##   Parent Loop BB18_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%r15,%r13,8), %rax
	movsd	(%rax,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
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
