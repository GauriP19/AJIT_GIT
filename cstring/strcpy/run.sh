./compile_for_ajit1.sh > compile.log 2>compile.err 

ajit_C_system_model -m fact.mmap -d -r main.results -l main.log -u 64
