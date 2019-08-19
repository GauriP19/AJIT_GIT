.global main
.text
main:
start:
	set 0x3,%g2
	set 0x4,%g3
	std %g2, [%fp + -8]   !Store values to be exchanged in memory
	
	set 0x5,%g4
	set 0x6,%g5

#	set 0xfffffff8, %g6

	cswapd [%fp+ -8],%g4  !After this, g4, g5  = 3, 4 

#	cswapda [%g6] 0xb,%g4
	

end: 	ta 0
