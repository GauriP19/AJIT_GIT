compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s acall.s -s astrncmp.s -E fact.elf -V fact.vars -H fact.hex -M fact.mmap -O fact.objdump  -L LinkerScript.lnk  -D AJIT 
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=.text --hex-dump=.data --hex-dump=.rodata  --hex-dump=.bss fact.elf | grep 0x > fact.hex 
generateMemoryMap_Byte fact.hex > fact.mmap

