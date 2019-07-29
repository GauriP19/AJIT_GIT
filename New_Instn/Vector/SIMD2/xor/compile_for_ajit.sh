compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s xor.s -E xor.elf -V xor.vars -H xor.hex -M xor.mmap -O xor.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss xor.elf | grep 0x > xor.hex 
generateMemoryMap_Byte xor.hex > xor.mmap
