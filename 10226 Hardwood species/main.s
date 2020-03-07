	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_Total, 16	 # 8
	.comm	_Blank, 32	 # 31
	.comm	_Buffer, 32	 # 31
	.comm	_BufferIndex, 16	 # 4
	.comm	_MyRoot, 528	 # 520
.globl _MakeTree
	.def	_MakeTree;	.scl	2;	.type	32;	.endef
_MakeTree:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/10226 Hardwood species/main.c"
	.loc 1 22 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$36, %esp
LCFI3:
	.loc 1 24 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	jne	L2
	.loc 1 26 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%ebx
	movl	$520, (%esp)
	call	_malloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax,%ebx,4)
	.loc 1 27 0
	movl	$0, -20(%ebp)
	jmp	L3
L4:
	.loc 1 29 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	-20(%ebp), %edx
	movl	$0, (%eax,%edx,4)
	.loc 1 27 0
	incl	-20(%ebp)
L3:
	cmpl	$127, -20(%ebp)
	jle	L4
	.loc 1 31 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	$0, 512(%eax)
	.loc 1 32 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	16(%ebp), %edx
	addl	12(%ebp), %edx
	movb	(%edx), %dl
	movb	%dl, 516(%eax)
L2:
	.loc 1 34 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	testb	%al, %al
	je	L5
	.loc 1 35 0
	movl	16(%ebp), %eax
	leal	1(%eax), %ecx
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%ecx, 8(%esp)
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_MakeTree
	jmp	L7
L5:
	.loc 1 37 0
	movl	16(%ebp), %eax
	addl	12(%ebp), %eax
	movb	(%eax), %al
	movsbl	%al,%edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	512(%eax), %edx
	incl	%edx
	movl	%edx, 512(%eax)
L7:
	.loc 1 39 0
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE7:
	.section .rdata,"dr"
LC1:
	.ascii "%s %.4f\12\0"
	.text
.globl _TravelTree
	.def	_TravelTree;	.scl	2;	.type	32;	.endef
_TravelTree:
LFB8:
	.loc 1 42 0
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	subl	$56, %esp
LCFI6:
	.loc 1 44 0
	movl	8(%ebp), %eax
	movb	516(%eax), %al
	testb	%al, %al
	je	L9
	.loc 1 46 0
	movl	$0, -20(%ebp)
	jmp	L10
L12:
	.loc 1 48 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	L11
	.loc 1 50 0
	movl	_BufferIndex, %eax
	movl	8(%ebp), %edx
	movb	516(%edx), %dl
	movb	%dl, _Buffer(%eax)
	incl	%eax
	movl	%eax, _BufferIndex
	.loc 1 51 0
	movl	-20(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax,%edx,4), %eax
	movl	%eax, (%esp)
	call	_TravelTree
	.loc 1 52 0
	movl	_BufferIndex, %eax
	movb	$0, _Buffer(%eax)
	decl	%eax
	movl	%eax, _BufferIndex
L11:
	.loc 1 46 0
	incl	-20(%ebp)
L10:
	cmpl	$127, -20(%ebp)
	jle	L12
	jmp	L14
L9:
	.loc 1 58 0
	movl	8(%ebp), %eax
	movl	512(%eax), %eax
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fldl	_Total
	fdivrp	%st, %st(1)
	fldl	LC0
	fmulp	%st, %st(1)
	fstpl	8(%esp)
	movl	$_Buffer+1, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
L14:
	.loc 1 61 0
	leave
	ret
LFE8:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "%d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB9:
	.loc 1 64 0
	pushl	%ebp
LCFI7:
	movl	%esp, %ebp
LCFI8:
	andl	$-16, %esp
LCFI9:
	subl	$32, %esp
LCFI10:
	.loc 1 64 0
	call	___main
	.loc 1 66 0
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_scanf
	.loc 1 67 0
	call	_getchar
	movb	%al, _Blank
	.loc 1 68 0
	movl	$0, 28(%esp)
	.loc 1 69 0
	jmp	L16
L24:
	.loc 1 71 0
	movl	$0, %eax
	movl	$0, %edx
	movl	%eax, _Total
	movl	%edx, _Total+4
	.loc 1 72 0
	movl	$0, _BufferIndex
	.loc 1 73 0
	movb	$64, _MyRoot+516
	.loc 1 74 0
	movl	$0, _MyRoot+512
	.loc 1 75 0
	movl	$0, 20(%esp)
	jmp	L17
L18:
	movl	20(%esp), %eax
	movl	$0, _MyRoot(,%eax,4)
	incl	20(%esp)
L17:
	cmpl	$127, 20(%esp)
	jle	L18
	.loc 1 76 0
	movl	$0, 20(%esp)
	.loc 1 77 0
	call	_getchar
	movb	%al, _Blank
	.loc 1 78 0
	jmp	L19
L22:
	.loc 1 80 0
	movb	_Blank, %al
	cmpb	$10, %al
	jne	L20
	.loc 1 82 0
	movl	__imp___iob, %edx
	movb	_Blank, %al
	movsbl	%al,%eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ungetc
	.loc 1 84 0
	jmp	L21
L20:
	.loc 1 86 0
	movl	__imp___iob, %edx
	movb	_Blank, %al
	movsbl	%al,%eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_ungetc
	.loc 1 88 0
	movl	$_Blank, (%esp)
	call	_gets
	.loc 1 91 0
	fldl	_Total
	fld1
	faddp	%st, %st(1)
	fstpl	_Total
	.loc 1 92 0
	movl	$0, 8(%esp)
	movl	$_Blank, 4(%esp)
	movl	$_MyRoot, (%esp)
	call	_MakeTree
	.loc 1 93 0
	incl	20(%esp)
L19:
	.loc 1 78 0
	call	_getchar
	movb	%al, _Blank
	movb	_Blank, %al
	cmpb	$-1, %al
	jne	L22
L21:
	.loc 1 95 0
	cmpl	$0, 28(%esp)
	je	L23
	.loc 1 96 0
	movl	$10, (%esp)
	call	_putchar
L23:
	.loc 1 97 0
	movl	$1, 28(%esp)
	.loc 1 98 0
	movl	$_MyRoot, (%esp)
	call	_TravelTree
L16:
	.loc 1 69 0
	movl	16(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 16(%esp)
	testb	%dl, %dl
	jne	L24
	.loc 1 100 0
	movl	$0, %eax
	.loc 1 101 0
	leave
	ret
LFE9:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	0
	.long	1079574528
	.section	.debug_frame,"dr"
Lframe0:
	.long	LECIE0-LSCIE0
LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x8
	.byte	0xc
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x11
	.uleb128 0x8
	.sleb128 1
	.align 4
LECIE0:
LSFDE0:
	.long	LEFDE0-LASFDE0
LASFDE0:
	.secrel32	Lframe0
	.long	LFB7
	.long	LFE7-LFB7
	.byte	0x4
	.long	LCFI0-LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI1-LCFI0
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI3-LCFI1
	.byte	0x11
	.uleb128 0x3
	.sleb128 3
	.align 4
LEFDE0:
LSFDE2:
	.long	LEFDE2-LASFDE2
LASFDE2:
	.secrel32	Lframe0
	.long	LFB8
	.long	LFE8-LFB8
	.byte	0x4
	.long	LCFI4-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI5-LCFI4
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE2:
LSFDE4:
	.long	LEFDE4-LASFDE4
LASFDE4:
	.secrel32	Lframe0
	.long	LFB9
	.long	LFE9-LFB9
	.byte	0x4
	.long	LCFI7-LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI8-LCFI7
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE4:
	.text
Letext0:
	.section	.debug_loc,"dr"
Ldebug_loc0:
LLST0:
	.long	LFB7-Ltext0
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
	.long	LFE7-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST1:
	.long	LFB8-Ltext0
	.long	LCFI4-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI4-Ltext0
	.long	LCFI5-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI5-Ltext0
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST2:
	.long	LFB9-Ltext0
	.long	LCFI7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI7-Ltext0
	.long	LCFI8-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI8-Ltext0
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x37e
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\10226 Hardwood species\\main.c\0"
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
	.byte	0x82
	.long	0x123
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x84
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8c
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
	.ascii "Node\0"
	.word	0x208
	.byte	0x1
	.byte	0x8
	.long	0x1a7
	.uleb128 0x4
	.ascii "Next\0"
	.byte	0x1
	.byte	0x9
	.long	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "frequency\0"
	.byte	0x1
	.byte	0xa
	.long	0x129
	.byte	0x3
	.byte	0x23
	.uleb128 0x200
	.uleb128 0x4
	.ascii "Ch\0"
	.byte	0x1
	.byte	0xb
	.long	0x84
	.byte	0x3
	.byte	0x23
	.uleb128 0x204
	.byte	0x0
	.uleb128 0x8
	.long	0x1ba
	.long	0x1b7
	.uleb128 0x9
	.long	0x1b7
	.byte	0x7f
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.uleb128 0x5
	.byte	0x4
	.long	0x166
	.uleb128 0x6
	.ascii "TreeNode\0"
	.byte	0x1
	.byte	0xc
	.long	0x166
	.uleb128 0xb
	.byte	0x1
	.ascii "MakeTree\0"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x23b
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x1
	.byte	0x15
	.long	0x23b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii "S\0"
	.byte	0x1
	.byte	0x15
	.long	0x123
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.ascii "Pos\0"
	.byte	0x1
	.byte	0x15
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xe
	.ascii "I\0"
	.byte	0x1
	.byte	0x17
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.ascii "J\0"
	.byte	0x1
	.byte	0x17
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "K\0"
	.byte	0x1
	.byte	0x17
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x1c0
	.uleb128 0xb
	.byte	0x1
	.ascii "TravelTree\0"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x294
	.uleb128 0xc
	.secrel32	LASF0
	.byte	0x1
	.byte	0x29
	.long	0x23b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii "I\0"
	.byte	0x1
	.byte	0x2b
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xe
	.ascii "J\0"
	.byte	0x1
	.byte	0x2b
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xe
	.ascii "K\0"
	.byte	0x1
	.byte	0x2b
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xf
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x3f
	.long	0x129
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x2e2
	.uleb128 0xe
	.ascii "N\0"
	.byte	0x1
	.byte	0x41
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0xe
	.ascii "I\0"
	.byte	0x1
	.byte	0x41
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0xe
	.ascii "J\0"
	.byte	0x1
	.byte	0x41
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0xe
	.ascii "K\0"
	.byte	0x1
	.byte	0x41
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.byte	0x0
	.uleb128 0x8
	.long	0x130
	.long	0x2ed
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x2e2
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.ascii "Total\0"
	.byte	0x1
	.byte	0xe
	.long	0x30f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Total
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x8
	.long	0x84
	.long	0x329
	.uleb128 0x9
	.long	0x1b7
	.byte	0x1e
	.byte	0x0
	.uleb128 0x12
	.ascii "Blank\0"
	.byte	0x1
	.byte	0xf
	.long	0x319
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Blank
	.uleb128 0x12
	.ascii "Buffer\0"
	.byte	0x1
	.byte	0x10
	.long	0x319
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Buffer
	.uleb128 0x12
	.ascii "BufferIndex\0"
	.byte	0x1
	.byte	0x11
	.long	0x129
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_BufferIndex
	.uleb128 0x12
	.ascii "MyRoot\0"
	.byte	0x1
	.byte	0x12
	.long	0x1c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyRoot
	.byte	0x0
	.section	.debug_abbrev,"dr"
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x6d
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x382
	.long	0x1d0
	.ascii "MakeTree\0"
	.long	0x241
	.ascii "TravelTree\0"
	.long	0x294
	.ascii "main\0"
	.long	0x2fb
	.ascii "Total\0"
	.long	0x329
	.ascii "Blank\0"
	.long	0x33d
	.ascii "Buffer\0"
	.long	0x352
	.ascii "BufferIndex\0"
	.long	0x36c
	.ascii "MyRoot\0"
	.long	0x0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0x0
	.long	0x0
	.section	.debug_str,"dr"
LASF0:
	.ascii "CurrentNode\0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_ungetc;	.scl	2;	.type	32;	.endef
	.def	_gets;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
