
.text
.global main

main:
start:
    	set 0xffffffff,%g3	 !input to 64 bit register
        set 0Xffffffff,%g2
        mov 0Xff,%g4             !mask

        anddbyter %g2,%g4,%g6    !g6 = 1




end:	ta 0
