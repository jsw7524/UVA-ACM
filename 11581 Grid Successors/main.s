	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.comm	_MyGrid, 100, 5
	.globl	_NextGrid
	.def	_NextGrid;	.scl	2;	.type	32;	.endef
_NextGrid:
LFB6:
	.file 1 "C:/MyData/Google Cloud/ACM/11581 Grid Successors/main.c"
	.loc 1 5 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	addl	$-128, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 6 0
	leal	-116(%ebp), %ebx
	movb	$0, %al
	movl	$100, %edx
	movl	%ebx, %edi
	movl	%edx, %ecx
	rep stosb
	.loc 1 8 0
	movl	$1, -12(%ebp)
	jmp	L2
L6:
	.loc 1 10 0
	movl	$1, -16(%ebp)
	jmp	L3
L5:
	.loc 1 12 0 discriminator 2
	movl	-12(%ebp), %eax
	leal	-1(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	(%edx,%eax,4), %edx
	movl	-12(%ebp), %eax
	leal	1(%eax), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	sall	$2, %eax
	movl	%eax, %ecx
	movl	8(%ebp), %eax
	addl	%eax, %ecx
	movl	-16(%ebp), %eax
	movl	(%ecx,%eax,4), %eax
	leal	(%edx,%eax), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	decl	%edx
	movl	(%eax,%edx,4), %eax
	addl	%eax, %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	incl	%edx
	movl	(%eax,%edx,4), %eax
	addl	%ecx, %eax
	andl	$-2147483647, %eax
	testl	%eax, %eax
	jns	L4
	decl	%eax
	orl	$-2, %eax
	incl	%eax
L4:
	movl	%eax, %edx
	movl	-12(%ebp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	movl	-16(%ebp), %ecx
	addl	%ecx, %eax
	movl	%edx, -116(%ebp,%eax,4)
	.loc 1 10 0 discriminator 2
	incl	-16(%ebp)
L3:
	.loc 1 10 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%ebp)
	jle	L5
	.loc 1 8 0 is_stmt 1
	incl	-12(%ebp)
L2:
	.loc 1 8 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%ebp)
	jle	L6
	.loc 1 16 0 is_stmt 1
	movl	$1, -12(%ebp)
	jmp	L7
L12:
	.loc 1 18 0
	movl	$1, -16(%ebp)
	jmp	L8
L11:
	.loc 1 20 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	addl	%edx, %eax
	movl	-116(%ebp,%eax,4), %eax
	testl	%eax, %eax
	je	L9
	.loc 1 22 0
	movl	$5, -12(%ebp)
	movl	$5, -16(%ebp)
	.loc 1 23 0
	jmp	L10
L9:
	.loc 1 18 0
	incl	-16(%ebp)
L8:
	.loc 1 18 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%ebp)
	jle	L11
L10:
	.loc 1 16 0 is_stmt 1
	incl	-12(%ebp)
L7:
	.loc 1 16 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%ebp)
	jle	L12
	.loc 1 27 0 is_stmt 1
	cmpl	$4, -12(%ebp)
	jne	L13
	.loc 1 27 0 is_stmt 0 discriminator 1
	cmpl	$4, -16(%ebp)
	jne	L13
	movl	12(%ebp), %eax
	jmp	L22
L13:
	.loc 1 29 0 is_stmt 1
	movl	$1, -12(%ebp)
	jmp	L15
L20:
	.loc 1 31 0
	movl	$1, -16(%ebp)
	jmp	L16
L19:
	.loc 1 33 0
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	addl	%edx, %eax
	movl	-116(%ebp,%eax,4), %ecx
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	-16(%ebp), %edx
	addl	%edx, %eax
	movl	_MyGrid(,%eax,4), %eax
	cmpl	%eax, %ecx
	je	L17
	.loc 1 35 0
	movl	$5, -12(%ebp)
	movl	$5, -16(%ebp)
	.loc 1 36 0
	jmp	L18
L17:
	.loc 1 31 0
	incl	-16(%ebp)
L16:
	.loc 1 31 0 is_stmt 0 discriminator 1
	cmpl	$3, -16(%ebp)
	jle	L19
L18:
	.loc 1 29 0 is_stmt 1
	incl	-12(%ebp)
L15:
	.loc 1 29 0 is_stmt 0 discriminator 1
	cmpl	$3, -12(%ebp)
	jle	L20
	.loc 1 40 0 is_stmt 1
	cmpl	$4, -12(%ebp)
	jne	L21
	.loc 1 40 0 is_stmt 0 discriminator 1
	cmpl	$4, -16(%ebp)
	jne	L21
	movl	12(%ebp), %eax
	jmp	L22
L21:
	.loc 1 42 0 is_stmt 1
	movl	12(%ebp), %eax
	incl	%eax
	movl	%eax, 4(%esp)
	leal	-116(%ebp), %eax
	movl	%eax, (%esp)
	call	_NextGrid
L22:
	.loc 1 43 0
	subl	$-128, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%1d\0"
LC2:
	.ascii "-1\0"
LC3:
	.ascii "%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.loc 1 46 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	.loc 1 46 0
	call	___main
	.loc 1 49 0
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 50 0
	jmp	L24
L30:
	.loc 1 52 0
	movl	$0, 20(%esp)
	.loc 1 53 0
	movl	$1, 28(%esp)
	jmp	L25
L28:
	.loc 1 55 0
	movl	$1, 24(%esp)
	jmp	L26
L27:
	.loc 1 57 0 discriminator 2
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	24(%esp), %edx
	addl	%edx, %eax
	sall	$2, %eax
	addl	$_MyGrid, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 58 0 discriminator 2
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	24(%esp), %edx
	addl	%edx, %eax
	movl	_MyGrid(,%eax,4), %eax
	addl	%eax, 20(%esp)
	.loc 1 55 0 discriminator 2
	incl	24(%esp)
L26:
	.loc 1 55 0 is_stmt 0 discriminator 1
	cmpl	$3, 24(%esp)
	jle	L27
	.loc 1 53 0 is_stmt 1
	incl	28(%esp)
L25:
	.loc 1 53 0 is_stmt 0 discriminator 1
	cmpl	$3, 28(%esp)
	jle	L28
	.loc 1 61 0 is_stmt 1
	cmpl	$0, 20(%esp)
	jne	L29
	.loc 1 62 0
	movl	$LC2, (%esp)
	call	_puts
	jmp	L24
L29:
	.loc 1 64 0
	movl	$0, 4(%esp)
	movl	$_MyGrid, (%esp)
	call	_NextGrid
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
L24:
	.loc 1 50 0 discriminator 1
	movl	16(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 16(%esp)
	testb	%dl, %dl
	jne	L30
	.loc 1 66 0
	movl	$0, %eax
	.loc 1 67 0
	leave
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x289
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11581 Grid Successors\\main.c\0"
	.long	Ltext0
	.long	Letext0
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
	.byte	0x1
	.ascii "NextGrid\0"
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.long	0x128
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x1d7
	.uleb128 0x8
	.ascii "OldGrid\0"
	.byte	0x1
	.byte	0x4
	.long	0x1f3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "Length\0"
	.byte	0x1
	.byte	0x4
	.long	0x128
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.ascii "NewGrid\0"
	.byte	0x1
	.byte	0x6
	.long	0x1f9
	.byte	0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0x7
	.long	0x128
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x9
	.ascii "J\0"
	.byte	0x1
	.byte	0x7
	.long	0x128
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.long	0x128
	.long	0x1e7
	.uleb128 0xb
	.long	0x1e7
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x5
	.byte	0x4
	.long	0x1d7
	.uleb128 0xa
	.long	0x128
	.long	0x20f
	.uleb128 0xb
	.long	0x1e7
	.byte	0x4
	.uleb128 0xb
	.long	0x1e7
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x2d
	.long	0x128
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x25e
	.uleb128 0x9
	.ascii "N\0"
	.byte	0x1
	.byte	0x2f
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0x30
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x9
	.ascii "J\0"
	.byte	0x1
	.byte	0x30
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0x9
	.ascii "K\0"
	.byte	0x1
	.byte	0x30
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.byte	0
	.uleb128 0xa
	.long	0x12f
	.long	0x269
	.uleb128 0xd
	.byte	0
	.uleb128 0xe
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x25e
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.ascii "MyGrid\0"
	.byte	0x1
	.byte	0x3
	.long	0x1f9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyGrid
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LLST0:
	.long	LFB6-Ltext0
	.long	LCFI0-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI0-Ltext0
	.long	LCFI1-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI1-Ltext0
	.long	LCFI2-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI2-Ltext0
	.long	LFE6-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST1:
	.long	LFB7-Ltext0
	.long	LCFI3-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI3-Ltext0
	.long	LCFI4-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI4-Ltext0
	.long	LCFI5-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI5-Ltext0
	.long	LFE7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
