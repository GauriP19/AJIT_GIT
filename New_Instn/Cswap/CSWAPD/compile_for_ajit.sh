compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s cswapd.s -E cswapd.elf -V cswapd.vars -H cswapd.hex -M cswapd.mmap -O cswapd.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=.text --hex-dump=.data --hex-dump=.rodata  --hex-dump=.bss cswapd.elf | grep 0x > cswapd.hex
generateMemoryMap_Byte cswapd.hex > cswapd.mmap

