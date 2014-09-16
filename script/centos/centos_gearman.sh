#/bin/bash
. pkgs.sh
. common.sh

yum -y install libuuid-devel libgearman* boost*

ln -f -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent.so


inst_pkg gearman