.section ".text"
.global astrncpy
.type astrncpy, #function
astrncpy: 

	mov 0x7,%l2
	mov 0x7,%l3
	anddcc %l2,%o0,%l2
	be begin64
	nop
	ba back

begin64:mov 0x8, %l2
	mov 0x8, %l3
again64:ldd [%o1], %l0
	deccc 8, %o2
        ble null
	zbytedpos %l0, 0xff, %l4
	cmp %l4, 0x0
	bne null
	nop 
	std %l0, [%o0]
	addd %l2,%o0,%o0
	ba begin64
	nop


null:	inc 8, %o2
	mov 0x1, %l2
	mov 0x1,%l3
back:	ldub [%o1], %l0
	stb %l0,[%o0]
	addd %l2,%o0,%o0
	deccc %o2
	be exit
	cmp %l0,0x0
	bne back

back1:	mov 0x0, %l5
	stb %l5,[%o0]
	addd %l2,%o0,%o0
	deccc %o2
	bne back1

exit:	retl
	nop
