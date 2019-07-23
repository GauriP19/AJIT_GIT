
.text
.global main

main:
start: 
	mov 3,%g2
	mov 5,%g4
	adddcc %g2,%g4,%g6
	bne next1
	nop
	ba end
	nop      
next:	adddcc %g3,%g7,%g7
	be next1
	nop
	ba end
next1:	addd %g3,%g5,%g5

end:	ta 0
