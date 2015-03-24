#!/bin/bash

. pkgs.sh
. common.sh
. config.sh

z_init_env

# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi
echo -e "start all service\n"
ps -ef|grep [t]wemcache || service twemcache start >/dev/nul 2>&1
ps -ef|grep [m]emcached || service memcached start
ps -ef|grep [r]edis || service redis_6379 start
ps -ef|grep [m]ongod || service mongod start

ps -ef|grep [n]ginx || service nginx start
ps -ef|grep [p]hp-fpm || service php-fpm start
ps -ef|grep [m]ysql || service mysql start
#create db
echo -e "import db and create user mysqlrootpwd\n"
mysql -uroot -p$mysqlrootpwd -e "create database $ns_mysql_db DEFAULT CHARACTER SET utf8 collate utf8_general_ci"
mysql -uroot -p$mysqlrootpwd $ns_mysql_db < vconf.sql

echo "add mysql user add import sql data"
mysql -uroot -p$mysqlrootpwd -e "GRANT ALL PRIVILEGES ON $ns_mysql_db.* TO '$ns_mysql_user'@'$ns_mysql_ip' identified by '$ns_mysql_pwd' WITH GRANT OPTION;"

echo -e "update nginx config"
sed "s/\$prefix/$prefix/" niuspace.conf > /etc/nginx/vhost/niuspace.conf


##load php extension


### add domain and ip map record
#
echo -n "add mongodb user\n"
echo "db.addUser('$mongo_user','$mongo_pwd')">/tmp/f.js


mongo wrtc /tmp/f.js
mongo admin /tmp/f.js


# echo "127.0.0.1   w.cc">>/etc/hosts
# echo "127.0.0.1   api.w.cc">>/etc/hosts

# [ ! -f $prefix/home/wwwroot/wrtc_start ] && mkdir -p  $prefix/home/wwwroot/wrtc_start
# tar xvjf wrtc_start*.tar.bz2 -C $prefix/home/wwwroot/wrtc_start

# chown -R www:www  $prefix/home/wwwroot/wrtc_start
# chmod -R 777  $prefix/home/wwwroot/wrtc_start


chks2