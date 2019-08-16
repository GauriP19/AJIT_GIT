.text
.global main
main:
start:



	! This is a comment.
	set 0x02020202, %l3  
	set 0x02020202, %l2

	set 0x01010101, %l5
	set 0x01010101, %l4


	! after multiplication
        ! g2 and g3 = 02020202
        ! g4 and g5 = 04020402
        ! g6 and g7 = 08060402

	vumuld8 %l2,%l4,%g2
        vumuld16 %l2,%l4,%g4
        vumuld32 %l2,%l4,%g6


end:	ta 0
