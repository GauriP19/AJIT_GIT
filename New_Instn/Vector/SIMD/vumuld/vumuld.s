.text
.global main
main:
start:



	! This is a comment.
	set 0xf000000f, %g3  
	set 0xf000000f, %g2

	set 4026531855, %g5
	set 4026531855, %g4


	! after this, g6 should contain ....
	vumuld8 %g2,%g4,%g6
        vumuld16 %g2,%g4,%l0
        vumuld32 %g2,%g4,%l2


end:	ta 0
