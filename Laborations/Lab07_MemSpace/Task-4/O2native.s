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
LCPI0_4:
	.quad	4526117625507348480     ## double 3.814697265625E-6
LCPI0_5:
	.quad	4617812488033055453     ## double 5.4413980927026531
LCPI0_8:
	.quad	-4937542137569416550    ## double -3.4842843491139879E-22
LCPI0_10:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
LCPI0_11:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_3:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
LCPI0_9:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_6:
	.long	4                       ## 0x4
LCPI0_7:
	.long	8                       ## 0x8
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
	andq	$-32, %rsp
	subq	$512, %rsp              ## imm = 0x200
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$7627108, 27(%rsp)      ## imm = 0x746164
	movl	$1680762733, 24(%rsp)   ## imm = 0x642E676D
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
	movq	%r12, 168(%rsp)         ## 8-byte Spill
	movq	%r14, 176(%rsp)         ## 8-byte Spill
	leaq	L_.str.3(%rip), %rsi
	leaq	24(%rsp), %rdi
	callq	_fopen
	testq	%rax, %rax
	je	LBB0_11
## %bb.7:
	movq	%rax, %rbx
	leaq	L_.str.4(%rip), %r13
	xorl	%r14d, %r14d
	movq	%r15, 184(%rsp)         ## 8-byte Spill
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
	movq	184(%rsp), %r15         ## 8-byte Reload
	jne	LBB0_8
LBB0_11:
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	xorl	%r13d, %r13d
	vbroadcastsd	LCPI0_0(%rip), %ymm0 ## ymm0 = [3.1415926535897931E+0,3.1415926535897931E+0,3.1415926535897931E+0,3.1415926535897931E+0]
	vmovaps	%ymm0, 384(%rsp)        ## 32-byte Spill
	vbroadcastsd	LCPI0_1(%rip), %ymm0 ## ymm0 = [1.953125E-3,1.953125E-3,1.953125E-3,1.953125E-3]
	vmovaps	%ymm0, 192(%rsp)        ## 32-byte Spill
	vbroadcastsd	LCPI0_4(%rip), %ymm0 ## ymm0 = [3.814697265625E-6,3.814697265625E-6,3.814697265625E-6,3.814697265625E-6]
	vmovaps	%ymm0, 352(%rsp)        ## 32-byte Spill
	vbroadcastsd	LCPI0_5(%rip), %ymm0 ## ymm0 = [5.4413980927026531E+0,5.4413980927026531E+0,5.4413980927026531E+0,5.4413980927026531E+0]
	vmovaps	%ymm0, 320(%rsp)        ## 32-byte Spill
	vbroadcastss	LCPI0_6(%rip), %xmm0 ## xmm0 = [4,4,4,4]
	vmovaps	%xmm0, 304(%rsp)        ## 16-byte Spill
	vbroadcastss	LCPI0_7(%rip), %xmm0 ## xmm0 = [8,8,8,8]
	vmovapd	%xmm0, 288(%rsp)        ## 16-byte Spill
	movq	168(%rsp), %r12         ## 8-byte Reload
	.p2align	4, 0x90
LBB0_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_13 Depth 2
	vcvtsi2sd	%r13d, %xmm2, %xmm0
	vmovsd	%xmm0, 144(%rsp)        ## 8-byte Spill
	vmulsd	LCPI0_0(%rip), %xmm0, %xmm0
	vmovsd	LCPI0_1(%rip), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm0, %xmm0
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 224(%rsp)        ## 16-byte Spill
	vmovsd	144(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI0_2(%rip), %xmm0, %xmm0
	vmulsd	LCPI0_1(%rip), %xmm0, %xmm0
	callq	_sin
	movq	(%r12,%r13,8), %rbx
	vbroadcastsd	224(%rsp), %ymm1 ## 16-byte Folded Reload
	vmovaps	%ymm1, 448(%rsp)        ## 32-byte Spill
	vmovapd	%xmm0, 272(%rsp)        ## 16-byte Spill
	vbroadcastsd	%xmm0, %ymm0
	vmovapd	%ymm0, 416(%rsp)        ## 32-byte Spill
	xorl	%r14d, %r14d
	vmovaps	LCPI0_3(%rip), %xmm0    ## xmm0 = [0,1,2,3]
	.p2align	4, 0x90
LBB0_13:                                ##   Parent Loop BB0_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovaps	%xmm0, 144(%rsp)        ## 16-byte Spill
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, (%rsp)           ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, (%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, (%rsp)           ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	(%rsp), %xmm1           ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	320(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, (%rsp)           ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vpermilpd	$1, (%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	32(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, (%rsp)           ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	(%rsp), %xmm1           ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	64(%rsp), %ymm0, %ymm0  ## 32-byte Folded Reload
	vmulpd	448(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	416(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovupd	%ymm0, (%rbx,%r14,8)
	vmovdqa	304(%rsp), %xmm0        ## 16-byte Reload
	vpaddd	144(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, (%rsp)           ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, (%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, (%rsp)           ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	(%rsp), %xmm1           ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	320(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, (%rsp)           ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vpermilpd	$1, (%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	32(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, (%rsp)           ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	(%rsp), %xmm1           ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	64(%rsp), %ymm0, %ymm0  ## 32-byte Folded Reload
	vmulpd	448(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	416(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovupd	%ymm0, 32(%rbx,%r14,8)
	vmovdqa	144(%rsp), %xmm0        ## 16-byte Reload
	addq	$8, %r14
	vpaddd	288(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	cmpq	$512, %r14              ## imm = 0x200
	jne	LBB0_13
## %bb.14:                              ##   in Loop: Header=BB0_12 Depth=1
	vmovapd	224(%rsp), %xmm0        ## 16-byte Reload
	vmulsd	LCPI0_8(%rip), %xmm0, %xmm0
	vmulsd	272(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vmovsd	%xmm0, 4096(%rbx)
	incq	%r13
	cmpq	$513, %r13              ## imm = 0x201
	jne	LBB0_12
## %bb.15:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%eax, %eax
	movq	176(%rsp), %r14         ## 8-byte Reload
	.p2align	4, 0x90
LBB0_16:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_17 Depth 2
	movq	(%r12,%rax,8), %rcx
	movl	$8, %edx
	.p2align	4, 0x90
LBB0_17:                                ##   Parent Loop BB0_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	-64(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	vmovsd	-56(%rcx,%rdx,8), %xmm2 ## xmm2 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-48(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-40(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-32(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-24(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-16(%rcx,%rdx,8), %xmm1 ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	-8(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$9, %rdx
	cmpq	$521, %rdx              ## imm = 0x209
	jne	LBB0_17
## %bb.18:                              ##   in Loop: Header=BB0_16 Depth=1
	incq	%rax
	cmpq	$513, %rax              ## imm = 0x201
	jne	LBB0_16
## %bb.19:
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 192(%rsp)        ## 8-byte Spill
	xorl	%ebx, %ebx
	leaq	256(%rsp), %rdi
	xorl	%esi, %esi
	vzeroupper
	callq	_gettimeofday
	vmovsd	LCPI0_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	movl	$9, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	vmovsd	192(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	leaq	240(%rsp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	vmovapd	LCPI0_9(%rip), %xmm0    ## xmm0 = [NaN,NaN]
	leaq	L_str(%rip), %rdi
	vmovsd	LCPI0_10(%rip), %xmm1   ## xmm1 = mem[0],zero
	leaq	L_str.8(%rip), %rax
LBB0_20:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_21 Depth 2
	movq	(%r14,%rbx,8), %rcx
	movq	(%r15,%rbx,8), %rdx
	movl	$2, %esi
	.p2align	4, 0x90
LBB0_21:                                ##   Parent Loop BB0_20 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	-16(%rcx,%rsi,8), %xmm2 ## xmm2 = mem[0],zero
	vsubsd	-16(%rdx,%rsi,8), %xmm2, %xmm2
	vandpd	%xmm0, %xmm2, %xmm2
	vucomisd	%xmm1, %xmm2
	ja	LBB0_27
## %bb.22:                              ##   in Loop: Header=BB0_21 Depth=2
	vmovsd	-8(%rcx,%rsi,8), %xmm2  ## xmm2 = mem[0],zero
	vsubsd	-8(%rdx,%rsi,8), %xmm2, %xmm2
	vandpd	%xmm0, %xmm2, %xmm2
	vucomisd	%xmm1, %xmm2
	ja	LBB0_27
## %bb.23:                              ##   in Loop: Header=BB0_21 Depth=2
	vmovsd	(%rcx,%rsi,8), %xmm2    ## xmm2 = mem[0],zero
	vsubsd	(%rdx,%rsi,8), %xmm2, %xmm2
	vandpd	%xmm0, %xmm2, %xmm2
	vucomisd	%xmm1, %xmm2
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
	vcvtsi2sdq	240(%rsp), %xmm3, %xmm0
	vcvtsi2sdl	248(%rsp), %xmm3, %xmm1
	vmovsd	LCPI0_11(%rip), %xmm2   ## xmm2 = mem[0],zero
	vdivsd	%xmm2, %xmm1, %xmm1
	vcvtsi2sdq	256(%rsp), %xmm3, %xmm3
	vaddsd	%xmm0, %xmm1, %xmm0
	vcvtsi2sdl	264(%rsp), %xmm4, %xmm1
	vdivsd	%xmm2, %xmm1, %xmm1
	vaddsd	%xmm3, %xmm1, %xmm1
	vsubsd	%xmm1, %xmm0, %xmm0
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
	leaq	-40(%rbp), %rsp
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
LCPI4_3:
	.quad	4617812488033055453     ## double 5.4413980927026531
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI4_2:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI4_4:
	.long	4                       ## 0x4
LCPI4_5:
	.long	8                       ## 0x8
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
	andq	$-32, %rsp
	subq	$544, %rsp              ## imm = 0x220
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovapd	%xmm0, 192(%rsp)        ## 16-byte Spill
	movl	%esi, %r15d
	movq	%rdi, %r12
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	vmovapd	192(%rsp), %xmm1        ## 16-byte Reload
	testl	%r15d, %r15d
	jle	LBB4_13
## %bb.1:
	vmulsd	%xmm1, %xmm1, %xmm0
	movl	%r15d, %r13d
	movl	%r13d, %eax
	andl	$-4, %eax
	movq	%rax, 232(%rsp)         ## 8-byte Spill
	addq	$-4, %rax
	movq	%rax, 224(%rsp)         ## 8-byte Spill
	shrq	$2, %rax
	incq	%rax
	vbroadcastsd	%xmm1, %ymm2
	vmovapd	%ymm2, 256(%rsp)        ## 32-byte Spill
	vmovapd	%xmm0, 480(%rsp)        ## 16-byte Spill
	vbroadcastsd	%xmm0, %ymm0
	vmovapd	%ymm0, 384(%rsp)        ## 32-byte Spill
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rcx, 216(%rsp)         ## 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, 208(%rsp)         ## 8-byte Spill
	xorl	%ebx, %ebx
	vmovsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	vbroadcastsd	LCPI4_0(%rip), %ymm2 ## ymm2 = [3.1415926535897931E+0,3.1415926535897931E+0,3.1415926535897931E+0,3.1415926535897931E+0]
	vmovaps	%ymm2, 352(%rsp)        ## 32-byte Spill
	vbroadcastsd	LCPI4_3(%rip), %ymm2 ## ymm2 = [5.4413980927026531E+0,5.4413980927026531E+0,5.4413980927026531E+0,5.4413980927026531E+0]
	vmovapd	%ymm2, 320(%rsp)        ## 32-byte Spill
	movl	%r15d, 156(%rsp)        ## 4-byte Spill
	movq	%r12, 240(%rsp)         ## 8-byte Spill
	jmp	LBB4_2
	.p2align	4, 0x90
LBB4_12:                                ##   in Loop: Header=BB4_2 Depth=1
	movq	248(%rsp), %rbx         ## 8-byte Reload
	incq	%rbx
	cmpq	%r13, %rbx
	je	LBB4_13
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_7 Depth 2
                                        ##     Child Loop BB4_11 Depth 2
	vcvtsi2sd	%ebx, %xmm4, %xmm2
	vmovsd	%xmm2, 160(%rsp)        ## 8-byte Spill
	vmulsd	%xmm0, %xmm2, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 304(%rsp)        ## 16-byte Spill
	vmovsd	160(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI4_1(%rip), %xmm0, %xmm0
	vmulsd	192(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	callq	_sin
	movq	(%r12,%rbx,8), %r14
	cmpl	$4, %r15d
	vmovapd	%xmm0, 496(%rsp)        ## 16-byte Spill
	movq	%rbx, 248(%rsp)         ## 8-byte Spill
	jae	LBB4_4
## %bb.3:                               ##   in Loop: Header=BB4_2 Depth=1
	xorl	%ebx, %ebx
	vmovapd	192(%rsp), %xmm1        ## 16-byte Reload
	jmp	LBB4_11
	.p2align	4, 0x90
LBB4_4:                                 ##   in Loop: Header=BB4_2 Depth=1
	vmovdqa	304(%rsp), %xmm1        ## 16-byte Reload
	vpbroadcastq	%xmm1, %ymm2
	vbroadcastsd	%xmm0, %ymm3
	cmpq	$0, 224(%rsp)           ## 8-byte Folded Reload
	vmovdqa	%ymm2, 448(%rsp)        ## 32-byte Spill
	vmovapd	%ymm3, 416(%rsp)        ## 32-byte Spill
	je	LBB4_5
## %bb.6:                               ##   in Loop: Header=BB4_2 Depth=1
	movq	208(%rsp), %r12         ## 8-byte Reload
	xorl	%r15d, %r15d
	vmovaps	LCPI4_2(%rip), %xmm0    ## xmm0 = [0,1,2,3]
	.p2align	4, 0x90
LBB4_7:                                 ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovaps	%xmm0, 160(%rsp)        ## 16-byte Spill
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 96(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	96(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 96(%rsp)         ## 16-byte Spill
	vmovaps	64(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 96(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	320(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	32(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vmovaps	64(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	96(%rsp), %ymm0, %ymm0  ## 32-byte Folded Reload
	vmulpd	448(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	416(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovupd	%ymm0, (%r14,%r15,8)
	vpbroadcastd	LCPI4_4(%rip), %xmm0 ## xmm0 = [4,4,4,4]
	vpaddd	160(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 96(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	96(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 96(%rsp)         ## 16-byte Spill
	vmovaps	64(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 96(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	320(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	32(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vmovaps	64(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 64(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	416(%rsp), %ymm3        ## 32-byte Reload
	vmovapd	448(%rsp), %ymm2        ## 32-byte Reload
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	96(%rsp), %ymm0, %ymm0  ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm2, %ymm0
	vmulpd	%ymm0, %ymm3, %ymm0
	vmovupd	%ymm0, 32(%r14,%r15,8)
	addq	$8, %r15
	vpbroadcastd	LCPI4_5(%rip), %xmm0 ## xmm0 = [8,8,8,8]
	vmovdqa	160(%rsp), %xmm1        ## 16-byte Reload
	vpaddd	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm1, 160(%rsp)        ## 16-byte Spill
	vmovapd	160(%rsp), %xmm0        ## 16-byte Reload
	addq	$2, %r12
	jne	LBB4_7
## %bb.8:                               ##   in Loop: Header=BB4_2 Depth=1
	cmpq	$0, 216(%rsp)           ## 8-byte Folded Reload
	je	LBB4_10
LBB4_9:                                 ##   in Loop: Header=BB4_2 Depth=1
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 160(%rsp)        ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 32(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	160(%rsp), %ymm0        ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 32(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 160(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	32(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	96(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	320(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 160(%rsp)        ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 32(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 96(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 32(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	96(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 96(%rsp)         ## 16-byte Spill
	vmovaps	160(%rsp), %ymm0        ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 32(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 160(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	32(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 96(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	64(%rsp), %ymm0, %ymm0  ## 32-byte Folded Reload
	vmulpd	448(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	416(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovupd	%ymm0, (%r14,%r15,8)
LBB4_10:                                ##   in Loop: Header=BB4_2 Depth=1
	movq	232(%rsp), %rax         ## 8-byte Reload
	movq	%rax, %rbx
	cmpq	%r13, %rax
	vmovapd	192(%rsp), %xmm1        ## 16-byte Reload
	movl	156(%rsp), %r15d        ## 4-byte Reload
	movq	240(%rsp), %r12         ## 8-byte Reload
	vmovsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	je	LBB4_12
	.p2align	4, 0x90
LBB4_11:                                ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vcvtsi2sd	%ebx, %xmm4, %xmm0
	vmovsd	%xmm0, 64(%rsp)         ## 8-byte Spill
	vmulsd	LCPI4_0(%rip), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vzeroupper
	callq	_sin
	vmulsd	480(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vmovsd	%xmm0, 160(%rsp)        ## 8-byte Spill
	vmovsd	64(%rsp), %xmm0         ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI4_3(%rip), %xmm0, %xmm0
	vmulsd	192(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	callq	_sin
	vmovapd	496(%rsp), %xmm2        ## 16-byte Reload
	vmovapd	192(%rsp), %xmm1        ## 16-byte Reload
	vmulsd	160(%rsp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmulsd	304(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vmulsd	%xmm0, %xmm2, %xmm0
	vmovsd	%xmm0, (%r14,%rbx,8)
	vmovsd	LCPI4_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	incq	%rbx
	cmpq	%rbx, %r13
	jne	LBB4_11
	jmp	LBB4_12
LBB4_5:                                 ##   in Loop: Header=BB4_2 Depth=1
	xorl	%r15d, %r15d
	vmovapd	LCPI4_2(%rip), %xmm0    ## xmm0 = [0,1,2,3]
	cmpq	$0, 216(%rsp)           ## 8-byte Folded Reload
	jne	LBB4_9
	jmp	LBB4_10
LBB4_13:
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
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
	andl	$7, %edx
	movl	%r9d, %esi
	andl	$-8, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
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
	cmpq	$7, %r8
	jb	LBB5_5
	.p2align	4, 0x90
LBB5_4:                                 ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	vmovsd	8(%rax,%rcx,8), %xmm2   ## xmm2 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	24(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	32(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	40(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	48(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	56(%rax,%rcx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$8, %rcx
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
	vmovsd	(%rax,%rcx,8), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB5_7
	jmp	LBB5_8
LBB5_1:
	vxorpd	%xmm0, %xmm0, %xmm0
LBB5_9:
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
	.quad	4598175219545276416     ## double 0.25
LCPI6_2:
	.quad	4616189618054758400     ## double 4
LCPI6_4:
	.quad	8                       ## 0x8
LCPI6_5:
	.quad	16                      ## 0x10
LCPI6_6:
	.quad	24                      ## 0x18
LCPI6_7:
	.quad	4602678819172646912     ## double 0.5
	.section	__TEXT,__const
	.p2align	5
LCPI6_3:
	.quad	0                       ## 0x0
	.quad	1                       ## 0x1
	.quad	2                       ## 0x2
	.quad	3                       ## 0x3
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
	andq	$-32, %rsp
	subq	$448, %rsp              ## imm = 0x1C0
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovsd	%xmm0, 144(%rsp)        ## 8-byte Spill
                                        ## kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	movq	%rsi, 88(%rsp)          ## 8-byte Spill
	movq	%rdx, 120(%rsp)         ## 8-byte Spill
	vmovsd	%xmm1, 152(%rsp)        ## 8-byte Spill
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
	movq	%rdi, 64(%rsp)          ## 8-byte Spill
	movl	$1, %r12d
	movl	$2, 36(%rsp)            ## 4-byte Folded Spill
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
	vmovsd	144(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	%xmm0, %xmm0, %xmm0
	movq	8(%rdx), %rax
	vmulsd	8(%rax), %xmm0, %xmm0
	movq	8(%rsi), %rax
	vmovsd	%xmm0, 8(%rax)
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB6_17:
	movq	%rdi, 64(%rsp)          ## 8-byte Spill
	movl	%ebx, %eax
	orl	$1, %eax
	leal	1(%r12), %ecx
	movl	%ecx, 36(%rsp)          ## 4-byte Spill
LBB6_18:
	movl	%eax, 4(%rsp)           ## 4-byte Spill
	movslq	%eax, %r15
	leaq	(,%r15,8), %rdi
	movq	%rdi, 24(%rsp)          ## 8-byte Spill
	callq	_malloc
	movq	%rax, %r13
	movl	%ebx, 20(%rsp)          ## 4-byte Spill
	testl	%ebx, %ebx
	js	LBB6_21
## %bb.19:
	movl	4(%rsp), %r14d          ## 4-byte Reload
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
	movq	%r15, 8(%rsp)           ## 8-byte Spill
	movq	%r13, 80(%rsp)          ## 8-byte Spill
	movl	36(%rsp), %ebx          ## 4-byte Reload
	movslq	%ebx, %r14
	leaq	(,%r14,8), %rdi
	movq	%rdi, 40(%rsp)          ## 8-byte Spill
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
	movq	%r14, 56(%rsp)          ## 8-byte Spill
	movq	%r15, 96(%rsp)          ## 8-byte Spill
	movq	%r13, 48(%rsp)          ## 8-byte Spill
	movq	24(%rsp), %rdi          ## 8-byte Reload
	callq	_malloc
	movq	%rax, %r13
	cmpl	$0, 20(%rsp)            ## 4-byte Folded Reload
	movq	8(%rsp), %r14           ## 8-byte Reload
	js	LBB6_27
## %bb.25:
	movl	4(%rsp), %r15d          ## 4-byte Reload
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
	movq	%r13, 24(%rsp)          ## 8-byte Spill
	movq	40(%rsp), %rdi          ## 8-byte Reload
	callq	_malloc
	movq	%rax, %r13
	movq	%r12, 72(%rsp)          ## 8-byte Spill
	testl	%r12d, %r12d
	movq	48(%rsp), %r15          ## 8-byte Reload
	movq	56(%rsp), %r14          ## 8-byte Reload
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
	vmovsd	152(%rsp), %xmm8        ## 8-byte Reload
                                        ## xmm8 = mem[0],zero
	vdivsd	%xmm8, %xmm8, %xmm0
	vucomisd	LCPI6_0(%rip), %xmm0
	movl	20(%rsp), %r8d          ## 4-byte Reload
	movq	120(%rsp), %r9          ## 8-byte Reload
	movq	80(%rsp), %r11          ## 8-byte Reload
	movq	%r13, 128(%rsp)         ## 8-byte Spill
	jbe	LBB6_121
## %bb.31:
	movq	64(%rsp), %rax          ## 8-byte Reload
	decl	%eax
	movq	%rax, 64(%rsp)          ## 8-byte Spill
	movl	%r8d, %edi
	leaq	-1(%rdi), %rcx
	movl	4(%rsp), %r10d          ## 4-byte Reload
	movl	%r10d, %eax
	andl	$-16, %eax
	movq	%rax, 256(%rsp)         ## 8-byte Spill
	addq	$-16, %rax
	movq	%rax, 248(%rsp)         ## 8-byte Spill
	shrq	$4, %rax
	incq	%rax
	movl	%ecx, %r14d
	andl	$3, %r14d
	movq	%rcx, %rdx
	movq	%rcx, 56(%rsp)          ## 8-byte Spill
	movq	%rcx, %rsi
	andq	$-16, %rsi
	movq	%rdi, %rcx
	negq	%rcx
	movq	%rcx, 280(%rsp)         ## 8-byte Spill
	movq	48(%rsp), %r12          ## 8-byte Reload
	movl	%r12d, %ecx
	andl	$15, %ecx
	testq	%rcx, %rcx
	movl	$16, %edx
	cmovneq	%rcx, %rdx
	movq	%r12, %rcx
	subq	%rdx, %rcx
	movq	%rcx, 240(%rsp)         ## 8-byte Spill
	movl	%r10d, %ecx
	andl	$7, %ecx
	movq	%rcx, 40(%rsp)          ## 8-byte Spill
	movl	%eax, %ecx
	andl	$1, %ecx
	movq	%rdi, %rdx
	subq	%r14, %rdx
	movq	%rdx, 168(%rsp)         ## 8-byte Spill
	movq	%rcx, 232(%rsp)         ## 8-byte Spill
	subq	%rax, %rcx
	movq	%rcx, 208(%rsp)         ## 8-byte Spill
	movl	%r10d, %eax
	andl	$-8, %eax
	movq	%rax, 184(%rsp)         ## 8-byte Spill
	vmovsd	LCPI6_2(%rip), %xmm7    ## xmm7 = mem[0],zero
	vbroadcastsd	LCPI6_2(%rip), %ymm9 ## ymm9 = [4.0E+0,4.0E+0,4.0E+0,4.0E+0]
	vmovsd	LCPI6_1(%rip), %xmm4    ## xmm4 = mem[0],zero
	vmovdqa	LCPI6_3(%rip), %ymm10   ## ymm10 = [0,1,2,3]
	vpbroadcastq	LCPI6_4(%rip), %ymm11 ## ymm11 = [8,8,8,8]
	vpbroadcastq	LCPI6_5(%rip), %ymm12 ## ymm12 = [16,16,16,16]
	vpbroadcastq	LCPI6_6(%rip), %ymm13 ## ymm13 = [24,24,24,24]
	movl	%r10d, %r15d
	leaq	(,%r15,8), %r10
	movl	72(%rsp), %eax          ## 4-byte Reload
	leaq	-1(%r12,%r12), %rcx
	movq	%rcx, 272(%rsp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, 200(%rsp)         ## 8-byte Spill
	leaq	1(%rdi), %rax
	movq	%rax, 264(%rsp)         ## 8-byte Spill
	movq	%rdi, %rax
	movq	%rdi, 8(%rsp)           ## 8-byte Spill
	leaq	-2(%rdi), %r12
	leaq	-1(%r15), %rbx
	movq	%rsi, 224(%rsp)         ## 8-byte Spill
	leaq	1(%rsi), %rax
	movq	%rax, 216(%rsp)         ## 8-byte Spill
	leaq	(,%rcx,8), %r13
	movq	%r15, 176(%rsp)         ## 8-byte Spill
	movq	%r12, 192(%rsp)         ## 8-byte Spill
	vmovapd	%ymm9, 384(%rsp)        ## 32-byte Spill
	vmovdqa	%ymm11, 352(%rsp)       ## 32-byte Spill
	vmovdqa	%ymm12, 320(%rsp)       ## 32-byte Spill
	vmovdqa	%ymm13, 288(%rsp)       ## 32-byte Spill
	movq	%r10, 136(%rsp)         ## 8-byte Spill
	movq	%rbx, 160(%rsp)         ## 8-byte Spill
	jmp	LBB6_33
	.p2align	4, 0x90
LBB6_32:                                ##   in Loop: Header=BB6_33 Depth=1
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vdivsd	%xmm8, %xmm0, %xmm0
	vucomisd	LCPI6_0(%rip), %xmm0
	jbe	LBB6_121
LBB6_33:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_36 Depth 2
                                        ##       Child Loop BB6_37 Depth 3
                                        ##       Child Loop BB6_40 Depth 3
                                        ##     Child Loop BB6_43 Depth 2
                                        ##       Child Loop BB6_53 Depth 3
                                        ##       Child Loop BB6_47 Depth 3
                                        ##     Child Loop BB6_58 Depth 2
                                        ##       Child Loop BB6_64 Depth 3
                                        ##       Child Loop BB6_68 Depth 3
                                        ##       Child Loop BB6_72 Depth 3
                                        ##     Child Loop BB6_77 Depth 2
                                        ##     Child Loop BB6_80 Depth 2
                                        ##     Child Loop BB6_83 Depth 2
                                        ##       Child Loop BB6_84 Depth 3
                                        ##     Child Loop BB6_89 Depth 2
                                        ##       Child Loop BB6_96 Depth 3
                                        ##       Child Loop BB6_101 Depth 3
                                        ##       Child Loop BB6_103 Depth 3
                                        ##     Child Loop BB6_108 Depth 2
                                        ##       Child Loop BB6_109 Depth 3
                                        ##       Child Loop BB6_112 Depth 3
                                        ##     Child Loop BB6_116 Depth 2
                                        ##       Child Loop BB6_117 Depth 3
                                        ##       Child Loop BB6_120 Depth 3
	cmpl	$2, %r8d
	jl	LBB6_55
## %bb.34:                              ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %r8d
	movq	168(%rsp), %rax         ## 8-byte Reload
	jmp	LBB6_36
	.p2align	4, 0x90
LBB6_35:                                ##   in Loop: Header=BB6_36 Depth=2
	cmpq	8(%rsp), %r8            ## 8-byte Folded Reload
	je	LBB6_41
LBB6_36:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_37 Depth 3
                                        ##       Child Loop BB6_40 Depth 3
	movq	88(%rsp), %rdx          ## 8-byte Reload
	movq	-8(%rdx,%r8,8), %rcx
	movq	(%rdx,%r8,8), %rsi
	movq	8(%rdx,%r8,8), %rdx
	movq	(%r9,%r8,8), %rdi
	vmovsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movl	$1, %ebx
	cmpq	$3, %r12
	jb	LBB6_38
	.p2align	4, 0x90
LBB6_37:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_36 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rbx,8), %xmm1    ## xmm1 = mem[0],zero
	vaddsd	(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	8(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rbx,8)
	vmovsd	8(%rcx,%rbx,8), %xmm1   ## xmm1 = mem[0],zero
	vaddsd	8(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	16(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rbx,8)
	vmovsd	16(%rcx,%rbx,8), %xmm1  ## xmm1 = mem[0],zero
	vaddsd	16(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	24(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rsi,%rbx,8)
	vmovsd	24(%rcx,%rbx,8), %xmm1  ## xmm1 = mem[0],zero
	vaddsd	24(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	32(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 24(%rsi,%rbx,8)
	addq	$4, %rbx
	cmpq	%rbx, %rax
	jne	LBB6_37
LBB6_38:                                ##   in Loop: Header=BB6_36 Depth=2
	incq	%r8
	testq	%r14, %r14
	je	LBB6_35
## %bb.39:                              ##   in Loop: Header=BB6_36 Depth=2
	leaq	(%rsi,%rbx,8), %rsi
	addq	$8, %rsi
	leaq	(%rdi,%rbx,8), %rdi
	leaq	(%rdx,%rbx,8), %rdx
	leaq	(%rcx,%rbx,8), %rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_40:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_36 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rbx,8), %xmm1    ## xmm1 = mem[0],zero
	vaddsd	(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rsi,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_40
	jmp	LBB6_35
	.p2align	4, 0x90
LBB6_41:                                ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %r8d
	jmp	LBB6_43
	.p2align	4, 0x90
LBB6_42:                                ##   in Loop: Header=BB6_43 Depth=2
	cmpq	%r9, %r8
	movq	120(%rsp), %r9          ## 8-byte Reload
	movq	80(%rsp), %r11          ## 8-byte Reload
	je	LBB6_55
LBB6_43:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_53 Depth 3
                                        ##       Child Loop BB6_47 Depth 3
	movq	88(%rsp), %rax          ## 8-byte Reload
	movq	%r11, %rcx
	movq	-8(%rax,%r8,8), %r11
	movq	(%rax,%r8,8), %rdx
	movq	8(%rax,%r8,8), %rsi
	movq	(%r9,%r8,8), %rdi
	movq	(%rcx,%r8,8), %rbx
	incq	%r8
	movl	$1, %eax
	cmpq	$16, 56(%rsp)           ## 8-byte Folded Reload
	movq	8(%rsp), %r9            ## 8-byte Reload
	jae	LBB6_48
LBB6_44:                                ##   in Loop: Header=BB6_43 Depth=2
	movq	%r9, %r10
	movq	%rax, %r9
	notq	%r9
	testb	$1, %r10b
	jne	LBB6_46
## %bb.45:                              ##   in Loop: Header=BB6_43 Depth=2
	vmulsd	(%rdx,%rax,8), %xmm7, %xmm0
	vsubsd	(%r11,%rax,8), %xmm0, %xmm0
	vsubsd	(%rsi,%rax,8), %xmm0, %xmm0
	vsubsd	-8(%rdx,%rax,8), %xmm0, %xmm0
	vsubsd	8(%rdx,%rax,8), %xmm0, %xmm0
	vsubsd	(%rdi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%rax,8)
	incq	%rax
LBB6_46:                                ##   in Loop: Header=BB6_43 Depth=2
	cmpq	280(%rsp), %r9          ## 8-byte Folded Reload
	movq	8(%rsp), %r9            ## 8-byte Reload
	je	LBB6_42
	.p2align	4, 0x90
LBB6_47:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_43 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	(%rdx,%rax,8), %xmm7, %xmm0
	vsubsd	(%r11,%rax,8), %xmm0, %xmm0
	vsubsd	(%rsi,%rax,8), %xmm0, %xmm0
	vsubsd	-8(%rdx,%rax,8), %xmm0, %xmm0
	vsubsd	8(%rdx,%rax,8), %xmm0, %xmm0
	vsubsd	(%rdi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rbx,%rax,8)
	vmulsd	8(%rdx,%rax,8), %xmm7, %xmm0
	vsubsd	8(%r11,%rax,8), %xmm0, %xmm0
	vsubsd	8(%rsi,%rax,8), %xmm0, %xmm0
	vsubsd	(%rdx,%rax,8), %xmm0, %xmm0
	vsubsd	16(%rdx,%rax,8), %xmm0, %xmm0
	vsubsd	8(%rdi,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rbx,%rax,8)
	addq	$2, %rax
	cmpq	%rax, %r9
	jne	LBB6_47
	jmp	LBB6_42
	.p2align	4, 0x90
LBB6_48:                                ##   in Loop: Header=BB6_43 Depth=2
	leaq	8(%rbx), %r12
	movq	8(%rsp), %rax           ## 8-byte Reload
	leaq	(%rbx,%rax,8), %r9
	movq	264(%rsp), %rax         ## 8-byte Reload
	leaq	(%rdx,%rax,8), %r10
	leaq	8(%r11), %rax
	movq	%rax, 104(%rsp)         ## 8-byte Spill
	movq	8(%rsp), %rax           ## 8-byte Reload
	leaq	(%r11,%rax,8), %rax
	leaq	8(%rsi), %r15
	cmpq	%r10, %r12
	setb	112(%rsp)               ## 1-byte Folded Spill
	cmpq	%r9, %rdx
	setb	3(%rsp)                 ## 1-byte Folded Spill
	cmpq	%rax, %r12
	setb	%cl
	cmpq	%r9, 104(%rsp)          ## 8-byte Folded Reload
	movq	8(%rsp), %rax           ## 8-byte Reload
	leaq	(%rsi,%rax,8), %r10
	setb	104(%rsp)               ## 1-byte Folded Spill
	cmpq	%r10, %r12
	setb	%r10b
	cmpq	%r9, %r15
	movq	8(%rsp), %rax           ## 8-byte Reload
	leaq	(%rdi,%rax,8), %r15
	setb	2(%rsp)                 ## 1-byte Folded Spill
	cmpq	%r15, %r12
	movq	176(%rsp), %r15         ## 8-byte Reload
	leaq	8(%rdi), %rax
	setb	(%rsp)                  ## 1-byte Folded Spill
	cmpq	%r9, %rax
	movq	8(%rsp), %r9            ## 8-byte Reload
	setb	1(%rsp)                 ## 1-byte Folded Spill
	movl	$1, %eax
	movb	3(%rsp), %r12b          ## 1-byte Reload
	testb	%r12b, 112(%rsp)        ## 1-byte Folded Reload
	jne	LBB6_44
## %bb.49:                              ##   in Loop: Header=BB6_43 Depth=2
	movl	$1, %eax
	andb	104(%rsp), %cl          ## 1-byte Folded Reload
	jne	LBB6_44
## %bb.50:                              ##   in Loop: Header=BB6_43 Depth=2
	movl	$1, %eax
	andb	2(%rsp), %r10b          ## 1-byte Folded Reload
	jne	LBB6_44
## %bb.51:                              ##   in Loop: Header=BB6_43 Depth=2
	movl	$1, %eax
	movb	(%rsp), %cl             ## 1-byte Reload
	andb	1(%rsp), %cl            ## 1-byte Folded Reload
	jne	LBB6_44
## %bb.52:                              ##   in Loop: Header=BB6_43 Depth=2
	xorl	%eax, %eax
	movq	224(%rsp), %r10         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_53:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_43 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulpd	8(%rdx,%rax,8), %ymm9, %ymm0
	vmulpd	40(%rdx,%rax,8), %ymm9, %ymm1
	vmulpd	72(%rdx,%rax,8), %ymm9, %ymm2
	vmulpd	104(%rdx,%rax,8), %ymm9, %ymm3
	vsubpd	8(%r11,%rax,8), %ymm0, %ymm0
	vsubpd	40(%r11,%rax,8), %ymm1, %ymm1
	vsubpd	72(%r11,%rax,8), %ymm2, %ymm2
	vsubpd	104(%r11,%rax,8), %ymm3, %ymm3
	vsubpd	8(%rsi,%rax,8), %ymm0, %ymm0
	vsubpd	40(%rsi,%rax,8), %ymm1, %ymm1
	vsubpd	72(%rsi,%rax,8), %ymm2, %ymm2
	vsubpd	104(%rsi,%rax,8), %ymm3, %ymm3
	vsubpd	(%rdx,%rax,8), %ymm0, %ymm0
	vsubpd	32(%rdx,%rax,8), %ymm1, %ymm1
	vsubpd	64(%rdx,%rax,8), %ymm2, %ymm2
	vsubpd	96(%rdx,%rax,8), %ymm3, %ymm3
	vsubpd	16(%rdx,%rax,8), %ymm0, %ymm0
	vsubpd	48(%rdx,%rax,8), %ymm1, %ymm1
	vsubpd	80(%rdx,%rax,8), %ymm2, %ymm2
	vsubpd	112(%rdx,%rax,8), %ymm3, %ymm3
	vsubpd	8(%rdi,%rax,8), %ymm0, %ymm0
	vsubpd	40(%rdi,%rax,8), %ymm1, %ymm1
	vsubpd	72(%rdi,%rax,8), %ymm2, %ymm2
	vsubpd	104(%rdi,%rax,8), %ymm3, %ymm3
	vmovupd	%ymm0, 8(%rbx,%rax,8)
	vmovupd	%ymm1, 40(%rbx,%rax,8)
	vmovupd	%ymm2, 72(%rbx,%rax,8)
	vmovupd	%ymm3, 104(%rbx,%rax,8)
	addq	$16, %rax
	cmpq	%rax, %r10
	jne	LBB6_53
## %bb.54:                              ##   in Loop: Header=BB6_43 Depth=2
	movq	216(%rsp), %rax         ## 8-byte Reload
	cmpq	%r10, 56(%rsp)          ## 8-byte Folded Reload
	je	LBB6_42
	jmp	LBB6_44
	.p2align	4, 0x90
LBB6_55:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, 72(%rsp)            ## 4-byte Folded Reload
	movq	48(%rsp), %r10          ## 8-byte Reload
	movq	96(%rsp), %rdi          ## 8-byte Reload
	js	LBB6_73
## %bb.56:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%r8d, %r8d
	jmp	LBB6_58
	.p2align	4, 0x90
LBB6_57:                                ##   in Loop: Header=BB6_58 Depth=2
	incq	%r8
	cmpq	%r10, %r8
	je	LBB6_73
LBB6_58:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_64 Depth 3
                                        ##       Child Loop BB6_68 Depth 3
                                        ##       Child Loop BB6_72 Depth 3
	movq	%r8, %rax
	shlq	$4, %rax
	movq	(%r11,%rax), %rdx
	movq	(%rdi,%r8,8), %rcx
	cmpl	$17, 36(%rsp)           ## 4-byte Folded Reload
	jb	LBB6_59
## %bb.60:                              ##   in Loop: Header=BB6_58 Depth=2
	movq	272(%rsp), %rax         ## 8-byte Reload
	leaq	(%rdx,%rax,8), %rax
	cmpq	%rax, %rcx
	jae	LBB6_63
## %bb.61:                              ##   in Loop: Header=BB6_58 Depth=2
	leaq	(%rcx,%r10,8), %rax
	cmpq	%rax, %rdx
	jae	LBB6_63
LBB6_59:                                ##   in Loop: Header=BB6_58 Depth=2
	xorl	%esi, %esi
	jmp	LBB6_66
	.p2align	4, 0x90
LBB6_63:                                ##   in Loop: Header=BB6_58 Depth=2
	xorl	%esi, %esi
	vmovdqa	%ymm10, %ymm0
	movq	240(%rsp), %rax         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_64:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_58 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vpaddq	%ymm0, %ymm0, %ymm1
	vpaddq	%ymm1, %ymm11, %ymm2
	vpaddq	%ymm1, %ymm12, %ymm3
	vpaddq	%ymm1, %ymm13, %ymm4
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vgatherqpd	%ymm5, (%rdx,%ymm1,8), %ymm6
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vgatherqpd	%ymm1, (%rdx,%ymm2,8), %ymm5
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vgatherqpd	%ymm1, (%rdx,%ymm3,8), %ymm2
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vgatherqpd	%ymm1, (%rdx,%ymm4,8), %ymm3
	vmulpd	%ymm6, %ymm9, %ymm1
	vmulpd	%ymm5, %ymm9, %ymm4
	vmulpd	%ymm2, %ymm9, %ymm2
	vmovupd	%ymm1, (%rcx,%rsi,8)
	vmovupd	%ymm4, 32(%rcx,%rsi,8)
	vmovupd	%ymm2, 64(%rcx,%rsi,8)
	vmulpd	%ymm3, %ymm9, %ymm1
	vmovupd	%ymm1, 96(%rcx,%rsi,8)
	addq	$16, %rsi
	vpaddq	%ymm0, %ymm12, %ymm0
	cmpq	%rsi, %rax
	jne	LBB6_64
## %bb.65:                              ##   in Loop: Header=BB6_58 Depth=2
	movq	%rax, %rsi
LBB6_66:                                ##   in Loop: Header=BB6_58 Depth=2
	movl	%r10d, %ebx
	subl	%esi, %ebx
	movq	%rsi, %r9
	notq	%r9
	addq	%r10, %r9
	andq	$7, %rbx
	je	LBB6_70
## %bb.67:                              ##   in Loop: Header=BB6_58 Depth=2
	leaq	(,%rsi,8), %rax
	negq	%rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB6_68:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_58 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	(%rdx,%rax,2), %xmm7, %xmm0
	vmovsd	%xmm0, (%rcx,%rax)
	decq	%rdi
	addq	$8, %rax
	cmpq	%rdi, %rbx
	jne	LBB6_68
## %bb.69:                              ##   in Loop: Header=BB6_58 Depth=2
	subq	%rdi, %rsi
	movq	96(%rsp), %rdi          ## 8-byte Reload
LBB6_70:                                ##   in Loop: Header=BB6_58 Depth=2
	cmpq	$7, %r9
	jb	LBB6_57
## %bb.71:                              ##   in Loop: Header=BB6_58 Depth=2
	movq	%rsi, %rax
	shlq	$4, %rax
	addq	%rax, %rdx
	addq	$112, %rdx
	.p2align	4, 0x90
LBB6_72:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_58 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	-112(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	vmulsd	-96(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 8(%rcx,%rsi,8)
	vmulsd	-80(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 16(%rcx,%rsi,8)
	vmulsd	-64(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 24(%rcx,%rsi,8)
	vmulsd	-48(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 32(%rcx,%rsi,8)
	vmulsd	-32(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 40(%rcx,%rsi,8)
	vmulsd	-16(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 48(%rcx,%rsi,8)
	vmulsd	(%rdx), %xmm7, %xmm0
	vmovsd	%xmm0, 56(%rcx,%rsi,8)
	addq	$8, %rsi
	subq	$-128, %rdx
	cmpq	%rsi, %r10
	jne	LBB6_72
	jmp	LBB6_57
	.p2align	4, 0x90
LBB6_73:                                ##   in Loop: Header=BB6_33 Depth=1
	movq	%rdi, %rdx
	movq	64(%rsp), %rdi          ## 8-byte Reload
                                        ## kill: def $edi killed $edi killed $rdi
	movq	128(%rsp), %rsi         ## 8-byte Reload
	vmovsd	144(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmovapd	%xmm8, %xmm1
	vzeroupper
	callq	_multigrid_vcycle
	cmpl	$0, 20(%rsp)            ## 4-byte Folded Reload
	js	LBB6_81
## %bb.74:                              ##   in Loop: Header=BB6_33 Depth=1
	cmpq	$7, 160(%rsp)           ## 8-byte Folded Reload
	jae	LBB6_76
## %bb.75:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%ebx, %ebx
	movq	136(%rsp), %r12         ## 8-byte Reload
	jmp	LBB6_78
	.p2align	4, 0x90
LBB6_76:                                ##   in Loop: Header=BB6_33 Depth=1
	xorl	%ebx, %ebx
	movq	24(%rsp), %r15          ## 8-byte Reload
	movq	136(%rsp), %r12         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_77:                                ##   Parent Loop BB6_33 Depth=1
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
	cmpq	%rbx, 184(%rsp)         ## 8-byte Folded Reload
	jne	LBB6_77
LBB6_78:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpq	$0, 40(%rsp)            ## 8-byte Folded Reload
	movq	176(%rsp), %r15         ## 8-byte Reload
	je	LBB6_81
## %bb.79:                              ##   in Loop: Header=BB6_33 Depth=1
	movq	24(%rsp), %rax          ## 8-byte Reload
	leaq	(%rax,%rbx,8), %rax
	movq	%rax, 112(%rsp)         ## 8-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_80:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	112(%rsp), %rax         ## 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	movq	%r12, %rsi
	callq	___bzero
	incq	%rbx
	cmpq	%rbx, 40(%rsp)          ## 8-byte Folded Reload
	jne	LBB6_80
LBB6_81:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, 72(%rsp)            ## 4-byte Folded Reload
	movq	120(%rsp), %r9          ## 8-byte Reload
	vmovsd	152(%rsp), %xmm8        ## 8-byte Reload
                                        ## xmm8 = mem[0],zero
	movl	4(%rsp), %r10d          ## 4-byte Reload
	movq	80(%rsp), %r11          ## 8-byte Reload
	vmovsd	LCPI6_2(%rip), %xmm7    ## xmm7 = mem[0],zero
	vmovapd	384(%rsp), %ymm9        ## 32-byte Reload
	vmovsd	LCPI6_1(%rip), %xmm4    ## xmm4 = mem[0],zero
	vmovdqa	LCPI6_3(%rip), %ymm10   ## ymm10 = [0,1,2,3]
	vmovdqa	352(%rsp), %ymm11       ## 32-byte Reload
	vmovdqa	320(%rsp), %ymm12       ## 32-byte Reload
	vmovdqa	288(%rsp), %ymm13       ## 32-byte Reload
	vmovsd	LCPI6_7(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	200(%rsp), %r12         ## 8-byte Reload
	jle	LBB6_86
## %bb.82:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB6_83:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_84 Depth 3
	movq	128(%rsp), %rax         ## 8-byte Reload
	movq	(%rax,%r8,8), %rcx
	movq	8(%rax,%r8,8), %rdx
	movq	%r8, %rdi
	shlq	$4, %rdi
	movq	24(%rsp), %rax          ## 8-byte Reload
	movq	(%rax,%rdi), %rsi
	movq	8(%rax,%rdi), %rdi
	incq	%r8
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_84:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_83 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	(%rcx,%rbx), %rax
	movq	%rax, (%rsi,%rbx,2)
	vmovsd	(%rcx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	vaddsd	(%rdx,%rbx), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%rbx,2)
	vmovsd	(%rcx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	vaddsd	8(%rcx,%rbx), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rbx,2)
	vmovsd	(%rcx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	vaddsd	8(%rcx,%rbx), %xmm0, %xmm0
	vaddsd	(%rdx,%rbx), %xmm0, %xmm0
	vaddsd	8(%rdx,%rbx), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rbx,2)
	addq	$8, %rbx
	cmpq	%rbx, %r13
	jne	LBB6_84
## %bb.85:                              ##   in Loop: Header=BB6_83 Depth=2
	cmpq	%r12, %r8
	jne	LBB6_83
LBB6_86:                                ##   in Loop: Header=BB6_33 Depth=1
	movl	20(%rsp), %r8d          ## 4-byte Reload
	testl	%r8d, %r8d
	movq	192(%rsp), %r12         ## 8-byte Reload
	js	LBB6_105
## %bb.87:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	jmp	LBB6_89
	.p2align	4, 0x90
LBB6_88:                                ##   in Loop: Header=BB6_89 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	je	LBB6_105
LBB6_89:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_96 Depth 3
                                        ##       Child Loop BB6_101 Depth 3
                                        ##       Child Loop BB6_103 Depth 3
	movq	88(%rsp), %rcx          ## 8-byte Reload
	movq	(%rcx,%rax,8), %rcx
	movq	24(%rsp), %rdx          ## 8-byte Reload
	movq	(%rdx,%rax,8), %rdx
	cmpl	$16, %r10d
	jb	LBB6_90
## %bb.91:                              ##   in Loop: Header=BB6_89 Depth=2
	leaq	(%rdx,%r15,8), %rsi
	cmpq	%rsi, %rcx
	jae	LBB6_94
## %bb.92:                              ##   in Loop: Header=BB6_89 Depth=2
	leaq	(%rcx,%r15,8), %rsi
	cmpq	%rsi, %rdx
	jae	LBB6_94
LBB6_90:                                ##   in Loop: Header=BB6_89 Depth=2
	xorl	%esi, %esi
LBB6_100:                               ##   in Loop: Header=BB6_89 Depth=2
	movq	%rsi, %rdi
	notq	%rdi
	addq	%r15, %rdi
	movq	40(%rsp), %rbx          ## 8-byte Reload
	testq	%rbx, %rbx
	je	LBB6_102
	.p2align	4, 0x90
LBB6_101:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_89 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	vsubsd	(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	incq	%rsi
	decq	%rbx
	jne	LBB6_101
LBB6_102:                               ##   in Loop: Header=BB6_89 Depth=2
	cmpq	$7, %rdi
	jb	LBB6_88
	.p2align	4, 0x90
LBB6_103:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_89 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	vmovsd	8(%rcx,%rsi,8), %xmm1   ## xmm1 = mem[0],zero
	vsubsd	(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	vsubsd	8(%rdx,%rsi,8), %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rcx,%rsi,8)
	vmovsd	16(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	16(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rcx,%rsi,8)
	vmovsd	24(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	24(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, 24(%rcx,%rsi,8)
	vmovsd	32(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	32(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rcx,%rsi,8)
	vmovsd	40(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	40(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rcx,%rsi,8)
	vmovsd	48(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	48(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rcx,%rsi,8)
	vmovsd	56(%rcx,%rsi,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	56(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, 56(%rcx,%rsi,8)
	addq	$8, %rsi
	cmpq	%rsi, %r15
	jne	LBB6_103
	jmp	LBB6_88
	.p2align	4, 0x90
LBB6_94:                                ##   in Loop: Header=BB6_89 Depth=2
	cmpq	$0, 248(%rsp)           ## 8-byte Folded Reload
	je	LBB6_104
## %bb.95:                              ##   in Loop: Header=BB6_89 Depth=2
	movq	208(%rsp), %rdi         ## 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB6_96:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_89 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovupd	(%rcx,%rsi,8), %ymm0
	vmovupd	32(%rcx,%rsi,8), %ymm1
	vmovupd	64(%rcx,%rsi,8), %ymm2
	vmovupd	96(%rcx,%rsi,8), %ymm3
	vsubpd	(%rdx,%rsi,8), %ymm0, %ymm0
	vsubpd	32(%rdx,%rsi,8), %ymm1, %ymm1
	vsubpd	64(%rdx,%rsi,8), %ymm2, %ymm2
	vsubpd	96(%rdx,%rsi,8), %ymm3, %ymm3
	vmovupd	%ymm0, (%rcx,%rsi,8)
	vmovupd	%ymm1, 32(%rcx,%rsi,8)
	vmovupd	%ymm2, 64(%rcx,%rsi,8)
	vmovupd	%ymm3, 96(%rcx,%rsi,8)
	vmovupd	128(%rcx,%rsi,8), %ymm0
	vmovupd	160(%rcx,%rsi,8), %ymm1
	vmovupd	192(%rcx,%rsi,8), %ymm2
	vmovupd	224(%rcx,%rsi,8), %ymm3
	vsubpd	128(%rdx,%rsi,8), %ymm0, %ymm0
	vsubpd	160(%rdx,%rsi,8), %ymm1, %ymm1
	vsubpd	192(%rdx,%rsi,8), %ymm2, %ymm2
	vsubpd	224(%rdx,%rsi,8), %ymm3, %ymm3
	vmovupd	%ymm0, 128(%rcx,%rsi,8)
	vmovupd	%ymm1, 160(%rcx,%rsi,8)
	vmovupd	%ymm2, 192(%rcx,%rsi,8)
	vmovupd	%ymm3, 224(%rcx,%rsi,8)
	addq	$32, %rsi
	addq	$2, %rdi
	jne	LBB6_96
## %bb.97:                              ##   in Loop: Header=BB6_89 Depth=2
	cmpq	$0, 232(%rsp)           ## 8-byte Folded Reload
	je	LBB6_99
LBB6_98:                                ##   in Loop: Header=BB6_89 Depth=2
	vmovupd	(%rcx,%rsi,8), %ymm0
	vmovupd	32(%rcx,%rsi,8), %ymm1
	vmovupd	64(%rcx,%rsi,8), %ymm2
	vmovupd	96(%rcx,%rsi,8), %ymm3
	vsubpd	(%rdx,%rsi,8), %ymm0, %ymm0
	vsubpd	32(%rdx,%rsi,8), %ymm1, %ymm1
	vsubpd	64(%rdx,%rsi,8), %ymm2, %ymm2
	vsubpd	96(%rdx,%rsi,8), %ymm3, %ymm3
	vmovupd	%ymm0, (%rcx,%rsi,8)
	vmovupd	%ymm1, 32(%rcx,%rsi,8)
	vmovupd	%ymm2, 64(%rcx,%rsi,8)
	vmovupd	%ymm3, 96(%rcx,%rsi,8)
LBB6_99:                                ##   in Loop: Header=BB6_89 Depth=2
	movq	256(%rsp), %rdi         ## 8-byte Reload
	movq	%rdi, %rsi
	cmpq	%r15, %rdi
	je	LBB6_88
	jmp	LBB6_100
LBB6_104:                               ##   in Loop: Header=BB6_89 Depth=2
	xorl	%esi, %esi
	cmpq	$0, 232(%rsp)           ## 8-byte Folded Reload
	jne	LBB6_98
	jmp	LBB6_99
	.p2align	4, 0x90
LBB6_105:                               ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$2, %r8d
	movq	168(%rsp), %rax         ## 8-byte Reload
	jl	LBB6_113
## %bb.106:                             ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %r10d
	jmp	LBB6_108
	.p2align	4, 0x90
LBB6_107:                               ##   in Loop: Header=BB6_108 Depth=2
	cmpq	8(%rsp), %r10           ## 8-byte Folded Reload
	je	LBB6_113
LBB6_108:                               ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_109 Depth 3
                                        ##       Child Loop BB6_112 Depth 3
	movq	88(%rsp), %rdx          ## 8-byte Reload
	movq	-8(%rdx,%r10,8), %rcx
	movq	(%rdx,%r10,8), %rsi
	movq	8(%rdx,%r10,8), %rdx
	movq	(%r9,%r10,8), %rdi
	vmovsd	(%rsi), %xmm0           ## xmm0 = mem[0],zero
	movl	$1, %ebx
	cmpq	$3, %r12
	jb	LBB6_110
	.p2align	4, 0x90
LBB6_109:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_108 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rbx,8), %xmm1    ## xmm1 = mem[0],zero
	vaddsd	(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	8(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rbx,8)
	vmovsd	8(%rcx,%rbx,8), %xmm1   ## xmm1 = mem[0],zero
	vaddsd	8(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	16(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rbx,8)
	vmovsd	16(%rcx,%rbx,8), %xmm1  ## xmm1 = mem[0],zero
	vaddsd	16(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	24(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rsi,%rbx,8)
	vmovsd	24(%rcx,%rbx,8), %xmm1  ## xmm1 = mem[0],zero
	vaddsd	24(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	32(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, 24(%rsi,%rbx,8)
	addq	$4, %rbx
	cmpq	%rbx, %rax
	jne	LBB6_109
LBB6_110:                               ##   in Loop: Header=BB6_108 Depth=2
	incq	%r10
	testb	$3, 56(%rsp)            ## 1-byte Folded Reload
	je	LBB6_107
## %bb.111:                             ##   in Loop: Header=BB6_108 Depth=2
	leaq	(%rsi,%rbx,8), %rsi
	addq	$8, %rsi
	leaq	(%rdi,%rbx,8), %rdi
	leaq	(%rdx,%rbx,8), %rdx
	leaq	(%rcx,%rbx,8), %rcx
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_112:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_108 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rbx,8), %xmm1    ## xmm1 = mem[0],zero
	vaddsd	(%rdx,%rbx,8), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vaddsd	(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm4, %xmm0, %xmm0
	vmovsd	%xmm0, -8(%rsi,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_112
	jmp	LBB6_107
	.p2align	4, 0x90
LBB6_113:                               ##   in Loop: Header=BB6_33 Depth=1
	testl	%r8d, %r8d
	movq	40(%rsp), %rsi          ## 8-byte Reload
	vxorpd	%xmm0, %xmm0, %xmm0
	js	LBB6_32
## %bb.114:                             ##   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	movq	184(%rsp), %rdi         ## 8-byte Reload
	movq	160(%rsp), %rbx         ## 8-byte Reload
	jmp	LBB6_116
	.p2align	4, 0x90
LBB6_115:                               ##   in Loop: Header=BB6_116 Depth=2
	incq	%rax
	cmpq	%r15, %rax
	je	LBB6_32
LBB6_116:                               ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_117 Depth 3
                                        ##       Child Loop BB6_120 Depth 3
	movq	(%r11,%rax,8), %rcx
	xorl	%edx, %edx
	cmpq	$7, %rbx
	jb	LBB6_118
	.p2align	4, 0x90
LBB6_117:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_116 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vmovsd	8(%rcx,%rdx,8), %xmm2   ## xmm2 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm2, %xmm2, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	16(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	24(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	32(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	40(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	48(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	56(%rcx,%rdx,8), %xmm1  ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	addq	$8, %rdx
	cmpq	%rdx, %rdi
	jne	LBB6_117
LBB6_118:                               ##   in Loop: Header=BB6_116 Depth=2
	testb	$7, %r15b
	je	LBB6_115
## %bb.119:                             ##   in Loop: Header=BB6_116 Depth=2
	leaq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_120:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_116 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	incq	%rdx
	cmpq	%rdx, %rsi
	jne	LBB6_120
	jmp	LBB6_115
LBB6_121:
	testl	%r8d, %r8d
	js	LBB6_124
## %bb.122:
	movl	4(%rsp), %r14d          ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_123:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r11,%rbx,8), %rdi
	vzeroupper
	callq	_free
	movq	80(%rsp), %r11          ## 8-byte Reload
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_123
LBB6_124:
	movq	%r11, %rdi
	vzeroupper
	callq	_free
	movq	72(%rsp), %r15          ## 8-byte Reload
	testl	%r15d, %r15d
	movq	48(%rsp), %r14          ## 8-byte Reload
	movq	96(%rsp), %r12          ## 8-byte Reload
	movq	24(%rsp), %r13          ## 8-byte Reload
	js	LBB6_127
## %bb.125:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_126:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_126
LBB6_127:
	movq	%r12, %rdi
	callq	_free
	cmpl	$0, 20(%rsp)            ## 4-byte Folded Reload
	js	LBB6_130
## %bb.128:
	movl	4(%rsp), %r14d          ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_129:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_129
LBB6_130:
	movq	%r13, %rdi
	callq	_free
	testl	%r15d, %r15d
	movq	48(%rsp), %r14          ## 8-byte Reload
	movq	128(%rsp), %r15         ## 8-byte Reload
	js	LBB6_133
## %bb.131:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_132:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_132
LBB6_133:
	movq	%r15, %rdi
	leaq	-40(%rbp), %rsp
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
	vmovapd	LCPI7_0(%rip), %xmm0    ## xmm0 = [NaN,NaN]
	vmovsd	LCPI7_1(%rip), %xmm1    ## xmm1 = mem[0],zero
LBB7_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_4 Depth 2
	movq	(%rdi,%r8,8), %r10
	movq	(%rsi,%r8,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $edx killed $edx def $rdx
	cmpl	$3, %edx
	jl	LBB9_8
## %bb.1:
	leal	-1(%rdx), %r9d
	addl	$-2, %edx
	leaq	-2(%r9), %r8
	andl	$3, %edx
	movq	%r9, %r11
	subq	%rdx, %r11
	movl	$1, %r10d
	vmovsd	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	jmp	LBB9_2
	.p2align	4, 0x90
LBB9_7:                                 ##   in Loop: Header=BB9_2 Depth=1
	cmpq	%r9, %r10
	je	LBB9_8
LBB9_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
                                        ##     Child Loop BB9_6 Depth 2
	movq	-8(%rdi,%r10,8), %r14
	movq	(%rdi,%r10,8), %rbx
	movq	8(%rdi,%r10,8), %r15
	movq	(%rsi,%r10,8), %rcx
	vmovsd	(%rbx), %xmm1           ## xmm1 = mem[0],zero
	movl	$1, %eax
	cmpq	$3, %r8
	jb	LBB9_4
	.p2align	4, 0x90
LBB9_3:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%r14,%rax,8), %xmm2    ## xmm2 = mem[0],zero
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	8(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	(%rcx,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, (%rbx,%rax,8)
	vmovsd	8(%r14,%rax,8), %xmm2   ## xmm2 = mem[0],zero
	vaddsd	8(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	16(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	8(%rcx,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, 8(%rbx,%rax,8)
	vmovsd	16(%r14,%rax,8), %xmm2  ## xmm2 = mem[0],zero
	vaddsd	16(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	24(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	16(%rcx,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, 16(%rbx,%rax,8)
	vmovsd	24(%r14,%rax,8), %xmm2  ## xmm2 = mem[0],zero
	vaddsd	24(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	32(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	24(%rcx,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, 24(%rbx,%rax,8)
	addq	$4, %rax
	cmpq	%rax, %r11
	jne	LBB9_3
LBB9_4:                                 ##   in Loop: Header=BB9_2 Depth=1
	incq	%r10
	testq	%rdx, %rdx
	je	LBB9_7
## %bb.5:                               ##   in Loop: Header=BB9_2 Depth=1
	leaq	(%rbx,%rax,8), %rbx
	addq	$8, %rbx
	leaq	(%rcx,%rax,8), %r12
	leaq	(%r15,%rax,8), %r15
	leaq	(%r14,%rax,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB9_6:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rcx,8), %xmm2    ## xmm2 = mem[0],zero
	vaddsd	(%r15,%rcx,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	(%rbx,%rcx,8), %xmm1, %xmm1
	vaddsd	(%r12,%rcx,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, -8(%rbx,%rcx,8)
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB9_6
	jmp	LBB9_7
LBB9_8:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $ecx killed $ecx def $rcx
	movq	%rdx, -112(%rbp)        ## 8-byte Spill
	movq	%rsi, -104(%rbp)        ## 8-byte Spill
	cmpl	$3, %ecx
	jl	LBB10_15
## %bb.1:
	decl	%ecx
	leaq	-1(%rcx), %r15
	leaq	1(%rcx), %rax
	movq	%rax, -80(%rbp)         ## 8-byte Spill
	movq	%r15, -64(%rbp)         ## 8-byte Spill
	andq	$-16, %r15
	leaq	1(%r15), %rax
	movq	%rax, -72(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	negq	%rax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movl	$1, %r14d
	vmovsd	LCPI10_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	vbroadcastsd	LCPI10_0(%rip), %ymm1 ## ymm1 = [4.0E+0,4.0E+0,4.0E+0,4.0E+0]
	movq	%rdi, -88(%rbp)         ## 8-byte Spill
	jmp	LBB10_2
	.p2align	4, 0x90
LBB10_14:                               ##   in Loop: Header=BB10_2 Depth=1
	cmpq	%rcx, %r14
	je	LBB10_15
LBB10_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_8 Depth 2
                                        ##     Child Loop BB10_13 Depth 2
	movq	-8(%rdi,%r14,8), %r12
	movq	(%rdi,%r14,8), %rax
	movq	8(%rdi,%r14,8), %r13
	movq	-112(%rbp), %rdx        ## 8-byte Reload
	movq	(%rdx,%r14,8), %r11
	movq	-104(%rbp), %rdx        ## 8-byte Reload
	movq	(%rdx,%r14,8), %r10
	incq	%r14
	movl	$1, %r8d
	cmpq	$16, -64(%rbp)          ## 8-byte Folded Reload
	jae	LBB10_3
LBB10_10:                               ##   in Loop: Header=BB10_2 Depth=1
	movq	%r8, %rdx
	notq	%rdx
	testb	$1, %cl
	jne	LBB10_12
## %bb.11:                              ##   in Loop: Header=BB10_2 Depth=1
	vmulsd	(%rax,%r8,8), %xmm0, %xmm2
	vsubsd	(%r12,%r8,8), %xmm2, %xmm2
	vsubsd	(%r13,%r8,8), %xmm2, %xmm2
	vsubsd	-8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	(%r11,%r8,8), %xmm2, %xmm2
	vmovsd	%xmm2, (%r10,%r8,8)
	incq	%r8
LBB10_12:                               ##   in Loop: Header=BB10_2 Depth=1
	cmpq	-96(%rbp), %rdx         ## 8-byte Folded Reload
	je	LBB10_14
	.p2align	4, 0x90
LBB10_13:                               ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulsd	(%rax,%r8,8), %xmm0, %xmm2
	vsubsd	(%r12,%r8,8), %xmm2, %xmm2
	vsubsd	(%r13,%r8,8), %xmm2, %xmm2
	vsubsd	-8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	(%r11,%r8,8), %xmm2, %xmm2
	vmovsd	%xmm2, (%r10,%r8,8)
	vmulsd	8(%rax,%r8,8), %xmm0, %xmm2
	vsubsd	8(%r12,%r8,8), %xmm2, %xmm2
	vsubsd	8(%r13,%r8,8), %xmm2, %xmm2
	vsubsd	(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	16(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	8(%r11,%r8,8), %xmm2, %xmm2
	vmovsd	%xmm2, 8(%r10,%r8,8)
	addq	$2, %r8
	cmpq	%r8, %rcx
	jne	LBB10_13
	jmp	LBB10_14
	.p2align	4, 0x90
LBB10_3:                                ##   in Loop: Header=BB10_2 Depth=1
	leaq	8(%r10), %rbx
	leaq	(%r10,%rcx,8), %rdx
	movq	-80(%rbp), %rsi         ## 8-byte Reload
	leaq	(%rax,%rsi,8), %rsi
	leaq	8(%r12), %r8
	leaq	(%r12,%rcx,8), %r9
	leaq	8(%r13), %rdi
	movq	%rdi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rsi, %rbx
	setb	-44(%rbp)               ## 1-byte Folded Spill
	cmpq	%rdx, %rax
	setb	-43(%rbp)               ## 1-byte Folded Spill
	cmpq	%r9, %rbx
	setb	%sil
	cmpq	%rdx, %r8
	leaq	(%r13,%rcx,8), %rdi
	setb	-42(%rbp)               ## 1-byte Folded Spill
	cmpq	%rdi, %rbx
	setb	%r9b
	cmpq	%rdx, -56(%rbp)         ## 8-byte Folded Reload
	leaq	(%r11,%rcx,8), %rdi
	setb	-56(%rbp)               ## 1-byte Folded Spill
	cmpq	%rdi, %rbx
	leaq	8(%r11), %rdi
	setb	%bl
	cmpq	%rdx, %rdi
	movq	-88(%rbp), %rdi         ## 8-byte Reload
	setb	-41(%rbp)               ## 1-byte Folded Spill
	movl	$1, %r8d
	movb	-43(%rbp), %dl          ## 1-byte Reload
	testb	%dl, -44(%rbp)          ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.4:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	andb	-42(%rbp), %sil         ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.5:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	andb	-56(%rbp), %r9b         ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.6:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	andb	-41(%rbp), %bl          ## 1-byte Folded Reload
	jne	LBB10_10
## %bb.7:                               ##   in Loop: Header=BB10_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB10_8:                                ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulpd	8(%rax,%rbx,8), %ymm1, %ymm2
	vmulpd	40(%rax,%rbx,8), %ymm1, %ymm3
	vmulpd	72(%rax,%rbx,8), %ymm1, %ymm4
	vmulpd	104(%rax,%rbx,8), %ymm1, %ymm5
	vsubpd	8(%r12,%rbx,8), %ymm2, %ymm2
	vsubpd	40(%r12,%rbx,8), %ymm3, %ymm3
	vsubpd	72(%r12,%rbx,8), %ymm4, %ymm4
	vsubpd	104(%r12,%rbx,8), %ymm5, %ymm5
	vsubpd	8(%r13,%rbx,8), %ymm2, %ymm2
	vsubpd	40(%r13,%rbx,8), %ymm3, %ymm3
	vsubpd	72(%r13,%rbx,8), %ymm4, %ymm4
	vsubpd	104(%r13,%rbx,8), %ymm5, %ymm5
	vsubpd	(%rax,%rbx,8), %ymm2, %ymm2
	vsubpd	32(%rax,%rbx,8), %ymm3, %ymm3
	vsubpd	64(%rax,%rbx,8), %ymm4, %ymm4
	vsubpd	96(%rax,%rbx,8), %ymm5, %ymm5
	vsubpd	16(%rax,%rbx,8), %ymm2, %ymm2
	vsubpd	48(%rax,%rbx,8), %ymm3, %ymm3
	vsubpd	80(%rax,%rbx,8), %ymm4, %ymm4
	vsubpd	112(%rax,%rbx,8), %ymm5, %ymm5
	vsubpd	8(%r11,%rbx,8), %ymm2, %ymm2
	vsubpd	40(%r11,%rbx,8), %ymm3, %ymm3
	vsubpd	72(%r11,%rbx,8), %ymm4, %ymm4
	vsubpd	104(%r11,%rbx,8), %ymm5, %ymm5
	vmovupd	%ymm2, 8(%r10,%rbx,8)
	vmovupd	%ymm3, 40(%r10,%rbx,8)
	vmovupd	%ymm4, 72(%r10,%rbx,8)
	vmovupd	%ymm5, 104(%r10,%rbx,8)
	addq	$16, %rbx
	cmpq	%rbx, %r15
	jne	LBB10_8
## %bb.9:                               ##   in Loop: Header=BB10_2 Depth=1
	movq	-72(%rbp), %r8          ## 8-byte Reload
	cmpq	%r15, -64(%rbp)         ## 8-byte Folded Reload
	je	LBB10_14
	jmp	LBB10_10
LBB10_15:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	5               ## -- Begin function res_R
LCPI11_0:
	.quad	0                       ## 0x0
	.quad	1                       ## 0x1
	.quad	2                       ## 0x2
	.quad	3                       ## 0x3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI11_1:
	.quad	8                       ## 0x8
LCPI11_2:
	.quad	16                      ## 0x10
LCPI11_3:
	.quad	24                      ## 0x18
LCPI11_4:
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
	leaq	(%r11,%r11), %r8
	decq	%r8
	movl	%r11d, %eax
	andl	$15, %eax
	testq	%rax, %rax
	movl	$16, %ecx
	cmovneq	%rax, %rcx
	movq	%r11, %r9
	subq	%rcx, %r9
	xorl	%r10d, %r10d
	vmovsd	LCPI11_4(%rip), %xmm0   ## xmm0 = mem[0],zero
	vmovdqa	LCPI11_0(%rip), %ymm1   ## ymm1 = [0,1,2,3]
	vpbroadcastq	LCPI11_1(%rip), %ymm2 ## ymm2 = [8,8,8,8]
	vpbroadcastq	LCPI11_2(%rip), %ymm3 ## ymm3 = [16,16,16,16]
	vpbroadcastq	LCPI11_3(%rip), %ymm4 ## ymm4 = [24,24,24,24]
	vbroadcastsd	LCPI11_4(%rip), %ymm5 ## ymm5 = [4.0E+0,4.0E+0,4.0E+0,4.0E+0]
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
	cmpl	$17, %edx
	jb	LBB11_4
## %bb.5:                               ##   in Loop: Header=BB11_3 Depth=1
	leaq	(%r15,%r8,8), %rax
	cmpq	%rax, %r13
	jae	LBB11_8
## %bb.6:                               ##   in Loop: Header=BB11_3 Depth=1
	leaq	(,%r11,8), %rax
	addq	%r13, %rax
	cmpq	%rax, %r15
	jae	LBB11_8
LBB11_4:                                ##   in Loop: Header=BB11_3 Depth=1
	xorl	%ebx, %ebx
	jmp	LBB11_11
	.p2align	4, 0x90
LBB11_8:                                ##   in Loop: Header=BB11_3 Depth=1
	xorl	%ebx, %ebx
	vmovdqa	%ymm1, %ymm6
	.p2align	4, 0x90
LBB11_9:                                ##   Parent Loop BB11_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vpaddq	%ymm6, %ymm6, %ymm7
	vpaddq	%ymm2, %ymm7, %ymm8
	vpaddq	%ymm3, %ymm7, %ymm9
	vpaddq	%ymm4, %ymm7, %ymm10
	vpcmpeqd	%ymm11, %ymm11, %ymm11
	vgatherqpd	%ymm11, (%r15,%ymm7,8), %ymm12
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vgatherqpd	%ymm7, (%r15,%ymm8,8), %ymm11
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vgatherqpd	%ymm7, (%r15,%ymm9,8), %ymm8
	vpcmpeqd	%ymm7, %ymm7, %ymm7
	vgatherqpd	%ymm7, (%r15,%ymm10,8), %ymm9
	vmulpd	%ymm5, %ymm12, %ymm7
	vmulpd	%ymm5, %ymm11, %ymm10
	vmulpd	%ymm5, %ymm8, %ymm8
	vmovupd	%ymm7, (%r13,%rbx,8)
	vmovupd	%ymm10, 32(%r13,%rbx,8)
	vmovupd	%ymm8, 64(%r13,%rbx,8)
	vmulpd	%ymm5, %ymm9, %ymm7
	vmovupd	%ymm7, 96(%r13,%rbx,8)
	addq	$16, %rbx
	vpaddq	%ymm3, %ymm6, %ymm6
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
	andq	$7, %r12
	je	LBB11_15
## %bb.12:                              ##   in Loop: Header=BB11_3 Depth=1
	leaq	(,%rbx,8), %rax
	negq	%r12
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB11_13:                               ##   Parent Loop BB11_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulsd	(%r15,%rax,2), %xmm0, %xmm6
	vmovsd	%xmm6, (%r13,%rax)
	decq	%rcx
	addq	$8, %rax
	cmpq	%rcx, %r12
	jne	LBB11_13
## %bb.14:                              ##   in Loop: Header=BB11_3 Depth=1
	subq	%rcx, %rbx
LBB11_15:                               ##   in Loop: Header=BB11_3 Depth=1
	cmpq	$7, %r14
	jb	LBB11_2
## %bb.16:                              ##   in Loop: Header=BB11_3 Depth=1
	movq	%rbx, %rax
	shlq	$4, %rax
	addq	%r15, %rax
	addq	$112, %rax
	.p2align	4, 0x90
LBB11_17:                               ##   Parent Loop BB11_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmulsd	-112(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, (%r13,%rbx,8)
	vmulsd	-96(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 8(%r13,%rbx,8)
	vmulsd	-80(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 16(%r13,%rbx,8)
	vmulsd	-64(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 24(%r13,%rbx,8)
	vmulsd	-48(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 32(%r13,%rbx,8)
	vmulsd	-32(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 40(%r13,%rbx,8)
	vmulsd	-16(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 48(%r13,%rbx,8)
	vmulsd	(%rax), %xmm0, %xmm6
	vmovsd	%xmm6, 56(%r13,%rbx,8)
	addq	$8, %rbx
	subq	$-128, %rax
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
	vzeroupper
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
	vmovsd	LCPI12_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	vmovsd	LCPI12_1(%rip), %xmm1   ## xmm1 = mem[0],zero
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
	andl	$-16, %r10d
	leaq	-16(%r10), %r8
	movq	%r8, %rax
	shrq	$4, %rax
	incq	%rax
	movl	%eax, %r9d
	andl	$1, %r9d
	movl	%r12d, %r11d
	andl	$7, %r11d
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
	cmpl	$16, %edx
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
	vmovsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	vsubsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	incq	%rax
	decq	%r14
	jne	LBB13_16
LBB13_17:                               ##   in Loop: Header=BB13_3 Depth=1
	cmpq	$7, %r13
	jb	LBB13_2
	.p2align	4, 0x90
LBB13_18:                               ##   Parent Loop BB13_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rax,8), %xmm0    ## xmm0 = mem[0],zero
	vmovsd	8(%rcx,%rax,8), %xmm1   ## xmm1 = mem[0],zero
	vsubsd	(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	vsubsd	8(%rbx,%rax,8), %xmm1, %xmm0
	vmovsd	%xmm0, 8(%rcx,%rax,8)
	vmovsd	16(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	16(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 16(%rcx,%rax,8)
	vmovsd	24(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	24(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 24(%rcx,%rax,8)
	vmovsd	32(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	32(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rcx,%rax,8)
	vmovsd	40(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	40(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 40(%rcx,%rax,8)
	vmovsd	48(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	48(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 48(%rcx,%rax,8)
	vmovsd	56(%rcx,%rax,8), %xmm0  ## xmm0 = mem[0],zero
	vsubsd	56(%rbx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 56(%rcx,%rax,8)
	addq	$8, %rax
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
	vmovupd	(%rcx,%rax,8), %ymm0
	vmovupd	32(%rcx,%rax,8), %ymm1
	vmovupd	64(%rcx,%rax,8), %ymm2
	vmovupd	96(%rcx,%rax,8), %ymm3
	vsubpd	(%rbx,%rax,8), %ymm0, %ymm0
	vsubpd	32(%rbx,%rax,8), %ymm1, %ymm1
	vsubpd	64(%rbx,%rax,8), %ymm2, %ymm2
	vsubpd	96(%rbx,%rax,8), %ymm3, %ymm3
	vmovupd	%ymm0, (%rcx,%rax,8)
	vmovupd	%ymm1, 32(%rcx,%rax,8)
	vmovupd	%ymm2, 64(%rcx,%rax,8)
	vmovupd	%ymm3, 96(%rcx,%rax,8)
	vmovupd	128(%rcx,%rax,8), %ymm0
	vmovupd	160(%rcx,%rax,8), %ymm1
	vmovupd	192(%rcx,%rax,8), %ymm2
	vmovupd	224(%rcx,%rax,8), %ymm3
	vsubpd	128(%rbx,%rax,8), %ymm0, %ymm0
	vsubpd	160(%rbx,%rax,8), %ymm1, %ymm1
	vsubpd	192(%rbx,%rax,8), %ymm2, %ymm2
	vsubpd	224(%rbx,%rax,8), %ymm3, %ymm3
	vmovupd	%ymm0, 128(%rcx,%rax,8)
	vmovupd	%ymm1, 160(%rcx,%rax,8)
	vmovupd	%ymm2, 192(%rcx,%rax,8)
	vmovupd	%ymm3, 224(%rcx,%rax,8)
	addq	$32, %rax
	addq	$2, %r13
	jne	LBB13_10
## %bb.11:                              ##   in Loop: Header=BB13_3 Depth=1
	testq	%r9, %r9
	je	LBB13_13
LBB13_12:                               ##   in Loop: Header=BB13_3 Depth=1
	vmovupd	(%rcx,%rax,8), %ymm0
	vmovupd	32(%rcx,%rax,8), %ymm1
	vmovupd	64(%rcx,%rax,8), %ymm2
	vmovupd	96(%rcx,%rax,8), %ymm3
	vsubpd	(%rbx,%rax,8), %ymm0, %ymm0
	vsubpd	32(%rbx,%rax,8), %ymm1, %ymm1
	vsubpd	64(%rbx,%rax,8), %ymm2, %ymm2
	vsubpd	96(%rbx,%rax,8), %ymm3, %ymm3
	vmovupd	%ymm0, (%rcx,%rax,8)
	vmovupd	%ymm1, 32(%rcx,%rax,8)
	vmovupd	%ymm2, 64(%rcx,%rax,8)
	vmovupd	%ymm3, 96(%rcx,%rax,8)
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
	vzeroupper
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
	andl	$7, %edx
	movl	%r9d, %esi
	andl	$-8, %esi
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%r10d, %r10d
	vmovapd	LCPI14_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	vmovapd	LCPI14_0(%rip), %xmm2   ## xmm2 = [NaN,NaN]
	jmp	LBB14_3
	.p2align	4, 0x90
LBB14_8:                                ##   in Loop: Header=BB14_3 Depth=1
	incq	%r10
	cmpq	%r9, %r10
	je	LBB14_9
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_4 Depth 2
                                        ##     Child Loop BB14_7 Depth 2
	movq	(%rdi,%r10,8), %rax
	xorl	%ecx, %ecx
	cmpq	$7, %r8
	jb	LBB14_5
	.p2align	4, 0x90
LBB14_4:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rcx,8), %xmm3    ## xmm3 = mem[0],zero
	vmovsd	8(%rax,%rcx,8), %xmm4   ## xmm4 = mem[0],zero
	vmovsd	16(%rax,%rcx,8), %xmm5  ## xmm5 = mem[0],zero
	vmovsd	24(%rax,%rcx,8), %xmm6  ## xmm6 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vandpd	%xmm2, %xmm4, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vandpd	%xmm2, %xmm5, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vandpd	%xmm2, %xmm6, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovsd	32(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovsd	40(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovsd	48(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	vmovsd	56(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	addq	$8, %rcx
	cmpq	%rcx, %rsi
	jne	LBB14_4
LBB14_5:                                ##   in Loop: Header=BB14_3 Depth=1
	testq	%rdx, %rdx
	je	LBB14_8
## %bb.6:                               ##   in Loop: Header=BB14_3 Depth=1
	leaq	(%rax,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB14_7:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rcx,8), %xmm3    ## xmm3 = mem[0],zero
	vandpd	%xmm1, %xmm3, %xmm3
	vaddsd	%xmm3, %xmm0, %xmm0
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB14_7
	jmp	LBB14_8
LBB14_9:
	popq	%rbp
	retq
LBB14_1:
	vxorps	%xmm0, %xmm0, %xmm0
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
	vmovsd	(%rax), %xmm0           ## xmm0 = mem[0],zero
	testl	%esi, %esi
	jle	LBB15_8
## %bb.1:
	movl	%esi, %r9d
	leaq	-1(%r9), %r8
	movl	%r9d, %edx
	andl	$7, %edx
	movl	%r9d, %esi
	andl	$-8, %esi
	xorl	%r10d, %r10d
	vmovapd	LCPI15_0(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	vmovapd	LCPI15_0(%rip), %xmm2   ## xmm2 = [NaN,NaN]
	jmp	LBB15_2
	.p2align	4, 0x90
LBB15_7:                                ##   in Loop: Header=BB15_2 Depth=1
	incq	%r10
	cmpq	%r9, %r10
	je	LBB15_8
LBB15_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB15_3 Depth 2
                                        ##     Child Loop BB15_6 Depth 2
	movq	(%rdi,%r10,8), %rax
	xorl	%ecx, %ecx
	cmpq	$7, %r8
	jb	LBB15_4
	.p2align	4, 0x90
LBB15_3:                                ##   Parent Loop BB15_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rcx,8), %xmm3    ## xmm3 = mem[0],zero
	vmovsd	8(%rax,%rcx,8), %xmm4   ## xmm4 = mem[0],zero
	vmovsd	16(%rax,%rcx,8), %xmm5  ## xmm5 = mem[0],zero
	vmovsd	24(%rax,%rcx,8), %xmm6  ## xmm6 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vandpd	%xmm2, %xmm4, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vandpd	%xmm2, %xmm5, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vandpd	%xmm2, %xmm6, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vmovsd	32(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vmovsd	40(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vmovsd	48(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	vmovsd	56(%rax,%rcx,8), %xmm3  ## xmm3 = mem[0],zero
	vandpd	%xmm2, %xmm3, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	addq	$8, %rcx
	cmpq	%rcx, %rsi
	jne	LBB15_3
LBB15_4:                                ##   in Loop: Header=BB15_2 Depth=1
	testq	%rdx, %rdx
	je	LBB15_7
## %bb.5:                               ##   in Loop: Header=BB15_2 Depth=1
	leaq	(%rax,%rcx,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB15_6:                                ##   Parent Loop BB15_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%rcx,8), %xmm3    ## xmm3 = mem[0],zero
	vandpd	%xmm1, %xmm3, %xmm3
	vmaxsd	%xmm0, %xmm3, %xmm0
	incq	%rcx
	cmpq	%rcx, %rdx
	jne	LBB15_6
	jmp	LBB15_7
LBB15_8:
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
	jle	LBB16_8
## %bb.1:
	movq	(%rdi), %rdx
	movslq	%esi, %rax
	movq	-8(%rdi,%rax,8), %r11
	movq	$0, (%rdx)
	movq	$0, (%r11)
	movq	$0, (%rdx)
	movq	$0, -8(%rdx,%rax,8)
	cmpl	$1, %esi
	je	LBB16_8
## %bb.2:
	decq	%rax
	movl	%esi, %r9d
	leal	-1(%r9), %r8d
	leaq	-2(%r9), %r10
	andl	$3, %r8d
	movl	$1, %esi
	cmpq	$3, %r10
	jb	LBB16_5
## %bb.3:
	subq	%r8, %r9
	movl	$1, %esi
	.p2align	4, 0x90
LBB16_4:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rsi,8), %rcx
	movq	$0, (%rdx,%rsi,8)
	movq	$0, (%r11,%rsi,8)
	movq	$0, (%rcx)
	movq	$0, (%rcx,%rax,8)
	movq	8(%rdi,%rsi,8), %rcx
	movq	$0, 8(%rdx,%rsi,8)
	movq	$0, 8(%r11,%rsi,8)
	movq	$0, (%rcx)
	movq	$0, (%rcx,%rax,8)
	movq	16(%rdi,%rsi,8), %rcx
	movq	$0, 16(%rdx,%rsi,8)
	movq	$0, 16(%r11,%rsi,8)
	movq	$0, (%rcx)
	movq	$0, (%rcx,%rax,8)
	movq	24(%rdi,%rsi,8), %rcx
	movq	$0, 24(%rdx,%rsi,8)
	movq	$0, 24(%r11,%rsi,8)
	movq	$0, (%rcx)
	movq	$0, (%rcx,%rax,8)
	addq	$4, %rsi
	cmpq	%rsi, %r9
	jne	LBB16_4
LBB16_5:
	testq	%r8, %r8
	je	LBB16_8
## %bb.6:
	leaq	(%r11,%rsi,8), %r9
	leaq	(%rdx,%rsi,8), %rdx
	leaq	(%rdi,%rsi,8), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB16_7:                                ## =>This Inner Loop Header: Depth=1
	movq	(%rsi,%rdi,8), %rcx
	movq	$0, (%rdx,%rdi,8)
	movq	$0, (%r9,%rdi,8)
	movq	$0, (%rcx)
	movq	$0, (%rcx,%rax,8)
	incq	%rdi
	cmpq	%rdi, %r8
	jne	LBB16_7
LBB16_8:
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
