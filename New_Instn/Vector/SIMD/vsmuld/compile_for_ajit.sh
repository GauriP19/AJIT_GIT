compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s vsmuld.s -E vsmuld.elf -V vsmuld.vars -H vsmuld.hex -M vsmuld.mmap -O vsmuld.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss vsmuld.elf | grep 0x > vsmuld.hex 
generateMemoryMap_Byte vsmuld.hex > vsmuld.mmap
