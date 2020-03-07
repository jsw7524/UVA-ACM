	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_Answer, 256	 # 256
	.comm	_Reply, 256	 # 256
	.comm	_AnswerAlphabet, 32	 # 26
	.comm	_ReplyAlphabet, 32	 # 26
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%s%s\0"
LC2:
	.ascii "Round %d\12\0"
LC3:
	.ascii "You lose.\0"
LC4:
	.ascii "You win.\0"
LC5:
	.ascii "You chickened out.\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/489 Hangman Judge/main.c"
	.loc 1 9 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	andl	$-16, %esp
LCFI2:
	pushl	%ebx
LCFI3:
	subl	$44, %esp
LCFI4:
	.loc 1 9 0
	call	___main
L2:
	.loc 1 16 0
	leal	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 17 0
	movl	16(%esp), %eax
	cmpl	$-1, %eax
	jne	L3
	.loc 1 64 0
	movl	$0, %eax
	.loc 1 65 0
	addl	$44, %esp
	popl	%ebx
	leave
	ret
L3:
	.loc 1 19 0
	movl	$_Reply, 8(%esp)
	movl	$_Answer, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 20 0
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	.loc 1 21 0
	movl	$0, 20(%esp)
	.loc 1 22 0
	movl	$0, 28(%esp)
	.loc 1 24 0
	movl	$0, 24(%esp)
	jmp	L4
L5:
	.loc 1 26 0
	movl	24(%esp), %eax
	movb	$0, _AnswerAlphabet(%eax)
	.loc 1 27 0
	movl	24(%esp), %eax
	movb	$0, _ReplyAlphabet(%eax)
	.loc 1 24 0
	incl	24(%esp)
L4:
	cmpl	$25, 24(%esp)
	jle	L5
	.loc 1 29 0
	movl	$0, 24(%esp)
	jmp	L6
L8:
	.loc 1 31 0
	movb	%bl, %al
	subl	$97, %eax
	movb	%al, %bl
	.loc 1 32 0
	movsbl	%bl,%eax
	movb	_AnswerAlphabet(%eax), %al
	testb	%al, %al
	jne	L7
	.loc 1 34 0
	movsbl	%bl,%eax
	movb	$1, _AnswerAlphabet(%eax)
	.loc 1 35 0
	incl	28(%esp)
L7:
	.loc 1 29 0
	incl	24(%esp)
L6:
	movl	24(%esp), %eax
	movb	_Answer(%eax), %bl
	testb	%bl, %bl
	jne	L8
	.loc 1 38 0
	movl	$0, 24(%esp)
	jmp	L9
L14:
	.loc 1 40 0
	movb	%bl, %al
	subl	$97, %eax
	movb	%al, %bl
	.loc 1 41 0
	movsbl	%bl,%eax
	movb	_ReplyAlphabet(%eax), %al
	testb	%al, %al
	jne	L10
	.loc 1 43 0
	movsbl	%bl,%eax
	movb	$1, _ReplyAlphabet(%eax)
	.loc 1 44 0
	movsbl	%bl,%eax
	movb	_AnswerAlphabet(%eax), %al
	testb	%al, %al
	jne	L11
	incl	20(%esp)
	jmp	L10
L11:
	.loc 1 47 0
	movsbl	%bl,%eax
	movb	$0, _AnswerAlphabet(%eax)
	.loc 1 48 0
	decl	28(%esp)
L10:
	.loc 1 51 0
	cmpl	$6, 20(%esp)
	jle	L12
	.loc 1 53 0
	movl	$LC3, (%esp)
	call	_puts
	.loc 1 54 0
	jmp	L2
L12:
	.loc 1 56 0
	cmpl	$0, 28(%esp)
	jne	L13
	.loc 1 58 0
	movl	$LC4, (%esp)
	call	_puts
	.loc 1 59 0
	jmp	L2
L13:
	.loc 1 38 0
	incl	24(%esp)
L9:
	movl	24(%esp), %eax
	movb	_Reply(%eax), %bl
	testb	%bl, %bl
	jne	L14
	.loc 1 62 0
	movl	$LC5, (%esp)
	call	_puts
	.loc 1 63 0
	jmp	L2
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
	.long	0x26e
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\489 Hangman Judge\\main.c\0"
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
	.long	0x11e
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x124
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x7f
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x87
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
	.byte	0x8
	.long	0x124
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1d3
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0xa
	.long	0x124
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0x8
	.ascii "Hangman\0"
	.byte	0x1
	.byte	0xa
	.long	0x124
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0xb
	.long	0x124
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0x8
	.ascii "Total\0"
	.byte	0x1
	.byte	0xb
	.long	0x124
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x8
	.ascii "C\0"
	.byte	0x1
	.byte	0xc
	.long	0x7f
	.byte	0x1
	.byte	0x53
	.uleb128 0x9
	.ascii "Label_1\0"
	.byte	0x1
	.byte	0x36
	.long	L2
	.byte	0x0
	.uleb128 0xa
	.long	0x12b
	.long	0x1de
	.uleb128 0xb
	.byte	0x0
	.uleb128 0xc
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1d3
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	0x7f
	.long	0x1fc
	.uleb128 0xd
	.long	0x1fc
	.byte	0xff
	.byte	0x0
	.uleb128 0xe
	.byte	0x4
	.byte	0x7
	.uleb128 0xf
	.ascii "Answer\0"
	.byte	0x1
	.byte	0x4
	.long	0x1ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Answer
	.uleb128 0xf
	.ascii "Reply\0"
	.byte	0x1
	.byte	0x4
	.long	0x1ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Reply
	.uleb128 0xa
	.long	0x7f
	.long	0x238
	.uleb128 0xd
	.long	0x1fc
	.byte	0x19
	.byte	0x0
	.uleb128 0xf
	.ascii "AnswerAlphabet\0"
	.byte	0x1
	.byte	0x5
	.long	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_AnswerAlphabet
	.uleb128 0xf
	.ascii "ReplyAlphabet\0"
	.byte	0x1
	.byte	0x6
	.long	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_ReplyAlphabet
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
	.uleb128 0xa
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.long	0x51
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x272
	.long	0x161
	.ascii "main\0"
	.long	0x1ff
	.ascii "Answer\0"
	.long	0x214
	.ascii "Reply\0"
	.long	0x238
	.ascii "AnswerAlphabet\0"
	.long	0x255
	.ascii "ReplyAlphabet\0"
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
	.def	_puts;	.scl	2;	.type	32;	.endef
