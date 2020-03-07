	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\12\0"
LC1:
	.ascii "%d%d%d%d%d%d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/311 Packets/main.c"
	.loc 1 5 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	pushl	%ebx
LCFI3:
	subl	$76, %esp
LCFI4:
	.loc 1 5 0
	call	___main
	.loc 1 8 0
	jmp	L2
L35:
	.loc 1 10 0
	movl	36(%esp), %eax
	testl	%eax, %eax
	jne	L3
	movl	40(%esp), %eax
	testl	%eax, %eax
	jne	L3
	movl	44(%esp), %eax
	testl	%eax, %eax
	jne	L3
	movl	48(%esp), %eax
	testl	%eax, %eax
	jne	L3
	movl	52(%esp), %eax
	testl	%eax, %eax
	jne	L3
	movl	56(%esp), %eax
	testl	%eax, %eax
	je	L37
L3:
	.loc 1 14 0
	movl	56(%esp), %eax
	movl	%eax, 60(%esp)
	.loc 1 16 0
	movl	52(%esp), %eax
	addl	%eax, 60(%esp)
	.loc 1 17 0
	movl	36(%esp), %ecx
	movl	52(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	negl	%eax
	leal	(%ecx,%eax), %eax
	testl	%eax, %eax
	js	L5
	.loc 1 19 0
	movl	36(%esp), %ecx
	movl	52(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	negl	%eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 36(%esp)
	jmp	L6
L5:
	.loc 1 23 0
	movl	$0, 36(%esp)
L6:
	.loc 1 26 0
	movl	48(%esp), %eax
	addl	%eax, 60(%esp)
	.loc 1 27 0
	movl	40(%esp), %ecx
	movl	48(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	negl	%eax
	leal	(%ecx,%eax), %eax
	testl	%eax, %eax
	js	L7
	.loc 1 29 0
	movl	40(%esp), %ecx
	movl	48(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	negl	%eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 40(%esp)
	jmp	L8
L7:
	.loc 1 33 0
	movl	36(%esp), %ecx
	movl	40(%esp), %ebx
	movl	48(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	negl	%eax
	leal	(%ebx,%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	testl	%eax, %eax
	js	L9
	.loc 1 35 0
	movl	36(%esp), %ecx
	movl	40(%esp), %ebx
	movl	48(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	negl	%eax
	leal	(%ebx,%eax), %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 36(%esp)
	jmp	L10
L9:
	.loc 1 39 0
	movl	$0, 36(%esp)
L10:
	.loc 1 41 0
	movl	$0, 40(%esp)
L8:
	.loc 1 44 0
	movl	44(%esp), %eax
	andl	$3, %eax
	testl	%eax, %eax
	jne	L11
	.loc 1 46 0
	movl	44(%esp), %eax
	testl	%eax, %eax
	jns	L12
	addl	$3, %eax
L12:
	sarl	$2, %eax
	addl	%eax, 60(%esp)
	jmp	L13
L11:
	.loc 1 50 0
	movl	44(%esp), %eax
	testl	%eax, %eax
	jns	L14
	addl	$3, %eax
L14:
	sarl	$2, %eax
	addl	%eax, 60(%esp)
	.loc 1 51 0
	incl	60(%esp)
	.loc 1 52 0
	movl	44(%esp), %eax
	andl	$-2147483645, %eax
	testl	%eax, %eax
	jns	L15
	decl	%eax
	orl	$-4, %eax
	incl	%eax
L15:
	cmpl	$1, %eax
	jne	L16
	.loc 1 54 0
	movl	44(%esp), %eax
	decl	%eax
	movl	%eax, 44(%esp)
	.loc 1 55 0
	movl	40(%esp), %eax
	subl	$5, %eax
	testl	%eax, %eax
	js	L17
	.loc 1 57 0
	movl	40(%esp), %eax
	subl	$5, %eax
	movl	%eax, 40(%esp)
	jmp	L18
L17:
	.loc 1 61 0
	movl	$0, 40(%esp)
L18:
	.loc 1 64 0
	movl	36(%esp), %eax
	subl	$7, %eax
	testl	%eax, %eax
	js	L19
	.loc 1 66 0
	movl	36(%esp), %eax
	subl	$7, %eax
	movl	%eax, 36(%esp)
	.loc 1 70 0
	jmp	L13
L19:
	movl	$0, 36(%esp)
	jmp	L13
L16:
	.loc 1 73 0
	movl	44(%esp), %eax
	andl	$-2147483645, %eax
	testl	%eax, %eax
	jns	L21
	decl	%eax
	orl	$-4, %eax
	incl	%eax
L21:
	cmpl	$2, %eax
	jne	L22
	.loc 1 75 0
	movl	44(%esp), %eax
	subl	$2, %eax
	movl	%eax, 44(%esp)
	.loc 1 76 0
	movl	40(%esp), %eax
	subl	$3, %eax
	testl	%eax, %eax
	js	L23
	.loc 1 78 0
	movl	40(%esp), %eax
	subl	$3, %eax
	movl	%eax, 40(%esp)
	jmp	L24
L23:
	.loc 1 82 0
	movl	$0, 40(%esp)
L24:
	.loc 1 85 0
	movl	36(%esp), %eax
	subl	$6, %eax
	testl	%eax, %eax
	js	L25
	.loc 1 87 0
	movl	36(%esp), %eax
	subl	$6, %eax
	movl	%eax, 36(%esp)
	.loc 1 91 0
	jmp	L13
L25:
	movl	$0, 36(%esp)
	jmp	L13
L22:
	.loc 1 94 0
	movl	44(%esp), %eax
	andl	$-2147483645, %eax
	testl	%eax, %eax
	jns	L27
	decl	%eax
	orl	$-4, %eax
	incl	%eax
L27:
	cmpl	$3, %eax
	jne	L13
	.loc 1 96 0
	movl	44(%esp), %eax
	subl	$3, %eax
	movl	%eax, 44(%esp)
	.loc 1 97 0
	movl	40(%esp), %eax
	decl	%eax
	testl	%eax, %eax
	js	L28
	.loc 1 99 0
	movl	40(%esp), %eax
	decl	%eax
	movl	%eax, 40(%esp)
	jmp	L29
L28:
	.loc 1 103 0
	movl	$0, 40(%esp)
L29:
	.loc 1 106 0
	movl	36(%esp), %eax
	subl	$5, %eax
	testl	%eax, %eax
	js	L30
	.loc 1 108 0
	movl	36(%esp), %eax
	subl	$5, %eax
	movl	%eax, 36(%esp)
	jmp	L13
L30:
	.loc 1 112 0
	movl	$0, 36(%esp)
L13:
	.loc 1 117 0
	movl	40(%esp), %eax
	movl	$9, %edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	testl	%eax, %eax
	jne	L31
	.loc 1 119 0
	movl	40(%esp), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, 60(%esp)
	jmp	L32
L31:
	.loc 1 123 0
	movl	40(%esp), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, 60(%esp)
	.loc 1 124 0
	incl	60(%esp)
	.loc 1 125 0
	movl	36(%esp), %ebx
	movl	40(%esp), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	%ecx, %edx
	subl	%eax, %edx
	leal	-9(%edx), %eax
	sall	$2, %eax
	leal	(%ebx,%eax), %eax
	testl	%eax, %eax
	js	L33
	.loc 1 127 0
	movl	36(%esp), %ecx
	movl	40(%esp), %eax
	movl	$9, %edx
	movl	%edx, %ebx
	cltd
	idivl	%ebx
	movl	%edx, %eax
	subl	$9, %eax
	sall	$2, %eax
	leal	(%ecx,%eax), %eax
	movl	%eax, 36(%esp)
	jmp	L32
L33:
	.loc 1 131 0
	movl	$0, 36(%esp)
L32:
	.loc 1 135 0
	movl	36(%esp), %eax
	testl	%eax, %eax
	je	L34
	.loc 1 136 0
	movl	36(%esp), %eax
	leal	-1(%eax), %ecx
	movl	$954437177, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	addl	%eax, 60(%esp)
L34:
	.loc 1 138 0
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
L2:
	.loc 1 8 0
	leal	32(%esp), %eax
	addl	$24, %eax
	movl	%eax, 24(%esp)
	leal	32(%esp), %eax
	addl	$20, %eax
	movl	%eax, 20(%esp)
	leal	32(%esp), %eax
	addl	$16, %eax
	movl	%eax, 16(%esp)
	leal	32(%esp), %eax
	addl	$12, %eax
	movl	%eax, 12(%esp)
	leal	32(%esp), %eax
	addl	$8, %eax
	movl	%eax, 8(%esp)
	leal	32(%esp), %eax
	addl	$4, %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	cmpl	$-1, %eax
	jne	L35
	jmp	L4
L37:
	.loc 1 12 0
	nop
L4:
	.loc 1 140 0
	movl	$0, %eax
	.loc 1 141 0
	addl	$76, %esp
	popl	%ebx
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
	.long	LCFI4-LCFI1
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
	.long	0x1bf
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\311 Packets\\main.c\0"
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
	.long	0x118
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x118
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x79
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x81
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
	.byte	0x4
	.long	0x11e
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x196
	.uleb128 0x8
	.ascii "Item\0"
	.byte	0x1
	.byte	0x6
	.long	0x196
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x8
	.ascii "Box\0"
	.byte	0x1
	.byte	0x7
	.long	0x11e
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.byte	0x0
	.uleb128 0x9
	.long	0x11e
	.long	0x1a6
	.uleb128 0xa
	.long	0x1a6
	.byte	0x6
	.byte	0x0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.uleb128 0x9
	.long	0x125
	.long	0x1b4
	.uleb128 0xc
	.byte	0x0
	.uleb128 0xd
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1a9
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x17
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x1c3
	.long	0x15b
	.ascii "main\0"
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
