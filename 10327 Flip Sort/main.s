	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.comm	_MyArray, 4004, 5
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
	.align 4
LC1:
	.ascii "Minimum exchange operations : %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.file 1 "C:/MyData/Google Cloud/ACM/10327 Flip Sort/main.c"
	.loc 1 7 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$48, %esp
	.loc 1 7 0
	call	___main
	.loc 1 9 0
	jmp	L2
L10:
	.loc 1 11 0
	movl	$0, 40(%esp)
	.loc 1 12 0
	movl	$0, 44(%esp)
	jmp	L3
L4:
	.loc 1 14 0 discriminator 2
	leal	28(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 15 0 discriminator 2
	movl	28(%esp), %edx
	movl	44(%esp), %eax
	movl	%edx, _MyArray(,%eax,4)
	.loc 1 12 0 discriminator 2
	incl	44(%esp)
L3:
	.loc 1 12 0 is_stmt 0 discriminator 1
	movl	32(%esp), %eax
	cmpl	%eax, 44(%esp)
	jl	L4
	.loc 1 17 0 is_stmt 1
	movl	32(%esp), %eax
	decl	%eax
	movl	%eax, 44(%esp)
	jmp	L5
L9:
	.loc 1 19 0
	movl	$0, 28(%esp)
	jmp	L6
L8:
	.loc 1 21 0
	movl	28(%esp), %eax
	incl	%eax
	movl	_MyArray(,%eax,4), %edx
	movl	28(%esp), %eax
	movl	_MyArray(,%eax,4), %eax
	cmpl	%eax, %edx
	jge	L7
	.loc 1 23 0
	movl	28(%esp), %eax
	incl	%eax
	movl	_MyArray(,%eax,4), %eax
	movl	%eax, 36(%esp)
	.loc 1 24 0
	movl	28(%esp), %eax
	leal	1(%eax), %edx
	movl	28(%esp), %eax
	movl	_MyArray(,%eax,4), %eax
	movl	%eax, _MyArray(,%edx,4)
	.loc 1 25 0
	movl	28(%esp), %eax
	movl	36(%esp), %edx
	movl	%edx, _MyArray(,%eax,4)
	.loc 1 26 0
	incl	40(%esp)
L7:
	.loc 1 19 0
	movl	28(%esp), %eax
	incl	%eax
	movl	%eax, 28(%esp)
L6:
	.loc 1 19 0 is_stmt 0 discriminator 1
	movl	28(%esp), %eax
	cmpl	44(%esp), %eax
	jl	L8
	.loc 1 17 0 is_stmt 1
	decl	44(%esp)
L5:
	.loc 1 17 0 is_stmt 0 discriminator 1
	cmpl	$0, 44(%esp)
	jg	L9
	.loc 1 30 0 is_stmt 1
	movl	40(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
L2:
	.loc 1 9 0 discriminator 1
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	cmpl	$-1, %eax
	jne	L10
	.loc 1 32 0
	movl	$0, %eax
	.loc 1 33 0
	leave
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x20c
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\10327 Flip Sort\\main.c\0"
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
	.long	0x11c
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x122
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11c
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x7d
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x85
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
	.byte	0x6
	.long	0x122
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x1c3
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0x8
	.long	0x122
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0x8
	.ascii "I\0"
	.byte	0x1
	.byte	0x8
	.long	0x122
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.uleb128 0x8
	.ascii "J\0"
	.byte	0x1
	.byte	0x8
	.long	0x122
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0x8
	.ascii "K\0"
	.byte	0x1
	.byte	0x8
	.long	0x122
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0x8
	.ascii "Operations\0"
	.byte	0x1
	.byte	0x8
	.long	0x122
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.byte	0
	.uleb128 0x9
	.long	0x129
	.long	0x1ce
	.uleb128 0xa
	.byte	0
	.uleb128 0xb
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x1c3
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.long	0x122
	.long	0x1ed
	.uleb128 0xc
	.long	0x1ed
	.word	0x3e8
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0xd
	.ascii "MyArray\0"
	.byte	0x1
	.byte	0x4
	.long	0x1dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyArray
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.def	_printf;	.scl	2;	.type	32;	.endef
