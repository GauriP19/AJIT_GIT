cmd_libbb/makedev.o := /home/gaurip/builds/buildroot-2014.08/output/host/usr/bin/sparc-buildroot-linux-uclibc-gcc -Wp,-MD,libbb/.makedev.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG  -D"BB_VER=KBUILD_STR(1.22.1)" -DBB_BT=AUTOCONF_TIMESTAMP   -pipe -Os  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(makedev)"  -D"KBUILD_MODNAME=KBUILD_STR(makedev)" -c -o libbb/makedev.o libbb/makedev.c

deps_libbb/makedev.o := \
  libbb/makedev.c \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/lib/gcc/sparc-buildroot-linux-uclibc/4.7.4/include-fixed/limits.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/lib/gcc/sparc-buildroot-linux-uclibc/4.7.4/include-fixed/syslimits.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/limits.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/features.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_config.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/cdefs.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/posix1_lim.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/local_lim.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/limits.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_local_lim.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/posix2_lim.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/xopen_lim.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/stdio_lim.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/byteswap.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/byteswap.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/byteswap-common.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/endian.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/endian.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/lib/gcc/sparc-buildroot-linux-uclibc/4.7.4/include/stdint.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/stdint.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/wordsize.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/lib/gcc/sparc-buildroot-linux-uclibc/4.7.4/include/stdbool.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/unistd.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/posix_opt.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/environments.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/lib/gcc/sparc-buildroot-linux-uclibc/4.7.4/include/stddef.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/typesizes.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/pthreadtypes.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/confname.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/getopt.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/sysmacros.h \

libbb/makedev.o: $(deps_libbb/makedev.o)

$(deps_libbb/makedev.o):
