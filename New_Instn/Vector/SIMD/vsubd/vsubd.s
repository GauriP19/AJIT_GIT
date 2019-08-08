.text
.global main
main:
start:



	! This is a comment.
	set 0xf0000000, %g3  
	set 0xf0000000, %g2

	set 4026531855, %g5
	set 4026531855, %g4


	! after this, g6 should contain ....
	vsubd8 %g4,%g2,%l2
        vsubd16 %g2,%g4,%l0
        vsubd32 %g2,%g4,%g6


end:	ta 0
