compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s and.s -E and.elf -V and.vars -H and.hex -M and.mmap -O and.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss and.elf | grep 0x > and.hex 
generateMemoryMap_Byte and.hex > and.mmap
