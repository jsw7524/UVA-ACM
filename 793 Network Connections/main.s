	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_MyNode, 600000	 # 600000
.globl _Make_Set
	.def	_Make_Set;	.scl	2;	.type	32;	.endef
_Make_Set:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/793 Network Connections/main.c"
	.loc 1 14 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	.loc 1 15 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, _MyNode(%edx)
	.loc 1 16 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, _MyNode+4(%edx)
	.loc 1 17 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	$0, _MyNode+8(%eax)
	.loc 1 18 0
	leave
	ret
LFE7:
.globl _Find_Set
	.def	_Find_Set;	.scl	2;	.type	32;	.endef
_Find_Set:
LFB8:
	.loc 1 20 0
	pushl	%ebp
LCFI2:
	movl	%esp, %ebp
LCFI3:
	pushl	%ebx
LCFI4:
	subl	$20, %esp
LCFI5:
	.loc 1 21 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+4(%eax), %eax
	cmpl	8(%ebp), %eax
	je	L4
	.loc 1 23 0
	movl	8(%ebp), %ebx
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+4(%eax), %eax
	movl	%eax, (%esp)
	call	_Find_Set
	movl	%eax, %edx
	movl	%ebx, %eax
	sall	%eax
	addl	%ebx, %eax
	sall	$2, %eax
	movl	%edx, _MyNode+4(%eax)
	movl	%ebx, %eax
	sall	%eax
	addl	%ebx, %eax
	sall	$2, %eax
	movl	_MyNode+4(%eax), %eax
	jmp	L5
L4:
	.loc 1 25 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+4(%eax), %eax
L5:
	.loc 1 26 0
	addl	$20, %esp
	popl	%ebx
	leave
	ret
LFE8:
.globl _Link
	.def	_Link;	.scl	2;	.type	32;	.endef
_Link:
LFB9:
	.loc 1 28 0
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	.loc 1 29 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+8(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+8(%eax), %eax
	cmpl	%eax, %ecx
	jle	L8
	.loc 1 31 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	%eax, _MyNode+4(%edx)
	jmp	L10
L8:
	.loc 1 36 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	movl	%eax, _MyNode+4(%edx)
	.loc 1 37 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+8(%eax), %ecx
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+8(%eax), %eax
	cmpl	%eax, %ecx
	jne	L10
	.loc 1 39 0
	movl	12(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	_MyNode+8(%eax), %eax
	leal	1(%eax), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	movl	%ecx, _MyNode+8(%eax)
L10:
	.loc 1 42 0
	leave
	ret
LFE9:
.globl _Union_Set
	.def	_Union_Set;	.scl	2;	.type	32;	.endef
_Union_Set:
LFB10:
	.loc 1 44 0
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	pushl	%ebx
LCFI10:
	subl	$20, %esp
LCFI11:
	.loc 1 45 0
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Find_Set
	movl	%eax, %ebx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Find_Set
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_Link
	.loc 1 46 0
	addl	$20, %esp
	popl	%ebx
	leave
	ret
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%d %d\0"
LC2:
	.ascii "%d,%d\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.loc 1 49 0
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	andl	$-16, %esp
LCFI14:
	pushl	%ebx
LCFI15:
	subl	$76, %esp
LCFI16:
	.loc 1 49 0
	call	___main
	.loc 1 53 0
	leal	36(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 54 0
	movl	$1, 48(%esp)
	.loc 1 55 0
	jmp	L14
L26:
	.loc 1 57 0
	cmpl	$1, 48(%esp)
	jne	L15
	.loc 1 59 0
	movl	$0, 48(%esp)
	jmp	L16
L15:
	.loc 1 63 0
	movl	$10, (%esp)
	call	_putchar
L16:
	.loc 1 65 0
	movl	$0, 56(%esp)
	movl	56(%esp), %eax
	movl	%eax, 52(%esp)
	.loc 1 66 0
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 67 0
	movl	$1, 40(%esp)
	jmp	L17
L18:
	.loc 1 69 0
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_Make_Set
	.loc 1 67 0
	incl	40(%esp)
L17:
	movl	24(%esp), %eax
	cmpl	%eax, 40(%esp)
	jle	L18
	.loc 1 71 0
	call	_getchar
	.loc 1 72 0
	jmp	L19
L25:
	.loc 1 74 0
	cmpl	$-1, 60(%esp)
	je	L28
L20:
	.loc 1 78 0
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 79 0
	cmpl	$99, 60(%esp)
	jne	L22
	.loc 1 82 0
	movl	28(%esp), %edx
	movl	32(%esp), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Union_Set
	jmp	L23
L22:
	.loc 1 86 0
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_Find_Set
	movl	%eax, %ebx
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	_Find_Set
	cmpl	%eax, %ebx
	jne	L24
	.loc 1 88 0
	incl	52(%esp)
	jmp	L23
L24:
	.loc 1 92 0
	incl	56(%esp)
L23:
	.loc 1 95 0
	call	_getchar
L19:
	.loc 1 72 0
	call	_getchar
	movl	%eax, 60(%esp)
	cmpl	$10, 60(%esp)
	jne	L25
	jmp	L21
L28:
	.loc 1 76 0
	nop
L21:
	.loc 1 97 0
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
L14:
	.loc 1 55 0
	movl	36(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 36(%esp)
	testb	%dl, %dl
	jne	L26
	.loc 1 99 0
	movl	$0, %eax
	.loc 1 100 0
	addl	$76, %esp
	popl	%ebx
	leave
	ret
LFE11:
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
	.byte	0x4
	.long	LCFI5-LCFI3
	.byte	0x11
	.uleb128 0x3
	.sleb128 3
	.align 4
LEFDE2:
LSFDE4:
	.long	LEFDE4-LASFDE4
LASFDE4:
	.secrel32	Lframe0
	.long	LFB9
	.long	LFE9-LFB9
	.byte	0x4
	.long	LCFI6-LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI7-LCFI6
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
	.long	LCFI8-LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI9-LCFI8
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI11-LCFI9
	.byte	0x11
	.uleb128 0x3
	.sleb128 3
	.align 4
LEFDE6:
LSFDE8:
	.long	LEFDE8-LASFDE8
LASFDE8:
	.secrel32	Lframe0
	.long	LFB11
	.long	LFE11-LFB11
	.byte	0x4
	.long	LCFI12-LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI13-LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI16-LCFI13
	.byte	0x10
	.byte	0x3
	.uleb128 0x7
	.byte	0x55
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xfc
	.byte	0x22
	.align 4
LEFDE8:
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
	.long	LCFI6-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI6-Ltext0
	.long	LCFI7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI7-Ltext0
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST3:
	.long	LFB10-Ltext0
	.long	LCFI8-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI8-Ltext0
	.long	LCFI9-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI9-Ltext0
	.long	LFE10-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST4:
	.long	LFB11-Ltext0
	.long	LCFI12-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI12-Ltext0
	.long	LCFI13-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI13-Ltext0
	.long	LFE11-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x362
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\793 Network Connections\\main.c\0"
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
	.long	0x124
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x85
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8d
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
	.byte	0xc
	.byte	0x1
	.byte	0x7
	.long	0x1a0
	.uleb128 0x4
	.ascii "Value\0"
	.byte	0x1
	.byte	0x8
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "Parent\0"
	.byte	0x1
	.byte	0x9
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "Rank\0"
	.byte	0x1
	.byte	0xa
	.long	0x12a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x6
	.ascii "Node\0"
	.byte	0x1
	.byte	0xb
	.long	0x167
	.uleb128 0x8
	.byte	0x1
	.ascii "Make_Set\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1d7
	.uleb128 0x9
	.ascii "X\0"
	.byte	0x1
	.byte	0xd
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.ascii "Find_Set\0"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x12a
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x206
	.uleb128 0x9
	.ascii "X\0"
	.byte	0x1
	.byte	0x13
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.ascii "Link\0"
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x239
	.uleb128 0x9
	.ascii "X\0"
	.byte	0x1
	.byte	0x1b
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "Y\0"
	.byte	0x1
	.byte	0x1b
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x8
	.byte	0x1
	.ascii "Union_Set\0"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	LFB10
	.long	LFE10
	.secrel32	LLST3
	.long	0x271
	.uleb128 0x9
	.ascii "X\0"
	.byte	0x1
	.byte	0x2b
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "Y\0"
	.byte	0x1
	.byte	0x2b
	.long	0x12a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x30
	.long	0x12a
	.long	LFB11
	.long	LFE11
	.secrel32	LLST4
	.long	0x323
	.uleb128 0xc
	.ascii "N\0"
	.byte	0x1
	.byte	0x32
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x32
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0xc
	.ascii "J\0"
	.byte	0x1
	.byte	0x32
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0xc
	.ascii "K\0"
	.byte	0x1
	.byte	0x32
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0xc
	.ascii "S\0"
	.byte	0x1
	.byte	0x32
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0xc
	.ascii "D\0"
	.byte	0x1
	.byte	0x32
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xc
	.ascii "Computers\0"
	.byte	0x1
	.byte	0x33
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0xc
	.ascii "Successful\0"
	.byte	0x1
	.byte	0x33
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 52
	.uleb128 0xc
	.ascii "Unsuccessful\0"
	.byte	0x1
	.byte	0x33
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0xc
	.ascii "C\0"
	.byte	0x1
	.byte	0x34
	.long	0x12a
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.byte	0x0
	.uleb128 0xd
	.long	0x131
	.long	0x32e
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xf
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x323
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x1a0
	.long	0x34d
	.uleb128 0x10
	.long	0x34d
	.word	0xc34f
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.ascii "MyNode\0"
	.byte	0x1
	.byte	0xc
	.long	0x33c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyNode
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.long	0x53
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x366
	.long	0x1ac
	.ascii "Make_Set\0"
	.long	0x1d7
	.ascii "Find_Set\0"
	.long	0x206
	.ascii "Link\0"
	.long	0x239
	.ascii "Union_Set\0"
	.long	0x271
	.ascii "main\0"
	.long	0x350
	.ascii "MyNode\0"
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
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
