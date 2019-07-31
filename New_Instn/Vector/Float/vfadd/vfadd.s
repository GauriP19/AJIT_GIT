
.text
.global main

main:
start: 
        save %sp,-80,%sp    !save memory to store input values
        set 0x3f8ccccd, %l0 !set value in a register  (value is 1.1)
        st %l0, [%fp + -4]  !put in memory
        ld [%fp + -4],%f0   !first input in f0 from memory
        fmovs %f0,%f1       !give values in all registers
        fmovs %f0,%f2
        fmovs %f0,%f3       
        vfadd %f0,%f2,%f4   !result should be 2.2
	restore
 
end:	ta 0
