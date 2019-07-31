
.text
.global main

main:
start: 

	set 0x1,%g2            !input value to be reduced, in register pair
	set 0X08050401,%g3
	mov 0X1B,%g4           !mask
	addbyter %g2,%g4,%g6   !g6 = e




end:	ta 0
