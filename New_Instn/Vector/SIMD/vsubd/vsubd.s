.text
.global main
main:
start:



	! This is a comment.
	set 0xa0a0a0a0, %l2  
	set 0xa0a0a0a0, %l3

	set 0x50505050, %l4
	set 0x50505050, %l5


	! after this, g6 should contain ....
	vsubd8 %l2,%l4,%g2
        vsubd16 %l2,%l4,%g4
        vsubd32 %l2,%l4,%g6


end:	ta 0
