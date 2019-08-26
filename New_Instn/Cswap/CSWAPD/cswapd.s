.global main
.text
main:
start:
	set 0x0,%g2
	set 0x3,%g3
	std %g2, [%fp + -8]   !Store values to be exchanged in memory
	
	mov %fp, %g2
	add %g2, -8, %g2
	

	set 0x5,%g4
	set 0x6,%g5

#	set 0xfffffff8, %g6

	cswapd [%fp + -8] ,%g4  !After this, g4, g5  = 3, 4 
#	cswapda [%fp + -4],%g4
	

end: 	ta 0
