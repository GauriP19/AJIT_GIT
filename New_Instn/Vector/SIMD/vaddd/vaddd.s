.text
.global main
main:
start:

	

	! Set values for a register pair.
	set 0xf008c6f8, %l2
	set 0xf008c6f8, %l3  

	set 0xf000d2fa, %l4
        set 0xf000d2fa, %l5


	! After this,
	!g6 and g7 = e00898f2
	!l0 ans l1 = e00899f2
	!l2 and l3 = e00999f2 

	vaddd8 %l2,%l4,%g2
        vaddd16 %l2,%l4,%g4
        vaddd32 %l2,%l4,%g6

	ta 0
