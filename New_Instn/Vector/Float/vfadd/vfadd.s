
.text
.global main

main:
start: 
	set 0x3f8cccd, %g0
	st %g0, [%fp +-4]
	ld [%fp + -4],%f0
	fmovs %f0,%f1

 	vfadd %f0,%f2,%f4
	 
end:	ta 0
