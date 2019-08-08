.text
.global main
main:
start:



	! Input to registers
	set 0x03030303, %g3  
	set 0x00000003, %g2

	set 0xfffffffe, %g5
	set 0xfffffffe, %g4


	! after this
	!g6 = -6, g7 = -6
	!l0 = -0x606    l1 = -6
	!l2 = -0x06060606 l3 = -6
	vsmuld8 %g2,%g4,%g6
        vsmuld16 %g2,%g4,%l0
        vsmuld32 %g2,%g4,%l2


end:	ta 0
