
.text
.global main

main:
start: 
	mov 3,%g2
	mov 3,%g3
	mov 5,%g4
	mov 5,%g5
	xordcc %g2,%g4,%g6
	bne next
	nop
	ba end
	nop      
next:	xnordcc %g2,%g4,%g4
	bne next1
	nop
	ba end
	nop
next1:	xnord %g6,%g2,%g2 

end:	ta 0
