
.text
.global main

main:
start: 
	mov 0x1,%g2           !input to register pair
	set 0x08050401,%g3
	mov 0x1b ,%g4         !mask
	ordbyter %g2,%g4,%g6  !g6 = d




end:	ta 0
