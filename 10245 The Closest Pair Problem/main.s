	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
	.comm	_SortedX, 48000016	 # 48000016
	.comm	_SortedY, 48000016	 # 48000016
.globl _CompareX
	.def	_CompareX;	.scl	2;	.type	32;	.endef
_CompareX:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/10245 The Closest Pair Problem/main.c"
	.loc 1 10 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	subl	$8, %esp
LCFI2:
	.loc 1 11 0
	movl	8(%ebp), %eax
	fldl	(%eax)
	movl	12(%ebp), %eax
	fldl	(%eax)
	fsubrp	%st, %st(1)
	fnstcw	-2(%ebp)
	movw	-2(%ebp), %ax
	movb	$12, %ah
	movw	%ax, -4(%ebp)
	fldcw	-4(%ebp)
	fistpl	-8(%ebp)
	fldcw	-2(%ebp)
	movl	-8(%ebp), %eax
	.loc 1 12 0
	leave
	ret
LFE7:
.globl _CompareY
	.def	_CompareY;	.scl	2;	.type	32;	.endef
_CompareY:
LFB8:
	.loc 1 14 0
	pushl	%ebp
LCFI3:
	movl	%esp, %ebp
LCFI4:
	subl	$8, %esp
LCFI5:
	.loc 1 15 0
	movl	8(%ebp), %eax
	fldl	8(%eax)
	movl	12(%ebp), %eax
	fldl	8(%eax)
	fsubrp	%st, %st(1)
	fnstcw	-2(%ebp)
	movw	-2(%ebp), %ax
	movb	$12, %ah
	movw	%ax, -4(%ebp)
	fldcw	-4(%ebp)
	fistpl	-8(%ebp)
	fldcw	-2(%ebp)
	movl	-8(%ebp), %eax
	.loc 1 16 0
	leave
	ret
LFE8:
.globl _TheClosestPair
	.def	_TheClosestPair;	.scl	2;	.type	32;	.endef
_TheClosestPair:
LFB9:
	.loc 1 18 0
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	subl	$72, %esp
LCFI8:
	.loc 1 21 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	testl	%eax, %eax
	jg	L6
	.loc 1 23 0
	fldl	LC1
	jmp	L7
L6:
	.loc 1 25 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	cmpl	$1, %eax
	jne	L8
	.loc 1 27 0
	movl	12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	movl	8(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	fsubrp	%st, %st(1)
	movl	12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	movl	8(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	movl	12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX+8(%eax)
	movl	8(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX+8(%eax)
	fsubrp	%st, %st(1)
	movl	12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX+8(%eax)
	movl	8(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX+8(%eax)
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	jmp	L7
L8:
	.loc 1 31 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_TheClosestPair
	fstpl	-56(%ebp)
	.loc 1 32 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	movl	12(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_TheClosestPair
	fstpl	-48(%ebp)
	.loc 1 33 0
	fldl	-56(%ebp)
	fldl	-48(%ebp)
	fucompp
	fnstsw	%ax
	testb	$69, %ah
	sete	%al
	testb	%al, %al
	je	L9
	movl	-56(%ebp), %eax
	movl	-52(%ebp), %edx
	jmp	L10
L9:
	movl	-48(%ebp), %eax
	movl	-44(%ebp), %edx
L10:
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	.loc 1 34 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -24(%ebp)
	.loc 1 35 0
	jmp	L11
L13:
	incl	-24(%ebp)
L11:
	movl	-24(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	faddl	-40(%ebp)
	fucompp
	fnstsw	%ax
	testb	$5, %ah
	sete	%al
	testb	%al, %al
	je	L12
	movl	-24(%ebp), %eax
	cmpl	12(%ebp), %eax
	jle	L13
L12:
	.loc 1 36 0
	decl	-24(%ebp)
	.loc 1 37 0
	jmp	L14
L16:
	decl	-20(%ebp)
L14:
	movl	-20(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	leal	(%edx,%eax), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	leal	(%edx,%eax), %eax
	sarl	%eax
	sall	$4, %eax
	fldl	_SortedX(%eax)
	fsubl	-40(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	testb	$5, %ah
	sete	%al
	testb	%al, %al
	je	L15
	movl	-20(%ebp), %eax
	cmpl	8(%ebp), %eax
	jge	L16
L15:
	.loc 1 38 0
	incl	-20(%ebp)
	.loc 1 39 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	sall	$4, %eax
	movl	-20(%ebp), %edx
	sall	$4, %edx
	addl	$_SortedX, %edx
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$_SortedY, (%esp)
	call	_memcpy
	.loc 1 40 0
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	movl	$_CompareY, 12(%esp)
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_SortedY, (%esp)
	call	_qsort
	.loc 1 41 0
	movl	$0, -16(%ebp)
	jmp	L17
L22:
	.loc 1 43 0
	movl	-16(%ebp), %eax
	incl	%eax
	movl	%eax, -12(%ebp)
	jmp	L18
L21:
	.loc 1 45 0
	movl	-16(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY(%eax)
	movl	-12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY(%eax)
	fsubrp	%st, %st(1)
	movl	-16(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY(%eax)
	movl	-12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY(%eax)
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	movl	-16(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY+8(%eax)
	movl	-12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY+8(%eax)
	fsubrp	%st, %st(1)
	movl	-16(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY+8(%eax)
	movl	-12(%ebp), %eax
	sall	$4, %eax
	fldl	_SortedY+8(%eax)
	fsubrp	%st, %st(1)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	-32(%ebp)
	.loc 1 46 0
	fldl	-40(%ebp)
	fldl	-32(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	testb	$69, %ah
	sete	%al
	testb	%al, %al
	je	L19
	movl	-32(%ebp), %eax
	movl	-28(%ebp), %edx
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
L19:
	.loc 1 43 0
	incl	-12(%ebp)
L18:
	movl	-16(%ebp), %eax
	addl	$8, %eax
	cmpl	-12(%ebp), %eax
	jle	L20
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	cmpl	-12(%ebp), %eax
	jg	L21
L20:
	.loc 1 41 0
	incl	-16(%ebp)
L17:
	movl	-20(%ebp), %eax
	movl	-24(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	incl	%eax
	cmpl	-16(%ebp), %eax
	jg	L22
	.loc 1 49 0
	fldl	-40(%ebp)
L7:
	.loc 1 51 0
	leave
	ret
LFE9:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC2:
	.ascii "%d\0"
LC3:
	.ascii "%lf%lf\0"
LC5:
	.ascii "%.4f\12\0"
LC6:
	.ascii "INFINITY\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.loc 1 53 0
	pushl	%ebp
LCFI9:
	movl	%esp, %ebp
LCFI10:
	andl	$-16, %esp
LCFI11:
	subl	$48, %esp
LCFI12:
	.loc 1 53 0
	call	___main
L25:
	.loc 1 56 0
	leal	32(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_scanf
	movl	32(%esp), %eax
	testl	%eax, %eax
	jne	L25
	.loc 1 58 0
	movl	$0, 36(%esp)
	jmp	L26
L27:
	.loc 1 59 0
	movl	36(%esp), %eax
	sall	$4, %eax
	addl	$_SortedX, %eax
	leal	8(%eax), %edx
	movl	36(%esp), %eax
	sall	$4, %eax
	addl	$_SortedX, %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_scanf
	.loc 1 58 0
	incl	36(%esp)
L26:
	movl	32(%esp), %eax
	cmpl	%eax, 36(%esp)
	jl	L27
	.loc 1 60 0
	movl	32(%esp), %eax
	sall	$4, %eax
	movl	%eax, 8(%esp)
	movl	$_SortedX, 4(%esp)
	movl	$_SortedY, (%esp)
	call	_memcpy
	.loc 1 61 0
	movl	32(%esp), %eax
	movl	$_CompareX, 12(%esp)
	movl	$16, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$_SortedX, (%esp)
	call	_qsort
	.loc 1 62 0
	movl	32(%esp), %eax
	decl	%eax
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_TheClosestPair
	fld	%st(0)
	fsqrt
	fucom	%st(0)
	fnstsw	%ax
	andb	$69, %ah
	cmpb	$64, %ah
	je	L32
	fstp	%st(0)
	fstpl	(%esp)
	call	_sqrt
	jmp	L28
L32:
	fstp	%st(1)
L28:
	fstpl	24(%esp)
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	%eax, 40(%esp)
	movl	%edx, 44(%esp)
	.loc 1 63 0
	fldl	40(%esp)
	fldl	LC4
	fucompp
	fnstsw	%ax
	testb	$69, %ah
	sete	%al
	testb	%al, %al
	je	L29
	.loc 1 64 0
	movl	40(%esp), %eax
	movl	44(%esp), %edx
	movl	%eax, 4(%esp)
	movl	%edx, 8(%esp)
	movl	$LC5, (%esp)
	call	_printf
	jmp	L30
L29:
	.loc 1 66 0
	movl	$LC6, (%esp)
	call	_puts
L30:
	.loc 1 68 0
	movl	$0, %eax
	.loc 1 69 0
	leave
	ret
LFE10:
	.section .rdata,"dr"
	.align 8
LC1:
	.long	0
	.long	1100470148
	.align 8
LC4:
	.long	0
	.long	1086556160
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
	.long	LCFI3-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI4-LCFI3
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE2:
LSFDE4:
	.long	LEFDE4-LASFDE4
LASFDE4:
	.secrel32	Lframe0
	.long	LFB9
	.long	LFE9-LFB9
	.byte	0x4
	.long	LCFI6-LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI7-LCFI6
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
	.long	LCFI9-LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI10-LCFI9
	.byte	0xd
	.uleb128 0x5
	.align 4
LEFDE6:
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
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST2:
	.long	LFB9-Ltext0
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
	.long	LFE9-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST3:
	.long	LFB10-Ltext0
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
	.long	LFE10-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x384
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\10245 The Closest Pair Problem\\main.c\0"
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
	.long	0x12b
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x131
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x12b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x8c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x94
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
	.uleb128 0x3
	.ascii "Point\0"
	.byte	0x10
	.byte	0x1
	.byte	0x5
	.long	0x195
	.uleb128 0x4
	.ascii "X\0"
	.byte	0x1
	.byte	0x6
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "Y\0"
	.byte	0x1
	.byte	0x6
	.long	0x195
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0x0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x6
	.ascii "Point\0"
	.byte	0x1
	.byte	0x7
	.long	0x16e
	.uleb128 0x7
	.byte	0x1
	.ascii "CompareX\0"
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.long	0x131
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x1e7
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x1
	.byte	0x9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x1
	.byte	0x9
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x1ed
	.uleb128 0x9
	.uleb128 0x7
	.byte	0x1
	.ascii "CompareY\0"
	.byte	0x1
	.byte	0xd
	.byte	0x1
	.long	0x131
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x229
	.uleb128 0x8
	.ascii "A\0"
	.byte	0x1
	.byte	0xd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "B\0"
	.byte	0x1
	.byte	0xd
	.long	0x1e7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.ascii "TheClosestPair\0"
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.long	0x195
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x2dc
	.uleb128 0x8
	.ascii "L\0"
	.byte	0x1
	.byte	0x11
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.ascii "R\0"
	.byte	0x1
	.byte	0x11
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xa
	.ascii "LMinimun\0"
	.byte	0x1
	.byte	0x13
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0xa
	.ascii "RMinimun\0"
	.byte	0x1
	.byte	0x13
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.ascii "D\0"
	.byte	0x1
	.byte	0x13
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xa
	.ascii "Temp1\0"
	.byte	0x1
	.byte	0x13
	.long	0x195
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.ascii "K\0"
	.byte	0x1
	.byte	0x14
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xa
	.ascii "P\0"
	.byte	0x1
	.byte	0x14
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xa
	.ascii "C\0"
	.byte	0x1
	.byte	0x14
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xa
	.ascii "S\0"
	.byte	0x1
	.byte	0x14
	.long	0x131
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0x0
	.uleb128 0xb
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x34
	.long	0x131
	.long	LFB10
	.long	LFE10
	.secrel32	LLST3
	.long	0x32c
	.uleb128 0xa
	.ascii "I\0"
	.byte	0x1
	.byte	0x36
	.long	0x131
	.byte	0x2
	.byte	0x74
	.sleb128 36
	.uleb128 0xa
	.ascii "N\0"
	.byte	0x1
	.byte	0x36
	.long	0x131
	.byte	0x2
	.byte	0x74
	.sleb128 32
	.uleb128 0xa
	.ascii "MinimunDistance\0"
	.byte	0x1
	.byte	0x37
	.long	0x195
	.byte	0x2
	.byte	0x74
	.sleb128 40
	.byte	0x0
	.uleb128 0xc
	.long	0x138
	.long	0x337
	.uleb128 0xd
	.byte	0x0
	.uleb128 0xe
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x32c
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.long	0x19f
	.long	0x358
	.uleb128 0xf
	.long	0x358
	.long	0x2dc6c0
	.byte	0x0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uleb128 0x11
	.ascii "SortedX\0"
	.byte	0x1
	.byte	0x8
	.long	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_SortedX
	.uleb128 0x11
	.ascii "SortedY\0"
	.byte	0x1
	.byte	0x8
	.long	0x345
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	_SortedY
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
	.uleb128 0x26
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x5c
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x388
	.long	0x1ac
	.ascii "CompareX\0"
	.long	0x1ee
	.ascii "CompareY\0"
	.long	0x229
	.ascii "TheClosestPair\0"
	.long	0x2dc
	.ascii "main\0"
	.long	0x35b
	.ascii "SortedX\0"
	.long	0x371
	.ascii "SortedY\0"
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
	.def	_memcpy;	.scl	2;	.type	32;	.endef
	.def	_qsort;	.scl	2;	.type	32;	.endef
	.def	_sqrt;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
