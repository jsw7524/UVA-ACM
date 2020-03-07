	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_MyGraph, 10208	 # 10201
	.comm	_Temp, 10208	 # 10201
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii " %d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/280 Vertex/main.c"
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
	subl	$84, %esp
LCFI6:
	.loc 1 8 0
	call	___main
L25:
	.loc 1 12 0
	leal	68(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 13 0
	movl	68(%esp), %eax
	testl	%eax, %eax
	jne	L2
	.loc 1 78 0
	movl	$0, %eax
	.loc 1 79 0
	addl	$84, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
L2:
	.loc 1 16 0
	movl	$0, 64(%esp)
	jmp	L3
L6:
	.loc 1 18 0
	movl	$0, 60(%esp)
	jmp	L4
L5:
	.loc 1 20 0
	movl	64(%esp), %edx
	movl	60(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_MyGraph, %eax
	movb	$-1, (%eax)
	.loc 1 18 0
	movl	60(%esp), %eax
	incl	%eax
	movl	%eax, 60(%esp)
L4:
	movl	60(%esp), %eax
	cmpl	$100, %eax
	jle	L5
	.loc 1 16 0
	movl	64(%esp), %eax
	incl	%eax
	movl	%eax, 64(%esp)
L3:
	movl	64(%esp), %eax
	cmpl	$100, %eax
	jle	L6
	jmp	L10
L27:
	.loc 1 37 0
	nop
L10:
	.loc 1 26 0
	leal	64(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 27 0
	movl	64(%esp), %eax
	testl	%eax, %eax
	jne	L7
	.loc 1 40 0
	movl	$1, 56(%esp)
	jmp	L8
L7:
	.loc 1 32 0
	leal	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 33 0
	movl	60(%esp), %eax
	testl	%eax, %eax
	je	L27
L9:
	.loc 1 35 0
	movl	64(%esp), %edx
	movl	60(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_MyGraph, %eax
	movb	$1, (%eax)
	.loc 1 36 0
	jmp	L7
L16:
	.loc 1 42 0
	movl	$1, 64(%esp)
	jmp	L11
L15:
	.loc 1 44 0
	movl	$1, 60(%esp)
	jmp	L12
L14:
	.loc 1 46 0
	movl	64(%esp), %edx
	movl	60(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	movzbl	%al, %ecx
	movl	64(%esp), %edx
	movl	56(%esp), %ebx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %esi
	addl	%esi, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	movzbl	%al, %ebx
	movl	56(%esp), %edx
	movl	60(%esp), %esi
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %edi
	addl	%edi, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%esi, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	movzbl	%al, %eax
	leal	(%ebx,%eax), %eax
	cmpl	%eax, %ecx
	jle	L13
	.loc 1 48 0
	movl	64(%esp), %ecx
	movl	60(%esp), %edi
	movl	64(%esp), %edx
	movl	56(%esp), %ebx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %esi
	addl	%esi, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	movb	%al, 31(%esp)
	movl	56(%esp), %edx
	movl	60(%esp), %esi
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	movl	%ebx, 44(%esp)
	addl	44(%esp), %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%esi, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	movb	31(%esp), %dl
	addl	%eax, %edx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	addl	%edi, %eax
	addl	$_MyGraph, %eax
	movb	%dl, (%eax)
L13:
	.loc 1 44 0
	movl	60(%esp), %eax
	incl	%eax
	movl	%eax, 60(%esp)
L12:
	movl	60(%esp), %edx
	movl	68(%esp), %eax
	cmpl	%eax, %edx
	jle	L14
	.loc 1 42 0
	movl	64(%esp), %eax
	incl	%eax
	movl	%eax, 64(%esp)
L11:
	movl	64(%esp), %edx
	movl	68(%esp), %eax
	cmpl	%eax, %edx
	jle	L15
	.loc 1 40 0
	movl	56(%esp), %eax
	incl	%eax
	movl	%eax, 56(%esp)
L8:
	movl	56(%esp), %edx
	movl	68(%esp), %eax
	cmpl	%eax, %edx
	jle	L16
	.loc 1 54 0
	leal	56(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 56 0
	movl	$1, 64(%esp)
	jmp	L17
L24:
	.loc 1 58 0
	movl	$0, 76(%esp)
	.loc 1 59 0
	leal	60(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 60 0
	movl	$1, 72(%esp)
	jmp	L18
L20:
	.loc 1 62 0
	movl	60(%esp), %edx
	movl	72(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	cmpb	$-1, %al
	jne	L19
	.loc 1 64 0
	incl	76(%esp)
L19:
	.loc 1 60 0
	incl	72(%esp)
L18:
	movl	68(%esp), %eax
	cmpl	%eax, 72(%esp)
	jle	L20
	.loc 1 67 0
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	.loc 1 68 0
	movl	$1, 72(%esp)
	jmp	L21
L23:
	.loc 1 70 0
	movl	60(%esp), %edx
	movl	72(%esp), %ecx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_MyGraph, %eax
	movb	(%eax), %al
	cmpb	$-1, %al
	jne	L22
	.loc 1 72 0
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
L22:
	.loc 1 68 0
	incl	72(%esp)
L21:
	movl	68(%esp), %eax
	cmpl	%eax, 72(%esp)
	jle	L23
	.loc 1 75 0
	movl	$10, (%esp)
	call	_putchar
	.loc 1 56 0
	movl	64(%esp), %eax
	incl	%eax
	movl	%eax, 64(%esp)
L17:
	movl	64(%esp), %edx
	movl	56(%esp), %eax
	cmpl	%eax, %edx
	jle	L24
	.loc 1 77 0
	jmp	L25
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
	.long	0x22d
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\280 Vertex\\main.c\0"
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
	.long	0x117
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x11d
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x117
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x78
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x80
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
	.long	0x11d
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1c4
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0x9
	.long	0x11d
	.byte	0x3
	.byte	0x74
	.sleb128 68
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0x9
	.long	0x11d
	.byte	0x3
	.byte	0x74
	.sleb128 64
	.uleb128 0x8
	.ascii "J\0"
	.byte	0x1
	.byte	0x9
	.long	0x11d
	.byte	0x2
	.byte	0x74
	.sleb128 60
	.uleb128 0x8
	.ascii "K\0"
	.byte	0x1
	.byte	0x9
	.long	0x11d
	.byte	0x2
	.byte	0x74
	.sleb128 56
	.uleb128 0x8
	.ascii "L\0"
	.byte	0x1
	.byte	0x9
	.long	0x11d
	.byte	0x3
	.byte	0x74
	.sleb128 72
	.uleb128 0x8
	.ascii "C\0"
	.byte	0x1
	.byte	0x9
	.long	0x11d
	.byte	0x3
	.byte	0x74
	.sleb128 76
	.byte	0x0
	.uleb128 0x9
	.long	0x124
	.long	0x1cf
	.uleb128 0xa
	.byte	0x0
	.uleb128 0xb
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1c4
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x1f6
	.long	0x1f3
	.uleb128 0xc
	.long	0x1f3
	.byte	0x64
	.uleb128 0xc
	.long	0x1f3
	.byte	0x64
	.byte	0x0
	.uleb128 0xd
	.byte	0x4
	.byte	0x7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0xe
	.ascii "MyGraph\0"
	.byte	0x1
	.byte	0x4
	.long	0x1dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyGraph
	.uleb128 0xe
	.ascii "Temp\0"
	.byte	0x1
	.byte	0x5
	.long	0x1dd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Temp
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
	.long	0x2c
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x231
	.long	0x15a
	.ascii "main\0"
	.long	0x207
	.ascii "MyGraph\0"
	.long	0x21d
	.ascii "Temp\0"
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
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
