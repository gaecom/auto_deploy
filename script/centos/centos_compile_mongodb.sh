#!/bin/bash
#note:compile will take long time
. pkgs.sh
. common.sh

cd_pkg $mongodb

scons all
scons install

z_add_sysuser mongo
mkdir /var/log/mongodb
chown -R mongo /var/log/mongodb
mongod --logpath=/var/log/mongodb.log --slowms=50 --master --dbpath=/var/db/mongodb

NAME=mongod

cat >/etc/init.d/$NAME<<NG1
#!/bin/bash
#
# mongodb Startup script for the mongodb server
#
# chkconfig: - 64 36
# description: MongoDB Database Server
#
# processname: mongodb
#
NG1
cat >>/etc/init.d/$NAME<<'NG2'
# Source function library
. /etc/rc.d/init.d/functions

if [ -f /etc/sysconfig/mongodb ]; then
. /etc/sysconfig/mongodb
fi

prog="mongod"
mongod="/usr/local/mongodb/bin/mongod"
RETVAL=0

start() {
echo -n $"Starting $prog: "
$mongod --auth --logpath=/var/log/mongodb.log --logappend 2>&1 --slowms=50 --master --dbpath=/var/db/mongodb &
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
killall $prog -HUP
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
[ -f /var/lock/subsys/$prog ] && echo "mongodb is runngin"
RETVAL=$?
;;
*)
echo $"Usage: $0 {start|stop|restart|condrestart|reload|status}"
RETVAL=1
esac

exit $RETVAL
NG2


sudo chmod a+x /etc/init.d/mongod
chkconfig --add mongod
chkconfig --level 345 mongod on

