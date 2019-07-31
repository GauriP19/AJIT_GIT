compileToSparc.py -g -I /usr/include -I ./ -s init.s -s  setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s vfadd.s -E vfadd.elf -V vfadd.vars -H vfadd.hex -M vfadd.mmap -O vfadd.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss vfadd.elf | grep 0x > vfadd.hex
generateMemoryMap_Byte vfadd.hex > vfadd.mmap

