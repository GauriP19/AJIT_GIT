genVmapAsm vmap.txt setup_page_tables.s
echo "test"
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s  setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s smuld.s -E smuld.elf -V smuld.vars -H smuld.hex -M smuld.mmap -O smuld.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss smuld.elf | grep 0x > smuld.hex 
generateMemoryMap_Byte smuld.hex > smuld.mmap
remapMemmap vmap.txt smuld.mmap smuld.mmap.remapped
