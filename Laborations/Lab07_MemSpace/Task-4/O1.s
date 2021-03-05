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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$9, %edi
	callq	_get_m
	cvtsi2sd	%eax, %xmm0
	movsd	LCPI0_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movapd	%xmm1, %xmm2
	divsd	%xmm0, %xmm2
	movsd	%xmm2, -48(%rbp)        ## 8-byte Spill
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebx
	movl	$7627108, -37(%rbp)     ## imm = 0x746164
	movl	$1680762733, -40(%rbp)  ## imm = 0x642E676D
	movl	%ebx, %edi
	callq	_alloc_matrix
	movq	%rax, %r14
	movl	%ebx, %edi
	callq	_alloc_matrix
	movq	%rax, %r15
	movl	%ebx, %edi
	callq	_alloc_matrix
	movq	%rax, %r12
	leaq	-40(%rbp), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	_read_data
	movq	%r12, %rdi
	movl	%ebx, %esi
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	callq	_fill_f
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	_L2_norm
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	leaq	-88(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movl	$9, %edi
	movq	%r15, %rsi
	movq	%r12, %rdx
	movsd	-48(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	leaq	-72(%rbp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	movq	%r15, %rdi
	movq	%r14, %rsi
	movl	%ebx, %edx
	callq	_verify
	testl	%eax, %eax
	leaq	L_str(%rip), %rax
	leaq	L_str.8(%rip), %rdi
	cmoveq	%rax, %rdi
	callq	_puts
	xorps	%xmm1, %xmm1
	cvtsi2sdq	-72(%rbp), %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm0
	movsd	LCPI0_1(%rip), %xmm2    ## xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	cvtsi2sdq	-88(%rbp), %xmm3
	cvtsi2sdl	-80(%rbp), %xmm4
	addsd	%xmm1, %xmm0
	divsd	%xmm2, %xmm4
	addsd	%xmm3, %xmm4
	subsd	%xmm4, %xmm0
	leaq	L_.str.2(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	_dealloc_matrix
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	_dealloc_matrix
	movq	%r12, %rdi
	movl	%ebx, %esi
	callq	_dealloc_matrix
	xorl	%eax, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
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
	movl	$1, %eax
	testl	%edi, %edi
	jle	LBB1_2
	.p2align	4, 0x90
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
	movl	%esi, %eax
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB5_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_4 Depth 2
	movq	(%rdi,%rcx,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB5_4:                                 ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rdx,%rsi,8), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	incq	%rsi
	cmpq	%rsi, %rax
	jne	LBB5_4
## %bb.5:                               ##   in Loop: Header=BB5_3 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jne	LBB5_3
	jmp	LBB5_6
LBB5_1:
	xorpd	%xmm0, %xmm0
LBB5_6:
	sqrtsd	%xmm0, %xmm0
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movsd	%xmm1, -56(%rbp)        ## 8-byte Spill
	movsd	%xmm0, -96(%rbp)        ## 8-byte Spill
	movq	%rdx, %r12
	movq	%rsi, %r14
	movl	%edi, %r15d
	callq	_get_m
	movl	%eax, %r13d
	leal	-1(%r15), %ebx
	movl	%ebx, %edi
	callq	_get_m
	cmpl	$1, %r15d
	jne	LBB6_2
## %bb.1:
	movsd	-96(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movq	8(%r12), %rax
	mulsd	8(%rax), %xmm0
	movq	8(%r14), %rax
	movsd	%xmm0, 8(%rax)
	jmp	LBB6_6
LBB6_2:
	incl	%r13d
	incl	%eax
	movl	%r13d, %edi
	movl	%eax, %r15d
	callq	_alloc_matrix
	movl	%ebx, -60(%rbp)         ## 4-byte Spill
	movq	%rax, %rbx
	movl	%r15d, %edi
	callq	_alloc_matrix
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movl	%r13d, %edi
	callq	_alloc_matrix
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movl	%r15d, -44(%rbp)        ## 4-byte Spill
	movl	%r15d, %edi
	movq	%rbx, %r15
	callq	_alloc_matrix
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	divsd	%xmm0, %xmm0
	ucomisd	LCPI6_0(%rip), %xmm0
	jbe	LBB6_5
## %bb.3:
	movq	%r12, %rbx
	movq	%r14, %r12
	movq	%rbx, -112(%rbp)        ## 8-byte Spill
	movq	%r15, -104(%rbp)        ## 8-byte Spill
	.p2align	4, 0x90
LBB6_4:                                 ## =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	_GS_update
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	movl	%r13d, %ecx
	callq	_L_def
	movq	%r15, %rdi
	movl	%r13d, %r14d
	movq	%r12, %r13
	movq	-88(%rbp), %r12         ## 8-byte Reload
	movq	%r12, %rsi
	movl	-44(%rbp), %r15d        ## 4-byte Reload
	movl	%r15d, %edx
	callq	_res_R
	movl	-60(%rbp), %edi         ## 4-byte Reload
	movq	-72(%rbp), %rbx         ## 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%r13, %r12
	movl	%r14d, %r13d
	movsd	-96(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	movq	-80(%rbp), %r14         ## 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	movl	%r15d, %ecx
	movq	-104(%rbp), %r15        ## 8-byte Reload
	movq	-112(%rbp), %rbx        ## 8-byte Reload
	callq	_prol_P
	movq	%r12, %rdi
	movq	%r14, %rsi
	movl	%r13d, %edx
	callq	_u_update
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movl	%r13d, %edx
	callq	_GS_update
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	_L2_norm
	movsd	-56(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	ucomisd	LCPI6_0(%rip), %xmm0
	ja	LBB6_4
LBB6_5:
	movq	%r15, %rdi
	movl	%r13d, %esi
	callq	_dealloc_matrix
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	movl	-44(%rbp), %r14d        ## 4-byte Reload
	movl	%r14d, %esi
	callq	_dealloc_matrix
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	movl	%r13d, %esi
	callq	_dealloc_matrix
	movq	-72(%rbp), %rdi         ## 8-byte Reload
	movl	%r14d, %esi
	callq	_dealloc_matrix
LBB6_6:
	addq	$72, %rsp
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
	callq	_free
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
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
                                        ## kill: def $edx killed $edx def $rdx
	cmpl	$3, %edx
	jl	LBB9_5
## %bb.1:
	decl	%edx
	movl	$1, %r8d
	movsd	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB9_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
	movq	-8(%rdi,%r8,8), %r9
	movq	(%rdi,%r8,8), %rax
	movq	8(%rdi,%r8,8), %r10
	movq	(%rsi,%r8,8), %r11
	incq	%r8
	movsd	(%rax), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %ecx
	.p2align	4, 0x90
LBB9_3:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%r9,%rcx,8), %xmm2     ## xmm2 = mem[0],zero
	addsd	(%r10,%rcx,8), %xmm2
	addsd	%xmm1, %xmm2
	addsd	8(%rax,%rcx,8), %xmm2
	addsd	(%r11,%rcx,8), %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm2, (%rax,%rcx,8)
	incq	%rcx
	movapd	%xmm2, %xmm1
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
	movsd	LCPI10_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB10_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_3 Depth 2
	movq	-8(%rdi,%r8,8), %r10
	movq	(%rdi,%r8,8), %rax
	movq	8(%rdi,%r8,8), %r11
	movq	(%rdx,%r8,8), %r14
	movq	(%rsi,%r8,8), %r15
	incq	%r8
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB10_3:                                ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	8(%rax,%rbx,8), %xmm1   ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	subsd	8(%r10,%rbx,8), %xmm1
	subsd	8(%r11,%rbx,8), %xmm1
	subsd	(%rax,%rbx,8), %xmm1
	subsd	16(%rax,%rbx,8), %xmm1
	subsd	8(%r14,%rbx,8), %xmm1
	movsd	%xmm1, 8(%r15,%rbx,8)
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
	.p2align	4, 0x90
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
	movsd	LCPI11_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB11_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_3 Depth 2
	movq	%r9, %rax
	shlq	$4, %rax
	movq	(%rdi,%rax), %rax
	movq	(%rsi,%r9,8), %rdx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB11_3:                                ##   Parent Loop BB11_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rax,%rcx,2), %xmm1    ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rdx,%rcx)
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
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r15d
	movq	%rsi, -48(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	testl	%edx, %edx
	jle	LBB12_3
## %bb.1:
	movl	%edx, %r13d
	leaq	(,%r13,8), %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB12_2:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r12,%r14,8), %rdi
	movq	%rbx, %rsi
	callq	___bzero
	incq	%r14
	cmpq	%r14, %r13
	jne	LBB12_2
LBB12_3:
	cmpl	$2, %r15d
	movq	-48(%rbp), %r10         ## 8-byte Reload
	jl	LBB12_8
## %bb.4:
	decl	%r15d
	xorl	%r8d, %r8d
	movsd	LCPI12_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	movsd	LCPI12_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB12_5:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_6 Depth 2
	movq	(%r10,%r8,8), %rcx
	movq	8(%r10,%r8,8), %rdx
	movq	%r8, %rax
	shlq	$4, %rax
	movq	(%r12,%rax), %r9
	movq	8(%r12,%rax), %rdi
	incq	%r8
	movq	%r15, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB12_6:                                ##   Parent Loop BB12_5 Depth=1
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
	.p2align	4, 0x90
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
	.p2align	4, 0x90
LBB13_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_3 Depth 2
	movq	(%rdi,%r8,8), %rdx
	movq	(%rsi,%r8,8), %rcx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB13_3:                                ##   Parent Loop BB13_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rdx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	subsd	(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rdx,%rax,8)
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
	movl	%esi, %eax
	xorpd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	movapd	LCPI14_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	.p2align	4, 0x90
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_4 Depth 2
	movq	(%rdi,%rcx,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB14_4:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movsd	(%rdx,%rsi,8), %xmm2    ## xmm2 = mem[0],zero
	andpd	%xmm1, %xmm2
	addsd	%xmm2, %xmm0
	incq	%rsi
	cmpq	%rsi, %rax
	jne	LBB14_4
## %bb.5:                               ##   in Loop: Header=BB14_3 Depth=1
	incq	%rcx
	cmpq	%rax, %rcx
	jne	LBB14_3
## %bb.6:
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
	movsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	testl	%esi, %esi
	jle	LBB15_5
## %bb.1:
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movapd	LCPI15_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	.p2align	4, 0x90
LBB15_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_3 Depth 2
	movq	(%rdi,%rcx,8), %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB15_3:                                ##   Parent Loop BB15_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movapd	%xmm0, %xmm2
	movsd	(%rdx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	maxsd	%xmm2, %xmm0
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
	.p2align	4, 0x90
_set_BC:                                ## @set_BC
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	LBB16_3
## %bb.1:
	movq	(%rdi), %r8
	movslq	%esi, %rcx
	movq	-8(%rdi,%rcx,8), %r9
	decq	%rcx
	movl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB16_2:                                ## =>This Inner Loop Header: Depth=1
	movq	$0, (%r8,%rax,8)
	movq	$0, (%r9,%rax,8)
	movq	(%rdi,%rax,8), %rdx
	movq	$0, (%rdx)
	movq	$0, (%rdx,%rcx,8)
	incq	%rax
	cmpq	%rax, %rsi
	jne	LBB16_2
LBB16_3:
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
	.p2align	4, 0x90
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
