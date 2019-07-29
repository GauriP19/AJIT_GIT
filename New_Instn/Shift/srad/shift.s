.text
.global main

main:
start:
   	mov 2,%g2 !shift count

	set 0x80000001,%g7
	mov 0x80000001,%g6 !Value to be shifted, put in register pair

	mov 1,%g5 
	mov 1,%g4 !value to be shifted by immediate input
	
 
        slld %g7,1,%g6    !after this, output will be g6 =0xc0000000 and g7 =0xc0000000
	slld %g5,%g2,%g5  !after this, output will be g4 =0 and g5 =0x80000000 

	

end:	ta 0
