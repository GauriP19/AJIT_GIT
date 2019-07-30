.text
.align 4
.global add
.type add, #function

add:
        save  %sp, -104, %sp
        ld [%fp+100], %f2
        ld [%fp+96], %f1
        fadds %f2,%f1,%f0
        restore
        retl
        nop
