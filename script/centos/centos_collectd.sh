
#/bin/bash
#config centos network
#setup env
. pkgs.sh
. common.sh
. config.sh

z_init_env
wget -c http://collectd.org/files/collectd-5.4.1.tar.bz2 -o collectd-5.4.1.tar.bz2

tar cvjf collectd-5.4.1.tar.bz2


cd collectd-5.4.1

./configure;make;sudo make all install

read -p "create mysql user for monitoring mysql,input root:pwd" user
mysql -u$myuser1 -p$mypwd1 -e "GRANT ALL PRIVILEGES ON $db.* TO '$user'@'$ip' identified by '$pwd' WITH GRANT OPTION;"
user=`echo $user|cut -d: -f1`
password=`echo $user|cut -d: -f2`
mysql -u$user -p$password "CREATE USER 'collectd'@'localhost' IDENTIFIED BY 'collectd0*';"
mysql -u$user -p$password "GRANT USAGE ON *.* TO 'collectd'@'localhost';"
mysql -u$user -p$password "GRANT REPLICATION CLIENT ON *.* TO 'collectd'@'localhost';"
read -p "configure /etc/collectd/collectd.conf and run /opt/collectd/sbin/collectd" b



