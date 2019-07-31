
.text
.global main

main:
start: 
	save %sp,-80,%sp      !Save memory for input values 
        set 0x3f8ccccd, %l0   !Value of dividend (value = 1.1)
        st %l0, [%fp + -4]    
        ld [%fp + -4],%f0
        fmovs %f0,%f1         !value is in f0 anfd f1
	set 0x400ccccd, %l1   !value of divisor (value =2.2)
	st %l1, [%fp + -4]   
        ld [%fp + -4],%f2   
	fmovs %f2,%f3         !value is in f2 and f3
        restore
        vfdiv %f0,%f2,%f4     !final value = 0.5

end:	ta 0
