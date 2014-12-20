#!/bin/bash
set -e -v
. common.sh
#dir="`inst_pkg $redis`"


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
    sed -i 's/daemonize no/daemonize yes/g' /etc/redis/6379.conf
    echo "requirepass $redis_pwd">>/etc/redis/6379.conf
    cd ../
}
conf=/etc/redis/6379.conf
utils/install_server.sh
# cat ->/etc/init.d/$NAME<<NG1
# #!/bin/sh
# #Configurations injected by install_server below....

# EXEC=/usr/local/bin/redis-server
# CLIEXEC=/usr/local/bin/redis-cli
# PIDFILE=/var/run/redis_6379.pid
# CONF="$conf"
# REDISPORT="6379"
# ###############
# # SysV Init Information
# # chkconfig: - 58 74
# # description: redis_6379 is the redis daemon.
# ### BEGIN INIT INFO
# # Provides: redis_6379
# # Required-Start: $network $local_fs $remote_fs
# # Required-Stop: $network $local_fs $remote_fs
# # Default-Start: 2 3 4 5
# # Default-Stop: 0 1 6
# # Should-Start: $syslog $named
# # Should-Stop: $syslog $named
# # Short-Description: start and stop $NAME
# # Description: Redis daemon
# ### END INIT INFO
# NG1
# cat >>/etc/init.d/$NAME<<'NG2'
# case "$1" in
#     start)
#         if [ -f $PIDFILE ]
#         then
#             echo "$PIDFILE exists, process is already running or crashed"
#         else
#             echo "Starting Redis server..."
#             $EXEC $CONF
#         fi
#         ;;
#     stop)
#         if [ ! -f $PIDFILE ]
#         then
#             echo "$PIDFILE does not exist, process is not running"
#         else
#             PID=$(cat $PIDFILE)
#             echo "Stopping ..."
#             $CLIEXEC -p $REDISPORT shutdown
#             while [ -x /proc/${PID} ]
#             do
#                 echo "Waiting for Redis to shutdown ..."
#                 sleep 1
#             done
#             echo "Redis stopped"
#         fi
#         ;;
#     status)
#         if [ ! -f $PIDFILE ]
#         then
#             echo 'Redis is not running'
#         else
#             echo "Redis is running ($(<$PIDFILE))"
#         fi
#         ;;
#     restart)
#         $0 stop
#         $0 start
#         ;;
#     *)
#         echo "Please use start, stop, restart or status as first argument"
#         ;;
# esac
# NG2
install_redis