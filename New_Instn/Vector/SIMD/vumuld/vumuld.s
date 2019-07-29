.text
.global main
main:
start:



	! This is a comment.
	set 0x02020202, %g3  
	set 0x02020202, %g2

	set 0x01010101, %g5
	set 0x01010101, %g4


	! after multiplication
        ! g6 and g7 = 02020202
        ! l0 and l1 = 04020402
        ! l2 and l3 = 08060402

	vumuld8 %g2,%g4,%g6
        vumuld16 %g2,%g4,%l0
        vumuld32 %g2,%g4,%l2


end:	ta 0
