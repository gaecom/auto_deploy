#!/bin/bash
. common.sh
. pkgs.sh
. config.sh
dir=inst_pkg $redis

# will prompt 
#. $dir/utils/install_server.sh
#
#sed -i 's/daemonize no/daemonize yes/g' /etc/redis/6379.conf
#echo "requirepass $redis_pwd">>/etc/redis/6379.conf

NAME=redis

function install_redis {
if [ -s redis-2.8.8 ]; then
    rm -rf redis-2.8.8/
fi

config_pkg $redis
if [ `getconf WORD_BIT` = '32' ] && [ `getconf LONG_BIT` = '64' ] ; then
        make PREFIX=/usr/local/redis install
else
        make CFLAGS="-march=i686" PREFIX=/usr/local/redis install
fi
mkdir -p /usr/local/redis/etc/
cp redis.conf  /usr/local/redis/etc/
sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
echo "requirepass $redis_pwd">>/usr/local/redis/etc/redis.conf
cd ../
}

cat ->/etc/init.d/$NAME<<NG1

#! /bin/bash
#   
# redis - this script starts and stops the redis-server daemon
#   
# chkconfig:    2345 80 90
# description:  Redis is a persistent key-value database
#   
### BEGIN INIT INFO
# Provides:          redis
# Required-Start:    $syslog
# Required-Stop:     $syslog
# Should-Start:        $local_fs
# Should-Stop:        $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description:    redis-server daemon
# Description:        redis-server daemon
### END INIT INFO
NG1
cat >>/etc/init.d/$NAME<<'NG2'
REDISPORT=6379
EXEC=/usr/local/redis/bin/redis-server
REDIS_CLI=/usr/local/redis/bin/redis-cli
   
PIDFILE=/var/run/redis.pid
CONF="/usr/local/redis/etc/redis.conf"
   
case "$1" in
    start)
        if [ -f $PIDFILE ]
        then
                echo "$PIDFILE exists, process is already running or crashed"
        else
                echo "Starting Redis server..."
                $EXEC $CONF
        fi
        if [ "$?"="0" ] 
        then
              echo "Redis is running..."
        fi
        ;;
    stop)
        if [ ! -f $PIDFILE ]
        then
                echo "$PIDFILE does not exist, process is not running"
        else
                PID=$(cat $PIDFILE)
                echo "Stopping ..."
                $REDIS_CLI -p $REDISPORT shutdown
                while [ -x ${PIDFILE} ]
               do
                    echo "Waiting for Redis to shutdown ..."
                    sleep 1
                done
                echo "Redis stopped"
        fi
        ;;
   restart)
        ${0} stop
        ${0} start
        ;;
  *)
    echo "Usage: /etc/init.d/redis {start|stop|restart}" >&2
        exit 1
esac
NG2