	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI0_0:
	.quad	4573724259905711384     ## double 0.0061359231515425647
LCPI0_1:
	.quad	4576155863267238628     ## double 0.0086775057385905588
LCPI0_2:
	.quad	4526117625507348480     ## double 3.814697265625E-6
LCPI0_4:
	.quad	4577280091386720989     ## double 0.010627730649809869
LCPI0_9:
	.quad	-4856477344276747622    ## double -9.1338423641413724E-17
LCPI0_10:
	.quad	4566650022153682944     ## double 0.001953125
LCPI0_12:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
LCPI0_13:
	.quad	4517329193108106637     ## double 9.9999999999999995E-7
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_3:
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
LCPI0_11:
	.quad	9223372036854775807     ## double NaN
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2
LCPI0_5:
	.long	4                       ## 0x4
LCPI0_6:
	.long	8                       ## 0x8
LCPI0_7:
	.long	12                      ## 0xc
LCPI0_8:
	.long	16                      ## 0x10
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
	subq	$448, %rsp              ## imm = 0x1C0
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	$7627108, 163(%rsp)     ## imm = 0x746164
	movl	$1680762733, 160(%rsp)  ## imm = 0x642E676D
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
	leaq	160(%rsp), %rdi
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
	vbroadcastsd	LCPI0_0(%rip), %ymm0 ## ymm0 = [6.1359231515425647E-3,6.1359231515425647E-3,6.1359231515425647E-3,6.1359231515425647E-3]
	vmovaps	%ymm0, 288(%rsp)        ## 32-byte Spill
	vbroadcastsd	LCPI0_4(%rip), %ymm0 ## ymm0 = [1.0627730649809869E-2,1.0627730649809869E-2,1.0627730649809869E-2,1.0627730649809869E-2]
	vmovaps	%ymm0, 256(%rsp)        ## 32-byte Spill
	vbroadcastss	LCPI0_5(%rip), %xmm0 ## xmm0 = [4,4,4,4]
	vmovaps	%xmm0, 400(%rsp)        ## 16-byte Spill
	vbroadcastss	LCPI0_6(%rip), %xmm0 ## xmm0 = [8,8,8,8]
	vmovaps	%xmm0, 384(%rsp)        ## 16-byte Spill
	vbroadcastss	LCPI0_7(%rip), %xmm0 ## xmm0 = [12,12,12,12]
	vmovaps	%xmm0, 368(%rsp)        ## 16-byte Spill
	vbroadcastss	LCPI0_8(%rip), %xmm0 ## xmm0 = [16,16,16,16]
	vmovapd	%xmm0, 352(%rsp)        ## 16-byte Spill
	movq	168(%rsp), %r12         ## 8-byte Reload
	.p2align	4, 0x90
LBB0_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_13 Depth 2
	vcvtsi2sd	%r13d, %xmm2, %xmm0
	vmovsd	%xmm0, 192(%rsp)        ## 8-byte Spill
	vmulsd	LCPI0_0(%rip), %xmm0, %xmm0
	vzeroupper
	callq	_sin
	vmovsd	%xmm0, 144(%rsp)        ## 8-byte Spill
	vmovsd	192(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	LCPI0_1(%rip), %xmm0, %xmm0
	callq	_sin
	vmovsd	144(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vmulsd	LCPI0_2(%rip), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	(%r12,%r13,8), %rbx
	vmovapd	%xmm0, 336(%rsp)        ## 16-byte Spill
	vbroadcastsd	%xmm0, %ymm0
	vmovapd	%ymm0, 192(%rsp)        ## 32-byte Spill
	xorl	%r14d, %r14d
	vmovaps	LCPI0_3(%rip), %xmm0    ## xmm0 = [0,1,2,3]
	.p2align	4, 0x90
LBB0_13:                                ##   Parent Loop BB0_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovaps	%xmm0, 144(%rsp)        ## 16-byte Spill
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	288(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	192(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%rbx,%r14,8)
	vmovdqa	400(%rsp), %xmm0        ## 16-byte Reload
	vpaddd	144(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	288(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	192(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 32(%rbx,%r14,8)
	vmovdqa	384(%rsp), %xmm0        ## 16-byte Reload
	vpaddd	144(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	288(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	192(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 64(%rbx,%r14,8)
	vmovdqa	368(%rsp), %xmm0        ## 16-byte Reload
	vpaddd	144(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	288(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	256(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	192(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 96(%rbx,%r14,8)
	vmovdqa	144(%rsp), %xmm0        ## 16-byte Reload
	addq	$16, %r14
	vpaddd	352(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	cmpq	$512, %r14              ## imm = 0x200
	jne	LBB0_13
## %bb.14:                              ##   in Loop: Header=BB0_12 Depth=1
	vmovapd	336(%rsp), %xmm0        ## 16-byte Reload
	vmulsd	LCPI0_9(%rip), %xmm0, %xmm0
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
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%edx, %edx
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	.p2align	4, 0x90
LBB0_17:                                ##   Parent Loop BB0_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovupd	(%rcx,%rdx,8), %ymm4
	vmovupd	32(%rcx,%rdx,8), %ymm5
	vmovupd	64(%rcx,%rdx,8), %ymm6
	vmovupd	96(%rcx,%rdx,8), %ymm7
	vfmadd213pd	%ymm0, %ymm4, %ymm4 ## ymm4 = (ymm4 * ymm4) + ymm0
	vfmadd213pd	%ymm1, %ymm5, %ymm5 ## ymm5 = (ymm5 * ymm5) + ymm1
	vfmadd213pd	%ymm3, %ymm6, %ymm6 ## ymm6 = (ymm6 * ymm6) + ymm3
	vfmadd213pd	%ymm2, %ymm7, %ymm7 ## ymm7 = (ymm7 * ymm7) + ymm2
	vmovupd	128(%rcx,%rdx,8), %ymm0
	vmovupd	160(%rcx,%rdx,8), %ymm1
	vmovupd	192(%rcx,%rdx,8), %ymm3
	vmovupd	224(%rcx,%rdx,8), %ymm2
	vfmadd213pd	%ymm4, %ymm0, %ymm0 ## ymm0 = (ymm0 * ymm0) + ymm4
	vfmadd213pd	%ymm5, %ymm1, %ymm1 ## ymm1 = (ymm1 * ymm1) + ymm5
	vfmadd213pd	%ymm6, %ymm3, %ymm3 ## ymm3 = (ymm3 * ymm3) + ymm6
	vfmadd213pd	%ymm7, %ymm2, %ymm2 ## ymm2 = (ymm2 * ymm2) + ymm7
	addq	$32, %rdx
	cmpq	$512, %rdx              ## imm = 0x200
	jne	LBB0_17
## %bb.18:                              ##   in Loop: Header=BB0_16 Depth=1
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	%ymm0, %ymm3, %ymm0
	vaddpd	%ymm0, %ymm2, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm1
	vmovsd	4096(%rcx), %xmm0       ## xmm0 = mem[0],zero
	vfmadd213sd	%xmm1, %xmm0, %xmm0 ## xmm0 = (xmm0 * xmm0) + xmm1
	incq	%rax
	cmpq	$513, %rax              ## imm = 0x201
	jne	LBB0_16
## %bb.19:
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmovsd	%xmm0, 144(%rsp)        ## 8-byte Spill
	xorl	%ebx, %ebx
	leaq	240(%rsp), %rdi
	xorl	%esi, %esi
	vzeroupper
	callq	_gettimeofday
	vmovsd	LCPI0_10(%rip), %xmm0   ## xmm0 = mem[0],zero
	movl	$9, %edi
	movq	%r14, %rsi
	movq	%r12, %rdx
	vmovsd	144(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	callq	_multigrid_vcycle
	leaq	224(%rsp), %rdi
	xorl	%esi, %esi
	callq	_gettimeofday
	vmovapd	LCPI0_11(%rip), %xmm0   ## xmm0 = [NaN,NaN]
	leaq	L_str(%rip), %rdi
	vmovsd	LCPI0_12(%rip), %xmm1   ## xmm1 = mem[0],zero
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
	vcvtsi2sdq	224(%rsp), %xmm8, %xmm0
	vcvtsi2sdl	232(%rsp), %xmm8, %xmm1
	vcvtsi2sdq	240(%rsp), %xmm8, %xmm2
	vsubsd	%xmm2, %xmm0, %xmm2
	vcvtsi2sdl	248(%rsp), %xmm8, %xmm0
	vsubsd	%xmm0, %xmm1, %xmm0
	vfmadd132sd	LCPI0_13(%rip), %xmm2, %xmm0 ## xmm0 = (xmm0 * mem) + xmm2
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
LCPI4_6:
	.long	12                      ## 0xc
LCPI4_7:
	.long	16                      ## 0x10
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
	subq	$480, %rsp              ## imm = 0x1E0
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovapd	%xmm0, 256(%rsp)        ## 16-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %r12
	leaq	L_str.9(%rip), %rdi
	callq	_puts
	testl	%r14d, %r14d
	jle	LBB4_14
## %bb.1:
	vmovapd	256(%rsp), %xmm0        ## 16-byte Reload
	vmulsd	%xmm0, %xmm0, %xmm1
	vmovsd	%xmm1, 336(%rsp)        ## 8-byte Spill
	vmulsd	LCPI4_0(%rip), %xmm0, %xmm1
	movl	%r14d, %r13d
	movl	%r13d, %eax
	andl	$-4, %eax
	movq	%rax, 320(%rsp)         ## 8-byte Spill
	addq	$-4, %rax
	movq	%rax, 312(%rsp)         ## 8-byte Spill
	shrq	$2, %rax
	incq	%rax
	vbroadcastsd	%xmm1, %ymm2
	vmovapd	%ymm2, 192(%rsp)        ## 32-byte Spill
	vbroadcastsd	%xmm0, %ymm0
	vmovapd	%ymm0, 384(%rsp)        ## 32-byte Spill
	movl	%eax, %ecx
	andl	$3, %ecx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movq	%rdx, 280(%rsp)         ## 8-byte Spill
	movq	%rcx, 304(%rsp)         ## 8-byte Spill
	shlq	$5, %rcx
	movq	%rcx, 296(%rsp)         ## 8-byte Spill
	xorl	%ebx, %ebx
	vbroadcastsd	LCPI4_3(%rip), %ymm0 ## ymm0 = [5.4413980927026531E+0,5.4413980927026531E+0,5.4413980927026531E+0,5.4413980927026531E+0]
	vmovaps	%ymm0, 352(%rsp)        ## 32-byte Spill
	vbroadcastss	LCPI4_4(%rip), %xmm0 ## xmm0 = [4,4,4,4]
	vmovapd	%xmm0, 416(%rsp)        ## 16-byte Spill
	movl	%r14d, 156(%rsp)        ## 4-byte Spill
	movq	%r12, 328(%rsp)         ## 8-byte Spill
	movq	%r13, 288(%rsp)         ## 8-byte Spill
	vmovapd	%xmm1, 240(%rsp)        ## 16-byte Spill
	jmp	LBB4_2
	.p2align	4, 0x90
LBB4_13:                                ##   in Loop: Header=BB4_2 Depth=1
	movq	344(%rsp), %rbx         ## 8-byte Reload
	incq	%rbx
	cmpq	%r13, %rbx
	je	LBB4_14
LBB4_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB4_7 Depth 2
                                        ##     Child Loop BB4_10 Depth 2
                                        ##     Child Loop BB4_12 Depth 2
	vcvtsi2sd	%ebx, %xmm4, %xmm0
	vmovsd	%xmm0, 160(%rsp)        ## 8-byte Spill
	vmulsd	%xmm0, %xmm1, %xmm0
	vzeroupper
	callq	_sin
	vmovsd	%xmm0, 128(%rsp)        ## 8-byte Spill
	vmovsd	160(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	256(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vmulsd	LCPI4_1(%rip), %xmm0, %xmm0
	callq	_sin
	vmovsd	128(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vmulsd	336(%rsp), %xmm1, %xmm1 ## 8-byte Folded Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	movq	(%r12,%rbx,8), %r15
	cmpl	$4, %r14d
	movq	%rbx, 344(%rsp)         ## 8-byte Spill
	vmovapd	%xmm0, 432(%rsp)        ## 16-byte Spill
	jae	LBB4_4
## %bb.3:                               ##   in Loop: Header=BB4_2 Depth=1
	xorl	%ebx, %ebx
	vmovapd	240(%rsp), %xmm1        ## 16-byte Reload
	jmp	LBB4_12
	.p2align	4, 0x90
LBB4_4:                                 ##   in Loop: Header=BB4_2 Depth=1
	vbroadcastsd	%xmm0, %ymm1
	cmpq	$12, 312(%rsp)          ## 8-byte Folded Reload
	vmovapd	%ymm1, 160(%rsp)        ## 32-byte Spill
	jae	LBB4_6
## %bb.5:                               ##   in Loop: Header=BB4_2 Depth=1
	xorl	%r12d, %r12d
	vmovdqa	LCPI4_2(%rip), %xmm0    ## xmm0 = [0,1,2,3]
	vmovapd	192(%rsp), %ymm2        ## 32-byte Reload
	jmp	LBB4_8
	.p2align	4, 0x90
LBB4_6:                                 ##   in Loop: Header=BB4_2 Depth=1
	movq	280(%rsp), %r14         ## 8-byte Reload
	xorl	%r12d, %r12d
	vmovaps	LCPI4_2(%rip), %xmm0    ## xmm0 = [0,1,2,3]
	vmovapd	192(%rsp), %ymm2        ## 32-byte Reload
	.p2align	4, 0x90
LBB4_7:                                 ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovaps	%xmm0, 128(%rsp)        ## 16-byte Spill
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	%ymm0, %ymm2, %ymm0
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	160(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%r15,%r12,8)
	vmovdqa	416(%rsp), %xmm0        ## 16-byte Reload
	vpaddd	128(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	160(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 32(%r15,%r12,8)
	vpbroadcastd	LCPI4_5(%rip), %xmm0 ## xmm0 = [8,8,8,8]
	vpaddd	128(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	64(%rsp), %ymm1         ## 32-byte Reload
	vmulpd	160(%rsp), %ymm1, %ymm1 ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 64(%r15,%r12,8)
	vpbroadcastd	LCPI4_6(%rip), %xmm0 ## xmm0 = [12,12,12,12]
	vpaddd	128(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	192(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	160(%rsp), %ymm3        ## 32-byte Reload
	vmovapd	192(%rsp), %ymm2        ## 32-byte Reload
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	64(%rsp), %ymm3, %ymm1  ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, 96(%r15,%r12,8)
	addq	$16, %r12
	vpbroadcastd	LCPI4_7(%rip), %xmm0 ## xmm0 = [16,16,16,16]
	vmovdqa	128(%rsp), %xmm1        ## 16-byte Reload
	vpaddd	%xmm0, %xmm1, %xmm1
	vmovdqa	%xmm1, 128(%rsp)        ## 16-byte Spill
	vmovdqa	128(%rsp), %xmm0        ## 16-byte Reload
	addq	$4, %r14
	jne	LBB4_7
LBB4_8:                                 ##   in Loop: Header=BB4_2 Depth=1
	cmpq	$0, 304(%rsp)           ## 8-byte Folded Reload
	movq	296(%rsp), %r13         ## 8-byte Reload
	je	LBB4_11
## %bb.9:                               ##   in Loop: Header=BB4_2 Depth=1
	leaq	(%r15,%r12,8), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB4_10:                                ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovdqa	%xmm0, 128(%rsp)        ## 16-byte Spill
	vcvtdq2pd	%xmm0, %ymm0
	vmovapd	%ymm0, 32(%rsp)         ## 32-byte Spill
	vmulpd	%ymm0, %ymm2, %ymm0
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
	vextractf128	$1, %ymm0, %xmm0
	vmovapd	%xmm0, 16(%rsp)         ## 16-byte Spill
	vzeroupper
	callq	_sin
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 16(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	64(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vmovapd	%xmm0, 64(%rsp)         ## 16-byte Spill
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 64(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmovapd	%ymm0, 64(%rsp)         ## 32-byte Spill
	vmovapd	32(%rsp), %ymm0         ## 32-byte Reload
	vmulpd	384(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmulpd	352(%rsp), %ymm0, %ymm0 ## 32-byte Folded Reload
	vmovapd	%ymm0, 96(%rsp)         ## 32-byte Spill
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
	vmovaps	96(%rsp), %ymm0         ## 32-byte Reload
                                        ## kill: def $xmm0 killed $xmm0 killed $ymm0
	vzeroupper
	callq	_sin
	vmovaps	%xmm0, 16(%rsp)         ## 16-byte Spill
	vpermilpd	$1, 96(%rsp), %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = mem[1,0]
	callq	_sin
	vmovapd	160(%rsp), %ymm3        ## 32-byte Reload
	vmovapd	192(%rsp), %ymm2        ## 32-byte Reload
	vmovapd	16(%rsp), %xmm1         ## 16-byte Reload
	vunpcklpd	%xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0],xmm0[0]
	vinsertf128	$1, 32(%rsp), %ymm0, %ymm0 ## 16-byte Folded Reload
	vmulpd	64(%rsp), %ymm3, %ymm1  ## 32-byte Folded Reload
	vmulpd	%ymm0, %ymm1, %ymm0
	vmovupd	%ymm0, (%r14,%rbx)
	vmovdqa	128(%rsp), %xmm0        ## 16-byte Reload
	vpaddd	416(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	addq	$32, %rbx
	cmpq	%rbx, %r13
	jne	LBB4_10
LBB4_11:                                ##   in Loop: Header=BB4_2 Depth=1
	movq	320(%rsp), %rax         ## 8-byte Reload
	movq	%rax, %rbx
	movq	288(%rsp), %r13         ## 8-byte Reload
	cmpq	%r13, %rax
	movl	156(%rsp), %r14d        ## 4-byte Reload
	movq	328(%rsp), %r12         ## 8-byte Reload
	vmovapd	240(%rsp), %xmm1        ## 16-byte Reload
	je	LBB4_13
	.p2align	4, 0x90
LBB4_12:                                ##   Parent Loop BB4_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vcvtsi2sd	%ebx, %xmm4, %xmm0
	vmovsd	%xmm0, 160(%rsp)        ## 8-byte Spill
	vmulsd	%xmm0, %xmm1, %xmm0
	vzeroupper
	callq	_sin
	vmovsd	%xmm0, 128(%rsp)        ## 8-byte Spill
	vmovsd	160(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	256(%rsp), %xmm0, %xmm0 ## 16-byte Folded Reload
	vmulsd	LCPI4_3(%rip), %xmm0, %xmm0
	callq	_sin
	vmovapd	432(%rsp), %xmm2        ## 16-byte Reload
	vmulsd	128(%rsp), %xmm2, %xmm1 ## 8-byte Folded Reload
	vmulsd	%xmm0, %xmm1, %xmm0
	vmovapd	240(%rsp), %xmm1        ## 16-byte Reload
	vmovsd	%xmm0, (%r15,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r13
	jne	LBB4_12
	jmp	LBB4_13
LBB4_14:
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testl	%esi, %esi
	jle	LBB5_1
## %bb.2:
	movl	%esi, %eax
	movl	%eax, %r11d
	andl	$-16, %r11d
	leaq	-16(%r11), %r8
	movq	%r8, %rcx
	shrq	$4, %rcx
	incq	%rcx
	movl	%ecx, %r10d
	andl	$1, %r10d
	movq	%r10, %r9
	subq	%rcx, %r9
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%r14d, %r14d
	jmp	LBB5_3
	.p2align	4, 0x90
LBB5_13:                                ##   in Loop: Header=BB5_3 Depth=1
	incq	%r14
	cmpq	%rax, %r14
	je	LBB5_14
LBB5_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB5_8 Depth 2
                                        ##     Child Loop BB5_12 Depth 2
	movq	(%rdi,%r14,8), %rcx
	cmpl	$16, %esi
	jae	LBB5_5
## %bb.4:                               ##   in Loop: Header=BB5_3 Depth=1
	xorl	%edx, %edx
	jmp	LBB5_12
	.p2align	4, 0x90
LBB5_5:                                 ##   in Loop: Header=BB5_3 Depth=1
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vxorpd	%xmm1, %xmm1, %xmm1
	testq	%r8, %r8
	je	LBB5_6
## %bb.7:                               ##   in Loop: Header=BB5_3 Depth=1
	movq	%r9, %rdx
	xorl	%ebx, %ebx
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
LBB5_8:                                 ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovupd	(%rcx,%rbx,8), %ymm4
	vmovupd	32(%rcx,%rbx,8), %ymm5
	vmovupd	64(%rcx,%rbx,8), %ymm6
	vmovupd	96(%rcx,%rbx,8), %ymm7
	vfmadd213pd	%ymm0, %ymm4, %ymm4 ## ymm4 = (ymm4 * ymm4) + ymm0
	vfmadd213pd	%ymm1, %ymm5, %ymm5 ## ymm5 = (ymm5 * ymm5) + ymm1
	vfmadd213pd	%ymm2, %ymm6, %ymm6 ## ymm6 = (ymm6 * ymm6) + ymm2
	vfmadd213pd	%ymm3, %ymm7, %ymm7 ## ymm7 = (ymm7 * ymm7) + ymm3
	vmovupd	128(%rcx,%rbx,8), %ymm0
	vmovupd	160(%rcx,%rbx,8), %ymm1
	vmovupd	192(%rcx,%rbx,8), %ymm2
	vmovupd	224(%rcx,%rbx,8), %ymm3
	vfmadd213pd	%ymm4, %ymm0, %ymm0 ## ymm0 = (ymm0 * ymm0) + ymm4
	vfmadd213pd	%ymm5, %ymm1, %ymm1 ## ymm1 = (ymm1 * ymm1) + ymm5
	vfmadd213pd	%ymm6, %ymm2, %ymm2 ## ymm2 = (ymm2 * ymm2) + ymm6
	vfmadd213pd	%ymm7, %ymm3, %ymm3 ## ymm3 = (ymm3 * ymm3) + ymm7
	addq	$32, %rbx
	addq	$2, %rdx
	jne	LBB5_8
## %bb.9:                               ##   in Loop: Header=BB5_3 Depth=1
	testq	%r10, %r10
	je	LBB5_11
LBB5_10:                                ##   in Loop: Header=BB5_3 Depth=1
	vmovupd	(%rcx,%rbx,8), %ymm4
	vmovupd	32(%rcx,%rbx,8), %ymm5
	vmovupd	64(%rcx,%rbx,8), %ymm6
	vmovupd	96(%rcx,%rbx,8), %ymm7
	vfmadd231pd	%ymm7, %ymm7, %ymm3 ## ymm3 = (ymm7 * ymm7) + ymm3
	vfmadd231pd	%ymm6, %ymm6, %ymm2 ## ymm2 = (ymm6 * ymm6) + ymm2
	vfmadd231pd	%ymm5, %ymm5, %ymm1 ## ymm1 = (ymm5 * ymm5) + ymm1
	vfmadd231pd	%ymm4, %ymm4, %ymm0 ## ymm0 = (ymm4 * ymm4) + ymm0
LBB5_11:                                ##   in Loop: Header=BB5_3 Depth=1
	vaddpd	%ymm3, %ymm1, %ymm1
	vaddpd	%ymm2, %ymm0, %ymm0
	vaddpd	%ymm1, %ymm0, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	%r11, %rdx
	cmpq	%rax, %r11
	je	LBB5_13
	.p2align	4, 0x90
LBB5_12:                                ##   Parent Loop BB5_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vfmadd231sd	%xmm1, %xmm1, %xmm0 ## xmm0 = (xmm1 * xmm1) + xmm0
	incq	%rdx
	cmpq	%rdx, %rax
	jne	LBB5_12
	jmp	LBB5_13
LBB5_6:                                 ##   in Loop: Header=BB5_3 Depth=1
	xorl	%ebx, %ebx
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	testq	%r10, %r10
	jne	LBB5_10
	jmp	LBB5_11
LBB5_1:
	vxorpd	%xmm0, %xmm0, %xmm0
LBB5_14:
	vsqrtsd	%xmm0, %xmm0, %xmm0
	popq	%rbx
	popq	%r14
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function multigrid_vcycle
LCPI6_0:
	.quad	4607182418800017408     ## double 1
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
LCPI6_8:
	.quad	4532020583610935537     ## double 1.0000000000000001E-5
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
	subq	$512, %rsp              ## imm = 0x200
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	vmovsd	%xmm1, 192(%rsp)        ## 8-byte Spill
	vmovsd	%xmm0, 184(%rsp)        ## 8-byte Spill
	movq	%rdx, 112(%rsp)         ## 8-byte Spill
                                        ## kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	movq	%rsi, 104(%rsp)         ## 8-byte Spill
	jle	LBB6_3
## %bb.1:
	leal	-1(%rdi), %eax
	movl	%edi, %ecx
	andl	$7, %ecx
	cmpl	$7, %eax
	jae	LBB6_4
## %bb.2:
	movl	$1, %ebx
	jmp	LBB6_6
LBB6_3:
	movq	%rdi, 80(%rsp)          ## 8-byte Spill
	movl	$1, %eax
	movq	%rax, 32(%rsp)          ## 8-byte Spill
	movl	$2, 44(%rsp)            ## 4-byte Folded Spill
	movl	$1, %ebx
	movl	$2, %ecx
	jmp	LBB6_18
LBB6_4:
	movl	%ecx, %edx
	subl	%edi, %edx
	movl	$1, %ebx
	.p2align	4, 0x90
LBB6_5:                                 ## =>This Inner Loop Header: Depth=1
	shll	$8, %ebx
	addl	$8, %edx
	jne	LBB6_5
LBB6_6:
	testl	%ecx, %ecx
	je	LBB6_8
	.p2align	4, 0x90
LBB6_7:                                 ## =>This Inner Loop Header: Depth=1
	addl	%ebx, %ebx
	decl	%ecx
	jne	LBB6_7
LBB6_8:
	movl	$1, %edx
	cmpl	$2, %edi
	jl	LBB6_15
## %bb.9:
	leal	-2(%rdi), %ecx
	andl	$7, %eax
	cmpl	$7, %ecx
	jae	LBB6_11
## %bb.10:
	movl	$1, %edx
	jmp	LBB6_13
LBB6_11:
	movl	%eax, %ecx
	subl	%edi, %ecx
	incl	%ecx
	movl	$1, %edx
	.p2align	4, 0x90
LBB6_12:                                ## =>This Inner Loop Header: Depth=1
	shll	$8, %edx
	addl	$8, %ecx
	jne	LBB6_12
LBB6_13:
	testl	%eax, %eax
	je	LBB6_15
	.p2align	4, 0x90
LBB6_14:                                ## =>This Inner Loop Header: Depth=1
	addl	%edx, %edx
	decl	%eax
	jne	LBB6_14
LBB6_15:
	cmpl	$1, %edi
	jne	LBB6_17
## %bb.16:
	vmovsd	184(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmulsd	%xmm0, %xmm0, %xmm0
	movq	112(%rsp), %rax         ## 8-byte Reload
	movq	8(%rax), %rax
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
	movq	%rdi, 80(%rsp)          ## 8-byte Spill
	movl	%ebx, %ecx
	orl	$1, %ecx
	movq	%rdx, 32(%rsp)          ## 8-byte Spill
	leal	1(%rdx), %eax
	movl	%eax, 44(%rsp)          ## 4-byte Spill
LBB6_18:
	movl	%ecx, 24(%rsp)          ## 4-byte Spill
	movslq	%ecx, %r12
	leaq	(,%r12,8), %rdi
	movq	%rdi, 56(%rsp)          ## 8-byte Spill
	callq	_malloc
	movq	%rax, %r13
	movl	%ebx, 28(%rsp)          ## 4-byte Spill
	testl	%ebx, %ebx
	js	LBB6_21
## %bb.19:
	movl	24(%rsp), %r14d         ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_20:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r12, %rdi
	callq	_calloc
	movq	%rax, (%r13,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_20
LBB6_21:
	movq	%r13, 72(%rsp)          ## 8-byte Spill
	movl	44(%rsp), %ebx          ## 4-byte Reload
	movslq	%ebx, %r13
	leaq	(,%r13,8), %rdi
	movq	%rdi, 48(%rsp)          ## 8-byte Spill
	callq	_malloc
	movq	%rax, %r15
	movl	%ebx, %r14d
	cmpl	$0, 32(%rsp)            ## 4-byte Folded Reload
	js	LBB6_24
## %bb.22:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_23:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r13, %rdi
	callq	_calloc
	movq	%rax, (%r15,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_23
LBB6_24:
	movq	%r15, 128(%rsp)         ## 8-byte Spill
	movq	%r14, 88(%rsp)          ## 8-byte Spill
	movq	56(%rsp), %rdi          ## 8-byte Reload
	callq	_malloc
	movq	%rax, %r15
	cmpl	$0, 28(%rsp)            ## 4-byte Folded Reload
	js	LBB6_27
## %bb.25:
	movl	24(%rsp), %r14d         ## 4-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_26:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r12, %rdi
	callq	_calloc
	movq	%rax, (%r15,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_26
LBB6_27:
	movq	%r15, 96(%rsp)          ## 8-byte Spill
	movq	48(%rsp), %rdi          ## 8-byte Reload
	callq	_malloc
	movq	%rax, %r14
	cmpl	$0, 32(%rsp)            ## 4-byte Folded Reload
	movq	88(%rsp), %r15          ## 8-byte Reload
	js	LBB6_30
## %bb.28:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_29:                                ## =>This Inner Loop Header: Depth=1
	movl	$8, %esi
	movq	%r13, %rdi
	callq	_calloc
	movq	%rax, (%r14,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB6_29
LBB6_30:
	movq	80(%rsp), %rax          ## 8-byte Reload
	decl	%eax
	movq	%rax, 80(%rsp)          ## 8-byte Spill
	movl	28(%rsp), %r10d         ## 4-byte Reload
	movl	%r10d, %esi
	movq	%rsi, 48(%rsp)          ## 8-byte Spill
	leaq	-1(%rsi), %rax
	movl	24(%rsp), %edx          ## 4-byte Reload
	movl	%edx, %r8d
	andl	$-16, %r8d
	leaq	-16(%r8), %r9
	movq	%r9, %rdi
	shrq	$4, %rdi
	incq	%rdi
	movl	%eax, %r13d
	andl	$3, %r13d
	movq	%rax, %rcx
	movq	%rax, 56(%rsp)          ## 8-byte Spill
	movq	%rax, %rbx
	andq	$-16, %rbx
	movq	%rsi, %rax
	negq	%rax
	movq	%rax, 328(%rsp)         ## 8-byte Spill
	movl	%r15d, %eax
	andl	$15, %eax
	testq	%rax, %rax
	movl	$16, %ecx
	cmovneq	%rax, %rcx
	movq	%r15, %rax
	subq	%rcx, %rax
	movq	%rax, 288(%rsp)         ## 8-byte Spill
	movl	%edx, %eax
	andl	$7, %eax
	movq	%rax, 160(%rsp)         ## 8-byte Spill
	movl	%edi, %eax
	andl	$1, %eax
	vmovsd	LCPI6_0(%rip), %xmm0    ## xmm0 = mem[0],zero
	vdivsd	192(%rsp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vmovsd	%xmm0, 256(%rsp)        ## 8-byte Spill
	movq	%rsi, %rcx
	subq	%r13, %rcx
	movq	%rcx, 224(%rsp)         ## 8-byte Spill
	movl	%edx, %ecx
	andl	$-8, %ecx
	movq	%rcx, 312(%rsp)         ## 8-byte Spill
	movq	%rax, 280(%rsp)         ## 8-byte Spill
	movq	%rax, %rcx
	movq	%rdi, %rax
	movq	%rdi, 320(%rsp)         ## 8-byte Spill
	subq	%rdi, %rcx
	movq	%rcx, 216(%rsp)         ## 8-byte Spill
	vmovsd	LCPI6_2(%rip), %xmm8    ## xmm8 = mem[0],zero
	vbroadcastsd	LCPI6_2(%rip), %ymm9 ## ymm9 = [4.0E+0,4.0E+0,4.0E+0,4.0E+0]
	vmovsd	LCPI6_1(%rip), %xmm10   ## xmm10 = mem[0],zero
	vmovdqa	LCPI6_3(%rip), %ymm11   ## ymm11 = [0,1,2,3]
	vpbroadcastq	LCPI6_4(%rip), %ymm12 ## ymm12 = [8,8,8,8]
	vpbroadcastq	LCPI6_5(%rip), %ymm13 ## ymm13 = [16,16,16,16]
	vpbroadcastq	LCPI6_6(%rip), %ymm14 ## ymm14 = [24,24,24,24]
	movl	%edx, %r12d
	leaq	(,%r12,8), %rcx
	movl	32(%rsp), %eax          ## 4-byte Reload
	leaq	-1(%r15,%r15), %rdx
	movq	%rdx, 304(%rsp)         ## 8-byte Spill
	leaq	1(%rsi), %rdx
	movq	%rdx, 296(%rsp)         ## 8-byte Spill
	leaq	-2(%rsi), %rdx
	movq	%rdx, 232(%rsp)         ## 8-byte Spill
	leaq	-1(%r12), %rdx
	movq	%rdx, 240(%rsp)         ## 8-byte Spill
	movq	%rbx, 272(%rsp)         ## 8-byte Spill
	leaq	1(%rbx), %rdx
	movq	%rdx, 264(%rsp)         ## 8-byte Spill
	movq	%rax, 336(%rsp)         ## 8-byte Spill
	leaq	(,%rax,8), %r15
	movq	104(%rsp), %r11         ## 8-byte Reload
	movq	%r14, 120(%rsp)         ## 8-byte Spill
	movq	%r8, 200(%rsp)          ## 8-byte Spill
	movq	%r9, 208(%rsp)          ## 8-byte Spill
	vmovapd	%ymm9, 448(%rsp)        ## 32-byte Spill
	vmovdqa	%ymm12, 416(%rsp)       ## 32-byte Spill
	vmovdqa	%ymm13, 384(%rsp)       ## 32-byte Spill
	vmovdqa	%ymm14, 352(%rsp)       ## 32-byte Spill
	movq	%rcx, 176(%rsp)         ## 8-byte Spill
	movq	%r13, 248(%rsp)         ## 8-byte Spill
	jmp	LBB6_33
	.p2align	4, 0x90
LBB6_31:                                ##   in Loop: Header=BB6_33 Depth=1
	movq	72(%rsp), %rdi          ## 8-byte Reload
LBB6_32:                                ##   in Loop: Header=BB6_33 Depth=1
	vsqrtsd	%xmm0, %xmm0, %xmm0
	vmulsd	256(%rsp), %xmm0, %xmm0 ## 8-byte Folded Reload
	vucomisd	LCPI6_8(%rip), %xmm0
	jbe	LBB6_133
LBB6_33:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB6_36 Depth 2
                                        ##       Child Loop BB6_39 Depth 3
                                        ##       Child Loop BB6_42 Depth 3
                                        ##     Child Loop BB6_44 Depth 2
                                        ##       Child Loop BB6_56 Depth 3
                                        ##       Child Loop BB6_48 Depth 3
                                        ##     Child Loop BB6_63 Depth 2
                                        ##       Child Loop BB6_69 Depth 3
                                        ##       Child Loop BB6_73 Depth 3
                                        ##       Child Loop BB6_77 Depth 3
                                        ##     Child Loop BB6_82 Depth 2
                                        ##     Child Loop BB6_85 Depth 2
                                        ##     Child Loop BB6_88 Depth 2
                                        ##       Child Loop BB6_89 Depth 3
                                        ##     Child Loop BB6_94 Depth 2
                                        ##       Child Loop BB6_101 Depth 3
                                        ##       Child Loop BB6_106 Depth 3
                                        ##       Child Loop BB6_108 Depth 3
                                        ##     Child Loop BB6_113 Depth 2
                                        ##       Child Loop BB6_116 Depth 3
                                        ##       Child Loop BB6_119 Depth 3
                                        ##     Child Loop BB6_123 Depth 2
                                        ##       Child Loop BB6_127 Depth 3
                                        ##       Child Loop BB6_131 Depth 3
	cmpl	$2, %r10d
	jl	LBB6_60
## %bb.34:                              ##   in Loop: Header=BB6_33 Depth=1
	movq	(%r11), %r10
	movq	8(%r11), %rcx
	movl	$1, %r8d
	movq	%rcx, %r9
	movq	%r10, %rax
	jmp	LBB6_36
	.p2align	4, 0x90
LBB6_35:                                ##   in Loop: Header=BB6_36 Depth=2
	movq	%rdi, %rax
	cmpq	48(%rsp), %r8           ## 8-byte Folded Reload
	movq	104(%rsp), %r11         ## 8-byte Reload
	je	LBB6_43
LBB6_36:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_39 Depth 3
                                        ##       Child Loop BB6_42 Depth 3
	movq	%r9, %rdi
	movq	8(%r11,%r8,8), %r9
	movq	112(%rsp), %rdx         ## 8-byte Reload
	movq	(%rdx,%r8,8), %rbx
	vmovsd	(%rdi), %xmm0           ## xmm0 = mem[0],zero
	cmpq	$3, 232(%rsp)           ## 8-byte Folded Reload
	jae	LBB6_38
## %bb.37:                              ##   in Loop: Header=BB6_36 Depth=2
	movl	$1, %edx
	jmp	LBB6_40
	.p2align	4, 0x90
LBB6_38:                                ##   in Loop: Header=BB6_36 Depth=2
	movl	$1, %edx
	movq	224(%rsp), %rsi         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_39:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_36 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r9,%rdx,8), %xmm0, %xmm0
	vaddsd	8(%rdi,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, (%rdi,%rdx,8)
	vaddsd	8(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	8(%r9,%rdx,8), %xmm0, %xmm0
	vaddsd	16(%rdi,%rdx,8), %xmm0, %xmm0
	vaddsd	8(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rdx,8)
	vaddsd	16(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	16(%r9,%rdx,8), %xmm0, %xmm0
	vaddsd	24(%rdi,%rdx,8), %xmm0, %xmm0
	vaddsd	16(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 16(%rdi,%rdx,8)
	vaddsd	24(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	24(%r9,%rdx,8), %xmm0, %xmm0
	vaddsd	32(%rdi,%rdx,8), %xmm0, %xmm0
	vaddsd	24(%rbx,%rdx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 24(%rdi,%rdx,8)
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	jne	LBB6_39
LBB6_40:                                ##   in Loop: Header=BB6_36 Depth=2
	incq	%r8
	testq	%r13, %r13
	je	LBB6_35
## %bb.41:                              ##   in Loop: Header=BB6_36 Depth=2
	leaq	(%rdi,%rdx,8), %rsi
	addq	$8, %rsi
	leaq	(%rbx,%rdx,8), %r11
	leaq	(%r9,%rdx,8), %rbx
	leaq	(%rax,%rdx,8), %rax
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB6_42:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_36 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vaddsd	(%rax,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rbx,%rdx,8), %xmm0, %xmm0
	vaddsd	(%rsi,%rdx,8), %xmm0, %xmm0
	vaddsd	(%r11,%rdx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, -8(%rsi,%rdx,8)
	incq	%rdx
	cmpq	%rdx, %r13
	jne	LBB6_42
	jmp	LBB6_35
	.p2align	4, 0x90
LBB6_43:                                ##   in Loop: Header=BB6_33 Depth=1
	movl	$1, %edx
	movq	48(%rsp), %r9           ## 8-byte Reload
	.p2align	4, 0x90
LBB6_44:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_56 Depth 3
                                        ##       Child Loop BB6_48 Depth 3
	leaq	1(%rdx), %rax
	movq	%rax, 168(%rsp)         ## 8-byte Spill
	movq	8(%r11,%rdx,8), %rdi
	movq	112(%rsp), %rax         ## 8-byte Reload
	movq	(%rax,%rdx,8), %rsi
	movq	%rdx, 344(%rsp)         ## 8-byte Spill
	movq	72(%rsp), %rax          ## 8-byte Reload
	movq	(%rax,%rdx,8), %rdx
	movl	$1, %ebx
	cmpq	$16, 56(%rsp)           ## 8-byte Folded Reload
	jae	LBB6_49
LBB6_45:                                ##   in Loop: Header=BB6_44 Depth=2
	movq	%rbx, %rax
	notq	%rax
	testb	$1, %r9b
	jne	LBB6_47
## %bb.46:                              ##   in Loop: Header=BB6_44 Depth=2
	vmovsd	(%rcx,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	vfmsub213sd	(%r10,%rbx,8), %xmm8, %xmm0 ## xmm0 = (xmm8 * xmm0) - mem
	vsubsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vsubsd	-8(%rcx,%rbx,8), %xmm0, %xmm0
	vsubsd	8(%rcx,%rbx,8), %xmm0, %xmm0
	vsubsd	(%rsi,%rbx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rbx,8)
	incq	%rbx
LBB6_47:                                ##   in Loop: Header=BB6_44 Depth=2
	cmpq	328(%rsp), %rax         ## 8-byte Folded Reload
	je	LBB6_58
	.p2align	4, 0x90
LBB6_48:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_44 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rbx,8), %xmm0    ## xmm0 = mem[0],zero
	vfmsub213sd	(%r10,%rbx,8), %xmm8, %xmm0 ## xmm0 = (xmm8 * xmm0) - mem
	vsubsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vsubsd	-8(%rcx,%rbx,8), %xmm0, %xmm0
	vsubsd	8(%rcx,%rbx,8), %xmm0, %xmm0
	vsubsd	(%rsi,%rbx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rbx,8)
	vmovsd	8(%rcx,%rbx,8), %xmm0   ## xmm0 = mem[0],zero
	vfmsub213sd	8(%r10,%rbx,8), %xmm8, %xmm0 ## xmm0 = (xmm8 * xmm0) - mem
	vsubsd	8(%rdi,%rbx,8), %xmm0, %xmm0
	vsubsd	(%rcx,%rbx,8), %xmm0, %xmm0
	vsubsd	16(%rcx,%rbx,8), %xmm0, %xmm0
	vsubsd	8(%rsi,%rbx,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rdx,%rbx,8)
	addq	$2, %rbx
	cmpq	%rbx, %r9
	jne	LBB6_48
	jmp	LBB6_58
	.p2align	4, 0x90
LBB6_49:                                ##   in Loop: Header=BB6_44 Depth=2
	leaq	8(%rdx), %rbx
	leaq	(%rdx,%r9,8), %r8
	leaq	8(%rcx), %rax
	movq	%rax, 152(%rsp)         ## 8-byte Spill
	leaq	(%rcx,%r9,8), %r11
	leaq	8(%r10), %r14
	leaq	(%r10,%r9,8), %rax
	movq	%rax, 64(%rsp)          ## 8-byte Spill
	leaq	8(%rdi), %rax
	movq	%rax, 136(%rsp)         ## 8-byte Spill
	leaq	(%rdi,%r9,8), %rax
	movq	%rax, 144(%rsp)         ## 8-byte Spill
	cmpq	%r11, %rbx
	setb	23(%rsp)                ## 1-byte Folded Spill
	cmpq	%r8, 152(%rsp)          ## 8-byte Folded Reload
	movq	56(%rsp), %rax          ## 8-byte Reload
	leaq	(%rcx,%rax,8), %r9
	setb	152(%rsp)               ## 1-byte Folded Spill
	cmpq	64(%rsp), %rbx          ## 8-byte Folded Reload
	setb	22(%rsp)                ## 1-byte Folded Spill
	cmpq	%r8, %r14
	leaq	16(%rcx), %rax
	movq	%rax, 64(%rsp)          ## 8-byte Spill
	setb	21(%rsp)                ## 1-byte Folded Spill
	cmpq	144(%rsp), %rbx         ## 8-byte Folded Reload
	setb	%r14b
	cmpq	%r8, 136(%rsp)          ## 8-byte Folded Reload
	movq	296(%rsp), %rax         ## 8-byte Reload
	leaq	(%rcx,%rax,8), %r11
	setb	144(%rsp)               ## 1-byte Folded Spill
	cmpq	%r9, %rbx
	movq	48(%rsp), %r9           ## 8-byte Reload
	setb	136(%rsp)               ## 1-byte Folded Spill
	cmpq	%r8, %rcx
	setb	20(%rsp)                ## 1-byte Folded Spill
	cmpq	%r11, %rbx
	movq	104(%rsp), %r11         ## 8-byte Reload
	setb	19(%rsp)                ## 1-byte Folded Spill
	cmpq	%r8, 64(%rsp)           ## 8-byte Folded Reload
	leaq	(%rsi,%r9,8), %rax
	setb	64(%rsp)                ## 1-byte Folded Spill
	cmpq	%rax, %rbx
	leaq	8(%rsi), %rax
	setb	18(%rsp)                ## 1-byte Folded Spill
	cmpq	%r8, %rax
	setb	%r8b
	movl	$1, %ebx
	movb	152(%rsp), %al          ## 1-byte Reload
	testb	%al, 23(%rsp)           ## 1-byte Folded Reload
	jne	LBB6_45
## %bb.50:                              ##   in Loop: Header=BB6_44 Depth=2
	movl	$1, %ebx
	movb	21(%rsp), %al           ## 1-byte Reload
	andb	%al, 22(%rsp)           ## 1-byte Folded Spill
	jne	LBB6_45
## %bb.51:                              ##   in Loop: Header=BB6_44 Depth=2
	movl	$1, %ebx
	andb	144(%rsp), %r14b        ## 1-byte Folded Reload
	jne	LBB6_45
## %bb.52:                              ##   in Loop: Header=BB6_44 Depth=2
	movl	$1, %ebx
	movb	20(%rsp), %al           ## 1-byte Reload
	andb	%al, 136(%rsp)          ## 1-byte Folded Spill
	jne	LBB6_45
## %bb.53:                              ##   in Loop: Header=BB6_44 Depth=2
	movl	$1, %ebx
	movl	%r8d, %r14d
	movq	%r11, %rax
	movb	64(%rsp), %r8b          ## 1-byte Reload
	andb	%r8b, 19(%rsp)          ## 1-byte Folded Spill
	jne	LBB6_45
## %bb.54:                              ##   in Loop: Header=BB6_44 Depth=2
	movl	$1, %ebx
	andb	%r14b, 18(%rsp)         ## 1-byte Folded Spill
	jne	LBB6_45
## %bb.55:                              ##   in Loop: Header=BB6_44 Depth=2
	xorl	%eax, %eax
	movq	272(%rsp), %rbx         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_56:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_44 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovupd	8(%rcx,%rax,8), %ymm0
	vmovupd	40(%rcx,%rax,8), %ymm1
	vmovupd	72(%rcx,%rax,8), %ymm2
	vmovupd	104(%rcx,%rax,8), %ymm3
	vfmsub213pd	8(%r10,%rax,8), %ymm9, %ymm0 ## ymm0 = (ymm9 * ymm0) - mem
	vfmsub213pd	40(%r10,%rax,8), %ymm9, %ymm1 ## ymm1 = (ymm9 * ymm1) - mem
	vfmsub213pd	72(%r10,%rax,8), %ymm9, %ymm2 ## ymm2 = (ymm9 * ymm2) - mem
	vfmsub213pd	104(%r10,%rax,8), %ymm9, %ymm3 ## ymm3 = (ymm9 * ymm3) - mem
	vsubpd	8(%rdi,%rax,8), %ymm0, %ymm0
	vsubpd	40(%rdi,%rax,8), %ymm1, %ymm1
	vsubpd	72(%rdi,%rax,8), %ymm2, %ymm2
	vsubpd	104(%rdi,%rax,8), %ymm3, %ymm3
	vsubpd	(%rcx,%rax,8), %ymm0, %ymm0
	vsubpd	32(%rcx,%rax,8), %ymm1, %ymm1
	vsubpd	64(%rcx,%rax,8), %ymm2, %ymm2
	vsubpd	96(%rcx,%rax,8), %ymm3, %ymm3
	vsubpd	16(%rcx,%rax,8), %ymm0, %ymm0
	vsubpd	48(%rcx,%rax,8), %ymm1, %ymm1
	vsubpd	80(%rcx,%rax,8), %ymm2, %ymm2
	vsubpd	112(%rcx,%rax,8), %ymm3, %ymm3
	vsubpd	8(%rsi,%rax,8), %ymm0, %ymm0
	vsubpd	40(%rsi,%rax,8), %ymm1, %ymm1
	vsubpd	72(%rsi,%rax,8), %ymm2, %ymm2
	vsubpd	104(%rsi,%rax,8), %ymm3, %ymm3
	vmovupd	%ymm0, 8(%rdx,%rax,8)
	vmovupd	%ymm1, 40(%rdx,%rax,8)
	vmovupd	%ymm2, 72(%rdx,%rax,8)
	vmovupd	%ymm3, 104(%rdx,%rax,8)
	addq	$16, %rax
	cmpq	%rax, %rbx
	jne	LBB6_56
## %bb.57:                              ##   in Loop: Header=BB6_44 Depth=2
	movq	%rbx, %rax
	movq	264(%rsp), %rbx         ## 8-byte Reload
	cmpq	%rax, 56(%rsp)          ## 8-byte Folded Reload
	jne	LBB6_45
	.p2align	4, 0x90
LBB6_58:                                ##   in Loop: Header=BB6_44 Depth=2
	movq	168(%rsp), %r14         ## 8-byte Reload
	cmpq	%r9, %r14
	je	LBB6_60
## %bb.59:                              ##   in Loop: Header=BB6_44 Depth=2
	movq	344(%rsp), %rax         ## 8-byte Reload
	movq	(%r11,%rax,8), %r10
	movq	%rdi, %rcx
	movq	%r14, %rdx
	jmp	LBB6_44
	.p2align	4, 0x90
LBB6_60:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, 32(%rsp)            ## 4-byte Folded Reload
	movq	88(%rsp), %r10          ## 8-byte Reload
	movl	44(%rsp), %r11d         ## 4-byte Reload
	movq	128(%rsp), %rdi         ## 8-byte Reload
	movq	120(%rsp), %rsi         ## 8-byte Reload
	js	LBB6_78
## %bb.61:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%r8d, %r8d
	jmp	LBB6_63
	.p2align	4, 0x90
LBB6_62:                                ##   in Loop: Header=BB6_63 Depth=2
	incq	%r8
	cmpq	%r10, %r8
	je	LBB6_78
LBB6_63:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_69 Depth 3
                                        ##       Child Loop BB6_73 Depth 3
                                        ##       Child Loop BB6_77 Depth 3
	movq	%r8, %rax
	shlq	$4, %rax
	movq	72(%rsp), %rcx          ## 8-byte Reload
	movq	(%rcx,%rax), %r14
	movq	(%rdi,%r8,8), %rcx
	cmpl	$17, %r11d
	jb	LBB6_64
## %bb.65:                              ##   in Loop: Header=BB6_63 Depth=2
	movq	304(%rsp), %rax         ## 8-byte Reload
	leaq	(%r14,%rax,8), %rax
	cmpq	%rax, %rcx
	jae	LBB6_68
## %bb.66:                              ##   in Loop: Header=BB6_63 Depth=2
	leaq	(%rcx,%r10,8), %rax
	cmpq	%rax, %r14
	jae	LBB6_68
LBB6_64:                                ##   in Loop: Header=BB6_63 Depth=2
	xorl	%ebx, %ebx
	jmp	LBB6_71
	.p2align	4, 0x90
LBB6_68:                                ##   in Loop: Header=BB6_63 Depth=2
	xorl	%ebx, %ebx
	vmovdqa	%ymm11, %ymm0
	movq	288(%rsp), %rax         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_69:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_63 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vpaddq	%ymm0, %ymm0, %ymm1
	vpaddq	%ymm1, %ymm12, %ymm2
	vpaddq	%ymm1, %ymm13, %ymm3
	vpaddq	%ymm1, %ymm14, %ymm4
	vpcmpeqd	%ymm5, %ymm5, %ymm5
	vgatherqpd	%ymm5, (%r14,%ymm1,8), %ymm6
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vgatherqpd	%ymm1, (%r14,%ymm2,8), %ymm5
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vgatherqpd	%ymm1, (%r14,%ymm3,8), %ymm2
	vpcmpeqd	%ymm1, %ymm1, %ymm1
	vgatherqpd	%ymm1, (%r14,%ymm4,8), %ymm3
	vmulpd	%ymm6, %ymm9, %ymm1
	vmulpd	%ymm5, %ymm9, %ymm4
	vmulpd	%ymm2, %ymm9, %ymm2
	vmovupd	%ymm1, (%rcx,%rbx,8)
	vmovupd	%ymm4, 32(%rcx,%rbx,8)
	vmovupd	%ymm2, 64(%rcx,%rbx,8)
	vmulpd	%ymm3, %ymm9, %ymm1
	vmovupd	%ymm1, 96(%rcx,%rbx,8)
	addq	$16, %rbx
	vpaddq	%ymm0, %ymm13, %ymm0
	cmpq	%rbx, %rax
	jne	LBB6_69
## %bb.70:                              ##   in Loop: Header=BB6_63 Depth=2
	movq	%rax, %rbx
LBB6_71:                                ##   in Loop: Header=BB6_63 Depth=2
	movl	%r10d, %edx
	subl	%ebx, %edx
	movq	%rbx, %r9
	notq	%r9
	addq	%r10, %r9
	andq	$7, %rdx
	je	LBB6_75
## %bb.72:                              ##   in Loop: Header=BB6_63 Depth=2
	leaq	(,%rbx,8), %rax
	negq	%rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
LBB6_73:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_63 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	(%r14,%rax,2), %xmm8, %xmm0
	vmovsd	%xmm0, (%rcx,%rax)
	decq	%rdi
	addq	$8, %rax
	cmpq	%rdi, %rdx
	jne	LBB6_73
## %bb.74:                              ##   in Loop: Header=BB6_63 Depth=2
	subq	%rdi, %rbx
	movq	128(%rsp), %rdi         ## 8-byte Reload
LBB6_75:                                ##   in Loop: Header=BB6_63 Depth=2
	cmpq	$7, %r9
	jb	LBB6_62
## %bb.76:                              ##   in Loop: Header=BB6_63 Depth=2
	movq	%rbx, %rax
	shlq	$4, %rax
	leaq	(%r14,%rax), %rdx
	addq	$112, %rdx
	.p2align	4, 0x90
LBB6_77:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_63 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmulsd	-112(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, (%rcx,%rbx,8)
	vmulsd	-96(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 8(%rcx,%rbx,8)
	vmulsd	-80(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 16(%rcx,%rbx,8)
	vmulsd	-64(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 24(%rcx,%rbx,8)
	vmulsd	-48(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 32(%rcx,%rbx,8)
	vmulsd	-32(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 40(%rcx,%rbx,8)
	vmulsd	-16(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 48(%rcx,%rbx,8)
	vmulsd	(%rdx), %xmm8, %xmm0
	vmovsd	%xmm0, 56(%rcx,%rbx,8)
	addq	$8, %rbx
	subq	$-128, %rdx
	cmpq	%rbx, %r10
	jne	LBB6_77
	jmp	LBB6_62
	.p2align	4, 0x90
LBB6_78:                                ##   in Loop: Header=BB6_33 Depth=1
	movq	%rdi, %rdx
	movq	80(%rsp), %rdi          ## 8-byte Reload
                                        ## kill: def $edi killed $edi killed $rdi
	vmovsd	184(%rsp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmovsd	192(%rsp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	vzeroupper
	callq	_multigrid_vcycle
	cmpl	$0, 28(%rsp)            ## 4-byte Folded Reload
	js	LBB6_86
## %bb.79:                              ##   in Loop: Header=BB6_33 Depth=1
	cmpq	$7, 240(%rsp)           ## 8-byte Folded Reload
	jae	LBB6_81
## %bb.80:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%ebx, %ebx
	movq	176(%rsp), %r13         ## 8-byte Reload
	jmp	LBB6_83
	.p2align	4, 0x90
LBB6_81:                                ##   in Loop: Header=BB6_33 Depth=1
	xorl	%ebx, %ebx
	movq	96(%rsp), %r14          ## 8-byte Reload
	movq	176(%rsp), %r13         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_82:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
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
	cmpq	%rbx, 312(%rsp)         ## 8-byte Folded Reload
	jne	LBB6_82
LBB6_83:                                ##   in Loop: Header=BB6_33 Depth=1
	movq	160(%rsp), %r14         ## 8-byte Reload
	testq	%r14, %r14
	je	LBB6_86
## %bb.84:                              ##   in Loop: Header=BB6_33 Depth=1
	movq	96(%rsp), %rax          ## 8-byte Reload
	leaq	(%rax,%rbx,8), %rax
	movq	%rax, 168(%rsp)         ## 8-byte Spill
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_85:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	168(%rsp), %rax         ## 8-byte Reload
	movq	(%rax,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_85
LBB6_86:                                ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$0, 32(%rsp)            ## 4-byte Folded Reload
	movl	28(%rsp), %r10d         ## 4-byte Reload
	movq	104(%rsp), %r11         ## 8-byte Reload
	movq	96(%rsp), %r9           ## 8-byte Reload
	movq	120(%rsp), %r14         ## 8-byte Reload
	vmovsd	LCPI6_2(%rip), %xmm8    ## xmm8 = mem[0],zero
	vmovapd	448(%rsp), %ymm9        ## 32-byte Reload
	vmovsd	LCPI6_1(%rip), %xmm10   ## xmm10 = mem[0],zero
	vmovdqa	LCPI6_3(%rip), %ymm11   ## ymm11 = [0,1,2,3]
	vmovdqa	416(%rsp), %ymm12       ## 32-byte Reload
	vmovdqa	384(%rsp), %ymm13       ## 32-byte Reload
	vmovdqa	352(%rsp), %ymm14       ## 32-byte Reload
	vmovsd	LCPI6_7(%rip), %xmm1    ## xmm1 = mem[0],zero
	movq	248(%rsp), %r13         ## 8-byte Reload
	jle	LBB6_91
## %bb.87:                              ##   in Loop: Header=BB6_33 Depth=1
	movq	(%r14), %rax
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB6_88:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_89 Depth 3
	movq	%r8, %rdx
	shlq	$4, %rdx
	movq	(%r9,%rdx), %rsi
	movq	8(%r9,%rdx), %rdi
	movq	8(%r14,%r8,8), %rdx
	incq	%r8
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_89:                                ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_88 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movq	(%rax,%rbx), %rcx
	movq	%rcx, (%rsi,%rbx,2)
	vmovsd	(%rdx,%rbx), %xmm0      ## xmm0 = mem[0],zero
	vaddsd	(%rax,%rbx), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, (%rdi,%rbx,2)
	vmovsd	8(%rax,%rbx), %xmm0     ## xmm0 = mem[0],zero
	vaddsd	(%rax,%rbx), %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsi,%rbx,2)
	vmovsd	8(%rax,%rbx), %xmm0     ## xmm0 = mem[0],zero
	vaddsd	(%rax,%rbx), %xmm0, %xmm0
	vaddsd	(%rdx,%rbx), %xmm0, %xmm0
	vaddsd	8(%rdx,%rbx), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 8(%rdi,%rbx,2)
	addq	$8, %rbx
	cmpq	%rbx, %r15
	jne	LBB6_89
## %bb.90:                              ##   in Loop: Header=BB6_88 Depth=2
	movq	%rdx, %rax
	cmpq	336(%rsp), %r8          ## 8-byte Folded Reload
	jne	LBB6_88
LBB6_91:                                ##   in Loop: Header=BB6_33 Depth=1
	testl	%r10d, %r10d
	movl	24(%rsp), %r8d          ## 4-byte Reload
	movq	160(%rsp), %rbx         ## 8-byte Reload
	js	LBB6_110
## %bb.92:                              ##   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	jmp	LBB6_94
	.p2align	4, 0x90
LBB6_93:                                ##   in Loop: Header=BB6_94 Depth=2
	incq	%rax
	cmpq	%r12, %rax
	je	LBB6_110
LBB6_94:                                ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_101 Depth 3
                                        ##       Child Loop BB6_106 Depth 3
                                        ##       Child Loop BB6_108 Depth 3
	movq	(%r11,%rax,8), %rcx
	movq	(%r9,%rax,8), %rdx
	cmpl	$16, %r8d
	jb	LBB6_95
## %bb.96:                              ##   in Loop: Header=BB6_94 Depth=2
	leaq	(%rdx,%r12,8), %rsi
	cmpq	%rsi, %rcx
	jae	LBB6_99
## %bb.97:                              ##   in Loop: Header=BB6_94 Depth=2
	leaq	(%rcx,%r12,8), %rsi
	cmpq	%rsi, %rdx
	jae	LBB6_99
LBB6_95:                                ##   in Loop: Header=BB6_94 Depth=2
	xorl	%esi, %esi
LBB6_105:                               ##   in Loop: Header=BB6_94 Depth=2
	movq	%rsi, %rdi
	notq	%rdi
	addq	%r12, %rdi
	testq	%rbx, %rbx
	je	LBB6_107
	.p2align	4, 0x90
LBB6_106:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_94 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rsi,8), %xmm0    ## xmm0 = mem[0],zero
	vsubsd	(%rdx,%rsi,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rsi,8)
	incq	%rsi
	decq	%rbx
	jne	LBB6_106
LBB6_107:                               ##   in Loop: Header=BB6_94 Depth=2
	cmpq	$7, %rdi
	movq	160(%rsp), %rbx         ## 8-byte Reload
	jb	LBB6_93
	.p2align	4, 0x90
LBB6_108:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_94 Depth=2
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
	cmpq	%rsi, %r12
	jne	LBB6_108
	jmp	LBB6_93
	.p2align	4, 0x90
LBB6_99:                                ##   in Loop: Header=BB6_94 Depth=2
	cmpq	$0, 208(%rsp)           ## 8-byte Folded Reload
	je	LBB6_109
## %bb.100:                             ##   in Loop: Header=BB6_94 Depth=2
	movq	216(%rsp), %rdi         ## 8-byte Reload
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB6_101:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_94 Depth=2
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
	jne	LBB6_101
## %bb.102:                             ##   in Loop: Header=BB6_94 Depth=2
	cmpq	$0, 280(%rsp)           ## 8-byte Folded Reload
	je	LBB6_104
LBB6_103:                               ##   in Loop: Header=BB6_94 Depth=2
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
LBB6_104:                               ##   in Loop: Header=BB6_94 Depth=2
	movq	200(%rsp), %rdi         ## 8-byte Reload
	movq	%rdi, %rsi
	cmpq	%r12, %rdi
	je	LBB6_93
	jmp	LBB6_105
LBB6_109:                               ##   in Loop: Header=BB6_94 Depth=2
	xorl	%esi, %esi
	cmpq	$0, 280(%rsp)           ## 8-byte Folded Reload
	jne	LBB6_103
	jmp	LBB6_104
	.p2align	4, 0x90
LBB6_110:                               ##   in Loop: Header=BB6_33 Depth=1
	cmpl	$2, %r10d
	jl	LBB6_120
## %bb.111:                             ##   in Loop: Header=BB6_33 Depth=1
	movq	(%r11), %rsi
	movq	8(%r11), %rcx
	movl	$1, %r8d
	jmp	LBB6_113
	.p2align	4, 0x90
LBB6_112:                               ##   in Loop: Header=BB6_113 Depth=2
	movq	%rdx, %rsi
	cmpq	48(%rsp), %r8           ## 8-byte Folded Reload
	je	LBB6_120
LBB6_113:                               ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_116 Depth 3
                                        ##       Child Loop BB6_119 Depth 3
	movq	%rcx, %rdx
	movq	8(%r11,%r8,8), %rcx
	movq	112(%rsp), %rax         ## 8-byte Reload
	movq	(%rax,%r8,8), %rdi
	vmovsd	(%rdx), %xmm0           ## xmm0 = mem[0],zero
	cmpq	$3, 232(%rsp)           ## 8-byte Folded Reload
	jae	LBB6_115
## %bb.114:                             ##   in Loop: Header=BB6_113 Depth=2
	movl	$1, %ebx
	jmp	LBB6_117
	.p2align	4, 0x90
LBB6_115:                               ##   in Loop: Header=BB6_113 Depth=2
	movl	$1, %ebx
	movq	224(%rsp), %rax         ## 8-byte Reload
	.p2align	4, 0x90
LBB6_116:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_113 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vaddsd	(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rcx,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rdx,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, (%rdx,%rbx,8)
	vaddsd	8(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rcx,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rdx,%rbx,8), %xmm0, %xmm0
	vaddsd	8(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 8(%rdx,%rbx,8)
	vaddsd	16(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rcx,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rdx,%rbx,8), %xmm0, %xmm0
	vaddsd	16(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 16(%rdx,%rbx,8)
	vaddsd	24(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rcx,%rbx,8), %xmm0, %xmm0
	vaddsd	32(%rdx,%rbx,8), %xmm0, %xmm0
	vaddsd	24(%rdi,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, 24(%rdx,%rbx,8)
	addq	$4, %rbx
	cmpq	%rbx, %rax
	jne	LBB6_116
LBB6_117:                               ##   in Loop: Header=BB6_113 Depth=2
	incq	%r8
	testb	$3, 56(%rsp)            ## 1-byte Folded Reload
	je	LBB6_112
## %bb.118:                             ##   in Loop: Header=BB6_113 Depth=2
	leaq	(%rdx,%rbx,8), %rax
	addq	$8, %rax
	leaq	(%rdi,%rbx,8), %r9
	leaq	(%rcx,%rbx,8), %rdi
	leaq	(%rsi,%rbx,8), %rsi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_119:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_113 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vaddsd	(%rsi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rdi,%rbx,8), %xmm0, %xmm0
	vaddsd	(%rax,%rbx,8), %xmm0, %xmm0
	vaddsd	(%r9,%rbx,8), %xmm0, %xmm0
	vmulsd	%xmm0, %xmm10, %xmm0
	vmovsd	%xmm0, -8(%rax,%rbx,8)
	incq	%rbx
	cmpq	%rbx, %r13
	jne	LBB6_119
	jmp	LBB6_112
	.p2align	4, 0x90
LBB6_120:                               ##   in Loop: Header=BB6_33 Depth=1
	testl	%r10d, %r10d
	movq	208(%rsp), %r9          ## 8-byte Reload
	vxorpd	%xmm0, %xmm0, %xmm0
	js	LBB6_31
## %bb.121:                             ##   in Loop: Header=BB6_33 Depth=1
	xorl	%eax, %eax
	movq	72(%rsp), %rdi          ## 8-byte Reload
	movl	24(%rsp), %ebx          ## 4-byte Reload
	movq	200(%rsp), %r8          ## 8-byte Reload
	jmp	LBB6_123
	.p2align	4, 0x90
LBB6_122:                               ##   in Loop: Header=BB6_123 Depth=2
	incq	%rax
	cmpq	%r12, %rax
	je	LBB6_32
LBB6_123:                               ##   Parent Loop BB6_33 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB6_127 Depth 3
                                        ##       Child Loop BB6_131 Depth 3
	movq	(%rdi,%rax,8), %rcx
	cmpl	$16, %ebx
	jae	LBB6_125
## %bb.124:                             ##   in Loop: Header=BB6_123 Depth=2
	xorl	%edx, %edx
	jmp	LBB6_131
	.p2align	4, 0x90
LBB6_125:                               ##   in Loop: Header=BB6_123 Depth=2
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vxorpd	%xmm1, %xmm1, %xmm1
	testq	%r9, %r9
	je	LBB6_132
## %bb.126:                             ##   in Loop: Header=BB6_123 Depth=2
	movq	216(%rsp), %rsi         ## 8-byte Reload
	xorl	%edx, %edx
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	.p2align	4, 0x90
LBB6_127:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_123 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovupd	(%rcx,%rdx,8), %ymm4
	vmovupd	32(%rcx,%rdx,8), %ymm5
	vmovupd	64(%rcx,%rdx,8), %ymm6
	vmovupd	96(%rcx,%rdx,8), %ymm7
	vfmadd213pd	%ymm0, %ymm4, %ymm4 ## ymm4 = (ymm4 * ymm4) + ymm0
	vfmadd213pd	%ymm1, %ymm5, %ymm5 ## ymm5 = (ymm5 * ymm5) + ymm1
	vfmadd213pd	%ymm2, %ymm6, %ymm6 ## ymm6 = (ymm6 * ymm6) + ymm2
	vfmadd213pd	%ymm3, %ymm7, %ymm7 ## ymm7 = (ymm7 * ymm7) + ymm3
	vmovupd	128(%rcx,%rdx,8), %ymm0
	vmovupd	160(%rcx,%rdx,8), %ymm1
	vmovupd	192(%rcx,%rdx,8), %ymm2
	vmovupd	224(%rcx,%rdx,8), %ymm3
	vfmadd213pd	%ymm4, %ymm0, %ymm0 ## ymm0 = (ymm0 * ymm0) + ymm4
	vfmadd213pd	%ymm5, %ymm1, %ymm1 ## ymm1 = (ymm1 * ymm1) + ymm5
	vfmadd213pd	%ymm6, %ymm2, %ymm2 ## ymm2 = (ymm2 * ymm2) + ymm6
	vfmadd213pd	%ymm7, %ymm3, %ymm3 ## ymm3 = (ymm3 * ymm3) + ymm7
	addq	$32, %rdx
	addq	$2, %rsi
	jne	LBB6_127
## %bb.128:                             ##   in Loop: Header=BB6_123 Depth=2
	testb	$1, 320(%rsp)           ## 1-byte Folded Reload
	je	LBB6_130
LBB6_129:                               ##   in Loop: Header=BB6_123 Depth=2
	vmovupd	(%rcx,%rdx,8), %ymm4
	vmovupd	32(%rcx,%rdx,8), %ymm5
	vmovupd	64(%rcx,%rdx,8), %ymm6
	vmovupd	96(%rcx,%rdx,8), %ymm7
	vfmadd231pd	%ymm7, %ymm7, %ymm3 ## ymm3 = (ymm7 * ymm7) + ymm3
	vfmadd231pd	%ymm6, %ymm6, %ymm2 ## ymm2 = (ymm6 * ymm6) + ymm2
	vfmadd231pd	%ymm5, %ymm5, %ymm1 ## ymm1 = (ymm5 * ymm5) + ymm1
	vfmadd231pd	%ymm4, %ymm4, %ymm0 ## ymm0 = (ymm4 * ymm4) + ymm0
LBB6_130:                               ##   in Loop: Header=BB6_123 Depth=2
	vaddpd	%ymm3, %ymm1, %ymm1
	vaddpd	%ymm2, %ymm0, %ymm0
	vaddpd	%ymm1, %ymm0, %ymm0
	vextractf128	$1, %ymm0, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm1 ## xmm1 = xmm0[1,0]
	vaddsd	%xmm1, %xmm0, %xmm0
	movq	%r8, %rdx
	cmpq	%r12, %r8
	je	LBB6_122
	.p2align	4, 0x90
LBB6_131:                               ##   Parent Loop BB6_33 Depth=1
                                        ##     Parent Loop BB6_123 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovsd	(%rcx,%rdx,8), %xmm1    ## xmm1 = mem[0],zero
	vfmadd231sd	%xmm1, %xmm1, %xmm0 ## xmm0 = (xmm1 * xmm1) + xmm0
	incq	%rdx
	cmpq	%rdx, %r12
	jne	LBB6_131
	jmp	LBB6_122
LBB6_132:                               ##   in Loop: Header=BB6_123 Depth=2
	xorl	%edx, %edx
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm3, %xmm3, %xmm3
	testb	$1, 320(%rsp)           ## 1-byte Folded Reload
	jne	LBB6_129
	jmp	LBB6_130
LBB6_133:
	testl	%r10d, %r10d
	js	LBB6_136
## %bb.134:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_135:                               ## =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	vzeroupper
	callq	_free
	movq	72(%rsp), %rdi          ## 8-byte Reload
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB6_135
LBB6_136:
	vzeroupper
	callq	_free
	movq	32(%rsp), %r14          ## 8-byte Reload
	testl	%r14d, %r14d
	movq	88(%rsp), %r15          ## 8-byte Reload
	movq	128(%rsp), %r13         ## 8-byte Reload
	js	LBB6_139
## %bb.137:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_138:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r13,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r15
	jne	LBB6_138
LBB6_139:
	movq	%r13, %rdi
	callq	_free
	cmpl	$0, 28(%rsp)            ## 4-byte Folded Reload
	movq	96(%rsp), %r15          ## 8-byte Reload
	js	LBB6_142
## %bb.140:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_141:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r12
	jne	LBB6_141
LBB6_142:
	movq	%r15, %rdi
	callq	_free
	testl	%r14d, %r14d
	movq	88(%rsp), %r14          ## 8-byte Reload
	movq	120(%rsp), %r15         ## 8-byte Reload
	js	LBB6_145
## %bb.143:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB6_144:                               ## =>This Inner Loop Header: Depth=1
	movq	(%r15,%rbx,8), %rdi
	callq	_free
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB6_144
LBB6_145:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
                                        ## kill: def $edx killed $edx def $rdx
	cmpl	$3, %edx
	jl	LBB9_8
## %bb.1:
	leal	-1(%rdx), %r9d
	movq	(%rdi), %r15
	movq	8(%rdi), %r14
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
	movq	%rbx, %r15
	cmpq	%r9, %r10
	je	LBB9_8
LBB9_2:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB9_3 Depth 2
                                        ##     Child Loop BB9_6 Depth 2
	movq	%r14, %rbx
	movq	8(%rdi,%r10,8), %r14
	movq	(%rsi,%r10,8), %r12
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
	vaddsd	(%r12,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, (%rbx,%rax,8)
	vmovsd	8(%r14,%rax,8), %xmm2   ## xmm2 = mem[0],zero
	vaddsd	8(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	16(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	8(%r12,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, 8(%rbx,%rax,8)
	vmovsd	16(%r14,%rax,8), %xmm2  ## xmm2 = mem[0],zero
	vaddsd	16(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	24(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	16(%r12,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, 16(%rbx,%rax,8)
	vmovsd	24(%r14,%rax,8), %xmm2  ## xmm2 = mem[0],zero
	vaddsd	24(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	32(%rbx,%rax,8), %xmm1, %xmm1
	vaddsd	24(%r12,%rax,8), %xmm1, %xmm1
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
	leaq	(%rbx,%rax,8), %rcx
	addq	$8, %rcx
	leaq	(%r12,%rax,8), %r12
	leaq	(%r14,%rax,8), %r13
	leaq	(%r15,%rax,8), %r15
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB9_6:                                 ##   Parent Loop BB9_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%r13,%rax,8), %xmm2    ## xmm2 = mem[0],zero
	vaddsd	(%r15,%rax,8), %xmm2, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm1
	vaddsd	(%rcx,%rax,8), %xmm1, %xmm1
	vaddsd	(%r12,%rax,8), %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm1
	vmovsd	%xmm1, -8(%rcx,%rax,8)
	incq	%rax
	cmpq	%rax, %rdx
	jne	LBB9_6
	jmp	LBB9_7
LBB9_8:
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
	movq	%rdx, -128(%rbp)        ## 8-byte Spill
	movq	%rsi, -120(%rbp)        ## 8-byte Spill
	cmpl	$3, %ecx
	jl	LBB10_17
## %bb.1:
	decl	%ecx
	movq	8(%rdi), %r12
	leaq	-1(%rcx), %r10
	leaq	1(%rcx), %rax
	movq	%rax, -96(%rbp)         ## 8-byte Spill
	movq	%r10, %rax
	movq	%r10, -80(%rbp)         ## 8-byte Spill
	andq	$-16, %r10
	leaq	1(%r10), %rax
	movq	%rax, -88(%rbp)         ## 8-byte Spill
	movq	%rcx, %rax
	negq	%rax
	movq	%rax, -112(%rbp)        ## 8-byte Spill
	movl	$1, %edx
	vmovsd	LCPI10_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	vbroadcastsd	LCPI10_0(%rip), %ymm1 ## ymm1 = [4.0E+0,4.0E+0,4.0E+0,4.0E+0]
	movq	%rdi, -104(%rbp)        ## 8-byte Spill
	jmp	LBB10_2
	.p2align	4, 0x90
LBB10_16:                               ##   in Loop: Header=BB10_2 Depth=1
	cmpq	%rcx, %rdx
	je	LBB10_17
LBB10_2:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_10 Depth 2
                                        ##     Child Loop BB10_15 Depth 2
	movq	%r12, %rax
	movq	-8(%rdi,%rdx,8), %r13
	movq	8(%rdi,%rdx,8), %r12
	movq	-128(%rbp), %rbx        ## 8-byte Reload
	movq	(%rbx,%rdx,8), %r14
	movq	-120(%rbp), %rsi        ## 8-byte Reload
	movq	(%rsi,%rdx,8), %r11
	incq	%rdx
	movl	$1, %r8d
	cmpq	$16, -80(%rbp)          ## 8-byte Folded Reload
	jae	LBB10_3
LBB10_12:                               ##   in Loop: Header=BB10_2 Depth=1
	movq	%r8, %rbx
	notq	%rbx
	testb	$1, %cl
	jne	LBB10_14
## %bb.13:                              ##   in Loop: Header=BB10_2 Depth=1
	vmovsd	(%rax,%r8,8), %xmm2     ## xmm2 = mem[0],zero
	vfmsub213sd	(%r13,%r8,8), %xmm0, %xmm2 ## xmm2 = (xmm0 * xmm2) - mem
	vsubsd	(%r12,%r8,8), %xmm2, %xmm2
	vsubsd	-8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	(%r14,%r8,8), %xmm2, %xmm2
	vmovsd	%xmm2, (%r11,%r8,8)
	incq	%r8
LBB10_14:                               ##   in Loop: Header=BB10_2 Depth=1
	cmpq	-112(%rbp), %rbx        ## 8-byte Folded Reload
	je	LBB10_16
	.p2align	4, 0x90
LBB10_15:                               ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rax,%r8,8), %xmm2     ## xmm2 = mem[0],zero
	vfmsub213sd	(%r13,%r8,8), %xmm0, %xmm2 ## xmm2 = (xmm0 * xmm2) - mem
	vsubsd	(%r12,%r8,8), %xmm2, %xmm2
	vsubsd	-8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	8(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	(%r14,%r8,8), %xmm2, %xmm2
	vmovsd	%xmm2, (%r11,%r8,8)
	vmovsd	8(%rax,%r8,8), %xmm2    ## xmm2 = mem[0],zero
	vfmsub213sd	8(%r13,%r8,8), %xmm0, %xmm2 ## xmm2 = (xmm0 * xmm2) - mem
	vsubsd	8(%r12,%r8,8), %xmm2, %xmm2
	vsubsd	(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	16(%rax,%r8,8), %xmm2, %xmm2
	vsubsd	8(%r14,%r8,8), %xmm2, %xmm2
	vmovsd	%xmm2, 8(%r11,%r8,8)
	addq	$2, %r8
	cmpq	%r8, %rcx
	jne	LBB10_15
	jmp	LBB10_16
	.p2align	4, 0x90
LBB10_3:                                ##   in Loop: Header=BB10_2 Depth=1
	leaq	8(%r11), %rbx
	leaq	(%r11,%rcx,8), %r15
	leaq	8(%rax), %r9
	leaq	(%rax,%rcx,8), %rdi
	leaq	8(%r13), %rsi
	movq	%rsi, -64(%rbp)         ## 8-byte Spill
	leaq	(%r13,%rcx,8), %r8
	leaq	8(%r12), %rsi
	movq	%rsi, -72(%rbp)         ## 8-byte Spill
	leaq	(%r12,%rcx,8), %rsi
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	cmpq	%rdi, %rbx
	setb	-47(%rbp)               ## 1-byte Folded Spill
	cmpq	%r15, %r9
	movq	-80(%rbp), %rdi         ## 8-byte Reload
	leaq	(%rax,%rdi,8), %rsi
	setb	-46(%rbp)               ## 1-byte Folded Spill
	cmpq	%r8, %rbx
	setb	-45(%rbp)               ## 1-byte Folded Spill
	cmpq	%r15, -64(%rbp)         ## 8-byte Folded Reload
	leaq	16(%rax), %r8
	setb	-64(%rbp)               ## 1-byte Folded Spill
	cmpq	-56(%rbp), %rbx         ## 8-byte Folded Reload
	setb	-56(%rbp)               ## 1-byte Folded Spill
	cmpq	%r15, -72(%rbp)         ## 8-byte Folded Reload
	movq	-96(%rbp), %rdi         ## 8-byte Reload
	leaq	(%rax,%rdi,8), %r9
	setb	-72(%rbp)               ## 1-byte Folded Spill
	cmpq	%rsi, %rbx
	setb	-44(%rbp)               ## 1-byte Folded Spill
	cmpq	%r15, %rax
	setb	-43(%rbp)               ## 1-byte Folded Spill
	cmpq	%r9, %rbx
	setb	-42(%rbp)               ## 1-byte Folded Spill
	cmpq	%r15, %r8
	leaq	(%r14,%rcx,8), %rdi
	setb	-41(%rbp)               ## 1-byte Folded Spill
	cmpq	%rdi, %rbx
	leaq	8(%r14), %rdi
	setb	%sil
	cmpq	%r15, %rdi
	movq	-104(%rbp), %rdi        ## 8-byte Reload
	setb	%r15b
	movl	$1, %r8d
	movb	-46(%rbp), %bl          ## 1-byte Reload
	testb	%bl, -47(%rbp)          ## 1-byte Folded Reload
	jne	LBB10_12
## %bb.4:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	movb	-64(%rbp), %bl          ## 1-byte Reload
	andb	%bl, -45(%rbp)          ## 1-byte Folded Spill
	jne	LBB10_12
## %bb.5:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	movb	-72(%rbp), %bl          ## 1-byte Reload
	andb	%bl, -56(%rbp)          ## 1-byte Folded Spill
	jne	LBB10_12
## %bb.6:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	movb	-43(%rbp), %bl          ## 1-byte Reload
	andb	%bl, -44(%rbp)          ## 1-byte Folded Spill
	jne	LBB10_12
## %bb.7:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	movb	-41(%rbp), %r9b         ## 1-byte Reload
	andb	%r9b, -42(%rbp)         ## 1-byte Folded Spill
	jne	LBB10_12
## %bb.8:                               ##   in Loop: Header=BB10_2 Depth=1
	movl	$1, %r8d
	andb	%r15b, %sil
	jne	LBB10_12
## %bb.9:                               ##   in Loop: Header=BB10_2 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB10_10:                               ##   Parent Loop BB10_2 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovupd	8(%rax,%rbx,8), %ymm2
	vmovupd	40(%rax,%rbx,8), %ymm3
	vmovupd	72(%rax,%rbx,8), %ymm4
	vmovupd	104(%rax,%rbx,8), %ymm5
	vfmsub213pd	8(%r13,%rbx,8), %ymm1, %ymm2 ## ymm2 = (ymm1 * ymm2) - mem
	vfmsub213pd	40(%r13,%rbx,8), %ymm1, %ymm3 ## ymm3 = (ymm1 * ymm3) - mem
	vfmsub213pd	72(%r13,%rbx,8), %ymm1, %ymm4 ## ymm4 = (ymm1 * ymm4) - mem
	vfmsub213pd	104(%r13,%rbx,8), %ymm1, %ymm5 ## ymm5 = (ymm1 * ymm5) - mem
	vsubpd	8(%r12,%rbx,8), %ymm2, %ymm2
	vsubpd	40(%r12,%rbx,8), %ymm3, %ymm3
	vsubpd	72(%r12,%rbx,8), %ymm4, %ymm4
	vsubpd	104(%r12,%rbx,8), %ymm5, %ymm5
	vsubpd	(%rax,%rbx,8), %ymm2, %ymm2
	vsubpd	32(%rax,%rbx,8), %ymm3, %ymm3
	vsubpd	64(%rax,%rbx,8), %ymm4, %ymm4
	vsubpd	96(%rax,%rbx,8), %ymm5, %ymm5
	vsubpd	16(%rax,%rbx,8), %ymm2, %ymm2
	vsubpd	48(%rax,%rbx,8), %ymm3, %ymm3
	vsubpd	80(%rax,%rbx,8), %ymm4, %ymm4
	vsubpd	112(%rax,%rbx,8), %ymm5, %ymm5
	vsubpd	8(%r14,%rbx,8), %ymm2, %ymm2
	vsubpd	40(%r14,%rbx,8), %ymm3, %ymm3
	vsubpd	72(%r14,%rbx,8), %ymm4, %ymm4
	vsubpd	104(%r14,%rbx,8), %ymm5, %ymm5
	vmovupd	%ymm2, 8(%r11,%rbx,8)
	vmovupd	%ymm3, 40(%r11,%rbx,8)
	vmovupd	%ymm4, 72(%r11,%rbx,8)
	vmovupd	%ymm5, 104(%r11,%rbx,8)
	addq	$16, %rbx
	cmpq	%rbx, %r10
	jne	LBB10_10
## %bb.11:                              ##   in Loop: Header=BB10_2 Depth=1
	movq	-88(%rbp), %r8          ## 8-byte Reload
	cmpq	%r10, -80(%rbp)         ## 8-byte Folded Reload
	je	LBB10_16
	jmp	LBB10_12
LBB10_17:
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
	movl	%ecx, %r15d
	movq	%rsi, -56(%rbp)         ## 8-byte Spill
	movq	%rdi, %r12
	testl	%edx, %edx
	jle	LBB12_8
## %bb.1:
	movl	%edx, %ebx
	leaq	(,%rbx,8), %r13
	leaq	-1(%rbx), %rax
	movl	%ebx, %ecx
	andl	$7, %ecx
	cmpq	$7, %rax
	movq	%rcx, -48(%rbp)         ## 8-byte Spill
	jae	LBB12_3
## %bb.2:
	xorl	%r14d, %r14d
	jmp	LBB12_5
LBB12_3:
	subq	%rcx, %rbx
	xorl	%r14d, %r14d
	.p2align	4, 0x90
LBB12_4:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	8(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	16(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	24(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	32(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	40(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	48(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	movq	56(%r12,%r14,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	addq	$8, %r14
	cmpq	%r14, %rbx
	jne	LBB12_4
LBB12_5:
	cmpq	$0, -48(%rbp)           ## 8-byte Folded Reload
	je	LBB12_8
## %bb.6:
	leaq	(%r12,%r14,8), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB12_7:                                ## =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rdi
	movq	%r13, %rsi
	callq	___bzero
	incq	%rbx
	cmpq	%rbx, -48(%rbp)         ## 8-byte Folded Reload
	jne	LBB12_7
LBB12_8:
	cmpl	$2, %r15d
	movq	-56(%rbp), %r10         ## 8-byte Reload
	jl	LBB12_13
## %bb.9:
	decl	%r15d
	movq	(%r10), %rcx
	xorl	%r8d, %r8d
	vmovsd	LCPI12_0(%rip), %xmm0   ## xmm0 = mem[0],zero
	vmovsd	LCPI12_1(%rip), %xmm1   ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB12_10:                               ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_11 Depth 2
	movq	%r8, %rax
	shlq	$4, %rax
	movq	(%r12,%rax), %r9
	movq	8(%r12,%rax), %rdi
	movq	8(%r10,%r8,8), %rdx
	incq	%r8
	movq	%r15, %rbx
	xorl	%eax, %eax
	.p2align	4, 0x90
LBB12_11:                               ##   Parent Loop BB12_10 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	(%rcx,%rax), %rsi
	movq	%rsi, (%r9,%rax,2)
	vmovsd	(%rdx,%rax), %xmm2      ## xmm2 = mem[0],zero
	vaddsd	(%rcx,%rax), %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdi,%rax,2)
	vmovsd	8(%rcx,%rax), %xmm2     ## xmm2 = mem[0],zero
	vaddsd	(%rcx,%rax), %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm2
	vmovsd	%xmm2, 8(%r9,%rax,2)
	vmovsd	8(%rcx,%rax), %xmm2     ## xmm2 = mem[0],zero
	vaddsd	(%rcx,%rax), %xmm2, %xmm2
	vaddsd	(%rdx,%rax), %xmm2, %xmm2
	vaddsd	8(%rdx,%rax), %xmm2, %xmm2
	vmulsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm2, 8(%rdi,%rax,2)
	addq	$8, %rax
	decq	%rbx
	jne	LBB12_11
## %bb.12:                              ##   in Loop: Header=BB12_10 Depth=1
	movq	%rdx, %rcx
	cmpq	%r15, %r8
	jne	LBB12_10
LBB12_13:
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
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function L1_norm
LCPI14_0:
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI14_1:
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	testl	%esi, %esi
	jle	LBB14_1
## %bb.2:
	movl	%esi, %eax
	movl	%eax, %r11d
	andl	$-16, %r11d
	leaq	-16(%r11), %r8
	movq	%r8, %rcx
	shrq	$4, %rcx
	incq	%rcx
	movl	%ecx, %r10d
	andl	$1, %r10d
	movq	%r10, %r9
	subq	%rcx, %r9
	vpxor	%xmm0, %xmm0, %xmm0
	xorl	%r14d, %r14d
	vmovapd	LCPI14_1(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	jmp	LBB14_3
	.p2align	4, 0x90
LBB14_13:                               ##   in Loop: Header=BB14_3 Depth=1
	incq	%r14
	cmpq	%rax, %r14
	je	LBB14_14
LBB14_3:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB14_8 Depth 2
                                        ##     Child Loop BB14_12 Depth 2
	movq	(%rdi,%r14,8), %rcx
	cmpl	$16, %esi
	jae	LBB14_5
## %bb.4:                               ##   in Loop: Header=BB14_3 Depth=1
	xorl	%edx, %edx
	jmp	LBB14_12
	.p2align	4, 0x90
LBB14_5:                                ##   in Loop: Header=BB14_3 Depth=1
	vmovq	%xmm0, %xmm0            ## xmm0 = xmm0[0],zero
	vxorpd	%xmm2, %xmm2, %xmm2
	testq	%r8, %r8
	je	LBB14_6
## %bb.7:                               ##   in Loop: Header=BB14_3 Depth=1
	movq	%r9, %rdx
	xorl	%ebx, %ebx
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm4, %xmm4, %xmm4
	.p2align	4, 0x90
LBB14_8:                                ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vbroadcastsd	LCPI14_0(%rip), %ymm5 ## ymm5 = [NaN,NaN,NaN,NaN]
	vandpd	(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm0, %ymm6, %ymm0
	vandpd	32(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm2, %ymm6, %ymm2
	vandpd	64(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm3, %ymm6, %ymm3
	vandpd	96(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm4, %ymm6, %ymm4
	vandpd	128(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm0, %ymm6, %ymm0
	vandpd	160(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm2, %ymm6, %ymm2
	vandpd	192(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm3, %ymm6, %ymm3
	vandpd	224(%rcx,%rbx,8), %ymm5, %ymm5
	vaddpd	%ymm4, %ymm5, %ymm4
	addq	$32, %rbx
	addq	$2, %rdx
	jne	LBB14_8
## %bb.9:                               ##   in Loop: Header=BB14_3 Depth=1
	testq	%r10, %r10
	je	LBB14_11
LBB14_10:                               ##   in Loop: Header=BB14_3 Depth=1
	vbroadcastsd	LCPI14_0(%rip), %ymm5 ## ymm5 = [NaN,NaN,NaN,NaN]
	vandpd	96(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm4, %ymm6, %ymm4
	vandpd	64(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm3, %ymm6, %ymm3
	vandpd	32(%rcx,%rbx,8), %ymm5, %ymm6
	vaddpd	%ymm2, %ymm6, %ymm2
	vandpd	(%rcx,%rbx,8), %ymm5, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm0
LBB14_11:                               ##   in Loop: Header=BB14_3 Depth=1
	vaddpd	%ymm4, %ymm2, %ymm2
	vaddpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm2, %ymm0, %ymm0
	vextractf128	$1, %ymm0, %xmm2
	vaddpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm2 ## xmm2 = xmm0[1,0]
	vaddsd	%xmm2, %xmm0, %xmm0
	movq	%r11, %rdx
	cmpq	%rax, %r11
	je	LBB14_13
	.p2align	4, 0x90
LBB14_12:                               ##   Parent Loop BB14_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	(%rcx,%rdx,8), %xmm2    ## xmm2 = mem[0],zero
	vandpd	%xmm1, %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	incq	%rdx
	cmpq	%rdx, %rax
	jne	LBB14_12
	jmp	LBB14_13
LBB14_6:                                ##   in Loop: Header=BB14_3 Depth=1
	xorl	%ebx, %ebx
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm4, %xmm4, %xmm4
	testq	%r10, %r10
	jne	LBB14_10
	jmp	LBB14_11
LBB14_1:
	vxorpd	%xmm0, %xmm0, %xmm0
LBB14_14:
	popq	%rbx
	popq	%r14
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function Max_norm
LCPI15_0:
	.quad	9223372036854775807     ## double NaN
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI15_1:
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
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	movq	(%rdi), %rcx
	vmovsd	(%rcx), %xmm0           ## xmm0 = mem[0],zero
	testl	%esi, %esi
	jle	LBB15_14
## %bb.1:
	movl	%esi, %eax
	movl	%eax, %r11d
	andl	$-16, %r11d
	leaq	-16(%r11), %r8
	movq	%r8, %rdx
	shrq	$4, %rdx
	incq	%rdx
	movl	%edx, %r9d
	andl	$1, %r9d
	movq	%r9, %r10
	subq	%rdx, %r10
	xorl	%r14d, %r14d
	vmovapd	LCPI15_1(%rip), %xmm1   ## xmm1 = [NaN,NaN]
	cmpl	$16, %esi
	jae	LBB15_4
	.p2align	4, 0x90
LBB15_3:
	xorl	%edx, %edx
	jmp	LBB15_11
	.p2align	4, 0x90
LBB15_4:
	vbroadcastsd	%xmm0, %ymm0
	testq	%r8, %r8
	je	LBB15_5
## %bb.6:
	movq	%r10, %rdx
	xorl	%ebx, %ebx
	vmovapd	%ymm0, %ymm2
	vmovapd	%ymm0, %ymm3
	vmovapd	%ymm0, %ymm4
	.p2align	4, 0x90
LBB15_7:                                ## =>This Inner Loop Header: Depth=1
	vbroadcastsd	LCPI15_0(%rip), %ymm5 ## ymm5 = [NaN,NaN,NaN,NaN]
	vandpd	(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm0, %ymm6, %ymm0
	vandpd	32(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm2, %ymm6, %ymm2
	vandpd	64(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm3, %ymm6, %ymm3
	vandpd	96(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm4, %ymm6, %ymm4
	vandpd	128(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm0, %ymm6, %ymm0
	vandpd	160(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm2, %ymm6, %ymm2
	vandpd	192(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm3, %ymm6, %ymm3
	vandpd	224(%rcx,%rbx,8), %ymm5, %ymm5
	vmaxpd	%ymm4, %ymm5, %ymm4
	addq	$32, %rbx
	addq	$2, %rdx
	jne	LBB15_7
## %bb.8:
	testq	%r9, %r9
	je	LBB15_10
LBB15_9:
	vbroadcastsd	LCPI15_0(%rip), %ymm5 ## ymm5 = [NaN,NaN,NaN,NaN]
	vandpd	(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm0, %ymm6, %ymm0
	vandpd	32(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm2, %ymm6, %ymm2
	vandpd	64(%rcx,%rbx,8), %ymm5, %ymm6
	vmaxpd	%ymm3, %ymm6, %ymm3
	vandpd	96(%rcx,%rbx,8), %ymm5, %ymm5
	vmaxpd	%ymm4, %ymm5, %ymm4
LBB15_10:
	vmaxpd	%ymm4, %ymm0, %ymm0
	vmaxpd	%ymm3, %ymm2, %ymm2
	vmaxpd	%ymm0, %ymm2, %ymm0
	vextractf128	$1, %ymm0, %xmm2
	vmaxpd	%xmm2, %xmm0, %xmm0
	vpermilpd	$1, %xmm0, %xmm2 ## xmm2 = xmm0[1,0]
	vmaxsd	%xmm2, %xmm0, %xmm0
	movq	%r11, %rdx
	cmpq	%rax, %r11
	je	LBB15_12
	.p2align	4, 0x90
LBB15_11:                               ## =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rdx,8), %xmm2    ## xmm2 = mem[0],zero
	vandpd	%xmm1, %xmm2, %xmm2
	vmaxsd	%xmm0, %xmm2, %xmm0
	incq	%rdx
	cmpq	%rdx, %rax
	jne	LBB15_11
LBB15_12:
	leaq	1(%r14), %rdx
	cmpq	%rax, %rdx
	je	LBB15_14
## %bb.13:
	movq	8(%rdi,%r14,8), %rcx
	movq	%rdx, %r14
	cmpl	$16, %esi
	jae	LBB15_4
	jmp	LBB15_3
	.p2align	4, 0x90
LBB15_5:
	xorl	%ebx, %ebx
	vmovapd	%ymm0, %ymm2
	vmovapd	%ymm0, %ymm3
	vmovapd	%ymm0, %ymm4
	testq	%r9, %r9
	jne	LBB15_9
	jmp	LBB15_10
LBB15_14:
	popq	%rbx
	popq	%r14
	popq	%rbp
	vzeroupper
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
