compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s or.s -E or.elf -V or.vars -H or.hex -M or.mmap -O or.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss or.elf | grep 0x > or.hex 
generateMemoryMap_Byte or.hex > or.mmap