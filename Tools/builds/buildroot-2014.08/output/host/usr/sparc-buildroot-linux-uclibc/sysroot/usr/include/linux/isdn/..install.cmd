cmd_/home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/isdn/.install := /bin/bash scripts/headers_install.sh /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/isdn ./include/uapi/linux/isdn capicmd.h; /bin/bash scripts/headers_install.sh /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/isdn ./include/linux/isdn ; /bin/bash scripts/headers_install.sh /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/isdn ./include/generated/uapi/linux/isdn ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/isdn/$$F; done; touch /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/isdn/.install