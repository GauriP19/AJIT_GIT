
.text
.global main

main:
start: 
	set 0x3f8cccd, %g0
	st %g0, [%fp +-4]
	ld [%fp + -4],%f0
	fmovs %f0,%f1

 	vfmul %f0,%f1,%f2	
	 
end:	ta 0