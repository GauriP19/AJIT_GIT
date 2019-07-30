.text
.align 4
.global add
.type add, #function

add:
        save  %sp, -80, %sp
        ld [%fp+100], %f2    !The compiler stores fp numbers in memoery stack of caller.
        ld [%fp+96], %f1     !The numbers are loaded from that adress.
        fadds %f2,%f1,%f0    !fp regosters are visible to caller and callee at al times, hence caller ill find at fo itself
        restore
        retl
        nop
