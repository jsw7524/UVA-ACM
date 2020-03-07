	.file	"main.c"
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.section	.debug_info,"dr"
Ldebug_info0:
	.section	.debug_line,"dr"
Ldebug_line0:
	.text
Ltext0:
.globl _Regularize
	.def	_Regularize;	.scl	2;	.type	32;	.endef
_Regularize:
LFB7:
	.file 1 "C:/MyData/Google Cloud/ACM/737 Gleaming the cubes/main.c"
	.loc 1 10 0
	pushl	%ebp
LCFI0:
	movl	%esp, %ebp
LCFI1:
	pushl	%edi
LCFI2:
	pushl	%esi
LCFI3:
	pushl	%ebx
LCFI4:
	subl	$124, %esp
LCFI5:
	.loc 1 12 0
	movl	24(%ebp), %eax
	movl	12(%ebp), %edx
	leal	(%edx,%eax), %ecx
	.loc 1 13 0
	movl	24(%ebp), %eax
	movl	16(%ebp), %edx
	leal	(%edx,%eax), %esi
	.loc 1 14 0
	movl	24(%ebp), %eax
	movl	20(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -136(%ebp)
	.loc 1 15 0
	movl	24(%ebp), %eax
	movl	12(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -132(%ebp)
	movl	24(%ebp), %eax
	movl	16(%ebp), %edx
	addl	%eax, %edx
	movl	%edx, -128(%ebp)
	.loc 1 16 0
	movl	24(%ebp), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -124(%ebp)
	movl	24(%ebp), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -120(%ebp)
	.loc 1 17 0
	movl	24(%ebp), %edx
	movl	16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -116(%ebp)
	movl	24(%ebp), %edx
	movl	20(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -112(%ebp)
	.loc 1 18 0
	movl	24(%ebp), %edx
	movl	12(%ebp), %eax
	leal	(%eax,%edx), %edi
	movl	24(%ebp), %edx
	movl	16(%ebp), %eax
	leal	(%eax,%edx), %ebx
	movl	24(%ebp), %edx
	movl	20(%ebp), %eax
	leal	(%eax,%edx), %edx
	movl	12(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	%ecx, -96(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -92(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -88(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	%esi, -80(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-136(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-132(%ebp), %ecx
	movl	%ecx, -60(%ebp)
	movl	-128(%ebp), %esi
	movl	%esi, -56(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	-124(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	16(%ebp), %eax
	movl	%eax, -44(%ebp)
	movl	-120(%ebp), %ecx
	movl	%ecx, -40(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-116(%ebp), %esi
	movl	%esi, -32(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	%edi, -24(%ebp)
	movl	%ebx, -20(%ebp)
	movl	%edx, -16(%ebp)
	.loc 1 19 0
	movl	8(%ebp), %edx
	leal	-108(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	.loc 1 20 0
	movl	8(%ebp), %eax
	addl	$124, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret	$4
LFE7:
.globl _FindIntersection
	.def	_FindIntersection;	.scl	2;	.type	32;	.endef
_FindIntersection:
LFB8:
	.loc 1 23 0
	pushl	%ebp
LCFI6:
	movl	%esp, %ebp
LCFI7:
	pushl	%edi
LCFI8:
	pushl	%esi
LCFI9:
	pushl	%ebx
LCFI10:
	subl	$172, %esp
LCFI11:
	.loc 1 24 0
	movl	108(%ebp), %edx
	movl	12(%ebp), %eax
	.loc 1 54 0
	movl	%edx, -184(%ebp)
	cmpl	%eax, -184(%ebp)
	jge	L4
	movl	%eax, -184(%ebp)
L4:
	.loc 1 25 0
	movl	112(%ebp), %edx
	movl	16(%ebp), %eax
	.loc 1 54 0
	movl	%edx, -180(%ebp)
	cmpl	%eax, -180(%ebp)
	jge	L5
	movl	%eax, -180(%ebp)
L5:
	.loc 1 26 0
	movl	116(%ebp), %edx
	movl	20(%ebp), %eax
	.loc 1 54 0
	movl	%edx, -176(%ebp)
	cmpl	%eax, -176(%ebp)
	jge	L6
	movl	%eax, -176(%ebp)
L6:
	.loc 1 28 0
	movl	120(%ebp), %edx
	movl	24(%ebp), %eax
	.loc 1 54 0
	movl	%edx, -172(%ebp)
	cmpl	%eax, -172(%ebp)
	jle	L7
	movl	%eax, -172(%ebp)
L7:
	.loc 1 29 0
	movl	124(%ebp), %eax
	movl	28(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -168(%ebp)
	cmpl	%edx, -168(%ebp)
	jge	L8
	movl	%edx, -168(%ebp)
L8:
	.loc 1 30 0
	movl	128(%ebp), %eax
	movl	32(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -164(%ebp)
	cmpl	%edx, -164(%ebp)
	jge	L9
	movl	%edx, -164(%ebp)
L9:
	.loc 1 32 0
	movl	132(%ebp), %eax
	movl	36(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -160(%ebp)
	cmpl	%edx, -160(%ebp)
	jge	L10
	movl	%edx, -160(%ebp)
L10:
	.loc 1 33 0
	movl	136(%ebp), %eax
	movl	40(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -156(%ebp)
	cmpl	%edx, -156(%ebp)
	jle	L11
	movl	%edx, -156(%ebp)
L11:
	.loc 1 34 0
	movl	140(%ebp), %eax
	movl	44(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -152(%ebp)
	cmpl	%edx, -152(%ebp)
	jge	L12
	movl	%edx, -152(%ebp)
L12:
	.loc 1 36 0
	movl	144(%ebp), %eax
	movl	48(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -148(%ebp)
	cmpl	%edx, -148(%ebp)
	jge	L13
	movl	%edx, -148(%ebp)
L13:
	.loc 1 37 0
	movl	148(%ebp), %eax
	movl	52(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -144(%ebp)
	cmpl	%edx, -144(%ebp)
	jge	L14
	movl	%edx, -144(%ebp)
L14:
	.loc 1 38 0
	movl	152(%ebp), %eax
	movl	56(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -140(%ebp)
	cmpl	%edx, -140(%ebp)
	jle	L15
	movl	%edx, -140(%ebp)
L15:
	.loc 1 40 0
	movl	156(%ebp), %eax
	movl	60(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -136(%ebp)
	cmpl	%edx, -136(%ebp)
	jle	L16
	movl	%edx, -136(%ebp)
L16:
	.loc 1 41 0
	movl	160(%ebp), %eax
	movl	64(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -132(%ebp)
	cmpl	%edx, -132(%ebp)
	jle	L17
	movl	%edx, -132(%ebp)
L17:
	.loc 1 42 0
	movl	164(%ebp), %eax
	movl	68(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -128(%ebp)
	cmpl	%edx, -128(%ebp)
	jge	L18
	movl	%edx, -128(%ebp)
L18:
	.loc 1 44 0
	movl	168(%ebp), %eax
	movl	72(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -124(%ebp)
	cmpl	%edx, -124(%ebp)
	jle	L19
	movl	%edx, -124(%ebp)
L19:
	.loc 1 45 0
	movl	172(%ebp), %eax
	movl	76(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -120(%ebp)
	cmpl	%edx, -120(%ebp)
	jge	L20
	movl	%edx, -120(%ebp)
L20:
	.loc 1 46 0
	movl	176(%ebp), %eax
	movl	80(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -116(%ebp)
	cmpl	%edx, -116(%ebp)
	jle	L21
	movl	%edx, -116(%ebp)
L21:
	.loc 1 48 0
	movl	180(%ebp), %eax
	movl	84(%ebp), %edx
	.loc 1 54 0
	movl	%eax, -112(%ebp)
	cmpl	%edx, -112(%ebp)
	jge	L22
	movl	%edx, -112(%ebp)
L22:
	.loc 1 49 0
	movl	184(%ebp), %eax
	movl	88(%ebp), %edx
	.loc 1 54 0
	movl	%eax, %edi
	cmpl	%edx, %edi
	jle	L23
	movl	%edx, %edi
L23:
	.loc 1 50 0
	movl	188(%ebp), %eax
	movl	92(%ebp), %edx
	.loc 1 54 0
	movl	%eax, %esi
	cmpl	%edx, %esi
	jle	L24
	movl	%edx, %esi
L24:
	.loc 1 52 0
	movl	192(%ebp), %eax
	movl	96(%ebp), %edx
	.loc 1 54 0
	movl	%eax, %ebx
	cmpl	%edx, %ebx
	jle	L25
	movl	%edx, %ebx
L25:
	.loc 1 53 0
	movl	196(%ebp), %eax
	movl	100(%ebp), %edx
	.loc 1 54 0
	movl	%eax, %ecx
	cmpl	%edx, %ecx
	jle	L26
	movl	%edx, %ecx
L26:
	movl	200(%ebp), %eax
	movl	104(%ebp), %edx
	cmpl	%edx, %eax
	jle	L27
	movl	%edx, %eax
L27:
	movl	-184(%ebp), %edx
	movl	%edx, -108(%ebp)
	movl	-180(%ebp), %edx
	movl	%edx, -104(%ebp)
	movl	-176(%ebp), %edx
	movl	%edx, -100(%ebp)
	movl	-172(%ebp), %edx
	movl	%edx, -96(%ebp)
	movl	-168(%ebp), %edx
	movl	%edx, -92(%ebp)
	movl	-164(%ebp), %edx
	movl	%edx, -88(%ebp)
	movl	-160(%ebp), %edx
	movl	%edx, -84(%ebp)
	movl	-156(%ebp), %edx
	movl	%edx, -80(%ebp)
	movl	-152(%ebp), %edx
	movl	%edx, -76(%ebp)
	movl	-148(%ebp), %edx
	movl	%edx, -72(%ebp)
	movl	-144(%ebp), %edx
	movl	%edx, -68(%ebp)
	movl	-140(%ebp), %edx
	movl	%edx, -64(%ebp)
	movl	-136(%ebp), %edx
	movl	%edx, -60(%ebp)
	movl	-132(%ebp), %edx
	movl	%edx, -56(%ebp)
	movl	-128(%ebp), %edx
	movl	%edx, -52(%ebp)
	movl	-124(%ebp), %edx
	movl	%edx, -48(%ebp)
	movl	-120(%ebp), %edx
	movl	%edx, -44(%ebp)
	movl	-116(%ebp), %edx
	movl	%edx, -40(%ebp)
	movl	-112(%ebp), %edx
	movl	%edx, -36(%ebp)
	movl	%edi, -32(%ebp)
	movl	%esi, -28(%ebp)
	movl	%ebx, -24(%ebp)
	movl	%ecx, -20(%ebp)
	movl	%eax, -16(%ebp)
	.loc 1 56 0
	movl	8(%ebp), %edx
	leal	-108(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	.loc 1 57 0
	movl	8(%ebp), %eax
	addl	$172, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	ret	$4
LFE8:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%d%d%d%d\0"
LC1:
	.ascii "0\0"
LC2:
	.ascii "%d\12\0"
LC3:
	.ascii "%d\0"
	.text
.globl _main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB9:
	.loc 1 60 0
	leal	4(%esp), %ecx
LCFI12:
	andl	$-16, %esp
LCFI13:
	pushl	-4(%ecx)
LCFI14:
	pushl	%ebp
LCFI15:
	movl	%esp, %ebp
LCFI16:
	pushl	%edi
LCFI17:
	pushl	%esi
LCFI18:
	pushl	%ebx
LCFI19:
	pushl	%ecx
LCFI20:
	subl	$552, %esp
LCFI21:
	.loc 1 60 0
	call	___main
	.loc 1 63 0
	jmp	L30
L36:
	.loc 1 65 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	je	L38
L31:
	.loc 1 66 0
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 67 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %ebx
	movl	-36(%ebp), %ecx
	movl	-32(%ebp), %edx
	leal	-140(%ebp), %eax
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Regularize
	subl	$4, %esp
	.loc 1 68 0
	movl	-28(%ebp), %eax
	decl	%eax
	movl	%eax, -28(%ebp)
	.loc 1 69 0
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 70 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %ebx
	movl	-36(%ebp), %ecx
	movl	-32(%ebp), %edx
	leal	-236(%ebp), %eax
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Regularize
	subl	$4, %esp
	.loc 1 71 0
	leal	-344(%ebp), %eax
	movl	%eax, -348(%ebp)
	leal	100(%esp), %edx
	leal	-236(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	leal	4(%esp), %edx
	leal	-140(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	-348(%ebp), %eax
	movl	%eax, (%esp)
	call	_FindIntersection
	subl	$4, %esp
	leal	-140(%ebp), %edx
	leal	-344(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	.loc 1 72 0
	movl	-28(%ebp), %eax
	decl	%eax
	movl	%eax, -28(%ebp)
	.loc 1 73 0
	jmp	L33
L34:
	.loc 1 75 0
	leal	-44(%ebp), %eax
	movl	%eax, 16(%esp)
	leal	-40(%ebp), %eax
	movl	%eax, 12(%esp)
	leal	-36(%ebp), %eax
	movl	%eax, 8(%esp)
	leal	-32(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	.loc 1 76 0
	movl	-44(%ebp), %esi
	movl	-40(%ebp), %ebx
	movl	-36(%ebp), %ecx
	movl	-32(%ebp), %edx
	leal	-344(%ebp), %eax
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Regularize
	subl	$4, %esp
	leal	-236(%ebp), %edx
	leal	-344(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	.loc 1 77 0
	leal	-344(%ebp), %eax
	movl	%eax, -352(%ebp)
	leal	100(%esp), %edx
	leal	-236(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	leal	4(%esp), %edx
	leal	-140(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
	movl	-352(%ebp), %eax
	movl	%eax, (%esp)
	call	_FindIntersection
	subl	$4, %esp
	leal	-140(%ebp), %edx
	leal	-344(%ebp), %ebx
	movl	$24, %eax
	movl	%edx, %edi
	movl	%ebx, %esi
	movl	%eax, %ecx
	rep movsl
L33:
	.loc 1 73 0
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	setne	%dl
	decl	%eax
	movl	%eax, -28(%ebp)
	testb	%dl, %dl
	jne	L34
	.loc 1 79 0
	movl	-56(%ebp), %edx
	movl	-140(%ebp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-52(%ebp), %edx
	movl	-136(%ebp), %eax
	movl	%edx, %ebx
	subl	%eax, %ebx
	movl	%ebx, %eax
	imull	%ecx, %eax
	movl	-48(%ebp), %ecx
	movl	-132(%ebp), %edx
	movl	%ecx, %esi
	subl	%edx, %esi
	movl	%esi, %edx
	imull	%edx, %eax
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	testl	%eax, %eax
	jg	L35
	.loc 1 80 0
	movl	$LC1, (%esp)
	call	_puts
	jmp	L30
L35:
	.loc 1 82 0
	movl	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
L30:
	.loc 1 63 0
	leal	-28(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC3, (%esp)
	call	_scanf
	cmpl	$-1, %eax
	jne	L36
	jmp	L32
L38:
	.loc 1 65 0
	nop
L32:
	.loc 1 84 0
	movl	$0, %eax
	.loc 1 85 0
	leal	-16(%ebp), %esp
	addl	$0, %esp
	popl	%ecx
	popl	%ebx
	popl	%esi
	popl	%edi
	leave
	leal	-4(%ecx), %esp
	ret
LFE9:
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
	.long	LCFI5-LCFI1
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
LEFDE0:
LSFDE2:
	.long	LEFDE2-LASFDE2
LASFDE2:
	.secrel32	Lframe0
	.long	LFB8
	.long	LFE8-LFB8
	.byte	0x4
	.long	LCFI6-LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x11
	.uleb128 0x5
	.sleb128 2
	.byte	0x4
	.long	LCFI7-LCFI6
	.byte	0xd
	.uleb128 0x5
	.byte	0x4
	.long	LCFI11-LCFI7
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
	.long	LCFI12-LFB9
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.byte	0x4
	.long	LCFI15-LCFI12
	.byte	0x10
	.byte	0x5
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.long	LCFI20-LCFI15
	.byte	0xf
	.uleb128 0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x6
	.byte	0x4
	.long	LCFI21-LCFI20
	.byte	0x10
	.byte	0x3
	.uleb128 0x2
	.byte	0x75
	.sleb128 -12
	.byte	0x10
	.byte	0x6
	.uleb128 0x2
	.byte	0x75
	.sleb128 -8
	.byte	0x10
	.byte	0x7
	.uleb128 0x2
	.byte	0x75
	.sleb128 -4
	.align 4
LEFDE4:
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
	.long	LFE8-Ltext0
	.word	0x2
	.byte	0x75
	.sleb128 8
	.long	0x0
	.long	0x0
LLST2:
	.long	LFB9-Ltext0
	.long	LCFI12-Ltext0
	.word	0x2
	.byte	0x74
	.sleb128 4
	.long	LCFI12-Ltext0
	.long	LCFI20-Ltext0
	.word	0x1
	.byte	0x51
	.long	LCFI20-Ltext0
	.long	LFE9-Ltext0
	.word	0x3
	.byte	0x75
	.sleb128 -16
	.byte	0x6
	.long	0x0
	.long	0x0
	.file 2 "c:/program files (x86)/codeblocks/mingw/bin/../lib/gcc/mingw32/4.4.1/../../../../include/stdio.h"
	.section	.debug_info,"dr"
	.long	0x2ee
	.word	0x2
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C 4.4.1\0"
	.byte	0x1
	.ascii "C:\\MyData\\Google Cloud\\ACM\\737 Gleaming the cubes\\main.c\0"
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
	.long	0x123
	.uleb128 0x4
	.ascii "_ptr\0"
	.byte	0x2
	.byte	0x83
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x4
	.ascii "_cnt\0"
	.byte	0x2
	.byte	0x84
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x4
	.ascii "_base\0"
	.byte	0x2
	.byte	0x85
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x4
	.ascii "_flag\0"
	.byte	0x2
	.byte	0x86
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x4
	.ascii "_file\0"
	.byte	0x2
	.byte	0x87
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x4
	.ascii "_charbuf\0"
	.byte	0x2
	.byte	0x88
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x4
	.ascii "_bufsiz\0"
	.byte	0x2
	.byte	0x89
	.long	0x129
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x4
	.ascii "_tmpfname\0"
	.byte	0x2
	.byte	0x8a
	.long	0x123
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x4
	.long	0x84
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x6
	.ascii "FILE\0"
	.byte	0x2
	.byte	0x8b
	.long	0x8c
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
	.ascii "MyCube\0"
	.byte	0x1
	.byte	0x3
	.long	0x174
	.uleb128 0x3
	.ascii "Cube\0"
	.byte	0x60
	.byte	0x1
	.byte	0x3
	.long	0x192
	.uleb128 0x4
	.ascii "Point\0"
	.byte	0x1
	.byte	0x6
	.long	0x192
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x7
	.long	0x129
	.long	0x1a8
	.uleb128 0x8
	.long	0x1a8
	.byte	0x7
	.uleb128 0x8
	.long	0x1a8
	.byte	0x2
	.byte	0x0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.uleb128 0xa
	.byte	0x1
	.ascii "Regularize\0"
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.long	0x166
	.long	LFB7
	.long	LFE7
	.secrel32	LLST0
	.long	0x210
	.uleb128 0xb
	.ascii "X\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "Y\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xb
	.ascii "Z\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xb
	.ascii "E\0"
	.byte	0x1
	.byte	0x9
	.long	0x129
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xc
	.ascii "Temp\0"
	.byte	0x1
	.byte	0xb
	.long	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0xa
	.byte	0x1
	.ascii "FindIntersection\0"
	.byte	0x1
	.byte	0x16
	.byte	0x1
	.long	0x166
	.long	LFB8
	.long	LFE8
	.secrel32	LLST1
	.long	0x264
	.uleb128 0xb
	.ascii "A\0"
	.byte	0x1
	.byte	0x16
	.long	0x166
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xb
	.ascii "B\0"
	.byte	0x1
	.byte	0x16
	.long	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 100
	.uleb128 0xc
	.ascii "Temp\0"
	.byte	0x1
	.byte	0x18
	.long	0x166
	.byte	0x3
	.byte	0x91
	.sleb128 -116
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.ascii "main\0"
	.byte	0x1
	.byte	0x3b
	.long	0x129
	.long	LFB9
	.long	LFE9
	.secrel32	LLST2
	.long	0x2d8
	.uleb128 0xc
	.ascii "N\0"
	.byte	0x1
	.byte	0x3d
	.long	0x129
	.byte	0x2
	.byte	0x75
	.sleb128 -28
	.uleb128 0xc
	.ascii "X\0"
	.byte	0x1
	.byte	0x3d
	.long	0x129
	.byte	0x2
	.byte	0x75
	.sleb128 -32
	.uleb128 0xc
	.ascii "Y\0"
	.byte	0x1
	.byte	0x3d
	.long	0x129
	.byte	0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0xc
	.ascii "Z\0"
	.byte	0x1
	.byte	0x3d
	.long	0x129
	.byte	0x2
	.byte	0x75
	.sleb128 -40
	.uleb128 0xc
	.ascii "E\0"
	.byte	0x1
	.byte	0x3d
	.long	0x129
	.byte	0x2
	.byte	0x75
	.sleb128 -44
	.uleb128 0xc
	.ascii "A\0"
	.byte	0x1
	.byte	0x3e
	.long	0x166
	.byte	0x3
	.byte	0x75
	.sleb128 -140
	.uleb128 0xc
	.ascii "B\0"
	.byte	0x1
	.byte	0x3e
	.long	0x166
	.byte	0x3
	.byte	0x75
	.sleb128 -236
	.byte	0x0
	.uleb128 0x7
	.long	0x130
	.long	0x2e3
	.uleb128 0xe
	.byte	0x0
	.uleb128 0xf
	.ascii "_iob\0"
	.byte	0x2
	.byte	0x9a
	.long	0x2d8
	.byte	0x1
	.byte	0x1
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
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
	.uleb128 0xb
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
	.byte	0x0
	.section	.debug_pubnames,"dr"
	.long	0x3b
	.word	0x2
	.secrel32	Ldebug_info0
	.long	0x2f2
	.long	0x1ab
	.ascii "Regularize\0"
	.long	0x210
	.ascii "FindIntersection\0"
	.long	0x264
	.ascii "main\0"
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
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
