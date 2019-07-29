compileToSparc.py -g -I /usr/include -I ./ -s init.s -s $AJIT_TOOLS_RELEASE/tools/ajit_access_routines/asm/trap_handlers.s -s vumuld.s -E vumuld.elf -V vumuld.vars -H vumuld.hex -M vumuld.mmap -O vumuld.objdump  -L LinkerScript.lnk  -D AJIT
echo "\nREADELF\n"
sparc-linux-readelf  --hex-dump=1 --hex-dump=2 --hex-dump=3  --hex-dump=.bss vumuld.elf | grep 0x > vumuld.hex 
generateMemoryMap_Byte vumuld.hex > vumuld.mmap
