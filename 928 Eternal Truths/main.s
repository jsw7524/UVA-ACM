	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_MyContainer, 4800000	 # 4800000
	.comm	_MyQueue_Start, 16	 # 4
	.comm	_MyQueue_Index, 16	 # 4
.globl _MyQueue_initialize
	.def	_MyQueue_initialize;	.scl	2;	.type	32;	.endef
_MyQueue_initialize:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/928 Eternal Truths/main.c"
	.loc 1 16 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	.loc 1 17 0
	movl	$0, _MyQueue_Index
	movl	_MyQueue_Index, %eax
	movl	%eax, _MyQueue_Start
	.loc 1 18 0
	leave
	ret
LFE7:
.globl _MyQueue_Pop
	.def	_MyQueue_Pop;	.scl	2;	.type	32;	.endef
_MyQueue_Pop:
LFB8:
	.loc 1 20 0
	pushl	%ebp
LCFI2:
	movl	%esp, %ebp
LCFI3:
	pushl	%edi
LCFI4:
	pushl	%esi
LCFI5:
	pushl	%ebx
LCFI6:
	.loc 1 21 0
	movl	_MyQueue_Start, %eax
	incl	%eax
	movl	$300000, %edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	_MyQueue_Index, %eax
	cmpl	%eax, %edx
	jle	L4
	.loc 1 23 0
	movl	$0, %eax
	jmp	L5
L4:
	.loc 1 25 0
	movl	_MyQueue_Start, %eax
	incl	%eax
	movl	$300000, %edx
	movl	%edx, %esi
	cltd
	idivl	%esi
	movl	%edx, %eax
	movl	%eax, _MyQueue_Start
	.loc 1 26 0
	movl	_MyQueue_Start, %edx
	movl	8(%ebp), %eax
	movl	%edx, %ecx
	sall	$4, %ecx
	movl	%eax, %edx
	leal	_MyContainer(%ecx), %ebx
	movl	$4, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	.loc 1 27 0
	movl	$1, %eax
L5:
	.loc 1 28 0
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
LFE8:
.globl _MyQueue_Push
	.def	_MyQueue_Push;	.scl	2;	.type	32;	.endef
_MyQueue_Push:
LFB9:
	.loc 1 30 0
	pushl	%ebp
LCFI7:
	movl	%esp, %ebp
LCFI8:
	pushl	%edi
LCFI9:
	pushl	%esi
LCFI10:
	pushl	%ebx
LCFI11:
	.loc 1 31 0
	movl	_MyQueue_Index, %eax
	incl	%eax
	movl	$300000, %edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	_MyQueue_Start, %eax
	cmpl	%eax, %edx
	jne	L8
	.loc 1 33 0
	movl	$0, %eax
	jmp	L9
L8:
	.loc 1 35 0
	movl	_MyQueue_Index, %eax
	incl	%eax
	movl	$300000, %edx
	movl	%edx, %esi
	cltd
	idivl	%esi
	movl	%edx, %eax
	movl	%eax, _MyQueue_Index
	.loc 1 36 0
	movl	_MyQueue_Index, %eax
	sall	$4, %eax
	leal	_MyContainer(%eax), %ebx
	leal	8(%ebp), %edx
	movl	$4, %eax
	movl	%ebx, %edi
	movl	%edx, %esi
	movl	%eax, %ecx
	rep movsl
	.loc 1 37 0
	movl	$1, %eax
L9:
	.loc 1 38 0
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
LFE9:
	.comm	_Maze, 90608	 # 90601
	.comm	_Record, 90608	 # 90601
	.comm	_Start, 16	 # 16
	.comm	_End, 16	 # 16
.globl _BFS
	.def	_BFS;	.scl	2;	.type	32;	.endef
_BFS:
LFB10:
	.loc 1 46 0
	pushl	%ebp
LCFI12:
	movl	%esp, %ebp
LCFI13:
	pushl	%edi
LCFI14:
	pushl	%esi
LCFI15:
	pushl	%ebx
LCFI16:
	subl	$80, %esp
LCFI17:
	.loc 1 50 0
	jmp	L12
L34:
	.loc 1 52 0
	movl	-40(%ebp), %eax
	movl	$3, %edx
	movl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	incl	%eax
	movl	%eax, -24(%ebp)
	.loc 1 53 0
	movl	-48(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 54 0
	movl	-44(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 55 0
	movl	_End, %eax
	cmpl	-20(%ebp), %eax
	jne	L13
	movl	_End+4, %eax
	cmpl	-16(%ebp), %eax
	jne	L13
	.loc 1 56 0
	movl	-36(%ebp), %eax
	jmp	L14
L13:
	.loc 1 58 0
	movl	$1, -32(%ebp)
	jmp	L15
L18:
	.loc 1 60 0
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	-20(%ebp), %ecx
	addl	%eax, %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	(%eax), %al
	cmpb	$46, %al
	jne	L36
L16:
	.loc 1 58 0
	incl	-32(%ebp)
L15:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	L18
	jmp	L17
L36:
	.loc 1 61 0
	nop
L17:
	.loc 1 63 0
	movl	-24(%ebp), %eax
	incl	%eax
	cmpl	-32(%ebp), %eax
	jne	L19
	.loc 1 65 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, -64(%ebp)
	.loc 1 66 0
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 67 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 68 0
	movl	-36(%ebp), %eax
	incl	%eax
	movl	%eax, -52(%ebp)
	.loc 1 69 0
	movl	%esp, %edx
	leal	-64(%ebp), %ebx
	movl	$4, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_MyQueue_Push
L19:
	.loc 1 72 0
	movl	$1, -32(%ebp)
	jmp	L20
L23:
	.loc 1 74 0
	movl	-16(%ebp), %edx
	movl	-32(%ebp), %eax
	movl	-20(%ebp), %ecx
	subl	%eax, %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	(%eax), %al
	cmpb	$46, %al
	jne	L37
L21:
	.loc 1 72 0
	incl	-32(%ebp)
L20:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	L23
	jmp	L22
L37:
	.loc 1 75 0
	nop
L22:
	.loc 1 77 0
	movl	-24(%ebp), %eax
	incl	%eax
	cmpl	-32(%ebp), %eax
	jne	L24
	.loc 1 79 0
	movl	-24(%ebp), %eax
	movl	-20(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -64(%ebp)
	.loc 1 80 0
	movl	-16(%ebp), %eax
	movl	%eax, -60(%ebp)
	.loc 1 81 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 82 0
	movl	-36(%ebp), %eax
	incl	%eax
	movl	%eax, -52(%ebp)
	.loc 1 83 0
	movl	%esp, %edx
	leal	-64(%ebp), %ebx
	movl	$4, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_MyQueue_Push
L24:
	.loc 1 86 0
	movl	$1, -32(%ebp)
	jmp	L25
L28:
	.loc 1 88 0
	movl	-32(%ebp), %eax
	movl	-16(%ebp), %edx
	subl	%eax, %edx
	movl	-20(%ebp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	(%eax), %al
	cmpb	$46, %al
	jne	L38
L26:
	.loc 1 86 0
	incl	-32(%ebp)
L25:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	L28
	jmp	L27
L38:
	.loc 1 89 0
	nop
L27:
	.loc 1 91 0
	movl	-24(%ebp), %eax
	incl	%eax
	cmpl	-32(%ebp), %eax
	jne	L29
	.loc 1 93 0
	movl	-20(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 94 0
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -60(%ebp)
	.loc 1 95 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 96 0
	movl	-36(%ebp), %eax
	incl	%eax
	movl	%eax, -52(%ebp)
	.loc 1 97 0
	movl	%esp, %edx
	leal	-64(%ebp), %ebx
	movl	$4, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_MyQueue_Push
L29:
	.loc 1 100 0
	movl	$1, -32(%ebp)
	jmp	L30
L33:
	.loc 1 102 0
	movl	-32(%ebp), %eax
	movl	-16(%ebp), %edx
	addl	%eax, %edx
	movl	-20(%ebp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	(%eax), %al
	cmpb	$46, %al
	jne	L39
L31:
	.loc 1 100 0
	incl	-32(%ebp)
L30:
	movl	-32(%ebp), %eax
	cmpl	-24(%ebp), %eax
	jle	L33
	jmp	L32
L39:
	.loc 1 103 0
	nop
L32:
	.loc 1 105 0
	movl	-24(%ebp), %eax
	incl	%eax
	cmpl	-32(%ebp), %eax
	jne	L12
	.loc 1 107 0
	movl	-20(%ebp), %eax
	movl	%eax, -64(%ebp)
	.loc 1 108 0
	movl	-24(%ebp), %eax
	movl	-16(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, -60(%ebp)
	.loc 1 109 0
	movl	-24(%ebp), %eax
	movl	%eax, -56(%ebp)
	.loc 1 110 0
	movl	-36(%ebp), %eax
	incl	%eax
	movl	%eax, -52(%ebp)
	.loc 1 111 0
	movl	%esp, %edx
	leal	-64(%ebp), %ebx
	movl	$4, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_MyQueue_Push
L12:
	.loc 1 50 0
	leal	-48(%ebp), %eax
	movl	%eax, (%esp)
	call	_MyQueue_Pop
	testl	%eax, %eax
	jne	L34
	.loc 1 114 0
	movl	$0, %eax
L14:
	.loc 1 115 0
	addl	$80, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d\0"
LC1:
	.ascii "%d%d\0"
LC2:
	.ascii "NO\0"
LC3:
	.ascii "%d\12\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB11:
	.loc 1 118 0
	pushl	%ebp
LCFI18:
	movl	%esp, %ebp
LCFI19:
	andl	$-16, %esp
LCFI20:
	pushl	%edi
LCFI21:
	pushl	%esi
LCFI22:
	pushl	%ebx
LCFI23:
	subl	$52, %esp
LCFI24:
	.loc 1 118 0
	call	___main
	.loc 1 121 0
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 122 0
	jmp	L41
L49:
	.loc 1 124 0
	movl	$90601, 8(%esp)
	movl	$35, 4(%esp)
	movl	$_Maze, (%esp)
	call	_memset
	.loc 1 125 0
	movl	$90601, 8(%esp)
	movl	$0, 4(%esp)
	movl	$_Record, (%esp)
	call	_memset
	.loc 1 126 0
	call	_MyQueue_initialize
	.loc 1 127 0
	leal	28(%esp), %eax
	movl	%eax, 8(%esp)
	leal	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_scanf
	.loc 1 128 0
	call	_getchar
	.loc 1 129 0
	movl	$1, 36(%esp)
	jmp	L42
L47:
	.loc 1 131 0
	movl	$_Maze, %ecx
	movl	36(%esp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	incl	%eax
	leal	(%ecx,%eax), %eax
	movl	%eax, (%esp)
	call	_gets
	.loc 1 132 0
	movl	$1, 40(%esp)
	jmp	L43
L46:
	.loc 1 134 0
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	(%eax), %al
	cmpb	$83, %al
	jne	L44
	.loc 1 136 0
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	$46, (%eax)
	.loc 1 137 0
	movl	40(%esp), %eax
	movl	%eax, _Start
	.loc 1 138 0
	movl	36(%esp), %eax
	movl	%eax, _Start+4
	.loc 1 139 0
	movl	$3, _Start+8
	.loc 1 140 0
	movl	$0, _Start+12
	.loc 1 141 0
	movl	%esp, %edx
	movl	$_Start, %ebx
	movl	$4, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	call	_MyQueue_Push
	jmp	L45
L44:
	.loc 1 143 0
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	(%eax), %al
	cmpb	$69, %al
	jne	L45
	.loc 1 145 0
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	movl	%edx, %eax
	sall	$3, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	%eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%ecx, %eax
	addl	$_Maze, %eax
	movb	$46, (%eax)
	.loc 1 146 0
	movl	40(%esp), %eax
	movl	%eax, _End
	.loc 1 147 0
	movl	36(%esp), %eax
	movl	%eax, _End+4
L45:
	.loc 1 132 0
	incl	40(%esp)
L43:
	movl	28(%esp), %eax
	cmpl	%eax, 40(%esp)
	jle	L46
	.loc 1 129 0
	incl	36(%esp)
L42:
	movl	24(%esp), %eax
	cmpl	%eax, 36(%esp)
	jle	L47
	.loc 1 151 0
	call	_BFS
	movl	%eax, 44(%esp)
	.loc 1 152 0
	cmpl	$0, 44(%esp)
	jne	L48
	.loc 1 154 0
	movl	$LC2, (%esp)
	call	_puts
	jmp	L41
L48:
	.loc 1 158 0
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_printf
L41:
	.loc 1 122 0
	movl	32(%esp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, 32(%esp)
	testb	%dl, %dl
	jne	L49
	.loc 1 161 0
	movl	$0, %eax
	.loc 1 162 0
	addl	$52, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret
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
	.align 4
LEFDE0:
LSFDE2:
	.long	LEFDE2-LASFDE2
LASFDE2:
	.secrel32	Lframe0
	.long	LFB8
	.long	LFE8-LFB8
	.byte	0x4
	.long	LCFI2-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI3-LCFI2
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI6-LCFI3
	.byte	0x11
	.uleb128 0x3
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 4
	.byte	0x11
	.uleb128 0x7
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
	.long	LCFI7-LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI8-LCFI7
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI11-LCFI8
	.byte	0x11
	.uleb128 0x3
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 4
	.byte	0x11
	.uleb128 0x7
	.sleb128 3
	.align 4
LEFDE4:
LSFDE6:
	.long	LEFDE6-LASFDE6
LASFDE6:
	.secrel32	Lframe0
	.long	LFB10
	.long	LFE10-LFB10
	.byte	0x4
	.long	LCFI12-LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI13-LCFI12
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI17-LCFI13
	.byte	0x11
	.uleb128 0x3
	.sleb128 5
	.byte	0x11
	.uleb128 0x6
	.sleb128 4
	.byte	0x11
	.uleb128 0x7
	.sleb128 3
	.align 4
LEFDE6:
LSFDE8:
	.long	LEFDE8-LASFDE8
LASFDE8:
	.secrel32	Lframe0
	.long	LFB11
	.long	LFE11-LFB11
	.byte	0x4
	.long	LCFI18-LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI19-LCFI18
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI24-LCFI19
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
	.long	LCFI2-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI2-Ltext0
	.long	LCFI3-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI3-Ltext0
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST2:
	.long	LFB9-Ltext0
	.long	LCFI7-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI7-Ltext0
	.long	LCFI8-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI8-Ltext0
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST3:
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
	.long	LFE10-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST4:
	.long	LFB11-Ltext0
	.long	LCFI18-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI18-Ltext0
	.long	LCFI19-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 8
	.long	LCFI19-Ltext0
	.long	LFE11-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x423
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\928 Eternal Truths\\main.c\0"
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
	.long	0x11f
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x11f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x80
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x88
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
	.byte	0x10
	.byte	0x1
	.byte	0x7
	.long	0x1a6
	.uleb128 0x4
	.ascii "X\0"
	.byte	0x1
	.byte	0x8
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "Y\0"
	.byte	0x1
	.byte	0x9
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "NextMove\0"
	.byte	0x1
	.byte	0xa
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "Times\0"
	.byte	0x1
	.byte	0xb
	.long	0x125
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0x0
	.uleb128 0x6
	.ascii "Container\0"
	.byte	0x1
	.byte	0xc
	.long	0x162
	.uleb128 0x8
	.byte	0x1
	.ascii "MyQueue_initialize\0"
	.byte	0x1
	.byte	0xf
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.uleb128 0x9
	.byte	0x1
	.ascii "MyQueue_Pop\0"
	.byte	0x1
	.byte	0x13
	.byte	0x1
	.long	0x125
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x212
	.uleb128 0xa
	.ascii "Element\0"
	.byte	0x1
	.byte	0x13
	.long	0x212
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x1a6
	.uleb128 0x9
	.byte	0x1
	.ascii "MyQueue_Push\0"
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	0x125
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x251
	.uleb128 0xa
	.ascii "Element\0"
	.byte	0x1
	.byte	0x1d
	.long	0x1a6
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "BFS\0"
	.byte	0x1
	.byte	0x2d
	.long	0x125
	.long	LFB10
	.long	LFE10
	.secrel32	LLST3
	.long	0x2d9
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x2f
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.ascii "J\0"
	.byte	0x1
	.byte	0x2f
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0xc
	.ascii "K\0"
	.byte	0x1
	.byte	0x2f
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.ascii "CurrentX\0"
	.byte	0x1
	.byte	0x30
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.ascii "CurrentY\0"
	.byte	0x1
	.byte	0x30
	.long	0x125
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xc
	.ascii "Temp1\0"
	.byte	0x1
	.byte	0x31
	.long	0x1a6
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.ascii "Temp2\0"
	.byte	0x1
	.byte	0x31
	.long	0x1a6
	.byte	0x3
	.byte	0x91
	.sleb128 -72
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x75
	.long	0x125
	.long	LFB11
	.long	LFE11
	.secrel32	LLST4
	.long	0x33f
	.uleb128 0xc
	.ascii "N\0"
	.byte	0x1
	.byte	0x77
	.long	0x125
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0xc
	.ascii "C\0"
	.byte	0x1
	.byte	0x77
	.long	0x125
	.byte	0x2
	.byte	0x74
	.sleb128 28
	.uleb128 0xc
	.ascii "R\0"
	.byte	0x1
	.byte	0x77
	.long	0x125
	.byte	0x2
	.byte	0x74
	.sleb128 24
	.uleb128 0xc
	.ascii "I\0"
	.byte	0x1
	.byte	0x78
	.long	0x125
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0xc
	.ascii "J\0"
	.byte	0x1
	.byte	0x78
	.long	0x125
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.uleb128 0xc
	.ascii "K\0"
	.byte	0x1
	.byte	0x78
	.long	0x125
	.byte	0x2
	.byte	0x74
	.sleb128 44
	.byte	0x0
	.uleb128 0xd
	.long	0x12c
	.long	0x34a
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xf
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x33f
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.long	0x1a6
	.long	0x36b
	.uleb128 0x10
	.long	0x36b
	.long	0x493df
	.byte	0x0
	.uleb128 0x11
	.byte	0x4
	.byte	0x7
	.uleb128 0x12
	.ascii "MyContainer\0"
	.byte	0x1
	.byte	0xd
	.long	0x358
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyContainer
	.uleb128 0x12
	.ascii "MyQueue_Start\0"
	.byte	0x1
	.byte	0xe
	.long	0x125
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyQueue_Start
	.uleb128 0x12
	.ascii "MyQueue_Index\0"
	.byte	0x1
	.byte	0xe
	.long	0x125
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_MyQueue_Index
	.uleb128 0xd
	.long	0x80
	.long	0x3d8
	.uleb128 0x13
	.long	0x36b
	.word	0x12c
	.uleb128 0x13
	.long	0x36b
	.word	0x12c
	.byte	0x0
	.uleb128 0x12
	.ascii "Maze\0"
	.byte	0x1
	.byte	0x29
	.long	0x3c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Maze
	.uleb128 0x12
	.ascii "Record\0"
	.byte	0x1
	.byte	0x2a
	.long	0x3c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Record
	.uleb128 0x12
	.ascii "Start\0"
	.byte	0x1
	.byte	0x2b
	.long	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_Start
	.uleb128 0x12
	.ascii "End\0"
	.byte	0x1
	.byte	0x2b
	.long	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_End
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
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0xb1
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x427
	.long	0x1b7
	.ascii "MyQueue_initialize\0"
	.long	0x1da
	.ascii "MyQueue_Pop\0"
	.long	0x218
	.ascii "MyQueue_Push\0"
	.long	0x251
	.ascii "BFS\0"
	.long	0x2d9
	.ascii "main\0"
	.long	0x36e
	.ascii "MyContainer\0"
	.long	0x388
	.ascii "MyQueue_Start\0"
	.long	0x3a4
	.ascii "MyQueue_Index\0"
	.long	0x3d8
	.ascii "Maze\0"
	.long	0x3eb
	.ascii "Record\0"
	.long	0x400
	.ascii "Start\0"
	.long	0x414
	.ascii "End\0"
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
	.def	_memset;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_getchar;	.scl	2;	.type	32;	.endef
	.def	_gets;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
