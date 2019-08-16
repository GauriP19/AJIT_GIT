compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s vaddd.s -E vaddd.elf -V vaddd.vars -H vaddd.hex -M vaddd.mmap -O vaddd.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=.text --hex-dump=.data --hex-dump=.rodata  --hex-dump=.bss vaddd.elf | grep 0x > vaddd.hex
generateMemoryMap_Byte vaddd.hex > vaddd.mmap

