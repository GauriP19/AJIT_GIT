
.text
.global main

main:
start: 
	mov 1,%g2
	mov 5,%g4

	ordcc %g2,%g4,%g6
	bne next
	nop
	ba end
	nop      
next:	ordncc %g2,%g4,%g4
	bne next1
	nop
	ba end
	nop
next1:	ordn %g6,%g2,%g2 
	ord  %g6,%g4,%g6

end:	ta 0
