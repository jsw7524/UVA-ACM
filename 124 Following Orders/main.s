	.file	"main.c"
	.text
Ltext0:
	.cfi_sections	.debug_frame
	.globl	_z
	.def	_z;	.scl	2;	.type	32;	.endef
_z:
LFB6:
	.file 1 "C:/MyData/Google Cloud/ACM/124 Following Orders/main.c"
	.loc 1 6 0
	.cfi_startproc
	pushl	%ebp
LCFI0:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI1:
	.cfi_def_cfa_register 5
	.loc 1 7 0
	popl	%ebp
LCFI2:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE6:
	.comm	_Constraint, 2704, 5
	.comm	_Literal, 104, 5
	.comm	_ConstraintIndex, 104, 5
	.comm	_Number, 4, 2
	.comm	_Record, 104, 5
	.comm	_Buffer, 32, 5
	.globl	_CMP
	.def	_CMP;	.scl	2;	.type	32;	.endef
_CMP:
LFB7:
	.loc 1 17 0
	.cfi_startproc
	pushl	%ebp
LCFI3:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI4:
	.cfi_def_cfa_register 5
	.loc 1 18 0
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	.loc 1 19 0
	popl	%ebp
LCFI5:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE7:
	.globl	_CheckPredecessor
	.def	_CheckPredecessor;	.scl	2;	.type	32;	.endef
_CheckPredecessor:
LFB8:
	.loc 1 22 0
	.cfi_startproc
	pushl	%ebp
LCFI6:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI7:
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 24 0
	movl	$0, -4(%ebp)
	jmp	L5
L8:
	.loc 1 26 0
	movl	8(%ebp), %eax
	leal	-97(%eax), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	movl	-4(%ebp), %edx
	addl	%edx, %eax
	movl	_Constraint(,%eax,4), %eax
	subl	$97, %eax
	movl	_Record(,%eax,4), %eax
	testl	%eax, %eax
	jne	L6
	.loc 1 28 0
	movl	$0, %eax
	jmp	L7
L6:
	.loc 1 24 0
	incl	-4(%ebp)
L5:
	.loc 1 24 0 is_stmt 0 discriminator 1
	movl	8(%ebp), %eax
	subl	$97, %eax
	movl	_ConstraintIndex(,%eax,4), %eax
	cmpl	-4(%ebp), %eax
	jg	L8
	.loc 1 31 0 is_stmt 1
	movl	$1, %eax
L7:
	.loc 1 32 0
	leave
LCFI8:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.globl	_Backtracking
	.def	_Backtracking;	.scl	2;	.type	32;	.endef
_Backtracking:
LFB9:
	.loc 1 35 0
	.cfi_startproc
	pushl	%ebp
LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI10:
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 37 0
	movl	_Number, %eax
	cmpl	%eax, 8(%ebp)
	jne	L10
	.loc 1 39 0
	movl	8(%ebp), %eax
	addl	$_Buffer, %eax
	movb	$0, (%eax)
	.loc 1 40 0
	movl	$_Buffer, (%esp)
	call	_puts
	jmp	L11
L10:
	.loc 1 44 0
	movl	$0, -12(%ebp)
	jmp	L12
L14:
	.loc 1 46 0
	movl	-12(%ebp), %eax
	movl	_Literal(,%eax,4), %eax
	subl	$97, %eax
	movl	_Record(,%eax,4), %eax
	testl	%eax, %eax
	jne	L13
	.loc 1 48 0
	movl	-12(%ebp), %eax
	movl	_Literal(,%eax,4), %eax
	movl	%eax, (%esp)
	call	_CheckPredecessor
	testl	%eax, %eax
	je	L13
	.loc 1 50 0
	movl	-12(%ebp), %eax
	movl	_Literal(,%eax,4), %eax
	subl	$97, %eax
	movl	$1, _Record(,%eax,4)
	.loc 1 51 0
	movl	-12(%ebp), %eax
	movl	_Literal(,%eax,4), %eax
	movl	8(%ebp), %edx
	addl	$_Buffer, %edx
	movb	%al, (%edx)
	.loc 1 52 0
	movl	8(%ebp), %eax
	incl	%eax
	movl	%eax, (%esp)
	call	_Backtracking
	.loc 1 53 0
	movl	-12(%ebp), %eax
	movl	_Literal(,%eax,4), %eax
	subl	$97, %eax
	movl	$0, _Record(,%eax,4)
L13:
	.loc 1 44 0
	incl	-12(%ebp)
L12:
	.loc 1 44 0 is_stmt 0 discriminator 1
	movl	_Number, %eax
	cmpl	%eax, -12(%ebp)
	jl	L14
L11:
	.loc 1 58 0 is_stmt 1
	movl	$0, %eax
	.loc 1 59 0
	leave
LCFI11:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE9:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.loc 1 61 0
	.cfi_startproc
	pushl	%ebp
LCFI12:
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
LCFI13:
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$32, %esp
	.loc 1 61 0
	call	___main
	.loc 1 62 0
	movl	$1, 24(%esp)
L29:
	.loc 1 66 0
	movl	$0, 28(%esp)
L23:
	.loc 1 69 0
	call	_getchar
	movl	%eax, 20(%esp)
	.loc 1 70 0
	cmpl	$-1, 20(%esp)
	jne	L17
	.loc 1 70 0 is_stmt 0 discriminator 1
	movl	$0, %eax
	jmp	L30
L17:
	.loc 1 71 0 is_stmt 1
	cmpl	$10, 20(%esp)
	je	L33
L19:
	.loc 1 72 0
	cmpl	$32, 20(%esp)
	je	L34
L21:
	.loc 1 73 0
	movl	28(%esp), %eax
	movl	20(%esp), %edx
	movl	%edx, _Literal(,%eax,4)
	.loc 1 74 0
	incl	28(%esp)
	.loc 1 75 0
	jmp	L23
L34:
	.loc 1 72 0
	nop
L32:
	.loc 1 75 0
	jmp	L23
L33:
	.loc 1 71 0
	nop
L31:
	.loc 1 76 0
	cmpl	$0, 24(%esp)
	jne	L24
	.loc 1 76 0 is_stmt 0 discriminator 1
	movl	$10, (%esp)
	call	_putchar
	jmp	L25
L24:
	.loc 1 77 0 is_stmt 1
	movl	$0, 24(%esp)
L25:
	.loc 1 78 0
	movl	28(%esp), %eax
	movl	%eax, _Number
	.loc 1 79 0
	movl	28(%esp), %eax
	movl	$_CMP, 12(%esp)
	movl	$4, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_Literal, (%esp)
	call	_qsort
	.loc 1 80 0
	movl	$104, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_ConstraintIndex, (%esp)
	call	_memset
	.loc 1 81 0
	movl	$104, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Record, (%esp)
	call	_memset
	jmp	L28
L35:
	.loc 1 91 0
	nop
L28:
	.loc 1 84 0
	call	_getchar
	movl	%eax, 20(%esp)
	.loc 1 85 0
	call	_getchar
	.loc 1 86 0
	call	_getchar
	movl	%eax, 16(%esp)
	.loc 1 87 0
	movl	16(%esp), %eax
	leal	-97(%eax), %edx
	movl	16(%esp), %eax
	subl	$97, %eax
	movl	_ConstraintIndex(,%eax,4), %ecx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	leal	(%eax,%ecx), %edx
	movl	20(%esp), %eax
	movl	%eax, _Constraint(,%edx,4)
	.loc 1 88 0
	movl	16(%esp), %eax
	subl	$97, %eax
	movl	_ConstraintIndex(,%eax,4), %edx
	incl	%edx
	movl	%edx, _ConstraintIndex(,%eax,4)
	.loc 1 89 0
	call	_getchar
	movl	%eax, 28(%esp)
	.loc 1 90 0
	cmpl	$10, 28(%esp)
	jne	L35
	nop
	.loc 1 93 0
	movl	$0, (%esp)
	call	_Backtracking
	.loc 1 94 0
	jmp	L29
L30:
	.loc 1 96 0
	leave
LCFI14:
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
Letext0:
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.7.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x3cd
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.7.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\124 Following Orders\\main.c\0"
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
	.long	0x121
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x127
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x127
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x127
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x127
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x127
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x121
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x82
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8a
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
	.long	0x127
	.long	0x174
	.uleb128 0x8
	.long	0x127
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	0x184
	.long	0x184
	.uleb128 0x8
	.long	0x82
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x164
	.uleb128 0x9
	.byte	0x1
	.ascii "z\0"
	.byte	0x1
	.byte	0x5
	.byte	0x1
	.long	0x1b3
	.long	LFB6
	.long	LFE6
	.secrel32	LLST0
	.byte	0x1
	.long	0x1b3
	.uleb128 0xa
	.ascii "f\0"
	.byte	0x1
	.byte	0x5
	.long	0x1b3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x174
	.uleb128 0x9
	.byte	0x1
	.ascii "CMP\0"
	.byte	0x1
	.byte	0x10
	.byte	0x1
	.long	0x127
	.long	LFB7
	.long	LFE7
	.secrel32	LLST1
	.byte	0x1
	.long	0x1f0
	.uleb128 0xa
	.ascii "A\0"
	.byte	0x1
	.byte	0x10
	.long	0x1f0
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xa
	.ascii "B\0"
	.byte	0x1
	.byte	0x10
	.long	0x1f0
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x9
	.byte	0x1
	.ascii "CheckPredecessor\0"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	0x127
	.long	LFB8
	.long	LFE8
	.secrel32	LLST2
	.byte	0x1
	.long	0x248
	.uleb128 0xa
	.ascii "A\0"
	.byte	0x1
	.byte	0x15
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x17
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xd
	.ascii "J\0"
	.byte	0x1
	.byte	0x17
	.long	0x127
	.uleb128 0xd
	.ascii "K\0"
	.byte	0x1
	.byte	0x17
	.long	0x127
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii "Backtracking\0"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.long	0x127
	.long	LFB9
	.long	LFE9
	.secrel32	LLST3
	.byte	0x1
	.long	0x29a
	.uleb128 0xa
	.ascii "N\0"
	.byte	0x1
	.byte	0x22
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x24
	.long	0x127
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xd
	.ascii "J\0"
	.byte	0x1
	.byte	0x24
	.long	0x127
	.uleb128 0xd
	.ascii "K\0"
	.byte	0x1
	.byte	0x24
	.long	0x127
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x3c
	.long	0x127
	.long	LFB10
	.long	LFE10
	.secrel32	LLST4
	.byte	0x1
	.long	0x2e9
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x3e
	.long	0x127
	.byte	0x2
	.byte	0x74
	.sleb128 20
	.uleb128 0xc
	.ascii "J\0"
	.byte	0x1
	.byte	0x3e
	.long	0x127
	.byte	0x2
	.byte	0x74
	.sleb128 16
	.uleb128 0xc
	.ascii "K\0"
	.byte	0x1
	.byte	0x3e
	.long	0x127
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xc
	.ascii "L\0"
	.byte	0x1
	.byte	0x3e
	.long	0x127
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.byte	0
	.uleb128 0x10
	.long	0x12e
	.long	0x2f4
	.uleb128 0x11
	.byte	0
	.uleb128 0x12
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x2e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x127
	.long	0x318
	.uleb128 0x13
	.long	0x318
	.byte	0x19
	.uleb128 0x13
	.long	0x318
	.byte	0x19
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x14
	.ascii "Constraint\0"
	.byte	0x1
	.byte	0x9
	.long	0x302
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Constraint
	.uleb128 0x10
	.long	0x127
	.long	0x34d
	.uleb128 0x13
	.long	0x318
	.byte	0x19
	.byte	0
	.uleb128 0x14
	.ascii "Literal\0"
	.byte	0x1
	.byte	0xa
	.long	0x33d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Literal
	.uleb128 0x14
	.ascii "ConstraintIndex\0"
	.byte	0x1
	.byte	0xb
	.long	0x33d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_ConstraintIndex
	.uleb128 0x14
	.ascii "Number\0"
	.byte	0x1
	.byte	0xc
	.long	0x127
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Number
	.uleb128 0x14
	.ascii "Record\0"
	.byte	0x1
	.byte	0xd
	.long	0x33d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Record
	.uleb128 0x10
	.long	0x82
	.long	0x3bb
	.uleb128 0x13
	.long	0x318
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.ascii "Buffer\0"
	.byte	0x1
	.byte	0xe
	.long	0x3ab
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xb
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
LLST3:
	.long	LFB9-Ltext0
	.long	LCFI9-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI9-Ltext0
	.long	LCFI10-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI10-Ltext0
	.long	LCFI11-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI11-Ltext0
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
LLST4:
	.long	LFB10-Ltext0
	.long	LCFI12-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI12-Ltext0
	.long	LCFI13-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI13-Ltext0
	.long	LCFI14-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	LCFI14-Ltext0
	.long	LFE10-Ltext0
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
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
