cmd_/home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/nfsd/.install := /bin/bash scripts/headers_install.sh /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/nfsd ./include/uapi/linux/nfsd cld.h debug.h export.h nfsfh.h stats.h; /bin/bash scripts/headers_install.sh /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/nfsd ./include/linux/nfsd ; /bin/bash scripts/headers_install.sh /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/nfsd ./include/generated/uapi/linux/nfsd ; for F in ; do echo "\#include <asm-generic/$$F>" > /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/nfsd/$$F; done; touch /home/gaurip/builds/buildroot-2014.08/output/host/usr/sparc-buildroot-linux-uclibc/sysroot/usr/include/linux/nfsd/.install