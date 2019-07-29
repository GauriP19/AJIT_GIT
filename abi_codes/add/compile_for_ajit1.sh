genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s add.s -c main.c -E add.elf -V add.vars -H add.hex -M add.mmap -O add.objdump  -L LinkerScript.lnk  -D AJIT 
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss add.elf | grep 0x > add.hex 
generateMemoryMap_Byte add.hex > add.mmap
remapMemmap vmap.txt add.mmap add.mmap.remapped
