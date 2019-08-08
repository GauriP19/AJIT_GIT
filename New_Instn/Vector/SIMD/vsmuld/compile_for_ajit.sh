genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -I /usr/include -I ./ -o 0 -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s vsmuld.s -E vsmuld.elf -V vsmuld.vars -H vsmuld.hex -M vsmuld.mmap -O vsmuld.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss vsmuld.elf | grep 0x > vsmuld.hex
generateMemoryMap_Byte vsmuld.hex > vsmuld.mmap
remapMemmap vsmuld.mmap vsmuld.mmap.remapped

