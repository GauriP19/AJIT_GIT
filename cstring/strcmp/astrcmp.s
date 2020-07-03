.section ".text"
.global astrcmp
.type astrcmp, #function
astrcmp: 

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
	zbytedpos %l0, 0xff, %l4
	cmp %l4, 0x0
	bne load8
	nop 
	zbytedpos %l6, 0xff, %l4
        cmp %l4, 0x0
        bne load8
        nop
	xord %l0,%l6,%l4
	bne load8
	nop
	addd %l2,%o0,%o0
	ba again64
	nop

load8:	mov 0x1,%l2
	mov 0x1,%l3
back:	ldub [%o0],%l0
	ldub [%o1],%l6
	cmp %l0, 0x0
	be nz8
	cmp %l6, 0x0
	be nz8
	nop	
	cmp %l0,%l6
	bne nz8
	nop
	addd %l2,%o0,%o0
	ba back


nz8:	sub %l0,%l6, %l4
	mov %l4,%o0

exit:	retl
	nop
