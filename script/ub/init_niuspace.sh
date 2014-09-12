#!/bin/bash
. common.sh
. inst_config.sh



# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi


echo "add mysql user add import sql data"
mysql -uroot -p$mysqlrootpwd -e "GRANT ALL PRIVILEGES ON $ns_mysql_db.* TO '$ns_mysql_user'@'$ns_mysql_ip' identified by '$ns_mysql_pwd' WITH GRANT OPTION;"

mysql -uroot -p$mysqlrootpwd $ns_mysql_db < wrtc_start/vconf.sql


### add domain and ip map record
#
echo "127.0.0.1   w.cc">>/etc/hosts
echo "127.0.0.1   api.w.cc">>/etc/hosts

##init dir

mkdir2 $nsRoot/application/cache

tar xvjf wrtc_start*.tar.bz2 -C $nsRoot

chown -R www:www  
chmod -R 777 $nsRoot