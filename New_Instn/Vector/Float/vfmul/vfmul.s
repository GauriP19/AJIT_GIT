
.text
.global main

main:
start: 
	save %sp,-80,%sp      !Save memory for input values
        set 0x40000000, %l0   !first value = 2 
        st %l0, [%fp + -4]
        ld [%fp + -4],%f0
        fmovs %f0,%f1         !value is in f0 and f1 
        set 0x400ccccd, %l1   !second value = 2.2
        st %l1, [%fp + -4]
        ld [%fp + -4],%f2
        fmovs %f2,%f3         !value is in f2 and f3  
        vfmul %f0,%f2,%f4     !final answer = 4.4
	restore

	
	 
end:	ta 0
