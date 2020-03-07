	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.comm	_N, 4, 2
	.globl	_Z
	.data
	.align 4
_Z:
	.long	1
	.comm	_A, 20, 2
	.comm	_B, 20, 2
	.comm	_X, 12, 2
	.comm	_Y, 12, 2
	.comm	_SS, 4, 2
	.comm	_WS, 4, 2
	.comm	_TS, 4, 2
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%d%d%d%d\0"
LC2:
	.ascii "Night %d: %d %d %d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB6:
	.file 1 "C:/MyData/Google Cloud/ACM/Guard the Land/main.c"
	.loc 1 11 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 11 0
	call	___main
	.loc 1 12 0
	movl	$_N, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 13 0
	jmp	L2
L9:
	.loc 1 15 0
	movl	$0, _SS
	.loc 1 16 0
	movl	$0, _WS
	.loc 1 17 0
	movl	$10000, _TS
	.loc 1 18 0
	movl	$_A+16, 16(%esp)
	movl	$_A+12, 12(%esp)
	movl	$_A+8, 8(%esp)
	movl	$_A+4, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 19 0
	movl	$_B+16, 16(%esp)
	movl	$_B+12, 12(%esp)
	movl	$_B+8, 8(%esp)
	movl	$_B+4, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 20 0
	movl	_B+4, %eax
	movl	_A+4, %edx
	cmpl	%edx, %eax
	jge	L3
	movl	%edx, %eax
L3:
	movl	%eax, _X+4
	.loc 1 21 0
	movl	_A+12, %eax
	movl	_B+12, %edx
	cmpl	%edx, %eax
	jle	L4
	movl	%edx, %eax
L4:
	movl	%eax, _X+8
	.loc 1 22 0
	movl	_B+8, %eax
	movl	_A+8, %edx
	cmpl	%edx, %eax
	jge	L5
	movl	%edx, %eax
L5:
	movl	%eax, _Y+4
	.loc 1 23 0
	movl	_A+16, %eax
	movl	_B+16, %edx
	cmpl	%edx, %eax
	jle	L6
	movl	%edx, %eax
L6:
	movl	%eax, _Y+8
	.loc 1 24 0
	movl	_X+4, %edx
	movl	_X+8, %eax
	cmpl	%eax, %edx
	jge	L7
	.loc 1 24 0 is_stmt 0 discriminator 1
	movl	_Y+4, %edx
	movl	_Y+8, %eax
	cmpl	%eax, %edx
	jge	L7
	.loc 1 26 0 is_stmt 1
	movl	_X+8, %edx
	movl	_X+4, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	_Y+8, %edx
	movl	_Y+4, %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	imull	%ecx, %eax
	movl	%eax, _SS
	jmp	L8
L7:
	.loc 1 30 0
	movl	$0, _SS
L8:
	.loc 1 32 0
	movl	_A+12, %edx
	movl	_A+4, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	_A+16, %edx
	movl	_A+8, %eax
	movl	%edx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	movl	%ecx, %edx
	imull	%eax, %edx
	movl	_B+12, %ecx
	movl	_B+4, %eax
	movl	%ecx, %ebx
	subl	%eax, %ebx
	movl	_B+16, %ecx
	movl	_B+8, %eax
	movl	%ecx, %esi
	subl	%eax, %esi
	movl	%esi, %eax
	imull	%ebx, %eax
	leal	(%edx,%eax), %ecx
	movl	_SS, %edx
	movl	$0, %eax
	subl	%edx, %eax
	sall	%eax
	addl	%ecx, %eax
	movl	%eax, _WS
	.loc 1 33 0
	movl	_WS, %eax
	movl	$10000, %edx
	subl	%eax, %edx
	movl	_SS, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, _TS
	.loc 1 34 0
	movl	_TS, %ebx
	movl	_WS, %ecx
	movl	_SS, %edx
	movl	_Z, %esi
	movl	%esi, %eax
	incl	%esi
	movl	%esi, _Z
	movl	%ebx, 16(%esp)
	movl	%ecx, 12(%esp)
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
L2:
	.loc 1 13 0 discriminator 1
	movl	_N, %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, _N
	testb	%dl, %dl
	jne	L9
	.loc 1 36 0
	movl	$0, %eax
	.loc 1 37 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
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
	.long	0x24d
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\Guard the Land\\main.c\0"
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
	.long	0x11b
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x7c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x84
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
	.byte	0xa
	.long	0x121
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.uleb128 0x8
	.long	0x128
	.long	0x183
	.uleb128 0x9
	.byte	0
	.uleb128 0xa
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x178
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.ascii "N\0"
	.byte	0x1
	.byte	0x4
	.long	0x121
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_N
	.uleb128 0xb
	.ascii "Z\0"
	.byte	0x1
	.byte	0x4
	.long	0x121
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Z
	.uleb128 0x8
	.long	0x121
	.long	0x1c1
	.uleb128 0xc
	.long	0x1c1
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0xb
	.ascii "A\0"
	.byte	0x1
	.byte	0x5
	.long	0x1b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_A
	.uleb128 0xb
	.ascii "B\0"
	.byte	0x1
	.byte	0x6
	.long	0x1b1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_B
	.uleb128 0x8
	.long	0x121
	.long	0x1fd
	.uleb128 0xc
	.long	0x1c1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.ascii "X\0"
	.byte	0x1
	.byte	0x7
	.long	0x1ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_X
	.uleb128 0xb
	.ascii "Y\0"
	.byte	0x1
	.byte	0x8
	.long	0x1ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Y
	.uleb128 0xb
	.ascii "SS\0"
	.byte	0x1
	.byte	0x9
	.long	0x121
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_SS
	.uleb128 0xb
	.ascii "WS\0"
	.byte	0x1
	.byte	0x9
	.long	0x121
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_WS
	.uleb128 0xb
	.ascii "TS\0"
	.byte	0x1
	.byte	0x9
	.long	0x121
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_TS
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
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
