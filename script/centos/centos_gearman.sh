#/bin/bash
set -e -v
. pkgs.sh
. common.sh
z_init_env
yum -y install libuuid-devel libgearman* boost*

ln -f -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent.so


inst_pkg $gearman