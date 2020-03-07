	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.comm	_DP, 4008004, 5
	.comm	_Buffer, 1001, 5
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.file 1 "C:/MyData/Google Cloud/ACM/11151 Longest Palindrome/main.c"
	.loc 1 8 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$32, %esp
	.cfi_offset 3, -12
	.loc 1 8 0
	call	___main
	.loc 1 11 0
	movl	$0, 28(%esp)
	jmp	L2
L3:
	.loc 1 13 0 discriminator 2
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	$_DP, %eax
	movl	$1, (%eax)
	.loc 1 11 0 discriminator 2
	incl	28(%esp)
L2:
	.loc 1 11 0 is_stmt 0 discriminator 1
	cmpl	$999, 28(%esp)
	jle	L3
	.loc 1 15 0 is_stmt 1
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 16 0
	call	_getchar
	.loc 1 17 0
	jmp	L4
L12:
LBB2:
	.loc 1 19 0
	movl	$_Buffer, (%esp)
	call	_gets
	.loc 1 20 0
	movl	$_Buffer, (%esp)
	call	_strlen
	movl	%eax, 20(%esp)
	.loc 1 21 0
	movl	$1, 24(%esp)
	jmp	L5
L11:
	.loc 1 23 0
	movl	24(%esp), %eax
	decl	%eax
	movl	%eax, 28(%esp)
	jmp	L6
L10:
	.loc 1 25 0
	movl	28(%esp), %eax
	addl	$_Buffer, %eax
	movb	(%eax), %dl
	movl	24(%esp), %eax
	addl	$_Buffer, %eax
	movb	(%eax), %al
	cmpb	%al, %dl
	jne	L7
	.loc 1 27 0
	movl	28(%esp), %eax
	leal	1(%eax), %edx
	movl	24(%esp), %eax
	leal	-1(%eax), %ebx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	movl	_DP(,%eax,4), %eax
	leal	2(%eax), %ecx
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	24(%esp), %edx
	addl	%edx, %eax
	movl	%ecx, _DP(,%eax,4)
	jmp	L8
L7:
	.loc 1 31 0
	movl	24(%esp), %eax
	leal	-1(%eax), %ebx
	movl	28(%esp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	leal	0(,%eax,4), %ecx
	addl	%ecx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	addl	%ebx, %eax
	movl	_DP(,%eax,4), %ecx
	movl	28(%esp), %eax
	leal	1(%eax), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	movl	24(%esp), %edx
	addl	%edx, %eax
	movl	_DP(,%eax,4), %eax
	movl	%ecx, %edx
	cmpl	%eax, %edx
	jge	L9
	movl	%eax, %edx
L9:
	movl	28(%esp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	leal	0(,%eax,4), %ebx
	addl	%ebx, %eax
	sall	$3, %eax
	addl	%ecx, %eax
	movl	24(%esp), %ecx
	addl	%ecx, %eax
	movl	%edx, _DP(,%eax,4)
L8:
	.loc 1 23 0
	decl	28(%esp)
L6:
	.loc 1 23 0 is_stmt 0 discriminator 1
	cmpl	$0, 28(%esp)
	jns	L10
	.loc 1 21 0 is_stmt 1
	incl	24(%esp)
L5:
	.loc 1 21 0 is_stmt 0 discriminator 1
	movl	24(%esp), %eax
	cmpl	20(%esp), %eax
	jl	L11
	.loc 1 35 0 is_stmt 1
	movl	20(%esp), %eax
	decl	%eax
	movl	_DP(,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
L4:
LBE2:
	.loc 1 17 0 discriminator 1
	movl	16(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 16(%esp)
	testb	%dl, %dl
	jne	L12
	.loc 1 37 0
	movl	$0, %eax
	.loc 1 38 0
	movl	-4(%ebp), %ebx
	leave
LCFI2:
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "<built-in>"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x288
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11151 Longest Palindrome\\main.c\0"
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11151 Longest Palindrome\0"
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
	.byte	0x81
	.long	0x159
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x15f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x159
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xba
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0xc2
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
	.long	0x15f
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x20c
	.uleb128 0x8
	.ascii "T\0"
	.byte	0x1
	.byte	0x9
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0xa
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x8
	.ascii "J\0"
	.byte	0x1
	.byte	0xa
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0x8
	.ascii "K\0"
	.byte	0x1
	.byte	0xa
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0x9
	.long	LBB2
	.long	LBE2
	.uleb128 0xa
	.byte	0x1
	.ascii "strlen\0"
	.byte	0x3
	.byte	0
	.byte	0x1
	.long	0x94
	.byte	0x1
	.uleb128 0xb
	.long	0x20c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x212
	.uleb128 0xc
	.long	0xba
	.uleb128 0xd
	.long	0x166
	.long	0x222
	.uleb128 0xe
	.byte	0
	.uleb128 0xf
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x217
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x15f
	.long	0x248
	.uleb128 0x10
	.long	0x248
	.word	0x3e8
	.uleb128 0x10
	.long	0x248
	.word	0x3e8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x11
	.ascii "DP\0"
	.byte	0x1
	.byte	0x4
	.long	0x230
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_DP
	.uleb128 0xd
	.long	0xba
	.long	0x276
	.uleb128 0x10
	.long	0x248
	.word	0x3e8
	.byte	0
	.uleb128 0x11
	.ascii "Buffer\0"
	.byte	0x1
	.byte	0x5
	.long	0x265
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Buffer
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LLST0:
	.long	LFB6-Ltext0
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
	.long	LCFI2-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI2-Ltext0
	.long	LFE6-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_gets;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
