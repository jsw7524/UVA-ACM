	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_DP_Table, 2128	 # 2116
	.comm	_Name, 256	 # 253
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s\0"
LC1:
	.ascii "%d%d%d\0"
LC2:
	.ascii "Case #%d : %s\12\0"
LC3:
	.ascii "%d%d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/11015 05-2 Rendezvous/main.c"
	.loc 1 8 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	pushl	%edi
LCFI3:
	pushl	%esi
LCFI4:
	pushl	%ebx
LCFI5:
	subl	$68, %esp
LCFI6:
	.loc 1 8 0
	call	___main
	.loc 1 10 0
	movl	$1, 60(%esp)
	.loc 1 11 0
	jmp	L2
L25:
	.loc 1 13 0
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	L27
L3:
	.loc 1 16 0
	movl	$0, 44(%esp)
	jmp	L5
L8:
	.loc 1 18 0
	movl	$0, 40(%esp)
	jmp	L6
L7:
	.loc 1 20 0
	movl	44(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	movl	$99999999, _DP_Table(,%eax,4)
	.loc 1 18 0
	movl	40(%esp), %eax
	incl	%eax
	movl	%eax, 40(%esp)
L6:
	movl	40(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L7
	.loc 1 22 0
	movl	44(%esp), %edx
	movl	44(%esp), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	movl	$0, _DP_Table(,%eax,4)
	.loc 1 16 0
	movl	44(%esp), %eax
	incl	%eax
	movl	%eax, 44(%esp)
L5:
	movl	44(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L8
	.loc 1 24 0
	movl	$1, 44(%esp)
	jmp	L9
L10:
	.loc 1 26 0
	movl	$_Name, %ecx
	movl	44(%esp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 24 0
	movl	44(%esp), %eax
	incl	%eax
	movl	%eax, 44(%esp)
L9:
	movl	44(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L10
	.loc 1 28 0
	movl	$0, 48(%esp)
	jmp	L11
L12:
	.loc 1 30 0
	leal	36(%esp), %eax
	movl	%eax, 12(%esp)
	leal	40(%esp), %eax
	movl	%eax, 8(%esp)
	leal	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 31 0
	movl	44(%esp), %edx
	movl	40(%esp), %ebx
	movl	36(%esp), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ebx, %eax
	movl	%ecx, _DP_Table(,%eax,4)
	.loc 1 32 0
	movl	40(%esp), %edx
	movl	44(%esp), %ebx
	movl	36(%esp), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ebx, %eax
	movl	%ecx, _DP_Table(,%eax,4)
	.loc 1 28 0
	incl	48(%esp)
L11:
	movl	28(%esp), %eax
	cmpl	%eax, 48(%esp)
	jl	L12
	.loc 1 34 0
	movl	$1, 36(%esp)
	jmp	L13
L19:
	.loc 1 36 0
	movl	$1, 44(%esp)
	jmp	L14
L18:
	.loc 1 38 0
	movl	44(%esp), %eax
	incl	%eax
	movl	%eax, 40(%esp)
	jmp	L15
L17:
	.loc 1 40 0
	movl	44(%esp), %ecx
	movl	40(%esp), %ebx
	movl	44(%esp), %edx
	movl	36(%esp), %esi
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%esi, %eax
	movl	_DP_Table(,%eax,4), %esi
	movl	36(%esp), %edx
	movl	40(%esp), %edi
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%edi, %eax
	movl	_DP_Table(,%eax,4), %eax
	leal	(%esi,%eax), %edi
	movl	44(%esp), %edx
	movl	40(%esp), %esi
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%esi, %eax
	movl	_DP_Table(,%eax,4), %edx
	movl	%edi, %eax
	cmpl	%edx, %eax
	jle	L16
	movl	%edx, %eax
L16:
	movl	%ecx, %edx
	sall	%edx
	addl	%ecx, %edx
	sall	$3, %edx
	subl	%ecx, %edx
	addl	%ebx, %edx
	movl	%eax, _DP_Table(,%edx,4)
	.loc 1 41 0
	movl	40(%esp), %edx
	movl	44(%esp), %ebx
	movl	44(%esp), %ecx
	movl	40(%esp), %esi
	movl	%ecx, %eax
	sall	%eax
	addl	%ecx, %eax
	sall	$3, %eax
	subl	%ecx, %eax
	addl	%esi, %eax
	movl	_DP_Table(,%eax,4), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ebx, %eax
	movl	%ecx, _DP_Table(,%eax,4)
	.loc 1 38 0
	movl	40(%esp), %eax
	incl	%eax
	movl	%eax, 40(%esp)
L15:
	movl	40(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L17
	.loc 1 36 0
	movl	44(%esp), %eax
	incl	%eax
	movl	%eax, 44(%esp)
L14:
	movl	44(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L18
	.loc 1 34 0
	movl	36(%esp), %eax
	incl	%eax
	movl	%eax, 36(%esp)
L13:
	movl	36(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L19
	.loc 1 45 0
	movl	$1, 44(%esp)
	movl	$1, 36(%esp)
	movl	$9999999, 52(%esp)
	jmp	L20
L24:
	.loc 1 47 0
	movl	$0, 56(%esp)
	.loc 1 48 0
	movl	$1, 40(%esp)
	jmp	L21
L22:
	.loc 1 50 0
	movl	44(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	addl	%ecx, %eax
	movl	_DP_Table(,%eax,4), %eax
	addl	%eax, 56(%esp)
	.loc 1 48 0
	movl	40(%esp), %eax
	incl	%eax
	movl	%eax, 40(%esp)
L21:
	movl	40(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L22
	.loc 1 52 0
	movl	56(%esp), %eax
	cmpl	52(%esp), %eax
	jge	L23
	.loc 1 54 0
	movl	56(%esp), %eax
	movl	%eax, 52(%esp)
	.loc 1 55 0
	movl	44(%esp), %eax
	movl	%eax, 36(%esp)
L23:
	.loc 1 45 0
	movl	44(%esp), %eax
	incl	%eax
	movl	%eax, 44(%esp)
L20:
	movl	44(%esp), %edx
	movl	32(%esp), %eax
	cmpl	%eax, %edx
	jle	L24
	.loc 1 58 0
	movl	$_Name, %ecx
	movl	36(%esp), %eax
	movl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	(%ecx,%eax), %edx
	movl	60(%esp), %eax
	incl	60(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
L2:
	.loc 1 11 0
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_scanf
	testl	%eax, %eax
	jne	L25
	jmp	L4
L27:
	.loc 1 14 0
	nop
L4:
	.loc 1 60 0
	movl	$0, %eax
	.loc 1 61 0
	addl	$68, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
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
	.byte	0x4
	.long	LCFI6-LCFI1
	.byte	0x10
	.byte	0x3
	.uleb128 0x7
	.byte	0x55
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xf4
	.byte	0x22
	.byte	0x10
	.byte	0x6
	.uleb128 0x7
	.byte	0x55
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xf8
	.byte	0x22
	.byte	0x10
	.byte	0x7
	.uleb128 0x7
	.byte	0x55
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xfc
	.byte	0x22
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
	.long	0x26a
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11015 05-2 Rendezvous\\main.c\0"
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
	.long	0x122
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
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
	.byte	0x0
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
	.ascii "main\0"
	.byte	0x1
	.byte	0x7
	.long	0x128
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1fb
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0x8
	.ascii "J\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0x8
	.ascii "K\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0x8
	.ascii "L\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0x8
	.ascii "MinCost\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 52
	.uleb128 0x8
	.ascii "Temp\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0xa
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x8
	.ascii "M\0"
	.byte	0x1
	.byte	0xa
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x8
	.ascii "Case\0"
	.byte	0x1
	.byte	0xa
	.long	0x128
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.byte	0x0
	.uleb128 0x9
	.long	0x12f
	.long	0x206
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xb
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1fb
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x128
	.long	0x22a
	.uleb128 0xc
	.long	0x22a
	.byte	0x16
	.uleb128 0xc
	.long	0x22a
	.byte	0x16
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uleb128 0xe
	.ascii "DP_Table\0"
	.byte	0x1
	.byte	0x4
	.long	0x214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_DP_Table
	.uleb128 0x9
	.long	0x83
	.long	0x25a
	.uleb128 0xc
	.long	0x22a
	.byte	0x16
	.uleb128 0xc
	.long	0x22a
	.byte	0xa
	.byte	0x0
	.uleb128 0xe
	.ascii "Name\0"
	.byte	0x1
	.byte	0x5
	.long	0x244
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Name
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
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x2d
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x26e
	.long	0x165
	.ascii "main\0"
	.long	0x22d
	.ascii "DP_Table\0"
	.long	0x25a
	.ascii "Name\0"
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
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
