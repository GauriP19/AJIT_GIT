genVmapAsm vmap.txt setup_page_tables.s
echo "test"
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s  setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s umuld.s -E umuld.elf -V umuld.vars -H umuld.hex -M umuld.mmap -O umuld.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss umuld.elf | grep 0x > umuld.hex 
generateMemoryMap_Byte umuld.hex > umuld.mmap
remapMemmap vmap.txt umuld.mmap umuld.mmap.remapped
