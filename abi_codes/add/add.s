.section ".text"
.align 4
.global add
.type add, #function
add:
	save %sp, -96, %sp
	add %i0, %i1, %g1
	mov %g1, %i0
	restore
	retl
	nop
