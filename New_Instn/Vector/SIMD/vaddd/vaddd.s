.text
.global main
main:
start:

	

	! Set values for a register pair.
	set 0xf008c6f8, %g3  
	set 0xf008c6f8, %g2

	set 0xf000d2fa, %g4
        set 0xf000d2fa, %g5


	! After this,
	!g6 and g7 = e00898f2
	!l0 ans l1 = e00899f2
	!l2 and l3 = e00999f2 

	vaddd8 %g2,%g4,%l0
        vaddd16 %g2,%g4,%l2
        vaddd32 %g2,%g4,%g6

	ta 0
