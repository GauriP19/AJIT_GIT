	.file	"ee_printf.c"
	.section	".text"
	.align 4
	.global memcpy
	.type	memcpy, #function
	.proc	0120
memcpy:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%g0, [%fp-4]
	b	.L2
	 nop
.L3:
	ld	[%fp-4], %g1
	ld	[%fp+68], %g2
	add	%g2, %g1, %g1
	ld	[%fp-4], %g2
	ld	[%fp+72], %g3
	add	%g3, %g2, %g2
	ldub	[%g2], %g2
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L2:
	ld	[%fp-4], %g2
	ld	[%fp+76], %g1
	cmp	%g2, %g1
	bl	.L3
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	memcpy, .-memcpy
	.section	".rodata"
	.align 8
.LC0:
	.asciz	"0123456789abcdefghijklmnopqrstuvwxyz"
	.section	".data"
	.align 4
	.type	digits, #object
	.size	digits, 4
digits:
	.long	.LC0
	.section	".rodata"
	.align 8
.LC1:
	.asciz	"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	.section	".data"
	.align 4
	.type	upper_digits, #object
	.size	upper_digits, 4
upper_digits:
	.long	.LC1
	.section	".text"
	.align 4
	.type	strnlen, #function
	.proc	016
strnlen:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	st	%g1, [%fp-4]
	b	.L6
	 nop
.L8:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L6:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	be	.L7
	 nop
	ld	[%fp+72], %g1
	xor	%g1, 0, %g1
	subcc	%g0, %g1, %g0
	addx	%g0, 0, %g1
	ld	[%fp+72], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+72]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L8
	 nop
.L7:
	ld	[%fp-4], %g2
	ld	[%fp+68], %g1
	sub	%g2, %g1, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	strnlen, .-strnlen
	.align 4
	.type	skip_atoi, #function
	.proc	04
skip_atoi:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%g0, [%fp-4]
	b	.L11
	 nop
.L13:
	ld	[%fp-4], %g1
	add	%g1, %g1, %g1
	sll	%g1, 2, %g2
	add	%g1, %g2, %g3
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ldub	[%g1], %g2
	sll	%g2, 24, %g2
	sra	%g2, 24, %g2
	add	%g3, %g2, %g2
	add	%g2, -48, %g2
	st	%g2, [%fp-4]
	add	%g1, 1, %g2
	ld	[%fp+68], %g1
	st	%g2, [%g1]
.L11:
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 47
	ble	.L12
	 nop
	ld	[%fp+68], %g1
	ld	[%g1], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 57
	ble	.L13
	 nop
.L12:
	ld	[%fp-4], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	skip_atoi, .-skip_atoi
	.align 4
	.type	number, #function
	.proc	0102
number:
	save	%sp, -176, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g1
	st	%g1, [%fp-8]
	ld	[%fp+88], %g1
	and	%g1, 64, %g1
	cmp	%g1, 0
	be	.L16
	 nop
	sethi	%hi(upper_digits), %g1
	or	%g1, %lo(upper_digits), %g1
	ld	[%g1], %g1
	st	%g1, [%fp-8]
.L16:
	ld	[%fp+88], %g1
	and	%g1, 16, %g1
	cmp	%g1, 0
	be	.L17
	 nop
	ld	[%fp+88], %g1
	and	%g1, -2, %g1
	st	%g1, [%fp+88]
.L17:
	ld	[%fp+76], %g1
	cmp	%g1, 1
	ble	.L18
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 36
	ble	.L19
	 nop
.L18:
	mov	0, %g1
	b	.L49
	 nop
.L19:
	ld	[%fp+88], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	be	.L21
	 nop
	mov	48, %g1
	b	.L22
	 nop
.L21:
	mov	32, %g1
.L22:
	stb	%g1, [%fp-13]
	stb	%g0, [%fp-1]
	ld	[%fp+88], %g1
	and	%g1, 2, %g1
	cmp	%g1, 0
	be	.L23
	 nop
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bge	.L24
	 nop
	mov	45, %g1
	stb	%g1, [%fp-1]
	ld	[%fp+72], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+80]
	b	.L23
	 nop
.L24:
	ld	[%fp+88], %g1
	and	%g1, 4, %g1
	cmp	%g1, 0
	be	.L25
	 nop
	mov	43, %g1
	stb	%g1, [%fp-1]
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+80]
	b	.L23
	 nop
.L25:
	ld	[%fp+88], %g1
	and	%g1, 8, %g1
	cmp	%g1, 0
	be	.L23
	 nop
	mov	32, %g1
	stb	%g1, [%fp-1]
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+80]
.L23:
	ld	[%fp+88], %g1
	and	%g1, 32, %g1
	cmp	%g1, 0
	be	.L26
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 16
	bne	.L27
	 nop
	ld	[%fp+80], %g1
	add	%g1, -2, %g1
	st	%g1, [%fp+80]
	b	.L26
	 nop
.L27:
	ld	[%fp+76], %g1
	cmp	%g1, 8
	bne	.L26
	 nop
	ld	[%fp+80], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+80]
.L26:
	st	%g0, [%fp-12]
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bne	.L30
	 nop
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	mov	48, %g2
	stb	%g2, [%g1-80]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	b	.L29
	 nop
.L31:
	ld	[%fp+72], %g1
	ld	[%fp+76], %g2
	wr	%g0, 0, %y
	nop
	nop
	nop
	udiv	%g1, %g2, %g3
	smul	%g3, %g2, %g2
	sub	%g1, %g2, %g1
	ld	[%fp-8], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-80]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	ld	[%fp+72], %g3
	ld	[%fp+76], %g2
	wr	%g0, 0, %y
	nop
	nop
	nop
	udiv	%g3, %g2, %g1
	st	%g1, [%fp+72]
.L30:
	ld	[%fp+72], %g1
	cmp	%g1, 0
	bne	.L31
	 nop
.L29:
	ld	[%fp-12], %g2
	ld	[%fp+84], %g1
	cmp	%g2, %g1
	ble	.L32
	 nop
	ld	[%fp-12], %g1
	st	%g1, [%fp+84]
.L32:
	ld	[%fp+80], %g2
	ld	[%fp+84], %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp+80]
	ld	[%fp+88], %g1
	and	%g1, 17, %g1
	cmp	%g1, 0
	bne	.L33
	 nop
	b	.L34
	 nop
.L35:
	ld	[%fp+68], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L34:
	ld	[%fp+80], %g1
	sra	%g1, 31, %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	srl	%g1, 31, %g1
	ld	[%fp+80], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+80]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L35
	 nop
.L33:
	ldub	[%fp-1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	be	.L36
	 nop
	ld	[%fp+68], %g1
	ldub	[%fp-1], %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L36:
	ld	[%fp+88], %g1
	and	%g1, 32, %g1
	cmp	%g1, 0
	be	.L37
	 nop
	ld	[%fp+76], %g1
	cmp	%g1, 8
	bne	.L38
	 nop
	ld	[%fp+68], %g1
	mov	48, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L37
	 nop
.L38:
	ld	[%fp+76], %g1
	cmp	%g1, 16
	bne	.L37
	 nop
	ld	[%fp+68], %g1
	mov	48, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g1
	ldub	[%g1+33], %g2
	ld	[%fp+68], %g1
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L37:
	ld	[%fp+88], %g1
	and	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L50
	 nop
	b	.L40
	 nop
.L41:
	ld	[%fp+68], %g1
	ldub	[%fp-13], %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L40:
	ld	[%fp+80], %g1
	sra	%g1, 31, %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	srl	%g1, 31, %g1
	ld	[%fp+80], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+80]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L41
	 nop
	b	.L50
	 nop
.L44:
	ld	[%fp+68], %g1
	mov	48, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	b	.L42
	 nop
.L50:
	nop
.L42:
	mov	1, %g1
	ld	[%fp+84], %g3
	ld	[%fp-12], %g2
	cmp	%g3, %g2
	bg	.L43
	 nop
	mov	0, %g1
.L43:
	ld	[%fp+84], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+84]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L44
	 nop
	b	.L45
	 nop
.L46:
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	ldub	[%g1-80], %g2
	ld	[%fp+68], %g1
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L45:
	ld	[%fp-12], %g1
	sra	%g1, 31, %g2
	ld	[%fp-12], %g1
	sub	%g2, %g1, %g1
	srl	%g1, 31, %g1
	ld	[%fp-12], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp-12]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L46
	 nop
	b	.L47
	 nop
.L48:
	ld	[%fp+68], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L47:
	ld	[%fp+80], %g1
	sra	%g1, 31, %g2
	ld	[%fp+80], %g1
	sub	%g2, %g1, %g1
	srl	%g1, 31, %g1
	ld	[%fp+80], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+80]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L48
	 nop
	ld	[%fp+68], %g1
.L49:
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	number, .-number
	.align 4
	.type	eaddr, #function
	.proc	0102
eaddr:
	save	%sp, -136, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g1
	st	%g1, [%fp-4]
	ld	[%fp+84], %g1
	and	%g1, 64, %g1
	cmp	%g1, 0
	be	.L52
	 nop
	sethi	%hi(upper_digits), %g1
	or	%g1, %lo(upper_digits), %g1
	ld	[%g1], %g1
	st	%g1, [%fp-4]
.L52:
	st	%g0, [%fp-12]
	st	%g0, [%fp-8]
	b	.L53
	 nop
.L55:
	ld	[%fp-8], %g1
	cmp	%g1, 0
	be	.L54
	 nop
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	mov	58, %g2
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L54:
	ld	[%fp-8], %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	srl	%g1, 4, %g1
	and	%g1, 0xff, %g1
	ld	[%fp-4], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	and	%g1, 15, %g1
	ld	[%fp-4], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L53:
	ld	[%fp-8], %g1
	cmp	%g1, 5
	ble	.L55
	 nop
	ld	[%fp+84], %g1
	and	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L56
	 nop
	b	.L57
	 nop
.L59:
	ld	[%fp+68], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L57:
	mov	1, %g1
	ld	[%fp+76], %g3
	ld	[%fp-12], %g2
	cmp	%g3, %g2
	bg	.L58
	 nop
	mov	0, %g1
.L58:
	ld	[%fp+76], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+76]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L59
	 nop
.L56:
	st	%g0, [%fp-8]
	b	.L60
	 nop
.L61:
	ld	[%fp-8], %g1
	add	%fp, %g1, %g1
	ldub	[%g1-40], %g2
	ld	[%fp+68], %g1
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L60:
	ld	[%fp-8], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bl	.L61
	 nop
	b	.L62
	 nop
.L64:
	ld	[%fp+68], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L62:
	mov	1, %g1
	ld	[%fp+76], %g3
	ld	[%fp-12], %g2
	cmp	%g3, %g2
	bg	.L63
	 nop
	mov	0, %g1
.L63:
	ld	[%fp+76], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+76]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L64
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	eaddr, .-eaddr
	.align 4
	.type	iaddr, #function
	.proc	0102
iaddr:
	save	%sp, -136, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%g0, [%fp-12]
	st	%g0, [%fp-4]
	b	.L67
	 nop
.L73:
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L68
	 nop
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	mov	46, %g2
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L68:
	ld	[%fp-4], %g1
	ld	[%fp+72], %g2
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-8]
	ld	[%fp-8], %g1
	cmp	%g1, 0
	bne	.L69
	 nop
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	b	.L70
	 nop
.L69:
	ld	[%fp-8], %g1
	cmp	%g1, 99
	ble	.L71
	 nop
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g2
	ld	[%fp-8], %g1
	sra	%g1, 31, %g3
	wr	%g3, 0, %y
	nop
	nop
	nop
	sdiv	%g1, 100, %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g1
	sra	%g1, 31, %g3
	wr	%g3, 0, %y
	nop
	nop
	nop
	sdiv	%g1, 100, %g2
	smul	%g2, 100, %g2
	sub	%g1, %g2, %g1
	st	%g1, [%fp-8]
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g2
	ld	[%fp-8], %g1
	sra	%g1, 31, %g3
	wr	%g3, 0, %y
	nop
	nop
	nop
	sdiv	%g1, 10, %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g2
	sra	%g2, 31, %g3
	wr	%g3, 0, %y
	nop
	nop
	nop
	sdiv	%g2, 10, %g1
	add	%g1, %g1, %g1
	sll	%g1, 2, %g3
	add	%g1, %g3, %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp-8]
	b	.L72
	 nop
.L71:
	ld	[%fp-8], %g1
	cmp	%g1, 9
	ble	.L72
	 nop
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g2
	ld	[%fp-8], %g1
	sra	%g1, 31, %g3
	wr	%g3, 0, %y
	nop
	nop
	nop
	sdiv	%g1, 10, %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-8], %g2
	sra	%g2, 31, %g3
	wr	%g3, 0, %y
	nop
	nop
	nop
	sdiv	%g2, 10, %g1
	add	%g1, %g1, %g1
	sll	%g1, 2, %g3
	add	%g1, %g3, %g1
	sub	%g2, %g1, %g1
	st	%g1, [%fp-8]
.L72:
	sethi	%hi(digits), %g1
	or	%g1, %lo(digits), %g1
	ld	[%g1], %g2
	ld	[%fp-8], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g2
	ld	[%fp-12], %g1
	add	%fp, %g1, %g1
	stb	%g2, [%g1-40]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L70:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L67:
	ld	[%fp-4], %g1
	cmp	%g1, 3
	ble	.L73
	 nop
	ld	[%fp+84], %g1
	and	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L74
	 nop
	b	.L75
	 nop
.L77:
	ld	[%fp+68], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L75:
	mov	1, %g1
	ld	[%fp+76], %g3
	ld	[%fp-12], %g2
	cmp	%g3, %g2
	bg	.L76
	 nop
	mov	0, %g1
.L76:
	ld	[%fp+76], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+76]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L77
	 nop
.L74:
	st	%g0, [%fp-4]
	b	.L78
	 nop
.L79:
	ld	[%fp-4], %g1
	add	%fp, %g1, %g1
	ldub	[%g1-40], %g2
	ld	[%fp+68], %g1
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L78:
	ld	[%fp-4], %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bl	.L79
	 nop
	b	.L80
	 nop
.L82:
	ld	[%fp+68], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+68]
.L80:
	mov	1, %g1
	ld	[%fp+76], %g3
	ld	[%fp-12], %g2
	cmp	%g3, %g2
	bg	.L81
	 nop
	mov	0, %g1
.L81:
	ld	[%fp+76], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp+76]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L82
	 nop
	ld	[%fp+68], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	iaddr, .-iaddr
	.section	".rodata"
	.align 8
.LC2:
	.asciz	"<NULL>"
	.section	".text"
	.align 4
	.type	ee_vsprintf, #function
	.proc	04
ee_vsprintf:
	save	%sp, -136, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+68], %g1
	st	%g1, [%fp-16]
	b	.L85
	 nop
.L140:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 37
	be	.L86
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g2
	ld	[%fp-16], %g1
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
	b	.L87
	 nop
.L86:
	st	%g0, [%fp-24]
.L88:
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -32, %g1
	cmp	%g1, 16
	bgu	.L89
	 nop
	sll	%g1, 2, %g2
	sethi	%hi(.L95), %g1
	or	%g1, %lo(.L95), %g1
	ld	[%g2+%g1], %g1
	jmp	%g1
	 nop
	.section	".rodata"
	.section	".text"
.L93:
	ld	[%fp-24], %g1
	or	%g1, 16, %g1
	st	%g1, [%fp-24]
	b	.L88
	 nop
.L92:
	ld	[%fp-24], %g1
	or	%g1, 4, %g1
	st	%g1, [%fp-24]
	b	.L88
	 nop
.L90:
	ld	[%fp-24], %g1
	or	%g1, 8, %g1
	st	%g1, [%fp-24]
	b	.L88
	 nop
.L91:
	ld	[%fp-24], %g1
	or	%g1, 32, %g1
	st	%g1, [%fp-24]
	b	.L88
	 nop
.L94:
	ld	[%fp-24], %g1
	or	%g1, 1, %g1
	st	%g1, [%fp-24]
	b	.L88
	 nop
.L89:
	mov	-1, %g1
	st	%g1, [%fp-28]
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 47
	ble	.L96
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 57
	bg	.L96
	 nop
	add	%fp, 72, %g1
	mov	%g1, %o0
	call	skip_atoi, 0
	 nop
	st	%o0, [%fp-28]
	b	.L97
	 nop
.L96:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 42
	bne	.L97
	 nop
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-28]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
	ld	[%fp-28], %g1
	cmp	%g1, 0
	bge	.L97
	 nop
	ld	[%fp-28], %g1
	sub	%g0, %g1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-24], %g1
	or	%g1, 16, %g1
	st	%g1, [%fp-24]
.L97:
	mov	-1, %g1
	st	%g1, [%fp-32]
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 46
	bne	.L98
	 nop
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 47
	ble	.L99
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 57
	bg	.L99
	 nop
	add	%fp, 72, %g1
	mov	%g1, %o0
	call	skip_atoi, 0
	 nop
	st	%o0, [%fp-32]
	b	.L100
	 nop
.L99:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 42
	bne	.L100
	 nop
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-32]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
.L100:
	ld	[%fp-32], %g1
	cmp	%g1, 0
	bge	.L98
	 nop
	st	%g0, [%fp-32]
.L98:
	mov	-1, %g1
	st	%g1, [%fp-36]
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 108
	be	.L101
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 76
	bne	.L102
	 nop
.L101:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	st	%g1, [%fp-36]
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
.L102:
	mov	10, %g1
	st	%g1, [%fp-12]
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	add	%g1, -65, %g1
	cmp	%g1, 55
	bgu	.L103
	 nop
	sll	%g1, 2, %g2
	sethi	%hi(.L114), %g1
	or	%g1, %lo(.L114), %g1
	ld	[%g2+%g1], %g1
	jmp	%g1
	 nop
	.section	".rodata"
	.section	".text"
.L107:
	ld	[%fp-24], %g1
	and	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L115
	 nop
	b	.L116
	 nop
.L117:
	ld	[%fp-16], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L116:
	ld	[%fp-28], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-28], %g1
	cmp	%g1, 0
	bg	.L117
	 nop
.L115:
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	mov	%g1, %g2
	ld	[%fp-16], %g1
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
	b	.L118
	 nop
.L119:
	ld	[%fp-16], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L118:
	ld	[%fp-28], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-28]
	ld	[%fp-28], %g1
	cmp	%g1, 0
	bg	.L119
	 nop
	b	.L87
	 nop
.L111:
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-20]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
	ld	[%fp-20], %g1
	cmp	%g1, 0
	bne	.L120
	 nop
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %g1
	st	%g1, [%fp-20]
.L120:
	ld	[%fp-32], %g1
	ld	[%fp-20], %o0
	mov	%g1, %o1
	call	strnlen, 0
	 nop
	mov	%o0, %g1
	st	%g1, [%fp-40]
	ld	[%fp-24], %g1
	and	%g1, 16, %g1
	cmp	%g1, 0
	bne	.L121
	 nop
	b	.L122
	 nop
.L124:
	ld	[%fp-16], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L122:
	mov	1, %g1
	ld	[%fp-28], %g3
	ld	[%fp-40], %g2
	cmp	%g3, %g2
	bg	.L123
	 nop
	mov	0, %g1
.L123:
	ld	[%fp-28], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp-28]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L124
	 nop
.L121:
	st	%g0, [%fp-8]
	b	.L125
	 nop
.L126:
	ld	[%fp-20], %g1
	ldub	[%g1], %g2
	ld	[%fp-16], %g1
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
	ld	[%fp-20], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-20]
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
.L125:
	ld	[%fp-8], %g2
	ld	[%fp-40], %g1
	cmp	%g2, %g1
	bl	.L126
	 nop
	b	.L127
	 nop
.L129:
	ld	[%fp-16], %g1
	mov	32, %g2
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L127:
	mov	1, %g1
	ld	[%fp-28], %g3
	ld	[%fp-40], %g2
	cmp	%g3, %g2
	bg	.L128
	 nop
	mov	0, %g1
.L128:
	ld	[%fp-28], %g2
	add	%g2, -1, %g2
	st	%g2, [%fp-28]
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L129
	 nop
	b	.L87
	 nop
.L110:
	ld	[%fp-28], %g1
	cmp	%g1, -1
	bne	.L130
	 nop
	mov	8, %g1
	st	%g1, [%fp-28]
	ld	[%fp-24], %g1
	or	%g1, 1, %g1
	st	%g1, [%fp-24]
.L130:
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	ld	[%fp+76], %g2
	add	%g2, 4, %g2
	st	%g2, [%fp+76]
	ld	[%fp-16], %o0
	mov	%g1, %o1
	mov	16, %o2
	ld	[%fp-28], %o3
	ld	[%fp-32], %o4
	ld	[%fp-24], %o5
	call	number, 0
	 nop
	st	%o0, [%fp-16]
	b	.L87
	 nop
.L104:
	ld	[%fp-24], %g1
	or	%g1, 64, %g1
	st	%g1, [%fp-24]
.L106:
	ld	[%fp-36], %g1
	cmp	%g1, 108
	bne	.L131
	 nop
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	ld	[%fp+76], %g2
	add	%g2, 4, %g2
	st	%g2, [%fp+76]
	ld	[%fp-16], %o0
	mov	%g1, %o1
	ld	[%fp-28], %o2
	ld	[%fp-32], %o3
	ld	[%fp-24], %o4
	call	eaddr, 0
	 nop
	st	%o0, [%fp-16]
	b	.L87
	 nop
.L131:
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	ld	[%fp+76], %g2
	add	%g2, 4, %g2
	st	%g2, [%fp+76]
	ld	[%fp-16], %o0
	mov	%g1, %o1
	ld	[%fp-28], %o2
	ld	[%fp-32], %o3
	ld	[%fp-24], %o4
	call	iaddr, 0
	 nop
	st	%o0, [%fp-16]
	b	.L87
	 nop
.L109:
	mov	8, %g1
	st	%g1, [%fp-12]
	b	.L133
	 nop
.L105:
	ld	[%fp-24], %g1
	or	%g1, 64, %g1
	st	%g1, [%fp-24]
.L113:
	mov	16, %g1
	st	%g1, [%fp-12]
	b	.L133
	 nop
.L108:
	ld	[%fp-24], %g1
	or	%g1, 2, %g1
	st	%g1, [%fp-24]
	b	.L142
	 nop
.L103:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 37
	be	.L134
	 nop
	ld	[%fp-16], %g1
	mov	37, %g2
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
.L134:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	be	.L135
	 nop
	ld	[%fp+72], %g1
	ldub	[%g1], %g2
	ld	[%fp-16], %g1
	stb	%g2, [%g1]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
	b	.L87
	 nop
.L135:
	ld	[%fp+72], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp+72]
	b	.L87
	 nop
.L142:
	nop
.L133:
	ld	[%fp-36], %g1
	cmp	%g1, 108
	bne	.L137
	 nop
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
	b	.L138
	 nop
.L137:
	ld	[%fp-24], %g1
	and	%g1, 2, %g1
	cmp	%g1, 0
	be	.L139
	 nop
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
	b	.L138
	 nop
.L139:
	ld	[%fp+76], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-4]
	ld	[%fp+76], %g1
	add	%g1, 4, %g1
	st	%g1, [%fp+76]
.L138:
	ld	[%fp-4], %g1
	ld	[%fp-16], %o0
	mov	%g1, %o1
	ld	[%fp-12], %o2
	ld	[%fp-28], %o3
	ld	[%fp-32], %o4
	ld	[%fp-24], %o5
	call	number, 0
	 nop
	st	%o0, [%fp-16]
.L87:
	ld	[%fp+72], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp+72]
.L85:
	ld	[%fp+72], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L140
	 nop
	ld	[%fp-16], %g1
	stb	%g0, [%g1]
	ld	[%fp-16], %g2
	ld	[%fp+68], %g1
	sub	%g2, %g1, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.align 4
	.subsection	-1
	.align 4
.L114:
	.word	.L104
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L105
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L106
	.word	.L103
	.word	.L107
	.word	.L108
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L108
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L103
	.word	.L109
	.word	.L110
	.word	.L103
	.word	.L103
	.word	.L111
	.word	.L103
	.word	.L142
	.word	.L103
	.word	.L103
	.word	.L113
	.previous
	.subsection	-1
	.align 4
.L95:
	.word	.L90
	.word	.L89
	.word	.L89
	.word	.L91
	.word	.L89
	.word	.L89
	.word	.L89
	.word	.L89
	.word	.L89
	.word	.L89
	.word	.L89
	.word	.L92
	.word	.L89
	.word	.L93
	.word	.L89
	.word	.L89
	.word	.L94
	.previous
	.size	ee_vsprintf, .-ee_vsprintf
	.align 4
	.global uart_send_char
	.type	uart_send_char, #function
	.proc	020
uart_send_char:
	save	%sp, -104, %sp
	mov	%i0, %g1
	stb	%g1, [%fp+68]
	b	.L146
	 nop
.L148:
	nop
.L146:
	ldub	[%fp+68], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	__ajit_serial_putchar__, 0
	 nop
	st	%o0, [%fp-4]
	ld	[%fp-4], %g1
	cmp	%g1, 0
	be	.L148
	 nop
	nop
	b	.L145
	 nop
.L149:
	nop
.L145:
	st	%g0, [%fp-8]
	sethi	%hi(-53248), %g1
	or	%g1, 512, %g1
#APP
! 623 "/usr/local/ajit_release/tools/minimal_printf_timer/src/ee_printf.c" 1
	lda [%g1] 32, %i5
	
! 0 "" 2
#NO_APP
	st	%i5, [%fp-8]
	ld	[%fp-8], %g1
	and	%g1, 8, %g1
	cmp	%g1, 0
	be	.L143
	 nop
	ld	[%fp-8], %g1
	and	%g1, 1, %g1
	cmp	%g1, 0
	bne	.L149
	 nop
.L143:
	restore
	jmp	%o7+8
	 nop
	.size	uart_send_char, .-uart_send_char
	.align 4
	.global ee_printf
	.type	ee_printf, #function
	.proc	04
ee_printf:
	save	%sp, -1136, %sp
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	st	%i0, [%fp+68]
	st	%g0, [%fp-8]
	add	%fp, 72, %g1
	st	%g1, [%fp-1036]
	ld	[%fp-1036], %g1
	add	%fp, -1032, %g2
	mov	%g2, %o0
	ld	[%fp+68], %o1
	mov	%g1, %o2
	call	ee_vsprintf, 0
	 nop
	add	%fp, -1032, %g1
	st	%g1, [%fp-4]
	b	.L151
	 nop
.L152:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	uart_send_char, 0
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L151:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L152
	 nop
	ld	[%fp-8], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	ee_printf, .-ee_printf
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
