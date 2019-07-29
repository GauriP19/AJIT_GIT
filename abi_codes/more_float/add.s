.text
.align 4
.global add
.type add, #function

add:
        save  %sp, -96, %sp
        ld [%fp+128], %f2
        ld [%fp+132], %f1
        fadds %f2,%f1,%f0
	ld [%fp+124], %f1
	fadds %f0, %f1, %f0
	ld [%fp+120], %f1
	fadds %f0, %f1, %f0 
	ld [%fp+116], %f1
	fadds %f0, %f1, %f0
	ld [%fp+112], %f1
	fadds %f0, %f1, %f0
	ld [%fp+108], %f1
	fadds %f0, %f1, %f0
        restore
        retl
        nop
