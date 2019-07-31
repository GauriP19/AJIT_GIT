
compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -I $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/include -C $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/src -C $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/src -I $AJIT_TOOLS_RELEASE/tools/minimal_printf_timer/include -s vfsub.s -E vfsub.elf -V vfsub.vars -H vfsub.hex -M vfsub.mmap -O vfsub.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss vfsub.elf | grep 0x > vfsub.hex 
generateMemoryMap_Byte vfsub.hex > vfsub.mmap

