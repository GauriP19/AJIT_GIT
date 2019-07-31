
.text
.global main

main:
start: 
	mov 0x1,%g2              !input in 64 bit register
	set 0x01010101,%g3
	mov 0xfb,%g4             !mask
	zbytedpos %g2,%g4,%g6    !g6 = 0x 00011011
	zbytedpos %g2, 0xf1,%l0  !l0 = 0x 00010001



end:	ta 0
