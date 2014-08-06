NAME=wrtc_sig
cat >/etc/init.d/$NAME<<NG1
#!/bin/bash
#
#   Startup script for the wrtc_sig server
#
# chkconfig: - 64 36
# description: wrtc_sig  Server
#
# processname: wrtc_sig
#
NG1
cat >>/etc/init.d/$NAME<<'NG2'
# Source function library
. /etc/rc.d/init.d/functions
prog="wrtc_sig"
node="/usr/local/bin/node"
RETVAL=0

start() {
echo -n $"Starting $prog: "
cd /home/wwwroot/wrtc_start/server
$node ssl_video_server_o.js www.niuspace.com &
RETVAL=$?
echo
[ $RETVAL -eq 0 ] && touch /var/lock/subsys/$prog
return $RETVAL
}

stop() {
echo -n $"Stopping $prog: "
killall -r $prog
RETVAL=$?
echo
[ $RETVAL -eq 0 ] && rm -f /var/lock/subsys/$prog
return $RETVAL
}

reload() {
echo -n $"Reloading $prog: "
kill `ps -ef|grep ssl_video_server_o.js|grep -v grep|awk '{print $2}'` -HUP
RETVAL=$?
echo
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
if [ -f /var/lock/subsys/$prog ]; then
stop
start
fi
;;
reload)
reload
;;
status)
[ -f /var/lock/subsys/$prog ] && echo "wrtc_sig is runngin"
RETVAL=$?
;;
*)
echo $"Usage: $0 {start|stop|restart|condrestart|reload|status}"
RETVAL=1
esac

exit $RETVAL
NG2

sudo chmod a+x /etc/init.d/wrtc_sig
chkconfig --add wrtc_sig
chkconfig --level 345 wrtc_sig on