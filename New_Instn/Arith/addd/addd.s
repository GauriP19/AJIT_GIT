
.text
.global main

main:
start: 
	mov 3,%g2
	mov 3,%g3
	mov 5,%g4
	mov 5,%g5
	adddcc %g2,%g4,%g6
	bne next
	nop
	ba end
	nop      
next:	adddcc %g3,%g7,%g5
	be next1	
	nop
	ba end
next1:	addd %g3,%g3,%g3

end:	ta 0
