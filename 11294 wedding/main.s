	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_MyClause, 81616	 # 81608
	.comm	_MyAssignment, 416	 # 404
	.comm	_Temp1, 416	 # 404
	.comm	_Valid, 416	 # 404
	.comm	_Temp2, 416	 # 404
	.comm	_N, 16	 # 4
	.comm	_C, 16	 # 4
.globl _Assign
	.def	_Assign;	.scl	2;	.type	32;	.endef
_Assign:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/11294 wedding/main.c"
	.loc 1 20 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$40, %esp
LCFI2:
	.loc 1 23 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jns	L2
	negl	%eax
L2:
	movl	_MyAssignment(,%eax,4), %eax
	cmpl	$-1, %eax
	je	L3
	.loc 1 25 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jns	L4
	negl	%eax
L4:
	movl	_MyAssignment(,%eax,4), %eax
	testl	%eax, %eax
	jne	L5
	cmpl	$0, 8(%ebp)
	jg	L6
L5:
	.loc 1 26 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jns	L7
	negl	%eax
L7:
	movl	_MyAssignment(,%eax,4), %eax
	.loc 1 25 0
	cmpl	$1, %eax
	jne	L8
	cmpl	$0, 8(%ebp)
	jns	L8
L6:
	.loc 1 27 0
	movl	$-1, %eax
	jmp	L9
L8:
	.loc 1 28 0
	movl	$1, %eax
	jmp	L9
L3:
	.loc 1 30 0
	movl	8(%ebp), %eax
	testl	%eax, %eax
	jns	L10
	negl	%eax
L10:
	cmpl	$0, 8(%ebp)
	setg	%dl
	movzbl	%dl, %edx
	movl	%edx, _MyAssignment(,%eax,4)
	.loc 1 32 0
	movl	$1, -20(%ebp)
	jmp	L11
L16:
	.loc 1 34 0
	movl	-20(%ebp), %eax
	movl	_Valid(,%eax,4), %eax
	testl	%eax, %eax
	jne	L12
	.loc 1 36 0
	movl	-20(%ebp), %eax
	movl	_MyClause(,%eax,8), %eax
	cmpl	8(%ebp), %eax
	je	L13
	movl	-20(%ebp), %eax
	movl	_MyClause+4(,%eax,8), %eax
	cmpl	8(%ebp), %eax
	jne	L14
L13:
	.loc 1 38 0
	movl	-20(%ebp), %eax
	movl	$1, _Valid(,%eax,4)
	.loc 1 39 0
	jmp	L12
L14:
	.loc 1 41 0
	movl	-20(%ebp), %eax
	movl	_MyClause(,%eax,8), %eax
	movl	8(%ebp), %edx
	negl	%edx
	cmpl	%edx, %eax
	jne	L15
	.loc 1 43 0
	movl	-20(%ebp), %eax
	movl	_MyClause+4(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_Assign
	movl	%eax, -12(%ebp)
	.loc 1 44 0
	cmpl	$-1, -12(%ebp)
	jne	L15
	.loc 1 45 0
	movl	$-1, %eax
	jmp	L9
L15:
	.loc 1 47 0
	movl	-20(%ebp), %eax
	movl	_MyClause+4(,%eax,8), %eax
	movl	8(%ebp), %edx
	negl	%edx
	cmpl	%edx, %eax
	jne	L12
	.loc 1 49 0
	movl	-20(%ebp), %eax
	movl	_MyClause(,%eax,8), %eax
	movl	%eax, (%esp)
	call	_Assign
	movl	%eax, -12(%ebp)
	.loc 1 50 0
	cmpl	$-1, -12(%ebp)
	jne	L12
	.loc 1 51 0
	movl	$-1, %eax
	jmp	L9
L12:
	.loc 1 32 0
	incl	-20(%ebp)
L11:
	movl	_C, %eax
	cmpl	%eax, -20(%ebp)
	jle	L16
	.loc 1 55 0
	movl	$1, %eax
L9:
	.loc 1 56 0
	leave
	ret
LFE7:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d%c\0"
LC1:
	.ascii "bad luck\0"
LC2:
	.ascii "%dw \0"
LC3:
	.ascii "%dh \0"
LC4:
	.ascii "%dw\0"
LC5:
	.ascii "%dh\0"
LC6:
	.ascii "%d%d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB8:
	.loc 1 59 0
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	andl	$-16, %esp
LCFI5:
	subl	$48, %esp
LCFI6:
	.loc 1 59 0
	call	___main
	.loc 1 63 0
	jmp	L19
L39:
	.loc 1 65 0
	movl	_N, %eax
	testl	%eax, %eax
	jne	L20
	movl	_C, %eax
	testl	%eax, %eax
	je	L41
L20:
	.loc 1 69 0
	movl	$0, 44(%esp)
	.loc 1 70 0
	movl	$404, 8(%esp)
	movl	$-1, 4(%esp)
	movl	$_MyAssignment, (%esp)
	call	_memset
	.loc 1 71 0
	movl	$404, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Valid, (%esp)
	call	_memset
	.loc 1 72 0
	movl	$1, 32(%esp)
	jmp	L22
L27:
	.loc 1 74 0
	leal	27(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 75 0
	movl	32(%esp), %eax
	movb	27(%esp), %dl
	cmpb	$119, %dl
	jne	L23
	movl	28(%esp), %edx
	incl	%edx
	jmp	L24
L23:
	movl	28(%esp), %edx
	notl	%edx
L24:
	movl	%edx, _MyClause(,%eax,8)
	.loc 1 76 0
	leal	27(%esp), %eax
	movl	%eax, 8(%esp)
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 77 0
	movl	32(%esp), %eax
	movb	27(%esp), %dl
	cmpb	$119, %dl
	jne	L25
	movl	28(%esp), %edx
	incl	%edx
	jmp	L26
L25:
	movl	28(%esp), %edx
	notl	%edx
L26:
	movl	%edx, _MyClause+4(,%eax,8)
	.loc 1 72 0
	incl	32(%esp)
L22:
	movl	_C, %eax
	cmpl	%eax, 32(%esp)
	jle	L27
	.loc 1 80 0
	movl	$1, (%esp)
	call	_Assign
	cmpl	$-1, %eax
	jne	L28
	.loc 1 82 0
	movl	$LC1, (%esp)
	call	_puts
	.loc 1 83 0
	movl	$1, 44(%esp)
	.loc 1 84 0
	jmp	L19
L28:
	.loc 1 87 0
	movl	$2, 36(%esp)
	jmp	L29
L32:
	.loc 1 89 0
	movl	36(%esp), %eax
	movl	_MyAssignment(,%eax,4), %eax
	cmpl	$-1, %eax
	jne	L30
	.loc 1 91 0
	movl	$404, 8(%esp)
	movl	$_MyAssignment, 4(%esp)
	movl	$_Temp1, (%esp)
	call	_memcpy
	.loc 1 92 0
	movl	$404, 8(%esp)
	movl	$_Valid, 4(%esp)
	movl	$_Temp2, (%esp)
	call	_memcpy
	.loc 1 93 0
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_Assign
	cmpl	$-1, %eax
	jne	L30
	.loc 1 95 0
	movl	$404, 8(%esp)
	movl	$_Temp1, 4(%esp)
	movl	$_MyAssignment, (%esp)
	call	_memcpy
	.loc 1 96 0
	movl	$404, 8(%esp)
	movl	$_Temp2, 4(%esp)
	movl	$_Valid, (%esp)
	call	_memcpy
	.loc 1 97 0
	movl	36(%esp), %eax
	negl	%eax
	movl	%eax, (%esp)
	call	_Assign
	cmpl	$-1, %eax
	jne	L30
	.loc 1 99 0
	movl	$LC1, (%esp)
	call	_puts
	.loc 1 100 0
	movl	$1, 44(%esp)
	.loc 1 101 0
	jmp	L31
L30:
	.loc 1 87 0
	incl	36(%esp)
L29:
	movl	_N, %eax
	cmpl	%eax, 36(%esp)
	jle	L32
L31:
	.loc 1 106 0
	cmpl	$0, 44(%esp)
	jne	L19
	.loc 1 108 0
	movl	$2, 36(%esp)
	jmp	L33
L36:
	.loc 1 110 0
	movl	_MyAssignment+4, %edx
	movl	36(%esp), %eax
	movl	_MyAssignment(,%eax,4), %eax
	cmpl	%eax, %edx
	jne	L34
	.loc 1 112 0
	movl	36(%esp), %eax
	decl	%eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	jmp	L35
L34:
	.loc 1 116 0
	movl	36(%esp), %eax
	decl	%eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
L35:
	.loc 1 108 0
	incl	36(%esp)
L33:
	movl	_N, %eax
	cmpl	%eax, 36(%esp)
	jl	L36
	.loc 1 119 0
	movl	_MyAssignment+4, %edx
	movl	_N, %eax
	movl	_MyAssignment(,%eax,4), %eax
	cmpl	%eax, %edx
	jne	L37
	.loc 1 121 0
	movl	36(%esp), %eax
	decl	%eax
	movl	%eax, 4(%esp)
	movl	$LC4, (%esp)
	call	_printf
	jmp	L38
L37:
	.loc 1 125 0
	movl	36(%esp), %eax
	decl	%eax
	movl	%eax, 4(%esp)
	movl	$LC5, (%esp)
	call	_printf
L38:
	.loc 1 127 0
	movl	$10, (%esp)
	call	_putchar
L19:
	.loc 1 63 0
	movl	$_C, 8(%esp)
	movl	$_N, 4(%esp)
	movl	$LC6, (%esp)
	call	_scanf
	cmpl	$-1, %eax
	jne	L39
	jmp	L21
L41:
	.loc 1 67 0
	nop
L21:
	.loc 1 130 0
	movl	$0, %eax
	.loc 1 131 0
	leave
	ret
LFE8:
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
	.long	LCFI3-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI4-LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE2:
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
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x30d
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11294 wedding\\main.c\0"
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
	.ascii "A\0"
	.byte	0x1
	.byte	0x8
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "B\0"
	.byte	0x1
	.byte	0x9
	.long	0x120
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x6
	.ascii "Clause\0"
	.byte	0x1
	.byte	0xa
	.long	0x15d
	.uleb128 0x8
	.byte	0x1
	.ascii "Assign\0"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x120
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1dd
	.uleb128 0x9
	.ascii "X\0"
	.byte	0x1
	.byte	0x13
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "I\0"
	.byte	0x1
	.byte	0x15
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.ascii "J\0"
	.byte	0x1
	.byte	0x15
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.ascii "K\0"
	.byte	0x1
	.byte	0x15
	.long	0x120
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x3a
	.long	0x120
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x245
	.uleb128 0xa
	.ascii "I\0"
	.byte	0x1
	.byte	0x3c
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0xa
	.ascii "J\0"
	.byte	0x1
	.byte	0x3c
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0xa
	.ascii "K\0"
	.byte	0x1
	.byte	0x3c
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0xa
	.ascii "F\0"
	.byte	0x1
	.byte	0x3c
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0xa
	.ascii "D1\0"
	.byte	0x1
	.byte	0x3d
	.long	0x120
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xa
	.ascii "C2\0"
	.byte	0x1
	.byte	0x3e
	.long	0x7b
	.byte	0x2
	.byte	0x74
	.sleb128 27
	.byte	0x0
	.uleb128 0xc
	.long	0x127
	.long	0x250
	.uleb128 0xd
	.byte	0x0
	.uleb128 0xe
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x245
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x17e
	.long	0x26f
	.uleb128 0xf
	.long	0x26f
	.word	0x27d8
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.ascii "MyClause\0"
	.byte	0x1
	.byte	0xc
	.long	0x25e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyClause
	.uleb128 0xc
	.long	0x120
	.long	0x299
	.uleb128 0x12
	.long	0x26f
	.byte	0x64
	.byte	0x0
	.uleb128 0x11
	.ascii "MyAssignment\0"
	.byte	0x1
	.byte	0xd
	.long	0x289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyAssignment
	.uleb128 0x11
	.ascii "Temp1\0"
	.byte	0x1
	.byte	0xe
	.long	0x289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Temp1
	.uleb128 0x11
	.ascii "Valid\0"
	.byte	0x1
	.byte	0xf
	.long	0x289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Valid
	.uleb128 0x11
	.ascii "Temp2\0"
	.byte	0x1
	.byte	0x10
	.long	0x289
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Temp2
	.uleb128 0x11
	.ascii "N\0"
	.byte	0x1
	.byte	0x11
	.long	0x120
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_N
	.uleb128 0x11
	.ascii "C\0"
	.byte	0x1
	.byte	0x11
	.long	0x120
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_C
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x6a
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x311
	.long	0x18c
	.ascii "Assign\0"
	.long	0x1dd
	.ascii "main\0"
	.long	0x272
	.ascii "MyClause\0"
	.long	0x299
	.ascii "MyAssignment\0"
	.long	0x2b4
	.ascii "Temp1\0"
	.long	0x2c8
	.ascii "Valid\0"
	.long	0x2dc
	.ascii "Temp2\0"
	.long	0x2f0
	.ascii "N\0"
	.long	0x300
	.ascii "C\0"
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
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
