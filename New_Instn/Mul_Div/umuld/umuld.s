.text
.global main

main:
start:	
	mov 1,%g2
	mov 1,%g3
	mov 1,%g4
	mov 1,%g5
#	mov 3,%g6
#	mov 4,%g7
	
	umuldcc %g2,%g4,%g6
	be next 
	nop
	ba end
	nop
next:	umuld %g3,%g5,%g7

end:	ta 0
