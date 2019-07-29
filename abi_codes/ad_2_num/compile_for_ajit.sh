genVmapAsm vmap.txt setup_page_tables.s
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s setup_page_tables.s  -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -c main.c -E hello.elf -V hello.vars -H hello.hex -M hello.mmap -O hello.objdump  -L LinkerScript.lnk  -D AJIT 
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss hello.elf | grep 0x > hello.hex 
generateMemoryMap_Byte hello.hex > hello.mmap
remapMemmap vmap.txt hello.mmap hello.mmap.remapped
