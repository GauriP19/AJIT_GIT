cmd_util-linux/fstrim.o := /home/gaurip/builds/buildroot-2014.08/output/host/usr/bin/sparc-buildroot-linux-uclibc-gcc -Wp,-MD,util-linux/.fstrim.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG  -D"BB_VER=KBUILD_STR(1.22.1)" -DBB_BT=AUTOCONF_TIMESTAMP   -pipe -Os  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os     -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(fstrim)"  -D"KBUILD_MODNAME=KBUILD_STR(fstrim)" -c -o util-linux/fstrim.o util-linux/fstrim.c

deps_util-linux/fstrim.o := \
  util-linux/fstrim.c \
    $(wildcard include/config/fstrim.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/clean/up.h) \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/devfs.h) \
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
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/ctype.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_touplow.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/dirent.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/dirent.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/errno.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/errno.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/errno.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/errno.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/errno-base.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/fcntl.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/fcntl.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/time.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/select.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/select.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sigset.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/time.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/sysmacros.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uio.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/stat.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/stat.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/inttypes.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/netdb.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/netinet/in.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/socket.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/uio.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/socket.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/socket_type.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sockaddr.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/socket.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/sockios.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/in.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/siginfo.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/netdb.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/setjmp.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/setjmp.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/signal.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/signum.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sigaction.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sigcontext.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sigstack.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/ucontext.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sigthread.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/stdio.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_stdio.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_mutex.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/pthread.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sched.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/sched.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_clk_tck.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/uClibc_pthread.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/lib/gcc/sparc-buildroot-linux-uclibc/4.7.4/include/stdarg.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/stdlib.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/waitflags.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/waitstatus.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/alloca.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/string.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/libgen.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/poll.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/poll.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/poll.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/ioctl.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/ioctls.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/ioctls.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/ioctl.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/sockios.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/ioctl-types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/ttydefaults.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/mman.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/mman.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/time.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/wait.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/resource.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/resource.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/termios.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/termios.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/param.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/param.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/param.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/param.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/pwd.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/grp.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/shadow.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/paths.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/mntent.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/sys/statfs.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/statfs.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/utmp.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/bits/utmp.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/arpa/inet.h \
  include/xatonum.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/fs.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/ioctl.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/int-ll64.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/bitsperlong.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/posix_types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/stddef.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm/posix_types.h \
  /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/asm-generic/posix_types.h \

util-linux/fstrim.o: $(deps_util-linux/fstrim.o)

$(deps_util-linux/fstrim.o):
