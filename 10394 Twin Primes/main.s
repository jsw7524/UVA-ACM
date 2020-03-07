	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.p2align 2,,3
	.globl	_MakePrimeTable
	.def	_MakePrimeTable;	.scl	2;	.type	32;	.endef
_MakePrimeTable:
LFB15:
	.file 1 "C:/MyData/Google Cloud/ACM/10394 Twin Primes/main.c"
	.loc 1 20 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
LCFI1:
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
LCFI2:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
LCFI3:
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
LCFI4:
	.cfi_def_cfa_offset 28
	.loc 1 22 0
	movb	$-107, _Record
	.loc 1 23 0
	movb	$-41, _Record+1
	.loc 1 24 0
	movb	$93, _Record+2
LVL0:
	.loc 1 25 0
	movl	$3, %eax
LVL1:
	.p2align 2,,3
L2:
	.loc 1 27 0 discriminator 2
	movb	$117, _Record(%eax)
	.loc 1 28 0 discriminator 2
	movb	$-41, _Record+1(%eax)
	.loc 1 29 0 discriminator 2
	movb	$93, _Record+2(%eax)
	.loc 1 25 0 discriminator 2
	addl	$3, %eax
LVL2:
	cmpl	$3093750, %eax
	jne	L2
LVL3:
	.loc 1 32 0
	movb	_Record, %al
LVL4:
	testb	%al, _Mask+5
	jne	L5
	movl	$10, %eax
	.p2align 2,,3
L3:
	.loc 1 35 0 discriminator 2
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%eax, %ecx
	andl	$7, %ecx
	movb	_Mask(%ecx), %cl
	orb	%cl, _Record(%edx)
	.loc 1 34 0 discriminator 2
	addl	$5, %eax
LVL5:
	cmpl	$24750000, %eax
	jne	L3
	movb	_Record, %al
LVL6:
L5:
	movl	_P, %esi
	.loc 1 32 0 discriminator 1
	movl	$14, 4(%esp)
	movl	$7, (%esp)
	movl	$5, %ecx
LVL7:
	.p2align 2,,3
L4:
	.loc 1 40 0
	movl	(%esp), %edx
	andl	$7, %edx
	testb	%al, _Mask(%edx)
	jne	L9
	.loc 1 42 0
	movl	(%esp), %eax
	movl	%eax, _PrimeTable(,%esi,4)
	incl	%esi
	.loc 1 43 0
	movl	4(%esp), %eax
LVL8:
	cmpl	$24749999, %eax
	jg	L9
	leal	2(%ecx), %ebp
	.loc 1 19 0
	subl	(%esp), %ebp
	.p2align 2,,3
L10:
	.loc 1 44 0 discriminator 2
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%eax, %edi
	andl	$7, %edi
	movb	_Mask(%edi), %bl
	orb	%bl, _Record(%edx)
	.loc 1 43 0 discriminator 2
	addl	(%esp), %eax
LVL9:
	.loc 1 19 0 discriminator 2
	leal	0(%ebp,%eax), %edx
	.loc 1 43 0 discriminator 2
	cmpl	$24749999, %edx
	jle	L10
LVL10:
L9:
	.loc 1 46 0
	addl	$6, %ecx
LVL11:
	.loc 1 47 0
	movl	%ecx, %edx
	andl	$7, %edx
	movl	%ecx, %eax
	sarl	$3, %eax
	movb	_Mask(%edx), %dl
	testb	%dl, _Record(%eax)
	jne	L8
	.loc 1 49 0
	movl	%ecx, _PrimeTable(,%esi,4)
	incl	%esi
	.loc 1 19 0
	leal	(%ecx,%ecx), %eax
LVL12:
	.loc 1 50 0
	cmpl	$24749999, %eax
	jg	L8
	.loc 1 19 0
	xorl	%ebp, %ebp
	.p2align 2,,3
L13:
	.loc 1 51 0 discriminator 2
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%eax, %ebx
	andl	$7, %ebx
	movb	_Mask(%ebx), %bl
	orb	%bl, _Record(%edx)
	.loc 1 50 0 discriminator 2
	addl	%ecx, %eax
LVL13:
	.loc 1 19 0 discriminator 2
	leal	0(%ebp,%eax), %edx
	.loc 1 50 0 discriminator 2
	cmpl	$24749999, %edx
	jle	L13
LVL14:
L8:
	addl	$6, (%esp)
	addl	$12, 4(%esp)
	.loc 1 37 0
	cmpl	$18562487, %ecx
	je	L22
	.loc 1 19 0
	leal	2(%ecx), %eax
	sarl	$3, %eax
	movb	_Record(%eax), %al
	jmp	L4
L22:
	movl	%esi, _P
	.loc 1 55 0 discriminator 1
	addl	$8, %esp
LCFI5:
	.cfi_def_cfa_offset 20
	popl	%ebx
LCFI6:
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
LCFI7:
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
LCFI8:
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
LCFI9:
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE15:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "(%d, %d)\12\0"
LC1:
	.ascii "%d\0"
	.section	.text.startup,"x"
	.p2align 2,,3
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB16:
	.loc 1 58 0
	.cfi_startproc
	pushl	%ebp
LCFI10:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI11:
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$32, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 58 0
	call	___main
LVL15:
	.loc 1 60 0
	call	_MakePrimeTable
LVL16:
	.loc 1 61 0
	movl	_P, %edi
	testl	%edi, %edi
	jle	L33
	.loc 1 57 0
	incl	%edi
	.loc 1 61 0
	movl	$1, %esi
	movl	$1, %eax
	jmp	L27
LVL17:
	.p2align 2,,3
L26:
	incl	%eax
LVL18:
	cmpl	%edi, %eax
	je	L33
LVL19:
L27:
	.loc 1 63 0
	movl	_PrimeTable(,%eax,4), %edx
	movl	_PrimeTable-4(,%eax,4), %ecx
	movl	%edx, %ebx
	subl	%ecx, %ebx
	cmpl	$2, %ebx
	jne	L26
	.loc 1 65 0
	movl	%ecx, _MyTwinPrime(,%esi,8)
	.loc 1 66 0
	movl	%edx, _MyTwinPrime+4(,%esi,8)
	.loc 1 67 0
	incl	%esi
LVL20:
	.loc 1 61 0
	incl	%eax
LVL21:
	cmpl	%edi, %eax
	jne	L27
LVL22:
L33:
	leal	28(%esp), %ebx
	jmp	L31
LVL23:
	.p2align 2,,3
L29:
	.loc 1 72 0
	movl	28(%esp), %eax
	movl	_MyTwinPrime+4(,%eax,8), %edx
	movl	%edx, 8(%esp)
	movl	_MyTwinPrime(,%eax,8), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
LVL24:
L31:
	.loc 1 70 0 discriminator 1
	movl	%ebx, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
LVL25:
	incl	%eax
	jne	L29
	.loc 1 75 0
	xorl	%eax, %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
LCFI12:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE16:
	.globl	_P
	.data
	.align 4
_P:
	.long	3
	.comm	_MyTwinPrime, 1040000, 5
	.globl	_PrimeTable
	.align 32
_PrimeTable:
	.long	2
	.long	3
	.long	5
	.space 51999988
	.globl	_Mask
_Mask:
	.byte	1
	.byte	-128
	.byte	64
	.byte	32
	.byte	16
	.byte	8
	.byte	4
	.byte	2
	.comm	_Record, 3093850, 5
	.text
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x389
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\10394 Twin Primes\\main.c\0"
	.secrel32	Ldebug_ranges0+0
	.long	0
	.long	0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x3
	.ascii "_iobuf\0"
	.byte	0x20
	.byte	0x2
	.byte	0x81
	.long	0x122
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x83
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8b
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x7
	.secrel32	LASF0
	.byte	0x8
	.byte	0x1
	.byte	0x7
	.long	0x18a
	.uleb128 0x4
	.ascii "X\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "Y\0"
	.byte	0x1
	.byte	0xa
	.long	0x128
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.secrel32	LASF0
	.byte	0x1
	.byte	0xb
	.long	0x165
	.uleb128 0x9
	.byte	0x1
	.ascii "MakePrimeTable\0"
	.byte	0x1
	.byte	0x13
	.long	LFB15
	.long	LFE15
	.secrel32	LLST0
	.byte	0x1
	.long	0x1e1
	.uleb128 0xa
	.ascii "I\0"
	.byte	0x1
	.byte	0x15
	.long	0x128
	.secrel32	LLST1
	.uleb128 0xa
	.ascii "J\0"
	.byte	0x1
	.byte	0x15
	.long	0x128
	.secrel32	LLST2
	.uleb128 0xa
	.ascii "K\0"
	.byte	0x1
	.byte	0x15
	.long	0x128
	.secrel32	LLST3
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x39
	.long	0x128
	.long	LFB16
	.long	LFE16
	.secrel32	LLST4
	.byte	0x1
	.long	0x262
	.uleb128 0xa
	.ascii "I\0"
	.byte	0x1
	.byte	0x3b
	.long	0x128
	.secrel32	LLST5
	.uleb128 0xa
	.ascii "J\0"
	.byte	0x1
	.byte	0x3b
	.long	0x128
	.secrel32	LLST6
	.uleb128 0xc
	.ascii "N\0"
	.byte	0x1
	.byte	0x3b
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xd
	.long	LVL16
	.long	0x195
	.uleb128 0xe
	.long	LVL24
	.long	0x34c
	.long	0x246
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.long	LC0
	.byte	0
	.uleb128 0x10
	.long	LVL25
	.long	0x374
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 0
	.byte	0x5
	.byte	0x3
	.long	LC1
	.uleb128 0xf
	.byte	0x2
	.byte	0x74
	.sleb128 4
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	0x12f
	.long	0x26d
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x29a
	.long	0x28e
	.uleb128 0x14
	.long	0x28e
	.long	0x2f3559
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x15
	.ascii "Record\0"
	.byte	0x1
	.byte	0xd
	.long	0x27b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Record
	.uleb128 0x11
	.long	0x29a
	.long	0x2d0
	.uleb128 0x16
	.long	0x28e
	.byte	0x7
	.byte	0
	.uleb128 0x15
	.ascii "Mask\0"
	.byte	0x1
	.byte	0xe
	.long	0x2c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Mask
	.uleb128 0x11
	.long	0x128
	.long	0x2f6
	.uleb128 0x14
	.long	0x28e
	.long	0xc65d3f
	.byte	0
	.uleb128 0x15
	.ascii "PrimeTable\0"
	.byte	0x1
	.byte	0xf
	.long	0x2e3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_PrimeTable
	.uleb128 0x11
	.long	0x18a
	.long	0x322
	.uleb128 0x14
	.long	0x28e
	.long	0x1fbcf
	.byte	0
	.uleb128 0x15
	.ascii "MyTwinPrime\0"
	.byte	0x1
	.byte	0x10
	.long	0x30f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyTwinPrime
	.uleb128 0x15
	.ascii "P\0"
	.byte	0x1
	.byte	0x11
	.long	0x128
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_P
	.uleb128 0x17
	.byte	0x1
	.ascii "printf\0"
	.byte	0x2
	.word	0x126
	.byte	0x1
	.long	0x128
	.byte	0x1
	.long	0x369
	.uleb128 0x18
	.long	0x369
	.uleb128 0x19
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x36f
	.uleb128 0x1a
	.long	0x83
	.uleb128 0x1b
	.byte	0x1
	.ascii "scanf\0"
	.byte	0x2
	.word	0x15b
	.byte	0x1
	.long	0x128
	.byte	0x1
	.uleb128 0x18
	.long	0x369
	.uleb128 0x19
	.byte	0
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LLST0:
	.long	LFB15
	.long	LCFI0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI0
	.long	LCFI1
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI1
	.long	LCFI2
	.word	0x2
	.byte	0x74
	.sleb128 12
	.long	LCFI2
	.long	LCFI3
	.word	0x2
	.byte	0x74
	.sleb128 16
	.long	LCFI3
	.long	LCFI4
	.word	0x2
	.byte	0x74
	.sleb128 20
	.long	LCFI4
	.long	LCFI5
	.word	0x2
	.byte	0x74
	.sleb128 28
	.long	LCFI5
	.long	LCFI6
	.word	0x2
	.byte	0x74
	.sleb128 20
	.long	LCFI6
	.long	LCFI7
	.word	0x2
	.byte	0x74
	.sleb128 16
	.long	LCFI7
	.long	LCFI8
	.word	0x2
	.byte	0x74
	.sleb128 12
	.long	LCFI8
	.long	LCFI9
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI9
	.long	LFE15
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST1:
	.long	LVL3
	.long	LVL7
	.word	0x2
	.byte	0x35
	.byte	0x9f
	.long	LVL7
	.long	LVL11
	.word	0x2
	.byte	0x74
	.sleb128 0
	.long	LVL11
	.long	LFE15
	.word	0x1
	.byte	0x51
	.long	0
	.long	0
LLST2:
	.long	LVL0
	.long	LVL1
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	LVL2
	.long	LVL4
	.word	0x1
	.byte	0x50
	.long	LVL5
	.long	LVL6
	.word	0x1
	.byte	0x50
	.long	LVL8
	.long	LVL10
	.word	0x1
	.byte	0x50
	.long	LVL12
	.long	LVL14
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST3:
	.long	LVL6
	.long	LVL7
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
LLST4:
	.long	LFB16
	.long	LCFI10
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI10
	.long	LCFI11
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI11
	.long	LCFI12
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI12
	.long	LFE16
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST5:
	.long	LVL16
	.long	LVL17
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	LVL18
	.long	LVL19
	.word	0x1
	.byte	0x50
	.long	LVL21
	.long	LVL22
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LLST6:
	.long	LVL16
	.long	LVL17
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	LVL17
	.long	LVL19
	.word	0x1
	.byte	0x56
	.long	LVL20
	.long	LVL22
	.word	0x1
	.byte	0x56
	.long	0
	.long	0
	.section	.debug_aranges,"dr"
	.long	0x24
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	LFB16
	.long	LFE16-LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"dr"
Ldebug_ranges0:
	.long	Ltext0
	.long	Letext0
	.long	LFB16
	.long	LFE16
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF0:
	.ascii "TwinPrime\0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
