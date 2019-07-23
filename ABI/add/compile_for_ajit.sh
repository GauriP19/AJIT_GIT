
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -c myadd.c -s add.s -E add.elf -V add.vars -H add.hex -M add.mmap -O add.objdump  -L LinkerScript.lnk  -D AJIT 
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss add.elf | grep 0x > add.hex 
generateMemoryMap_Byte add.hex > add.mmap

