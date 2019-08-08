	.file	"cvt.c"
	.local	CVTBUF
	.common	CVTBUF,80,8
	.section	".text"
	.align 4
	.global __modf
	.type	__modf, #function
	.proc	07
__modf:
	save	%sp, -128, %sp
	std	%i0, [%fp-24]
	st	%i2, [%fp+76]
	ldd	[%fp-24], %f8
	fdtoi	%f8, %f10
	st	%f10, [%fp-28]
	ld	[%fp-28], %g1
	st	%g1, [%fp-4]
	ld	[%fp-4], %g1
	st	%g1, [%fp-28]
	ld	[%fp-28], %f10
	fitod	%f10, %f8
	ld	[%fp+76], %g1
	std	%f8, [%g1]
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	ldd	[%fp-24], %f10
	fsubd	%f10, %f8, %f8
	std	%f8, [%fp-16]
	ldd	[%fp-16], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	__modf, .-__modf
	.section	".rodata"
	.align 8
.LC0:
	.long	0
	.long	0
	.align 8
.LC1:
	.long	1076101120
	.long	0
	.align 8
.LC2:
	.long	1067366481
	.long	3951369912
	.align 8
.LC3:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.type	cvt, #function
	.proc	0102
cvt:
	save	%sp, -152, %sp
	std	%i0, [%fp-40]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	ld	[%fp+76], %g1
	cmp	%g1, 0
	bge	.L4
	 nop
	st	%g0, [%fp+76]
.L4:
	ld	[%fp+76], %g1
	cmp	%g1, 78
	ble	.L5
	 nop
	mov	78, %g1
	st	%g1, [%fp+76]
.L5:
	st	%g0, [%fp-4]
	ld	[%fp+84], %g1
	st	%g0, [%g1]
	ld	[%fp+88], %g1
	st	%g1, [%fp-8]
	ldd	[%fp-40], %f10
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L6
	 nop
.L29:
	ld	[%fp+84], %g1
	mov	1, %g2
	st	%g2, [%g1]
	ldd	[%fp-40], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-40]
.L6:
	add	%fp, -24, %g1
	ldd	[%fp-40], %o0
	mov	%g1, %o2
	call	__modf, 0
	 nop
	std	%f0, [%fp-40]
	ld	[%fp+88], %g1
	add	%g1, 80, %g1
	st	%g1, [%fp-12]
	ldd	[%fp-24], %f10
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
	fcmpd	%f10, %f8
	nop
	fbe	.L8
	 nop
	ld	[%fp+88], %g1
	add	%g1, 80, %g1
	st	%g1, [%fp-12]
	b	.L9
	 nop
.L10:
	ldd	[%fp-24], %f10
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	add	%fp, -24, %g1
	std	%f8, [%fp-48]
	ldd	[%fp-48], %o0
	mov	%g1, %o2
	call	__modf, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-32]
	ld	[%fp-12], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-12]
	ldd	[%fp-32], %f10
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %g1
	ldd	[%g1], %f8
	faddd	%f10, %f8, %f10
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	fdtoi	%f8, %f10
	st	%f10, [%fp-52]
	ld	[%fp-52], %g1
	add	%g1, 48, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L9:
	ldd	[%fp-24], %f10
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
	fcmpd	%f10, %f8
	nop
	fbne	.L10
	 nop
	b	.L11
	 nop
.L12:
	ld	[%fp-12], %g1
	ldub	[%g1], %g2
	ld	[%fp-8], %g1
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L11:
	ld	[%fp+88], %g1
	add	%g1, 80, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgu	.L12
	 nop
	b	.L13
	 nop
.L8:
	ldd	[%fp-40], %f10
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbg	.L30
	 nop
	b	.L13
	 nop
.L16:
	ldd	[%fp-32], %f8
	std	%f8, [%fp-40]
	ld	[%fp-4], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-4]
	b	.L15
	 nop
.L30:
	nop
.L15:
	ldd	[%fp-40], %f10
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-32]
	ldd	[%fp-32], %f10
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L16
	 nop
.L13:
	ld	[%fp+76], %g1
	ld	[%fp+88], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp+92], %g1
	cmp	%g1, 0
	bne	.L17
	 nop
	ld	[%fp-4], %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
.L17:
	ld	[%fp+80], %g1
	ld	[%fp-4], %g2
	st	%g2, [%g1]
	ld	[%fp-12], %g2
	ld	[%fp+88], %g1
	cmp	%g2, %g1
	bgeu	.L20
	 nop
	ld	[%fp+88], %g1
	stb	%g0, [%g1]
	ld	[%fp+88], %g1
	b	.L28
	 nop
.L22:
	ldd	[%fp-40], %f10
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-40]
	add	%fp, -32, %g1
	ldd	[%fp-40], %o0
	mov	%g1, %o2
	call	__modf, 0
	 nop
	std	%f0, [%fp-40]
	ldd	[%fp-32], %f8
	fdtoi	%f8, %f10
	st	%f10, [%fp-52]
	ld	[%fp-52], %g1
	add	%g1, 48, %g1
	mov	%g1, %g2
	ld	[%fp-8], %g1
	stb	%g2, [%g1]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L20:
	ld	[%fp-8], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgu	.L21
	 nop
	ld	[%fp+88], %g1
	add	%g1, 80, %g2
	ld	[%fp-8], %g1
	cmp	%g2, %g1
	bgu	.L22
	 nop
.L21:
	ld	[%fp+88], %g1
	add	%g1, 80, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bgu	.L23
	 nop
	ld	[%fp+88], %g1
	add	%g1, 79, %g1
	stb	%g0, [%g1]
	ld	[%fp+88], %g1
	b	.L28
	 nop
.L23:
	ld	[%fp-12], %g1
	st	%g1, [%fp-8]
	ld	[%fp-12], %g1
	ldub	[%g1], %g1
	add	%g1, 5, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	stb	%g2, [%g1]
	b	.L24
	 nop
.L27:
	ld	[%fp-12], %g1
	mov	48, %g2
	stb	%g2, [%g1]
	ld	[%fp-12], %g2
	ld	[%fp+88], %g1
	cmp	%g2, %g1
	bleu	.L25
	 nop
	ld	[%fp-12], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	ldub	[%g1], %g1
	add	%g1, 1, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	stb	%g2, [%g1]
	b	.L24
	 nop
.L25:
	ld	[%fp-12], %g1
	mov	49, %g2
	stb	%g2, [%g1]
	ld	[%fp+80], %g1
	ld	[%g1], %g1
	add	%g1, 1, %g2
	ld	[%fp+80], %g1
	st	%g2, [%g1]
	ld	[%fp+92], %g1
	cmp	%g1, 0
	bne	.L24
	 nop
	ld	[%fp-8], %g2
	ld	[%fp+88], %g1
	cmp	%g2, %g1
	bleu	.L26
	 nop
	ld	[%fp-8], %g1
	mov	48, %g2
	stb	%g2, [%g1]
.L26:
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L24:
	ld	[%fp-12], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 57
	bg	.L27
	 nop
	ld	[%fp-8], %g1
	stb	%g0, [%g1]
	ld	[%fp+88], %g1
.L28:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cvt, .-cvt
	.align 4
	.global ecvt
	.type	ecvt, #function
	.proc	0102
ecvt:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	mov	1, %g1
	st	%g1, [%sp+92]
	ldd	[%fp-8], %o0
	ld	[%fp+76], %o2
	ld	[%fp+80], %o3
	ld	[%fp+84], %o4
	sethi	%hi(CVTBUF), %g1
	or	%g1, %lo(CVTBUF), %o5
	call	cvt, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	ecvt, .-ecvt
	.align 4
	.global ecvtbuf
	.type	ecvtbuf, #function
	.proc	0102
ecvtbuf:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	mov	1, %g1
	st	%g1, [%sp+92]
	ldd	[%fp-8], %o0
	ld	[%fp+76], %o2
	ld	[%fp+80], %o3
	ld	[%fp+84], %o4
	ld	[%fp+88], %o5
	call	cvt, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	ecvtbuf, .-ecvtbuf
	.align 4
	.global fcvt
	.type	fcvt, #function
	.proc	0102
fcvt:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%g0, [%sp+92]
	ldd	[%fp-8], %o0
	ld	[%fp+76], %o2
	ld	[%fp+80], %o3
	ld	[%fp+84], %o4
	sethi	%hi(CVTBUF), %g1
	or	%g1, %lo(CVTBUF), %o5
	call	cvt, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	fcvt, .-fcvt
	.align 4
	.global fcvtbuf
	.type	fcvtbuf, #function
	.proc	0102
fcvtbuf:
	save	%sp, -112, %sp
	std	%i0, [%fp-8]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	st	%g0, [%sp+92]
	ldd	[%fp-8], %o0
	ld	[%fp+76], %o2
	ld	[%fp+80], %o3
	ld	[%fp+84], %o4
	ld	[%fp+88], %o5
	call	cvt, 0
	 nop
	mov	%o0, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	fcvtbuf, .-fcvtbuf
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
