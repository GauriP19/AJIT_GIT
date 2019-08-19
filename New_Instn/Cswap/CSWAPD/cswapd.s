.global main
.text
main:
start:
	set 0x3,%g2
	set 0x4,%g3
	std %g2, [%fp + -8]
	
	set 0x5,%g4
	set 0x6,%g5

	cswapd [%fp+ -8],%g4

end: 	ta 0
