
.text
.global main

main:
start: 
	mov 5,%g2
	mov 5,%g3
	mov 3,%g4
	mov 3,%g5
	subdcc %g2,%g4,%g6
	bne next
	nop
	ba end
	nop      
next:	subdcc %g3,%g7,%g5
	be next1
	nop
	ba end
next1:	subd %g3,%g3,%g3

end:	ta 0
