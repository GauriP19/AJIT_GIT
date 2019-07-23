compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s vsubd.s -E vsubd.elf -V vsubd.vars -H vsubd.hex -M vsubd.mmap -O vsubd.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss vsubd.elf | grep 0x > vsubd.hex 
generateMemoryMap_Byte vsubd.hex > vsubd.mmap
