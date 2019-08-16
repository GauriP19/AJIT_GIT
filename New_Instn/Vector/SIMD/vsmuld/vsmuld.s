.text
.global main
main:
start:



	! Input to registers
	set 0x03030303, %l3  
	set 0x00000003, %l2

	set 0xfffffffe, %l5
	set 0xfffffffe, %l4


	! after this
	!g2=fa g3=fdfdfdfa
	!g4=fa g5=fcfdf9fa
	!g6=fa g7=f9f9f9fa
	vsmuld8 %l2,%l4,%g2
        vsmuld16 %l2,%l4,%g4
        vsmuld32 %l2,%l4,%g6


end:	ta 0
