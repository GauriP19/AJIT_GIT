compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s zero.s -E zero.elf -V zero.vars -H zero.hex -M zero.mmap -O zero.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss zero.elf | grep 0x > zero.hex 
generateMemoryMap_Byte zero.hex > zero.mmap
