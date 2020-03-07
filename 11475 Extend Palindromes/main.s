	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.comm	_P, 100001, 5
	.comm	_R, 100001, 5
	.comm	_Pi, 400004, 5
	.globl	_Preprocessing
	.def	_Preprocessing;	.scl	2;	.type	32;	.endef
_Preprocessing:
LFB6:
	.file 1 "C:/MyData/Google Cloud/ACM/11475 Extend Palindromes/main.c"
	.loc 1 9 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 11 0
	movl	$0, -8(%ebp)
	.loc 1 12 0
	movl	$2, -4(%ebp)
	jmp	L2
L5:
	.loc 1 14 0 discriminator 1
	movl	-8(%ebp), %eax
	movl	_Pi(,%eax,4), %eax
	movl	%eax, -8(%ebp)
L3:
	cmpl	$0, -8(%ebp)
	jle	L4
	.loc 1 14 0 is_stmt 0 discriminator 2
	movl	-8(%ebp), %eax
	incl	%eax
	movb	_P(%eax), %dl
	movl	-4(%ebp), %eax
	addl	$_P, %eax
	movb	(%eax), %al
	cmpb	%al, %dl
	jne	L5
L4:
	.loc 1 15 0 is_stmt 1
	movl	-8(%ebp), %eax
	incl	%eax
	movb	_P(%eax), %dl
	movl	-4(%ebp), %eax
	addl	$_P, %eax
	movb	(%eax), %al
	cmpb	%al, %dl
	jne	L6
	.loc 1 15 0 is_stmt 0 discriminator 1
	incl	-8(%ebp)
L6:
	.loc 1 16 0 is_stmt 1
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, _Pi(,%eax,4)
	.loc 1 12 0
	incl	-4(%ebp)
L2:
	.loc 1 12 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L3
	.loc 1 18 0 is_stmt 1
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.globl	_Reverse
	.def	_Reverse;	.scl	2;	.type	32;	.endef
_Reverse:
LFB7:
	.loc 1 21 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 23 0
	movl	$1, -4(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	L9
L10:
	.loc 1 25 0 discriminator 2
	movl	-8(%ebp), %eax
	addl	$_R, %eax
	movb	(%eax), %al
	movl	-4(%ebp), %edx
	addl	$_P, %edx
	movb	%al, (%edx)
	.loc 1 23 0 discriminator 2
	incl	-4(%ebp)
	decl	-8(%ebp)
L9:
	.loc 1 23 0 is_stmt 0 discriminator 1
	movl	-4(%ebp), %eax
	cmpl	8(%ebp), %eax
	jle	L10
	.loc 1 27 0 is_stmt 1
	movl	-4(%ebp), %eax
	addl	$_P, %eax
	movb	$0, (%eax)
	.loc 1 28 0
	leave
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB8:
	.loc 1 31 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	.loc 1 31 0
	call	___main
	.loc 1 34 0
	movb	$35, _P
	.loc 1 35 0
	movb	$35, _R
	.loc 1 36 0
	jmp	L12
L21:
LBB2:
	.loc 1 38 0
	movl	$_R, (%esp)
	call	_strlen
	decl	%eax
	movl	%eax, 20(%esp)
	.loc 1 39 0
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_Reverse
	.loc 1 40 0
	movl	20(%esp), %eax
	movl	%eax, (%esp)
	call	_Preprocessing
	.loc 1 41 0
	movl	$1, 28(%esp)
	movl	$0, 24(%esp)
	jmp	L13
L16:
	.loc 1 43 0 discriminator 1
	movl	24(%esp), %eax
	movl	_Pi(,%eax,4), %eax
	movl	%eax, 24(%esp)
L14:
	cmpl	$0, 24(%esp)
	jle	L15
	.loc 1 43 0 is_stmt 0 discriminator 2
	movl	28(%esp), %eax
	addl	$_R, %eax
	movb	(%eax), %dl
	movl	24(%esp), %eax
	incl	%eax
	movb	_P(%eax), %al
	cmpb	%al, %dl
	jne	L16
L15:
	.loc 1 44 0 is_stmt 1
	movl	28(%esp), %eax
	addl	$_R, %eax
	movb	(%eax), %dl
	movl	24(%esp), %eax
	incl	%eax
	movb	_P(%eax), %al
	cmpb	%al, %dl
	jne	L17
	.loc 1 44 0 is_stmt 0 discriminator 1
	incl	24(%esp)
L17:
	.loc 1 41 0 is_stmt 1
	incl	28(%esp)
L13:
	.loc 1 41 0 is_stmt 0 discriminator 1
	movl	28(%esp), %eax
	cmpl	20(%esp), %eax
	jl	L14
	.loc 1 46 0 is_stmt 1
	movl	$_R+1, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	.loc 1 47 0
	movl	24(%esp), %eax
	notl	%eax
	addl	%eax, 28(%esp)
	jmp	L19
L20:
	.loc 1 49 0 discriminator 2
	movl	28(%esp), %eax
	addl	$_R, %eax
	movb	(%eax), %al
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_putchar
	.loc 1 47 0 discriminator 2
	decl	28(%esp)
L19:
	.loc 1 47 0 is_stmt 0 discriminator 1
	cmpl	$0, 28(%esp)
	jg	L20
	.loc 1 51 0 is_stmt 1
	movl	$10, (%esp)
	call	_putchar
L12:
LBE2:
	.loc 1 36 0 discriminator 1
	movl	$_R+1, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	cmpl	$-1, %eax
	jne	L21
	.loc 1 53 0
	movl	$0, %eax
	.loc 1 54 0
	leave
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.file 3 "<built-in>"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x324
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11475 Extend Palindromes\\main.c\0"
	.ascii "C:\\MyData\\Google Cloud\\ACM\\11475 Extend Palindromes\0"
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
	.ascii "Preprocessing\0"
	.byte	0x1
	.byte	0x8
	.byte	0x1
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x1ee
	.uleb128 0x8
	.ascii "L\0"
	.byte	0x1
	.byte	0x8
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0xa
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.ascii "J\0"
	.byte	0x1
	.byte	0xa
	.long	0x15f
	.uleb128 0x9
	.ascii "K\0"
	.byte	0x1
	.byte	0xa
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.ascii "Reverse\0"
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x231
	.uleb128 0x8
	.ascii "L\0"
	.byte	0x1
	.byte	0x14
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0x16
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x9
	.ascii "J\0"
	.byte	0x1
	.byte	0x16
	.long	0x15f
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x1e
	.long	0x15f
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x2a0
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0x20
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x9
	.ascii "Q\0"
	.byte	0x1
	.byte	0x20
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0xa
	.ascii "K\0"
	.byte	0x1
	.byte	0x20
	.long	0x15f
	.uleb128 0x9
	.ascii "Len\0"
	.byte	0x1
	.byte	0x21
	.long	0x15f
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0xc
	.long	LBB2
	.long	LBE2
	.uleb128 0xd
	.byte	0x1
	.ascii "strlen\0"
	.byte	0x3
	.byte	0
	.byte	0x1
	.long	0x94
	.byte	0x1
	.uleb128 0xe
	.long	0x2a0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x2a6
	.uleb128 0xf
	.long	0xba
	.uleb128 0x10
	.long	0x166
	.long	0x2b6
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x2ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0xba
	.long	0x2d7
	.uleb128 0x13
	.long	0x2d7
	.long	0x186a0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x14
	.ascii "P\0"
	.byte	0x1
	.byte	0x4
	.long	0x2c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_P
	.uleb128 0x14
	.ascii "R\0"
	.byte	0x1
	.byte	0x5
	.long	0x2c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_R
	.uleb128 0x10
	.long	0x15f
	.long	0x316
	.uleb128 0x13
	.long	0x2d7
	.long	0x186a0
	.byte	0
	.uleb128 0x14
	.ascii "Pi\0"
	.byte	0x1
	.byte	0x6
	.long	0x303
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Pi
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0xa
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
	.byte	0
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
LLST1:
	.long	LFB7-Ltext0
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
	.long	LCFI5-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI5-Ltext0
	.long	LFE7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST2:
	.long	LFB8-Ltext0
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
	.long	LCFI8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI8-Ltext0
	.long	LFE8-Ltext0
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
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
