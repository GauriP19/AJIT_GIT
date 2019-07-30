.section ".text"
.align 4
.global add
.type add, #function
add:
	save %sp, -80, %sp
	add %i0, %i1, %g1
	add %g1, %i2, %g1
	add %g1, %i3, %g1
	add %g1, %i4, %g1
	add %g1, %i5, %g1
	ld [ %fp + 92 ], %l0   !Input arguments after the sixth argument reside in the memory stack of the caller.
	add %g1, %l0, %i0
	restore
	retl
	nop
