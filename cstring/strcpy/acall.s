.text
.global main
main:
start:	save %sp,-120,%sp
	set 0xaaaaaaaa, %g2
	mov 0x5, %g4
	mov %fp, %g3
        set 0xfffffff8,%g6
        and %g6,%g3,%g3
	sub %g3,20,%g3
back:	sub %g3,0x4,%g3
	st %g2, [%g3]
	deccc %g4
	bnz back
	nop
	#sub %g3,0x4,%g3
	#set 0xa0000000,%g2
	#st %g2, [%g3]
	mov %g3,%o1
	sub %g3,64,%g3
	mov %g3,%o0
	call astrcpy	
	nop
	ret
	restore
	ta 0







