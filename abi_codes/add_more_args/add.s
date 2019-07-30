.section ".text"
.align 4
.global add
.type add, #function
add:
	save %sp, -80, %sp
	add %i0, %i1, %g1
	add %g1, %i2, %g2
	add %g2, %i3, %g3
	add %g3, %i4, %g4
	add %g4, %i5, %g5
	ld [ %fp + 92 ], %l0
	add %g5, %l0, %g5
	mov %g5, %i0
	restore
	retl
	nop
