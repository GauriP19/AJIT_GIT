
.text
.global main

main:
start: 

	set 0x8421,%g2
	mov 0X1,%g3
	mov 0X1B,%g4 !mask
	addbyter %g2,%g4,%g6!  g6 = c




end:	ta 0
