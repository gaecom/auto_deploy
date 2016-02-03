#!/bin/bash
#set -e -v
. common.sh
z_add_sysuser www
geodir=/home/wwwroot/geodata
prefix=/usr/local/nginx
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
DESC="nginx daemon"
NAME=nginx
DAEMON=/usr/bin/$NAME
CONFIGFILE=/etc/nginx/$NAME.conf
PIDFILE=$prefix/$NAME.pid
SCRIPTNAME=/etc/init.d/$NAME
LOGFILE=/var/log/$NAME/access.log
ERRFILE=/var/log/$NAME/error.log
LOCKFILE=$prefix/$NAME.lock
CLIENT_TEMP=/var/tmp/$NAME/client_temp
PROXY_TEMP=/var/tmp/$NAME/proxy_temp
FCGI_TEMP=/var/tmp/$NAME/fastcgi_temp
echo -e "start compiling nginx\n"
mkdir -p $CLIENT_TEMP
mkdir -p $PROXY_TEMP
mkdir -p $FCGI_TEMP

mkdir -p /etc/nginx/vhost
if [ -f /etc/nginx/nginx.conf ];then

sed -i '$d' /etc/nginx/nginx.conf
echo -e "include vhost/e_*.conf;\n}">>/etc/nginx/nginx.conf
fi


geostr=""

function inst_geo {
	echo "install geo libs"
	wget -c $geoCityLib
	wget -c $geoIp
	[ ! -d  $geodir ] && mkdir -p $geodir
	inst_pkg $geoipclib
	geostr="--with-http_geoip_module=shared "
}


#--with-http_geoip_module=shared \
# mv GeoLiteCity.dat.gz $geodir
# mv GeoIP.dat.gz  $geodir
# gzip -d   $geodir/GeoLiteCity.dat.gz






inst_pkg $tenginx $geostr \
--prefix=$prefix \
--sbin-path=/usr/bin \
--conf-path=$CONFIGFILE \
--http-log-path=$LOGFILE \
--error-log-path=$ERRFILE \
--pid-path=$PIDFILE \
--lock-path=$LOCKFILE \
--with-http_sub_module=shared \
--with-http_flv_module=shared \
--with-http_random_index_module=shared \
--with-http_access_module=shared \
--with-http_autoindex_module=shared \
--with-http_upstream_ip_hash_module=shared \
--with-http_upstream_least_conn_module=shared \
--with-http_image_filter_module=shared \
--with-http_concat_module \
--user=www \
--group=www 




echo -e "install nginx service\n"
cat >/etc/init.d/nginx<<NG1
#!/bin/sh
# run 'update-rc.d -f nginx defaults', or use the appropriate command on your
# distro. 
#For CentOS/Redhat run: 'chkconfig --add nginx'

### BEGIN INIT INFO
# Provides:          nginx
# Required-Start:    $x
# Required-Stop:     $x
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: operation nginx
# Description:       start,restart,reload nginx
### END INIT INFO
DAEMON=$DAEMON
CONFIGFILE=$CONFIGFILE
PIDFILE=$PIDFILE
DESC="$DESC"
NAME=$NAME
SCRIPTNAME=$SCRIPTNAME
NG1
cat >>/etc/init.d/nginx<<'NG2'
set -e 
[ -x "$DAEMON" ] || exit 0
do_start() {
 sudo $DAEMON -c $CONFIGFILE || echo -n "nginx already running"
}

do_stop() {
 sudo kill -INT `cat $PIDFILE` || echo -n "nginx not running"
}

do_reload() {
 sudo kill -HUP `cat $PIDFILE` || echo -n "nginx can't reload"
}

case "$1" in
 start)
 echo -n "Starting $DESC: $NAME"
 do_start
 echo "."
 ;;

 stop)
 echo -n "Stopping $DESC: $NAME"
 do_stop
 echo "."
 ;;
 reload|graceful)
 echo -n "Reloading $DESC configuration..."
 do_reload
 echo "."
 ;;
 restart)
 echo -n "Restarting $DESC: $NAME"
 do_stop
 do_start
 echo "."
 ;;
 *)
 echo "Usage: $SCRIPTNAME {start|stop|reload|restart}" >&2
 exit 3
 ;;
esac
exit 0
NG2
echo "AddType text/x-component .htc">>/usr/local/nginx/mime.types

chmod +x /etc/init.d/$NAME
chkconfig --add $NAME 
chkconfig --level 345 $NAME on

systemctl enable nginx.service

#chkconfig --level 345 nginx on
#update-rc.d -f nginx defaults
echo -e "install nginx service end\n"