
.text
.global main

main:
start: 
	mov 3,%g2
	mov 5,%g4
 	vfadd %g2,%g4,%g6
	 
end:	ta 0
