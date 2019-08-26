compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s addd.s -E addd.elf -V addd.vars -H addd.hex -M addd.mmap -O addd.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=.text --hex-dump=.data --hex-dump=.rodata  --hex-dump=.bss addd.elf | grep 0x > addd.hex
generateMemoryMap_Byte addd.hex > addd.mmap

