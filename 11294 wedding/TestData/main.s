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
	.ascii "w\0"
LC1:
	.ascii "MyTest.txt\0"
LC2:
	.ascii "%d %d\12\0"
LC3:
	.ascii "%d%c %d%c\12\0"
LC4:
	.ascii "0 0\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/11294 wedding/TestData/main.c"
	.loc 1 5 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	pushl	%esi
LCFI3:
	pushl	%ebx
LCFI4:
	subl	$72, %esp
LCFI5:
	.loc 1 5 0
	call	___main
	.loc 1 6 0
	movl	$LC0, 4(%esp)
	movl	$LC1, (%esp)
	call	_fopen
	movl	%eax, 40(%esp)
	.loc 1 8 0
	movl	$0, (%esp)
	call	_time
	movl	%eax, (%esp)
	call	_srand
	.loc 1 9 0
	call	_rand
	movl	$30, %edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	incl	%eax
	movl	%eax, 44(%esp)
	.loc 1 10 0
	call	_rand
	movl	44(%esp), %edx
	imull	44(%esp), %edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, 48(%esp)
	.loc 1 11 0
	movl	48(%esp), %eax
	movl	%eax, 12(%esp)
	movl	44(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC2, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	.loc 1 12 0
	movl	$0, 52(%esp)
	jmp	L2
L9:
	.loc 1 14 0
	call	_rand
	cltd
	idivl	44(%esp)
	movl	%edx, 56(%esp)
	.loc 1 16 0
	call	_rand
	andl	$-2147483647, %eax
	testl	%eax, %eax
	jns	L3
	decl	%eax
	orl	$-2, %eax
	incl	%eax
L3:
	.loc 1 15 0
	cmpl	$1, %eax
	jne	L4
	movl	$104, %ebx
	jmp	L5
L4:
	movl	$119, %ebx
L5:
	.loc 1 16 0
	movl	56(%esp), %eax
	leal	1(%eax), %esi
	call	_rand
	movl	44(%esp), %edx
	decl	%edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	leal	(%esi,%eax), %eax
	.loc 1 15 0
	cltd
	idivl	44(%esp)
	movl	%edx, %esi
	call	_rand
	andl	$-2147483647, %eax
	testl	%eax, %eax
	jns	L6
	decl	%eax
	orl	$-2, %eax
	incl	%eax
L6:
	cmpl	$1, %eax
	jne	L7
	movl	$104, %eax
	jmp	L8
L7:
	movl	$119, %eax
L8:
	movl	%ebx, 20(%esp)
	movl	%esi, 16(%esp)
	movl	%eax, 12(%esp)
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC3, 4(%esp)
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	.loc 1 12 0
	incl	52(%esp)
L2:
	movl	52(%esp), %eax
	cmpl	48(%esp), %eax
	jl	L9
	.loc 1 18 0
	movl	40(%esp), %eax
	movl	%eax, 12(%esp)
	movl	$3, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC4, (%esp)
	call	_fwrite
	.loc 1 19 0
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_fclose
	.loc 1 20 0
	movl	$0, %eax
	.loc 1 21 0
	addl	$72, %esp
	popl	%ebx
	popl	%esi
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
	.long	LCFI5-LCFI1
	.byte	0x10
	.byte	0x3
	.uleb128 0x7
	.byte	0x55
	.byte	0x9
	.byte	0xf0
	.byte	0x1a
	.byte	0x9
	.byte	0xf8
	.byte	0x22
	.byte	0x10
	.byte	0x6
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
	.long	0x1ed
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11294 wedding\\TestData\\main.c\0"
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
	.byte	0x4
	.long	0x129
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1d1
	.uleb128 0x8
	.ascii "MyFile\0"
	.byte	0x1
	.byte	0x6
	.long	0x1d1
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0x7
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0x8
	.ascii "C\0"
	.byte	0x1
	.byte	0x7
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0x7
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 52
	.uleb128 0x8
	.ascii "J\0"
	.byte	0x1
	.byte	0x7
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0x8
	.ascii "K\0"
	.byte	0x1
	.byte	0x7
	.long	0x129
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x130
	.uleb128 0x9
	.long	0x130
	.long	0x1e2
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xb
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1d7
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
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x17
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x1f1
	.long	0x166
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
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_time;	.scl	2;	.type	32;	.endef
	.def	_srand;	.scl	2;	.type	32;	.endef
	.def	_rand;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
