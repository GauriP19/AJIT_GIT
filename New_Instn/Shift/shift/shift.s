.text
.global main

main:
start:

	mov 1,%g7
	mov 0,%g6
   	mov 3,%g2
	mov 1,%g5
	mov 0,%g4
	mov 0,%g3
 
        slld %g7,1,%g6
	slld %g5,%g2,%g5

	

end:	ta 0
