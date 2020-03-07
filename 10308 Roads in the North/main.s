	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_AdjacentList, 240032	 # 240024
	.comm	_Height, 80016	 # 80008
	.comm	_Record, 10016	 # 10001
.globl _TreeHeight
	.def	_TreeHeight;	.scl	2;	.type	32;	.endef
_TreeHeight:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/10308 Roads in the North/main.c"
	.loc 1 22 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%ebx
LCFI2:
	subl	$52, %esp
LCFI3:
	.loc 1 23 0
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 24 0
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	.loc 1 25 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	$_AdjacentList, %eax
	movl	%eax, -12(%ebp)
	.loc 1 26 0
	movl	8(%ebp), %eax
	movb	$1, _Record(%eax)
	.loc 1 27 0
	jmp	L2
L7:
	.loc 1 29 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movb	_Record(%eax), %al
	testb	%al, %al
	jne	L3
	.loc 1 31 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_TreeHeight
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
L3:
	.loc 1 33 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	cmpl	-20(%ebp), %edx
	jb	L4
	cmpl	-20(%ebp), %edx
	ja	L9
	cmpl	-24(%ebp), %eax
	jbe	L4
L9:
	.loc 1 35 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
L4:
	.loc 1 37 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 38 0
	cmpl	$0, -12(%ebp)
	je	L10
L2:
	.loc 1 27 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L7
	jmp	L6
L10:
	.loc 1 39 0
	nop
L6:
	.loc 1 41 0
	movl	8(%ebp), %ecx
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, _Height(,%ecx,8)
	movl	%edx, _Height+4(,%ecx,8)
	.loc 1 42 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	.loc 1 43 0
	addl	$52, %esp
	popl	%ebx
	leave
	ret
LFE7:
.globl _TheMostRemote
	.def	_TheMostRemote;	.scl	2;	.type	32;	.endef
_TheMostRemote:
LFB8:
	.loc 1 46 0
	pushl	%ebp
LCFI4:
	movl	%esp, %ebp
LCFI5:
	pushl	%ebx
LCFI6:
	subl	$68, %esp
LCFI7:
	.loc 1 47 0
	movl	$0, -56(%ebp)
	movl	$0, -52(%ebp)
	movl	$0, -48(%ebp)
	movl	$0, -44(%ebp)
	.loc 1 48 0
	movl	$0, -40(%ebp)
	movl	$0, -36(%ebp)
	movl	$0, -32(%ebp)
	movl	$0, -28(%ebp)
	.loc 1 50 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	$_AdjacentList, %eax
	movl	%eax, -12(%ebp)
	.loc 1 51 0
	movl	8(%ebp), %eax
	movb	$1, _Record(%eax)
	.loc 1 52 0
	jmp	L12
L20:
	.loc 1 54 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movb	_Record(%eax), %al
	testb	%al, %al
	jne	L13
	.loc 1 56 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_TheMostRemote
	movl	%eax, -56(%ebp)
	movl	%edx, -52(%ebp)
	.loc 1 57 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	cmpl	-44(%ebp), %edx
	jb	L14
	cmpl	-44(%ebp), %edx
	ja	L24
	cmpl	-48(%ebp), %eax
	jbe	L14
L24:
	.loc 1 59 0
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	movl	%eax, -48(%ebp)
	movl	%edx, -44(%ebp)
L14:
	.loc 1 61 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	_Height(,%eax,8), %ecx
	movl	_Height+4(,%eax,8), %ebx
	movl	-12(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, -24(%ebp)
	movl	%edx, -20(%ebp)
	.loc 1 62 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	cmpl	-28(%ebp), %edx
	jb	L16
	cmpl	-28(%ebp), %edx
	ja	L25
	cmpl	-32(%ebp), %eax
	jbe	L16
L25:
	.loc 1 64 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
L16:
	.loc 1 66 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	cmpl	-36(%ebp), %edx
	jb	L13
	cmpl	-36(%ebp), %edx
	ja	L26
	cmpl	-40(%ebp), %eax
	jbe	L13
L26:
	.loc 1 68 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	movl	%eax, -32(%ebp)
	movl	%edx, -28(%ebp)
	.loc 1 69 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
L13:
	.loc 1 72 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	.loc 1 73 0
	cmpl	$0, -12(%ebp)
	je	L27
L12:
	.loc 1 52 0
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L20
	jmp	L19
L27:
	.loc 1 74 0
	nop
L19:
	.loc 1 76 0
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	-40(%ebp), %ecx
	movl	-36(%ebp), %ebx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	-48(%ebp), %ecx
	movl	-44(%ebp), %ebx
	cmpl	%ebx, %edx
	ja	L21
	cmpl	%ebx, %edx
	jb	L22
	cmpl	%ecx, %eax
	jae	L21
L22:
	movl	%ecx, %eax
	movl	%ebx, %edx
L21:
	.loc 1 77 0
	addl	$68, %esp
	popl	%ebx
	leave
	ret
LFE8:
.globl _InsertNode
	.def	_InsertNode;	.scl	2;	.type	32;	.endef
_InsertNode:
LFB9:
	.loc 1 80 0
	pushl	%ebp
LCFI8:
	movl	%esp, %ebp
LCFI9:
	subl	$56, %esp
LCFI10:
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 81 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	addl	$_AdjacentList, %eax
	movl	%eax, -12(%ebp)
	.loc 1 82 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	_AdjacentList(%eax), %eax
	testl	%eax, %eax
	jne	L34
	.loc 1 84 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	0(,%eax,8), %edx
	movl	12(%ebp), %eax
	movl	%eax, _AdjacentList(%edx)
	.loc 1 85 0
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	leal	0(,%eax,8), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, _AdjacentList+8(%ecx)
	movl	%edx, _AdjacentList+12(%ecx)
	jmp	L33
L32:
	.loc 1 91 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -12(%ebp)
	jmp	L31
L34:
	.loc 1 89 0
	nop
L31:
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L32
	.loc 1 93 0
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	.loc 1 94 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %eax
	movl	12(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 95 0
	movl	-12(%ebp), %eax
	movl	16(%eax), %ecx
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
L33:
	.loc 1 98 0
	leave
	ret
LFE9:
.globl _DeleteNode
	.def	_DeleteNode;	.scl	2;	.type	32;	.endef
_DeleteNode:
LFB10:
	.loc 1 101 0
	pushl	%ebp
LCFI11:
	movl	%esp, %ebp
LCFI12:
	subl	$40, %esp
LCFI13:
	.loc 1 104 0
	movl	$0, -20(%ebp)
	jmp	L36
L39:
	.loc 1 106 0
	movl	-20(%ebp), %edx
	movl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$3, %eax
	movl	_AdjacentList+16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 107 0
	jmp	L37
L38:
	.loc 1 109 0
	movl	-16(%ebp), %eax
	movl	%eax, -12(%ebp)
	.loc 1 110 0
	movl	-16(%ebp), %eax
	movl	16(%eax), %eax
	movl	%eax, -16(%ebp)
	.loc 1 111 0
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_free
L37:
	.loc 1 107 0
	cmpl	$0, -16(%ebp)
	jne	L38
	.loc 1 104 0
	incl	-20(%ebp)
L36:
	cmpl	$10000, -20(%ebp)
	jle	L39
	.loc 1 114 0
	leave
	ret
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d%d%llu\0"
LC1:
	.ascii "%llu\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.loc 1 117 0
	pushl	%ebp
LCFI14:
	movl	%esp, %ebp
LCFI15:
	andl	$-16, %esp
LCFI16:
	pushl	%ebx
LCFI17:
	subl	$204, %esp
LCFI18:
	.loc 1 117 0
	call	___main
	.loc 1 118 0
	movl	$0, 180(%esp)
	movl	$0, 176(%esp)
	movl	$0, 184(%esp)
	movl	$0, 188(%esp)
	jmp	L45
L47:
	.loc 1 151 0
	nop
L45:
	.loc 1 123 0
	movl	$0, 188(%esp)
	.loc 1 124 0
	movl	__imp___iob, %eax
	movl	%eax, 8(%esp)
	movl	$128, 4(%esp)
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_fgets
	.loc 1 126 0
	movb	48(%esp), %al
	cmpb	$10, %al
	je	L42
	.loc 1 128 0
	leal	40(%esp), %eax
	movl	%eax, 16(%esp)
	leal	176(%esp), %eax
	movl	%eax, 12(%esp)
	leal	180(%esp), %eax
	movl	%eax, 8(%esp)
	movl	$LC0, 4(%esp)
	leal	48(%esp), %eax
	movl	%eax, (%esp)
	call	_sscanf
	.loc 1 129 0
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	176(%esp), %ebx
	movl	180(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_InsertNode
	.loc 1 130 0
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	180(%esp), %ebx
	movl	176(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, (%esp)
	call	_InsertNode
	.loc 1 131 0
	movl	__imp___iob, %eax
	movl	12(%eax), %eax
	andl	$16, %eax
	testl	%eax, %eax
	je	L47
	.loc 1 133 0
	movl	180(%esp), %eax
	movl	%eax, (%esp)
	call	_TreeHeight
	.loc 1 134 0
	movl	$10001, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Record, (%esp)
	call	_memset
	.loc 1 135 0
	movl	180(%esp), %eax
	movl	%eax, (%esp)
	call	_TheMostRemote
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 152 0
	movl	$0, %eax
	.loc 1 153 0
	addl	$204, %esp
	popl	%ebx
	leave
	ret
L42:
	.loc 1 142 0
	movl	180(%esp), %eax
	movl	%eax, (%esp)
	call	_TreeHeight
	.loc 1 143 0
	movl	$10001, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Record, (%esp)
	call	_memset
	.loc 1 144 0
	movl	180(%esp), %eax
	movl	%eax, (%esp)
	call	_TheMostRemote
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC1, (%esp)
	call	_printf
	.loc 1 146 0
	movl	$240024, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_AdjacentList, (%esp)
	call	_memset
	.loc 1 147 0
	movl	$40004, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Height, (%esp)
	call	_memset
	.loc 1 148 0
	movl	$10001, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Record, (%esp)
	call	_memset
	.loc 1 149 0
	movl	$0, 184(%esp)
	movl	184(%esp), %eax
	movl	%eax, 176(%esp)
	movl	176(%esp), %eax
	movl	%eax, 180(%esp)
	.loc 1 151 0
	jmp	L45
LFE11:
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
	.long	LCFI3-LCFI1
	.byte	0x11
	.uleb128 0x3
	.sleb128 3
	.align 4
LEFDE0:
LSFDE2:
	.long	LEFDE2-LASFDE2
LASFDE2:
	.secrel32	Lframe0
	.long	LFB8
	.long	LFE8-LFB8
	.byte	0x4
	.long	LCFI4-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI5-LCFI4
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI7-LCFI5
	.byte	0x11
	.uleb128 0x3
	.sleb128 3
	.align 4
LEFDE2:
LSFDE4:
	.long	LEFDE4-LASFDE4
LASFDE4:
	.secrel32	Lframe0
	.long	LFB9
	.long	LFE9-LFB9
	.byte	0x4
	.long	LCFI8-LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI9-LCFI8
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE4:
LSFDE6:
	.long	LEFDE6-LASFDE6
LASFDE6:
	.secrel32	Lframe0
	.long	LFB10
	.long	LFE10-LFB10
	.byte	0x4
	.long	LCFI11-LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI12-LCFI11
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE6:
LSFDE8:
	.long	LEFDE8-LASFDE8
LASFDE8:
	.secrel32	Lframe0
	.long	LFB11
	.long	LFE11-LFB11
	.byte	0x4
	.long	LCFI14-LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI15-LCFI14
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI18-LCFI15
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
LEFDE8:
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
LLST1:
	.long	LFB8-Ltext0
	.long	LCFI4-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI4-Ltext0
	.long	LCFI5-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI5-Ltext0
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST2:
	.long	LFB9-Ltext0
	.long	LCFI8-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI8-Ltext0
	.long	LCFI9-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI9-Ltext0
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST3:
	.long	LFB10-Ltext0
	.long	LCFI11-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI11-Ltext0
	.long	LCFI12-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI12-Ltext0
	.long	LFE10-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST4:
	.long	LFB11-Ltext0
	.long	LCFI14-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI14-Ltext0
	.long	LCFI15-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI15-Ltext0
	.long	LFE11-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x47e
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\10308 Roads in the North\\main.c\0"
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
	.long	0x125
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x86
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8e
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
	.uleb128 0x6
	.ascii "Node\0"
	.byte	0x1
	.byte	0x5
	.long	0x174
	.uleb128 0x3
	.ascii "Node\0"
	.byte	0x18
	.byte	0x1
	.byte	0x5
	.long	0x1b8
	.uleb128 0x4
	.ascii "Destination\0"
	.byte	0x1
	.byte	0x8
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "Length\0"
	.byte	0x1
	.byte	0x9
	.long	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "Next\0"
	.byte	0x1
	.byte	0xa
	.long	0x1d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x5
	.byte	0x4
	.long	0x168
	.uleb128 0x7
	.byte	0x1
	.ascii "TreeHeight\0"
	.byte	0x1
	.byte	0x15
	.byte	0x1
	.long	0x1b8
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x231
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0x15
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "H\0"
	.byte	0x1
	.byte	0x17
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.ascii "Max\0"
	.byte	0x1
	.byte	0x18
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii "Ptr\0"
	.byte	0x1
	.byte	0x19
	.long	0x1d2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.ascii "TheMostRemote\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.long	0x1b8
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x2bb
	.uleb128 0x8
	.ascii "N\0"
	.byte	0x1
	.byte	0x2d
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.ascii "S\0"
	.byte	0x1
	.byte	0x2f
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x9
	.ascii "Subtree\0"
	.byte	0x1
	.byte	0x2f
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x9
	.ascii "Max1\0"
	.byte	0x1
	.byte	0x30
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x9
	.ascii "Max2\0"
	.byte	0x1
	.byte	0x30
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0x31
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x9
	.ascii "Ptr\0"
	.byte	0x1
	.byte	0x32
	.long	0x1d2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.ascii "InsertNode\0"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x30e
	.uleb128 0x8
	.ascii "S\0"
	.byte	0x1
	.byte	0x4f
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "D\0"
	.byte	0x1
	.byte	0x4f
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x8
	.ascii "L\0"
	.byte	0x1
	.byte	0x4f
	.long	0x1b8
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x9
	.ascii "Ptr\0"
	.byte	0x1
	.byte	0x51
	.long	0x1d2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "DeleteNode\0"
	.byte	0x1
	.byte	0x64
	.long	LFB10
	.long	LFE10
	.secrel32	LLST3
	.long	0x35b
	.uleb128 0x9
	.ascii "I\0"
	.byte	0x1
	.byte	0x66
	.long	0x12b
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x9
	.ascii "Ptr\0"
	.byte	0x1
	.byte	0x67
	.long	0x1d2
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x9
	.ascii "Previous\0"
	.byte	0x1
	.byte	0x67
	.long	0x1d2
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x74
	.long	0x12b
	.long	LFB11
	.long	LFE11
	.secrel32	LLST4
	.long	0x3cc
	.uleb128 0x9
	.ascii "S\0"
	.byte	0x1
	.byte	0x76
	.long	0x12b
	.byte	0x3
	.byte	0x74
	.sleb128 180
	.uleb128 0x9
	.ascii "D\0"
	.byte	0x1
	.byte	0x76
	.long	0x12b
	.byte	0x3
	.byte	0x74
	.sleb128 176
	.uleb128 0x9
	.ascii "C\0"
	.byte	0x1
	.byte	0x76
	.long	0x12b
	.byte	0x3
	.byte	0x74
	.sleb128 184
	.uleb128 0x9
	.ascii "F\0"
	.byte	0x1
	.byte	0x76
	.long	0x12b
	.byte	0x3
	.byte	0x74
	.sleb128 188
	.uleb128 0x9
	.ascii "MyBuffer\0"
	.byte	0x1
	.byte	0x77
	.long	0x3cc
	.byte	0x2
	.byte	0x74
	.sleb128 48
	.uleb128 0x9
	.ascii "L\0"
	.byte	0x1
	.byte	0x78
	.long	0x1b8
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.byte	0x0
	.uleb128 0xd
	.long	0x86
	.long	0x3dc
	.uleb128 0xe
	.long	0x3dc
	.byte	0x7f
	.byte	0x0
	.uleb128 0xf
	.byte	0x4
	.byte	0x7
	.uleb128 0xd
	.long	0x132
	.long	0x3ea
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x11
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x3df
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x168
	.long	0x409
	.uleb128 0x12
	.long	0x3dc
	.word	0x2710
	.byte	0x0
	.uleb128 0x13
	.ascii "AdjacentList\0"
	.byte	0x1
	.byte	0xd
	.long	0x3f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_AdjacentList
	.uleb128 0xd
	.long	0x1b8
	.long	0x435
	.uleb128 0x12
	.long	0x3dc
	.word	0x2710
	.byte	0x0
	.uleb128 0x13
	.ascii "Height\0"
	.byte	0x1
	.byte	0xe
	.long	0x424
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Height
	.uleb128 0xd
	.long	0x45b
	.long	0x45b
	.uleb128 0x12
	.long	0x3dc
	.word	0x2710
	.byte	0x0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x13
	.ascii "Record\0"
	.byte	0x1
	.byte	0xf
	.long	0x44a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Record
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x5
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
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
	.long	0x7d
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x482
	.long	0x1d8
	.ascii "TreeHeight\0"
	.long	0x231
	.ascii "TheMostRemote\0"
	.long	0x2bb
	.ascii "InsertNode\0"
	.long	0x30e
	.ascii "DeleteNode\0"
	.long	0x35b
	.ascii "main\0"
	.long	0x409
	.ascii "AdjacentList\0"
	.long	0x435
	.ascii "Height\0"
	.long	0x46c
	.ascii "Record\0"
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
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_sscanf;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_memset;	.scl	2;	.type	32;	.endef
