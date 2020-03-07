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
	.ascii "%d\0"
LC1:
	.ascii "%lf%lf\0"
LC4:
	.ascii "%.2f %.2f\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/12575 Sin Cos Problem/main.c"
	.loc 1 8 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	pushl	%ebx
LCFI3:
	subl	$108, %esp
LCFI4:
	.loc 1 8 0
	call	___main
	.loc 1 11 0
	leal	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 12 0
	jmp	L2
L4:
	.loc 1 14 0
	leal	56(%esp), %eax
	movl	%eax, 8(%esp)
	leal	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 15 0
	movl	56(%esp), %ecx
	movl	60(%esp), %ebx
	movl	64(%esp), %eax
	movl	68(%esp), %edx
	movl	%ecx, 8(%esp)
	movl	%ebx, 12(%esp)
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_atan2
	fstpl	80(%esp)
	.loc 1 16 0
	fldl	80(%esp)
	fldz
	fucompp
	fnstsw	%ax
	testb	$69, %ah
	sete	%al
	testb	%al, %al
	je	L3
	fldl	80(%esp)
	fldl	LC3
	faddp	%st, %st(1)
	fstpl	80(%esp)
L3:
	.loc 1 17 0
	movl	80(%esp), %eax
	movl	84(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_sin
	fldl	64(%esp)
	fmulp	%st, %st(1)
	fstpl	40(%esp)
	movl	80(%esp), %eax
	movl	84(%esp), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	call	_cos
	fldl	56(%esp)
	fmulp	%st, %st(1)
	faddl	40(%esp)
	fstpl	88(%esp)
	.loc 1 18 0
	movl	88(%esp), %eax
	movl	92(%esp), %edx
	movl	%eax, 12(%esp)
	movl	%edx, 16(%esp)
	movl	80(%esp), %eax
	movl	84(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC4, (%esp)
	call	_printf
L2:
	.loc 1 12 0
	movl	76(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 76(%esp)
	testb	%dl, %dl
	jne	L4
	.loc 1 20 0
	movl	$0, %eax
	.loc 1 21 0
	addl	$108, %esp
	popl	%ebx
	leave
	ret
LFE7:
	.section .rdata,"dr"
	.align 8
LC3:
	.long	1413754136
	.long	1075388923
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
	.long	0x1fc
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\12575 Sin Cos Problem\\main.c\0"
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x7
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x7
	.long	0x128
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1e6
	.uleb128 0x8
	.ascii "T\0"
	.byte	0x1
	.byte	0x9
	.long	0x128
	.byte	0x3
	.byte	0x74
	.sleb128 76
	.uleb128 0x8
	.ascii "Theta\0"
	.byte	0x1
	.byte	0xa
	.long	0x165
	.byte	0x3
	.byte	0x74
	.sleb128 80
	.uleb128 0x8
	.ascii "Maximum\0"
	.byte	0x1
	.byte	0xa
	.long	0x165
	.byte	0x3
	.byte	0x74
	.sleb128 88
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x1
	.byte	0xa
	.long	0x165
	.byte	0x3
	.byte	0x74
	.sleb128 64
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x1
	.byte	0xa
	.long	0x165
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.byte	0x0
	.uleb128 0x9
	.long	0x12f
	.long	0x1f1
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xb
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1e6
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
	.long	0x200
	.long	0x17e
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
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_atan2;	.scl	2;	.type	32;	.endef
	.def	_sin;	.scl	2;	.type	32;	.endef
	.def	_cos;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
