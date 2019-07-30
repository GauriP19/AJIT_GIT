.text
.global main

main:
start:
   	mov 2,%g2 !shift count

	mov 4,%g7
	mov 4,%g6 !Value to be shifted, put in register pair

	mov 16,%g5 
	mov 16,%g4 !value to be shifted by immediate input
	
 
        srld %g7,1,%g6    !after this, output will be g6 =2 and g7 =2
	srld %g5,%g2,%g5  !after this, output will be g4 =4 and g5 =4 

	

end:	ta 0
