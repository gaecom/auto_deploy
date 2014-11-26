#!/bin/bash



#start add module here
set -e -v -x
#pagespeed is about 95M
enable_pagespeed=0

echo "download modules start"
[ ! -e replace.tar.gz ] && curl -L https://github.com/yaoweibin/ngx_http_substitutions_filter_module/tarball/master -o replace.tar.gz
tar xvzf replace.tar.gz
replace_dir=`ls -p|grep /|grep ngx_http_substitutions_filter_module`

# [ ! -e nginx-push-stream-module-master.zip ] && curl -L https://nodeload.github.com/wandenberg/nginx-push-stream-module/zip/master  -e https://nodeload.github.com/
# unzip nginx-push-stream-module-master.zip
# push_stream_dir=../`ls -p|grep /|grep nginx-push-stream-module`

pkg_download https://codeload.github.com/alibaba/nginx-http-concat/zip/master zip
concat_dir="../nginx-http-concat-master"

if [ "$enable_pagespeed" == "1" ];then
[ ! -e ngx_pagespeed.zip ] && curl -L https://codeload.github.com/pagespeed/ngx_pagespeed/zip/master -o ngx_pagespeed.zip
unzip ngx_pagespeed.zip

ngx_pagespeed_dir=../`ls -d ngx_pagespeed*|head -1`

cd $ngx_pagespeed_dir
pkg_download https://dl.google.com/dl/page-speed/psol/1.5.27.3.tar.gz
cd ..
fi;
groupadd www
[ "`id -u www`" == "" ] && z_add_sysuser www
module=""
modules="../$replace_dir $ngx_pagespeed_dir $concat_dir"


echo "download modules end"



mkdir -p /etc/nginx/vhost

for x in $modules;do
	module="$module --add-module=$x "
done
echo "download modules finsh"

echo "AddType text/x-component .htc">>/usr/local/nginx/mime.types
nginx_url=$nginx

prefix=/usr/local/nginx
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
DESC="nginx daemon"
NAME=nginx
DAEMON=/usr/sbin/$NAME
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
cd $dir

inst_pkg $nginx_url \
--prefix=$prefix \
--sbin-path=/usr/bin \
--conf-path=$CONFIGFILE \
--http-log-path=$LOGFILE \
--error-log-path=$ERRFILE \
--pid-path=$PIDFILE \
--lock-path=$LOCKFILE \
--user=www \
--group=www \
--http-client-body-temp-path=$CLIENT_TEMP \
--http-proxy-temp-path=$PROXY_TEMP \
--with-http_ssl_module \
--with-http_stub_status_module \
--without-poll_module \
--with-http_sub_module \
--with-http_flv_module \
--with-http_dav_module \
--without-select_module \
--with-http_ssl_module \
--with-http_realip_module \
--with-http_perl_module \
--with-pcre \
--with-pcre-jit \
--http-fastcgi-temp-path=$FCGI_TEMP \
--with-http_dav_module \
$module

#cp ../config/nginx.conf /etc/nginx/$NAME.conf
#cp ../config/fcgi.conf /etc/nginx/fcgi.conf
echo -e "finsh compiling nginx\n"

sleep 2

echo -e "install nginx service\n"
cat >/etc/init.d/$NAME<<NG1
#!/bin/sh
#
# nginx - this script starts and stops the nginx daemon
#
# chkconfig:   - 85 15 
# description:  Nginx is an HTTP(S) server, HTTP(S) reverse \
#               proxy and IMAP/POP3 proxy server
# processname: nginx
# config:      /etc/nginx/nginx.conf
# config:      /etc/sysconfig/nginx
# pidfile:     /var/run/nginx.pid
NG1
cat >>/etc/init.d/$NAME<<'NG2'
. /etc/rc.d/init.d/functions
 
# Source networking configuration.
. /etc/sysconfig/network
 
# Check that networking is up.
[ "$NETWORKING" = "no" ] && exit 0
 
nginx="/usr/sbin/nginx"
prog=$(basename $nginx)
 
NGINX_CONF_FILE="/etc/nginx/nginx.conf"
 
[ -f /etc/sysconfig/nginx ] && . /etc/sysconfig/nginx
 
lockfile=/var/lock/subsys/nginx
 
make_dirs() {
   # make required directories
   user=`$nginx -V 2>&1 | grep "configure arguments:" | sed 's/[^*]*--user=\([^ ]*\).*/\1/g' -`
   if [ -z "`grep $user /etc/passwd`" ]; then
       useradd -M -s /bin/nologin $user
   fi
   options=`$nginx -V 2>&1 | grep 'configure arguments:'`
   for opt in $options; do
       if [ `echo $opt | grep '.*-temp-path'` ]; then
           value=`echo $opt | cut -d "=" -f 2`
           if [ ! -d "$value" ]; then
               # echo "creating" $value
               mkdir -p $value && chown -R $user $value
           fi
       fi
   done
}
 
start() {
    [ -x $nginx ] || exit 5
    [ -f $NGINX_CONF_FILE ] || exit 6
    make_dirs
    echo -n $"Starting $prog: "
    daemon $nginx -c $NGINX_CONF_FILE
    retval=$?
    echo
    [ $retval -eq 0 ] && touch $lockfile
    return $retval
}
 
stop() {
    echo -n $"Stopping $prog: "
    killproc $prog -QUIT
    retval=$?
    echo
    [ $retval -eq 0 ] && rm -f $lockfile
    return $retval
}
 
restart() {
    configtest || return $?
    stop
    sleep 1
    start
}
 
reload() {
    configtest || return $?
    echo -n $"Reloading $prog: "
    killproc $nginx -HUP
    RETVAL=$?
    echo
}
 
force_reload() {
    restart
}
 
configtest() {
  $nginx -t -c $NGINX_CONF_FILE
}
 
rh_status() {
    status $prog
}
 
rh_status_q() {
    rh_status >/dev/null 2>&1
}
 
case "$1" in
    start)
        rh_status_q && exit 0
        $1
        ;;
    stop)
        rh_status_q || exit 0
        $1
        ;;
    restart|configtest)
        $1
        ;;
    reload)
        rh_status_q || exit 7
        $1
        ;;
    force-reload)
        force_reload
        ;;
    status)
        rh_status
        ;;
    condrestart|try-restart)
        rh_status_q || exit 0
            ;;
    *)
        echo $"Usage: $0 {start|stop|status|restart|condrestart|try-restart|reload|force-reload|configtest}"
        exit 2
esac
NG2


sudo chmod a+x /etc/init.d/nginx
chkconfig --add  nginx
chkconfig --level 345 nginx on
#update-rc.d -f nginx defaults
echo -e "install nginx service end\n"
