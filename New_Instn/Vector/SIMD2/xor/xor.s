
.text
.global main

main:
start: 
	mov 0x1,%g2             !Input number in register pair
	set 0x08050401,%g3
	mov 0x1b,%g4            !mask
	xordbyter %g2,%g4,%g6   !g6 = c




end:	ta 0
