	.file	"core_portme.c"
	.section	".text"
	.align 4
	.global ajit_serial_init
	.type	ajit_serial_init, #function
	.proc	020
ajit_serial_init:
	save	%sp, -96, %sp
	mov	1, %o0
	mov	0, %o1
	mov	0, %o2
	call	__ajit_serial_configure__, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	ajit_serial_init, .-ajit_serial_init
	.align 4
	.global ajit_barebones_clock
	.type	ajit_barebones_clock, #function
	.proc	016
ajit_barebones_clock:
	save	%sp, -112, %sp
	call	__ajit_read_cycle_count_register_high__, 0
	 nop
	st	%o0, [%fp-4]
	call	__ajit_read_cycle_count_register_low__, 0
	 nop
	st	%o0, [%fp-8]
	ld	[%fp-4], %g1
	sll	%g1, 24, %g2
	ld	[%fp-8], %g1
	srl	%g1, 8, %g1
	or	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	ajit_barebones_clock, .-ajit_barebones_clock
	.ident	"GCC: (Buildroot 2014.08) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
