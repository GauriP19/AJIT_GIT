
.text
.global main

main:
start: 
	mov 3,%g2
	mov 5,%g4

	anddcc %g2,%g4,%g6
	bne next
	nop
	ba end
	nop      
next:	mov 2,%g2
	anddncc %g2,%g4,%g4
	bne next1
	nop
	ba end
	nop
next1:	anddn %g6,%g2,%g2 
	andd  %g6,%g4,%g6

end:	ta 0
