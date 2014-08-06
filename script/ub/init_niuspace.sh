#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
ns_mysql_db=vconf
ns_mysql_user='u_vconf'
ns_mysql_pwd='u_0&vconf'
mysqlrootpwd="what1sn1spaceO*"
ns_mysql_ip=localhost

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

tar xvjf wrtc_start*.tar.bz2 -C /home/wwwroot/wrtc_start

chown -R www:www  /home/wwwroot/wrtc_start
chmod -R 777  /home/wwwroot/wrtc_start