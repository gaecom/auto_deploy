#!/bin/bash
. pkgs
. common.sh

inst_pkg $twemcache


cat >/etc/init.d/$NAME<<NG1


#! /bin/sh

### BEGIN INIT INFO
# Provides:          twemcache
# Required-Start:    $remote_fs $network
# Required-Stop:     $remote_fs $network
# Default-Start:     2 3 4 5
# chkconfig: 2345 	90 30
# Default-Stop:      0 1 6
# Short-Description: starts twemcache
# Description:       starts the PHP FastCGI Process Manager daemon
### END INIT INFO

NG1
cat >>/etc/init.d/$NAME<<'NG2'
tw_bin='/usr/local/bin/nutcracker'
tw_conf='/etc/nutcracker.yml'
tw_opts='-d -c '

wait_for_pid () {
	try=0

	while test $try -lt 35 ; do

		case "$1" in
			'created')
			if [ -f "$2" ] ; then
				try=''
				break
			fi
			;;

			'removed')
			if [ ! -f "$2" ] ; then
				try=''
				break
			fi
			;;
		esac

		echo -n .
		try=`expr $try + 1`
		sleep 1

	done

}

case "$1" in
	start)
		echo -n "Starting twemcache "

      $tw_bin $tw_opts $tw_conf
		if [ "$?" != 0 ] ; then
			echo " failed"
			exit 1
		fi


	;;

	stop)
		echo -n "Gracefully shutting down -fpm "

	killall -9 nutcracker

	;;



	restart)
		$0 stop
		$0 start
	;;




	*)
		echo "Usage: $0 {start|stop|restart}"
		exit 1
	;;

esac
NG2
chmod +x /etc/init.d/$NAME
chkconfig $NAME on
