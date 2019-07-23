genVmapAsm vmap.txt setup_page_tables.s
echo "test"
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s  setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s shift.s -E shift.elf -V shift.vars -H shift.hex -M shift.mmap -O shift.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss shift.elf | grep 0x > shift.hex
generateMemoryMap_Byte shift.hex > shift.mmap
remapMemmap vmap.txt shift.mmap shift.mmap.remapped
~                                                      
