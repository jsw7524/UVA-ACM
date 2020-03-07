	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_Table, 25296	 # 25284
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%d%d\0"
LC2:
	.ascii "%d\12\0"
LC3:
	.ascii "no solution\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/11450 Wedding shopping/main.c"
	.loc 1 8 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	subl	$48, %esp
LCFI3:
	.loc 1 8 0
	call	___main
	.loc 1 11 0
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 13 0
	jmp	L2
L16:
	.loc 1 15 0
	movl	$25284, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Table, (%esp)
	call	_memset
	.loc 1 16 0
	leal	24(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 17 0
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 18 0
	movl	$1, 40(%esp)
	jmp	L3
L4:
	.loc 1 20 0
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 21 0
	movl	16(%esp), %eax
	addl	$301, %eax
	movl	$1, _Table(,%eax,4)
	.loc 1 18 0
	incl	40(%esp)
L3:
	movl	20(%esp), %eax
	cmpl	%eax, 40(%esp)
	jle	L4
	.loc 1 23 0
	movl	$2, 36(%esp)
	jmp	L5
L11:
	.loc 1 25 0
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 26 0
	movl	$1, 40(%esp)
	jmp	L6
L10:
	.loc 1 28 0
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 29 0
	movl	$1, 44(%esp)
	jmp	L7
L9:
	.loc 1 31 0
	movl	36(%esp), %eax
	leal	-1(%eax), %edx
	movl	44(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	_Table(,%eax,4), %eax
	cmpl	$1, %eax
	jne	L8
	.loc 1 33 0
	movl	36(%esp), %edx
	movl	16(%esp), %eax
	movl	%eax, %ecx
	addl	44(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	$1, _Table(,%eax,4)
L8:
	.loc 1 29 0
	incl	44(%esp)
L7:
	movl	28(%esp), %eax
	cmpl	%eax, 44(%esp)
	jle	L9
	.loc 1 26 0
	incl	40(%esp)
L6:
	movl	20(%esp), %eax
	cmpl	%eax, 40(%esp)
	jle	L10
	.loc 1 23 0
	incl	36(%esp)
L5:
	movl	24(%esp), %eax
	cmpl	%eax, 36(%esp)
	jle	L11
	.loc 1 38 0
	movl	28(%esp), %eax
	movl	%eax, 40(%esp)
	jmp	L12
L15:
	.loc 1 40 0
	movl	24(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	movl	_Table(,%eax,4), %eax
	cmpl	$1, %eax
	jne	L13
	.loc 1 42 0
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	.loc 1 43 0
	jmp	L14
L13:
	.loc 1 38 0
	decl	40(%esp)
L12:
	cmpl	$0, 40(%esp)
	jg	L15
L14:
	.loc 1 46 0
	cmpl	$0, 40(%esp)
	jne	L2
	.loc 1 48 0
	movl	$LC3, (%esp)
	call	_puts
L2:
	.loc 1 13 0
	movl	32(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 32(%esp)
	testb	%dl, %dl
	jne	L16
	.loc 1 51 0
	movl	$0, %eax
	.loc 1 52 0
	leave
	ret
LFE7:
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
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x228
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11450 Wedding shopping\\main.c\0"
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
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x7
	.long	0x129
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1e4
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x8
	.ascii "M\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x8
	.ascii "C\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0x8
	.ascii "K\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0x8
	.ascii "P\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0xa
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0x8
	.ascii "J\0"
	.byte	0x1
	.byte	0xa
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0x8
	.ascii "Z\0"
	.byte	0x1
	.byte	0xa
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.byte	0x0
	.uleb128 0x9
	.long	0x130
	.long	0x1ef
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xb
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1e4
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x129
	.long	0x214
	.uleb128 0xc
	.long	0x214
	.byte	0x14
	.uleb128 0xd
	.long	0x214
	.word	0x12c
	.byte	0x0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.ascii "Table\0"
	.byte	0x1
	.byte	0x5
	.long	0x1fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Table
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x21
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x22c
	.long	0x166
	.ascii "main\0"
	.long	0x217
	.ascii "Table\0"
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
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
