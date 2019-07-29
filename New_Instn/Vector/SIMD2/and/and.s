
.text
.global main

main:
start: 
	!input to 64 bit register
    	set 0x9451,%g2
        mov 0X1,%g3
        mov 0X1B,%g4    !mask

        anddbyter %g2,%g4,%g6 ! g6 = 1




end:	ta 0
