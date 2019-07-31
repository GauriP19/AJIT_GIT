
.text
.global main

main:
start:
    	set 0x09050401,%g3	 !input to 64 bit register
        mov 0X1,%g2
        mov 0X1d,%g4             !mask

        anddbyter %g2,%g4,%g6    !g6 = 1




end:	ta 0
