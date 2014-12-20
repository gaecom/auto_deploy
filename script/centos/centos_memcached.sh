#!/bin/bash

. common.sh

inst_pkg $memcached

z_add_sysuser memcache

if [ $MEMSIZE -lt 512 ];then
memcached -d -u memcache -p 11211
else
memcached -d -u memcache -p 11211
memcached -d -u memcache -p 11212
fi
NAME=memcached
cat >/etc/init.d/$NAME<<NG1



#!/bin/sh
#
# memcached    Startup script for memcached processes
#
# chkconfig: - 80 10
# description: Memcache provides fast memory based storage.
# processname: memcached

# These mappings correspond one-to-one with Drupal's settings.php file.

NG1
cat >>/etc/init.d/$NAME<<'NG2'
[ -f $mem ] || exit 0

pre=/usr/local/bin
mem=$pre/memcached
prog="$mem"

start() {
    echo -n $"Starting $prog "
    # Sessions cache.
    $mem -m 16 -l 0.0.0.0 -p 11211 -d -u nobody
    $mem -m 16 -l 0.0.0.0 -p 11212 -d -u nobody
   	$mem -m 16 -l 0.0.0.0 -p 11213 -d -u nobody
    # Default cache.
    # memcached -m 32 -l 0.0.0.0 -p 11212 -d -u nobody
    # # Block cache.
    # $mem -m 32 -l 0.0.0.0 -p 11213 -d -u nobody
    # # Content cache. Holds fully loaded content type structures.
    # $mem -m 16 -l 0.0.0.0 -p 11214 -d -u nobody
    # # Filter cache. Usually the busiest cache after the default.
    # $mem -m 32 -l 0.0.0.0 -p 11215 -d -u nobody
    # # Form cache.
    # $mem -m 32 -l 0.0.0.0 -p 11216 -d -u nobody
    # # Menu cache.
    # $mem -m 32 -l 0.0.0.0 -p 11217 -d -u nobody
    # # Page cache. Bigger than most other caches.
    # $mem -m 128 -l 0.0.0.0 -p 11218 -d -u nobody
    # # Views definition cache.
    # $mem -m 1 -l 0.0.0.0 -p 11219 -d -u nobody
    # # Views data cache (may need to be increased if heavily used).
    # $mem -m 32 -l 0.0.0.0 -p 11220 -d -u nobody

    # More caches that might be added later:
	
    # Users table.
    #/usr/bin/memcached -m 24 -l 0.0.0.0 -p 11219 -d -u nobody
    # Path source cache.
    #/usr/bin/memcached -m 4 -l 0.0.0.0 -p 11220 -d -u nobody
    # Path destination cache.
    #/usr/bin/memcached -m 6 -l 0.0.0.0 -p 11221 -d -u nobody
    RETVAL=$?
    echo
    return $RETVAL
}

stop() {
    if test "x`pidof memcached`" != x; then
        echo -n $"Stopping $prog "
        killall memcached
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
            if test "x`pidof memcached`" != x; then
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