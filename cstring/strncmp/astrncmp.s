.section ".text"
.global astrncmp
.type astrncmp, #function
astrncmp: 
	

	mov 0x7,%l2
	mov 0x7,%l3
	anddcc %l2,%o0,%l0
	be begin64
	nop
	ba load8
	nop

begin64:mov 0x8, %l2
	mov 0x8, %l3
again64:ldd [%o0],%l0
	ldd [%o1],%l6
	deccc 8, %o2
	ble load8
	zbytedpos %l0, 0xff, %l4
	cmp %l4, 0x0
	bne load8
	zbytedpos %l6, 0xff, %l4
        cmp %l4, 0x0
        bne load8
	xord %l0,%l6,%l4
	bne load8
	nop
	addd %l2,%o0,%o0
	ba again64
	nop

load8:	mov 0x1,%l2
	mov 0x1,%l3
	inc 8,%o2
back:	ldub [%o0],%l0
	ldub [%o1],%l6
	deccc %o2
	be nz	
	cmp %l0, 0x0
	be nz
	cmp %l6, 0x0
	be nz
	nop	
	cmp %l0,%l6
	bne nz
	nop
	addd %l2,%o0,%o0
	ba back

nz:	sub %l0,%l6,%l4
	mov %l4, %o0

exit:
	retl
	nop
