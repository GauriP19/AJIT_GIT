
.text
.global main

main:
start: 
	mov -3,%g2
	mov 5,%g4
	subdcc %g2,%g4,%g6
	bne next1
	nop
	ba end
	nop      
next:	subdcc %g3,%g7,%g7
	be next1
	nop
	ba end
next1:	subd %g3,%g5,%g5

end:	ta 0
