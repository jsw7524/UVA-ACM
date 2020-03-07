	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_Table, 1000016	 # 1000001
	.def	___umoddi3;	.scl	2;	.type	32;	.endef
.globl _GCD
	.def	_GCD;	.scl	2;	.type	32;	.endef
_GCD:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/106 Fermat vs. Pythagoras/main.c"
	.loc 1 8 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$36, %esp
LCFI3:
	movl	8(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -12(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 9 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___umoddi3
	orl	%edx, %eax
	testl	%eax, %eax
	jne	L2
	.loc 1 11 0
	movl	-24(%ebp), %eax
	jmp	L3
L2:
	.loc 1 13 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	-24(%ebp), %ecx
	movl	-20(%ebp), %ebx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	___umoddi3
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GCD
L3:
	.loc 1 14 0
	addl	$36, %esp
	popl	%ebx
	leave
	ret
LFE7:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d %d\12\0"
LC1:
	.ascii "%d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB8:
	.loc 1 17 0
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	andl	$-16, %esp
LCFI6:
	pushl	%ebx
LCFI7:
	subl	$76, %esp
LCFI8:
	.loc 1 17 0
	call	___main
	.loc 1 20 0
	jmp	L6
L18:
	.loc 1 22 0
	movl	20(%esp), %eax
	movl	%eax, 60(%esp)
	.loc 1 23 0
	movl	$0, 44(%esp)
	.loc 1 24 0
	movl	60(%esp), %eax
	incl	%eax
	movl	%eax, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Table, (%esp)
	call	_memset
	.loc 1 25 0
	movl	$1, 24(%esp)
	jmp	L7
L14:
	.loc 1 27 0
	movl	24(%esp), %eax
	incl	%eax
	movl	%eax, 28(%esp)
	.loc 1 28 0
	movl	24(%esp), %eax
	movl	%eax, %edx
	imull	24(%esp), %edx
	movl	28(%esp), %eax
	imull	28(%esp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 32(%esp)
	.loc 1 29 0
	movl	28(%esp), %eax
	movl	%eax, %edx
	imull	28(%esp), %edx
	movl	24(%esp), %eax
	imull	24(%esp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 36(%esp)
	.loc 1 30 0
	movl	24(%esp), %eax
	sall	%eax
	imull	28(%esp), %eax
	movl	%eax, 40(%esp)
	.loc 1 31 0
	jmp	L8
L13:
	.loc 1 33 0
	movl	28(%esp), %eax
	movl	%eax, %ecx
	movl	%eax, %ebx
	sarl	$31, %ebx
	movl	24(%esp), %eax
	cltd
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_GCD
	cmpl	$1, %eax
	jne	L9
	.loc 1 35 0
	incl	44(%esp)
	.loc 1 36 0
	movl	$1, 48(%esp)
	jmp	L10
L11:
	.loc 1 38 0
	movl	48(%esp), %eax
	imull	32(%esp), %eax
	movb	$1, _Table(%eax)
	.loc 1 39 0
	movl	48(%esp), %eax
	imull	36(%esp), %eax
	movb	$1, _Table(%eax)
	.loc 1 40 0
	movl	48(%esp), %eax
	imull	40(%esp), %eax
	movb	$1, _Table(%eax)
	.loc 1 36 0
	incl	48(%esp)
L10:
	movl	48(%esp), %eax
	imull	32(%esp), %eax
	cmpl	60(%esp), %eax
	jg	L9
	movl	48(%esp), %eax
	imull	36(%esp), %eax
	cmpl	60(%esp), %eax
	jg	L9
	movl	48(%esp), %eax
	imull	40(%esp), %eax
	cmpl	60(%esp), %eax
	jle	L11
L9:
	.loc 1 43 0
	addl	$2, 28(%esp)
	.loc 1 44 0
	movl	24(%esp), %eax
	movl	%eax, %edx
	imull	24(%esp), %edx
	movl	28(%esp), %eax
	imull	28(%esp), %eax
	leal	(%edx,%eax), %eax
	movl	%eax, 32(%esp)
	.loc 1 45 0
	movl	28(%esp), %eax
	movl	%eax, %edx
	imull	28(%esp), %edx
	movl	24(%esp), %eax
	imull	24(%esp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, 36(%esp)
	.loc 1 46 0
	movl	24(%esp), %eax
	sall	%eax
	imull	28(%esp), %eax
	movl	%eax, 40(%esp)
L8:
	.loc 1 31 0
	movl	32(%esp), %eax
	cmpl	60(%esp), %eax
	jg	L12
	movl	40(%esp), %eax
	cmpl	60(%esp), %eax
	jle	L13
L12:
	.loc 1 25 0
	incl	24(%esp)
L7:
	cmpl	$1000, 24(%esp)
	jle	L14
	.loc 1 49 0
	movl	$0, 52(%esp)
	.loc 1 50 0
	movl	$1, 48(%esp)
	jmp	L15
L17:
	.loc 1 52 0
	movl	48(%esp), %eax
	movb	_Table(%eax), %al
	testb	%al, %al
	jne	L16
	.loc 1 54 0
	incl	52(%esp)
L16:
	.loc 1 50 0
	incl	48(%esp)
L15:
	movl	48(%esp), %eax
	cmpl	60(%esp), %eax
	jle	L17
	.loc 1 57 0
	movl	52(%esp), %eax
	movl	%eax, 8(%esp)
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
L6:
	.loc 1 20 0
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	cmpl	$-1, %eax
	jne	L18
	.loc 1 59 0
	movl	$0, %eax
	.loc 1 60 0
	addl	$76, %esp
	popl	%ebx
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
	.byte	0x4
	.long	LCFI8-LCFI5
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
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x2ac
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\106 Fermat vs. Pythagoras\\main.c\0"
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
	.long	0x126
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x12c
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x87
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8f
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
	.ascii "GCD\0"
	.byte	0x1
	.byte	0x7
	.byte	0x1
	.long	0x12c
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x19f
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x1
	.byte	0x7
	.long	0x19f
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x1
	.byte	0x7
	.long	0x19f
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.byte	0x0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x9
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x10
	.long	0x12c
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x25b
	.uleb128 0xa
	.ascii "M\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0xa
	.ascii "N\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xa
	.ascii "I\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0xa
	.ascii "J\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0xa
	.ascii "K\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0xa
	.ascii "P\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0xa
	.ascii "L\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0xa
	.ascii "H\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 52
	.uleb128 0xa
	.ascii "T\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0xa
	.ascii "Z\0"
	.byte	0x1
	.byte	0x12
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0xa
	.ascii "U\0"
	.byte	0x1
	.byte	0x13
	.long	0x12c
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.byte	0x0
	.uleb128 0xb
	.long	0x133
	.long	0x266
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x25b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x28a
	.long	0x287
	.uleb128 0xe
	.long	0x287
	.long	0xf4240
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x10
	.ascii "Table\0"
	.byte	0x1
	.byte	0x5
	.long	0x274
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
	.uleb128 0x8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x29
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x2b0
	.long	0x169
	.ascii "GCD\0"
	.long	0x1b9
	.ascii "main\0"
	.long	0x29b
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
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
