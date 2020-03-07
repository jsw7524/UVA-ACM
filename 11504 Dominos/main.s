	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_MyEdge, 800016	 # 800008
	.comm	_MyInDegree, 800016	 # 800008
	.comm	_BitMap, 400016	 # 400004
	.comm	_MyIndex, 400016	 # 400004
.globl _MyCMP1
	.def	_MyCMP1;	.scl	2;	.type	32;	.endef
_MyCMP1:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/11504 Dominos/main.c"
	.loc 1 18 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	.loc 1 19 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 20 0
	leave
	ret
LFE7:
.globl _MyCMP2
	.def	_MyCMP2;	.scl	2;	.type	32;	.endef
_MyCMP2:
LFB8:
	.loc 1 22 0
	pushl	%ebp
LCFI2:
	movl	%esp, %ebp
LCFI3:
	.loc 1 23 0
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	12(%ebp), %eax
	movl	4(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 24 0
	leave
	ret
LFE8:
.globl _DFS
	.def	_DFS;	.scl	2;	.type	32;	.endef
_DFS:
LFB9:
	.loc 1 26 0
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	subl	$40, %esp
LCFI6:
	.loc 1 28 0
	movl	8(%ebp), %eax
	movl	_BitMap(,%eax,4), %eax
	testl	%eax, %eax
	jne	L9
	.loc 1 30 0
	movl	8(%ebp), %eax
	movl	$1, _BitMap(,%eax,4)
	.loc 1 31 0
	movl	8(%ebp), %eax
	movl	_MyIndex(,%eax,4), %eax
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	incl	%eax
	movl	_MyIndex(,%eax,4), %eax
	movl	%eax, -12(%ebp)
	jmp	L7
L8:
	.loc 1 33 0
	movl	-16(%ebp), %eax
	movl	_MyEdge+4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_DFS
	.loc 1 31 0
	incl	-16(%ebp)
L7:
	movl	-16(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jl	L8
L9:
	.loc 1 37 0
	leave
	ret
LFE9:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%d%d\0"
LC2:
	.ascii "%d\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.loc 1 40 0
	pushl	%ebp
LCFI7:
	movl	%esp, %ebp
LCFI8:
	andl	$-16, %esp
LCFI9:
	subl	$48, %esp
LCFI10:
	.loc 1 40 0
	call	___main
	.loc 1 43 0
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 44 0
	jmp	L11
L22:
	.loc 1 46 0
	leal	24(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 47 0
	movl	$800008, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_MyInDegree, (%esp)
	call	_memset
	.loc 1 48 0
	movl	$800008, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_MyEdge, (%esp)
	call	_memset
	.loc 1 49 0
	movl	$400004, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_BitMap, (%esp)
	call	_memset
	.loc 1 50 0
	movl	$400004, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_MyIndex, (%esp)
	call	_memset
	.loc 1 51 0
	movl	$1, 36(%esp)
	jmp	L12
L13:
	movl	36(%esp), %eax
	movl	36(%esp), %edx
	movl	%edx, _MyInDegree(,%eax,8)
	incl	36(%esp)
L12:
	movl	28(%esp), %eax
	cmpl	%eax, 36(%esp)
	jle	L13
	.loc 1 52 0
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	jmp	L14
L15:
	.loc 1 54 0
	leal	16(%esp), %eax
	movl	%eax, 8(%esp)
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 55 0
	movl	36(%esp), %eax
	movl	20(%esp), %edx
	movl	%edx, _MyEdge(,%eax,8)
	.loc 1 56 0
	movl	36(%esp), %eax
	movl	16(%esp), %edx
	movl	%edx, _MyEdge+4(,%eax,8)
	.loc 1 57 0
	movl	16(%esp), %eax
	movl	_MyInDegree+4(,%eax,8), %edx
	incl	%edx
	movl	%edx, _MyInDegree+4(,%eax,8)
	.loc 1 52 0
	incl	36(%esp)
	incl	40(%esp)
L14:
	movl	24(%esp), %eax
	cmpl	%eax, 40(%esp)
	jl	L15
	.loc 1 59 0
	movl	$_MyCMP1, %edx
	movl	24(%esp), %eax
	movl	%edx, 12(%esp)
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_MyEdge, (%esp)
	call	_qsort
	.loc 1 60 0
	movl	$_MyCMP2, %edx
	movl	28(%esp), %eax
	movl	%edx, 12(%esp)
	movl	$8, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_MyInDegree+8, (%esp)
	call	_qsort
	.loc 1 61 0
	movl	_MyEdge, %eax
	movl	$0, _MyIndex(,%eax,4)
	.loc 1 62 0
	movl	$1, 36(%esp)
	jmp	L16
L18:
	.loc 1 64 0
	movl	36(%esp), %eax
	decl	%eax
	movl	_MyEdge(,%eax,8), %edx
	movl	36(%esp), %eax
	movl	_MyEdge(,%eax,8), %eax
	cmpl	%eax, %edx
	je	L17
	.loc 1 66 0
	movl	36(%esp), %eax
	movl	_MyEdge(,%eax,8), %eax
	movl	36(%esp), %edx
	movl	%edx, _MyIndex(,%eax,4)
L17:
	.loc 1 62 0
	incl	36(%esp)
L16:
	movl	24(%esp), %eax
	cmpl	%eax, 36(%esp)
	jl	L18
	.loc 1 69 0
	movl	28(%esp), %eax
	movl	24(%esp), %edx
	movl	%edx, _MyIndex(,%eax,4)
	.loc 1 70 0
	movl	$1, 36(%esp)
	movl	$0, 44(%esp)
	jmp	L19
L21:
	.loc 1 72 0
	movl	36(%esp), %eax
	movl	_MyInDegree(,%eax,8), %eax
	movl	_BitMap(,%eax,4), %eax
	testl	%eax, %eax
	jne	L20
	.loc 1 74 0
	movl	36(%esp), %eax
	movl	_MyInDegree(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_DFS
	.loc 1 75 0
	incl	44(%esp)
L20:
	.loc 1 70 0
	incl	36(%esp)
L19:
	movl	28(%esp), %eax
	cmpl	%eax, 36(%esp)
	jl	L21
	.loc 1 78 0
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
L11:
	.loc 1 44 0
	movl	32(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 32(%esp)
	testb	%dl, %dl
	jne	L22
	.loc 1 80 0
	movl	$0, %eax
	.loc 1 81 0
	leave
	ret
LFE10:
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
	.align 4
LEFDE0:
LSFDE2:
	.long	LEFDE2-LASFDE2
LASFDE2:
	.secrel32	Lframe0
	.long	LFB8
	.long	LFE8-LFB8
	.byte	0x4
	.long	LCFI2-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI3-LCFI2
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
	.long	LCFI4-LFB9
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
LEFDE4:
LSFDE6:
	.long	LEFDE6-LASFDE6
LASFDE6:
	.secrel32	Lframe0
	.long	LFB10
	.long	LFE10-LFB10
	.byte	0x4
	.long	LCFI7-LFB10
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
LEFDE6:
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
	.long	LCFI2-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI2-Ltext0
	.long	LCFI3-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI3-Ltext0
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST2:
	.long	LFB9-Ltext0
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
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST3:
	.long	LFB10-Ltext0
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
	.long	LFE10-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x352
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11504 Dominos\\main.c\0"
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
	.long	0x11a
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x7b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x83
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
	.byte	0x8
	.byte	0x1
	.byte	0x7
	.long	0x17e
	.uleb128 0x4
	.ascii "X\0"
	.byte	0x1
	.byte	0x8
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "Y\0"
	.byte	0x1
	.byte	0x9
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.ascii "Edge\0"
	.byte	0x1
	.byte	0xa
	.long	0x15d
	.uleb128 0x8
	.byte	0x1
	.ascii "MyCMP1\0"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0x120
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1c3
	.uleb128 0x9
	.ascii "A\0"
	.byte	0x1
	.byte	0x11
	.long	0x1c3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "B\0"
	.byte	0x1
	.byte	0x11
	.long	0x1c3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x8
	.byte	0x1
	.ascii "MyCMP2\0"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	0x120
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x1fe
	.uleb128 0x9
	.ascii "A\0"
	.byte	0x1
	.byte	0x15
	.long	0x1c3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "B\0"
	.byte	0x1
	.byte	0x15
	.long	0x1c3
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "DFS\0"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x23c
	.uleb128 0x9
	.ascii "R\0"
	.byte	0x1
	.byte	0x19
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x1b
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.ascii "J\0"
	.byte	0x1
	.byte	0x1b
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x27
	.long	0x120
	.long	LFB10
	.long	LFE10
	.secrel32	LLST3
	.long	0x2ba
	.uleb128 0xc
	.ascii "T\0"
	.byte	0x1
	.byte	0x29
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0xc
	.ascii "N\0"
	.byte	0x1
	.byte	0x29
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xc
	.ascii "M\0"
	.byte	0x1
	.byte	0x29
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0xc
	.ascii "X\0"
	.byte	0x1
	.byte	0x29
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0xc
	.ascii "Y\0"
	.byte	0x1
	.byte	0x29
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x2a
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0xc
	.ascii "J\0"
	.byte	0x1
	.byte	0x2a
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0xc
	.ascii "K\0"
	.byte	0x1
	.byte	0x2a
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.byte	0x0
	.uleb128 0xe
	.long	0x127
	.long	0x2c5
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x10
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x2ba
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.long	0x17e
	.long	0x2e6
	.uleb128 0x11
	.long	0x2e6
	.long	0x186a0
	.byte	0x0
	.uleb128 0x12
	.byte	0x4
	.byte	0x7
	.uleb128 0x13
	.ascii "MyEdge\0"
	.byte	0x1
	.byte	0xc
	.long	0x2d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyEdge
	.uleb128 0x13
	.ascii "MyInDegree\0"
	.byte	0x1
	.byte	0xd
	.long	0x2d3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyInDegree
	.uleb128 0xe
	.long	0x120
	.long	0x32a
	.uleb128 0x11
	.long	0x2e6
	.long	0x186a0
	.byte	0x0
	.uleb128 0x13
	.ascii "BitMap\0"
	.byte	0x1
	.byte	0xe
	.long	0x317
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_BitMap
	.uleb128 0x13
	.ascii "MyIndex\0"
	.byte	0x1
	.byte	0xf
	.long	0x317
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyIndex
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
	.uleb128 0x8
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.long	0x66
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x356
	.long	0x18a
	.ascii "MyCMP1\0"
	.long	0x1c5
	.ascii "MyCMP2\0"
	.long	0x1fe
	.ascii "DFS\0"
	.long	0x23c
	.ascii "main\0"
	.long	0x2e9
	.ascii "MyEdge\0"
	.long	0x2fe
	.ascii "MyInDegree\0"
	.long	0x32a
	.ascii "BitMap\0"
	.long	0x33f
	.ascii "MyIndex\0"
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
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
