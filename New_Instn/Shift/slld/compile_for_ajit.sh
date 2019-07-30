
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s shift.s -E shift.elf -V shift.vars -H shift.hex -M shift.mmap -O shift.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss shift.elf | grep 0x > shift.hex
generateMemoryMap_Byte shift.hex > shift.mmap
