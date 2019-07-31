
.text
.global main

main:
start: 
	save %sp,-80,%sp

	set 0x3f8cccd, %l0     ! input value = 1.1
	st %l0, [%fp +-4]
	ld [%fp + -4],%f0
	fmovs %f0,%f1
	fmovs %f0,%f2
	fmovs %f0,%f3

 	vfsqrt %f0,%f2,%f4     ! output will be 1
	restore

end:	ta 0
