#/bin/bash
set -e -v

. common.sh

yum -y install libuuid-devel libgearman* boost*

ln -f -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent.so


inst_pkg $gearman

groupadd gearman
useradd -r -M -s /sbin/nologin gearman -g gearman

NAME=gearmand
cat >/etc/init.d/$NAME<<NG1



#!/bin/sh
#
# $NAME    Startup script for $NAME processes
#
# chkconfig: - 90 20
# description: $NAME provides fast memory based storage.
# processname: $NAME

# ryatek daemon file

NG1
cat >>/etc/init.d/$NAME<<'NG2'
[ -f $mem ] || exit 0

pre=/usr/local/sbin
mem=$pre/gearmand
prog="$mem"

start() {
    echo -n $"Starting $prog "
    # Sessions cache.
    $mem -u gearman -d -b 100 -L 0.0.0.0
   
    
  
    RETVAL=$?
    echo
    return $RETVAL
}

stop() {
    if test "x`pidof gearmand`" != x; then
        echo -n $"Stopping $prog "
        killall gearmand
        echo
    fi
    RETVAL=$?
    return $RETVAL
}

case "$1" in
        start)
            start
            ;;

        stop)
            stop
            ;;

        restart)
            stop
            start
            ;;
        condrestart)
            if test "x`pidof gearmand`" != x; then
                stop
                start
            fi
            ;;

        *)
            echo $"Usage: $0 {start|stop|restart|condrestart}"
            exit 1

esac

exit $RETVAL
NG2
chmod +x /etc/init.d/$NAME
chkconfig --add $NAME
chkconfig --level 345 $NAME on