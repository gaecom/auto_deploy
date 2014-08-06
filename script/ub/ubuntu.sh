#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
. config.sh
# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install Niuspace"
    exit 1
fi

clear
echo "========================================================================="
echo "Niuspace V1.1 for Ubuntu Linux Server"
echo "========================================================================="
echo "A tool to auto-compile & install Nginx+MySQL+PHP on Linux "
echo ""
echo "For more information please visit http://www.Niuspace.com/"
echo "========================================================================="
cur_dir=$(pwd)

#set mysql root password

	
	
	echo "==========================="
	echo "mysqlrootpwd=$mysqlrootpwd"
	echo "==========================="

#do you want to install the InnoDB Storage Engine?

echo "==========================="

	installinnodb="y"
	

#which PHP Version do you want to install?
echo "Install PHP 5.5.14"

	isinstallphp53="y"
	

#which MySQL Version do you want to install?
echo "Install MySQL 5.5.37"

isinstallmysql55="y"

	get_char()
	{
	SAVEDSTTY=`stty -g`
	stty -echo
	stty cbreak
	dd if=/dev/tty bs=1 count=1 2> /dev/null
	stty -raw
	stty echo
	stty $SAVEDSTTY
	}
	echo ""
	echo "Press any key to start..."
	char=`get_char`

function InitInstall()
{
cat /etc/issue
uname -a
MemTotal=`free -m | grep Mem | awk '{print  $2}'`  
echo -e "\n Memory is: ${MemTotal} MB "
apt-get update
apt-get remove -y apache2 apache2-doc apache2-utils apache2.2-common apache2.2-bin apache2-mpm-prefork apache2-doc apache2-mpm-worker mysql-client mysql-server mysql-common php5 php5-common php5-cgi php5-mysql php5-curl php5-gd
killall apache2
dpkg -l |grep mysql 
dpkg -P libmysqlclient15off libmysqlclient15-dev mysql-common 
dpkg -l |grep apache 
dpkg -P apache2 apache2-doc apache2-mpm-prefork apache2-utils apache2.2-common
dpkg -l |grep php 
dpkg -P php5 php5-common php5-cgi php5-mysql php5-curl php5-gd
apt-get purge `dpkg -l | grep php| awk '{print $2}'`

#Synchronization time
rm -rf /etc/localtime
ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

apt-get install -y ntpdate
ntpdate -u pool.ntp.org
date

#Disable SeLinux
if [ -s /etc/selinux/config ]; then
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
fi

if [ -s /etc/ld.so.conf.d/libc6-xen.conf ]; then
sed -i 's/hwcap 1 nosegneg/hwcap 0 nosegneg/g' /etc/ld.so.conf.d/libc6-xen.conf
fi

apt-get update
apt-get autoremove -y
apt-get -fy install
apt-get install -y build-essential gcc g++ make
for packages in build-essential gcc g++ make cmake automake autoconf re2c wget cron bzip2 libzip-dev libc6-dev file rcconf flex vim nano bison m4 gawk less make cpp binutils diffutils unzip tar bzip2 libbz2-dev unrar p7zip libncurses5-dev libncurses5 libncurses5-dev libncurses5-dev libtool libevent-dev libpcre3 libpcre3-dev libpcrecpp0  libssl-dev zlibc openssl libsasl2-dev libltdl3-dev libltdl-dev libmcrypt-dev zlib1g zlib1g-dev libbz2-1.0 libbz2-dev libglib2.0-0 libglib2.0-dev libpng3 libjpeg62 libjpeg62-dev libjpeg-dev libpng-dev libpng12-0 libpng12-dev curl libcurl3 libmhash2 libmhash-dev libpq-dev libpq5 gettext libncurses5-dev libcurl4-gnutls-dev libjpeg-dev libpng12-dev libxml2-dev zlib1g-dev libfreetype6 libfreetype6-dev libssl-dev libcurl3 libcurl4-openssl-dev libcurl4-gnutls-dev mcrypt libcap-dev diffutils ca-certificates debian-keyring debian-archive-keyring;
do apt-get install -y $packages --force-yes;apt-get -fy install;apt-get -y autoremove; done

}

function CheckAndDownloadFiles()
{
echo "============================check files=================================="
if [ "$isinstallphp53" = "n" ]; then
	if [ -s php-5.5.15.tar.xz ]; then
	  echo "php-5.5.15.tar.xz [found]"
	else
	  echo "Error: php-5.5.14.tar.bz2 not found!!!download now......"
	  wget -c http://219.239.26.11/files/4173000004210CAD/cn2.php.net/distributions/php-5.5.14.tar.bz2
	fi

fi


if [ -s memcache-3.0.8.tgz ]; then
  echo "memcache-3.0.8.tgz [found]"
  else
  echo "Error: memcache-3.0.8.tgz not found!!!download now......"
  wget -c http://soft.vpser.net/web/memcache/memcache-3.0.8.tgz
fi

if [ -s pcre-8.12.tar.gz ]; then
  echo "pcre-8.12.tar.gz [found]"
  else
  echo "Error: pcre-8.12.tar.gz not found!!!download now......"
	wget -c http://soft.vpser.net/web/pcre/pcre-8.12.tar.gz
fi

if [ -s tengine-2.0.3.tar.gz ]; then
  echo "tengine-2.0.3.tar.gz [found]"
  else
  echo "Error: tengine-2.0.3.tar.gz not found!!!download now......"
  wget -c http://tengine.taobao.org/download/tengine-2.0.3.tar.gz
fi


if [ -s mysql-5.5.37.tar.gz ]; then
  echo "mysql-5.5.37.tar.gz [found]"
  else
  echo "Error: mysql-5.5.37.tar.gz not found!!!download now......"
  wget -c http://soft.vpser.net/datebase/mysql/mysql-5.5.37.tar.gz
fi


if [ -s libiconv-1.14.tar.gz ]; then
  echo "libiconv-1.14.tar.gz [found]"
  else
  echo "Error: libiconv-1.14.tar.gz not found!!!download now......"
  wget -c http://soft.vpser.net/web/libiconv/libiconv-1.14.tar.gz
fi

if [ -s libmcrypt-2.5.8.tar.gz ]; then
  echo "libmcrypt-2.5.8.tar.gz [found]"
  else
  echo "Error: libmcrypt-2.5.8.tar.gz not found!!!download now......"
  wget -c  http://soft.vpser.net/web/libmcrypt/libmcrypt-2.5.8.tar.gz
fi





if [ -s autoconf-2.13.tar.gz ]; then
  echo "autoconf-2.13.tar.gz [found]"
  else
  echo "Error: autoconf-2.13.tar.gz not found!!!download now......"
  wget -c http://soft.vpser.net/lib/autoconf/autoconf-2.13.tar.gz
fi

if [ -s libxml2-2.7.8.tar.gz ]; then
  echo "libxml2-2.7.8.tar.gz [found]"
  else
  echo "Error: libxml2-2.7.8.tar.gz not found!!!download now......"
  wget -c http://soft.vpser.net/lib/libxml/libxml2-2.7.8.tar.gz
fi

if [ -s mysql-openssl.patch ]; then
  echo "mysql-openssl.patch [found]"
  else
  echo "Error: mysql-openssl.patch not found!!!download now......"
  wget -c http://soft.vpser.net/lnmp/ext/mysql-openssl.patch
fi

if [ -s freetype-2.4.12.tar.gz ]; then
  echo "freetype-2.4.12.tar.gz [found]"
  else
  echo "Error: freetype-2.4.12.tar.gz not found!!!download now......"
  wget -c http://soft.vpser.net/lib/freetype/freetype-2.4.12.tar.gz
fi
echo "============================check files=================================="
}

function InstallDependsAndOpt()
{
cd $cur_dir

tar zxf autoconf-2.13.tar.gz
cd autoconf-2.13/
./configure --prefix=/usr/local/autoconf-2.13
make && make install
cd ../

cd $cur_dir
tar zxf libiconv-1.14.tar.gz
cd libiconv-1.14/
./configure
make && make install
cd ../

cd $cur_dir
tar zxf libmcrypt-2.5.8.tar.gz
cd libmcrypt-2.5.8/
./configure
make && make install
/sbin/ldconfig
cd libltdl/
./configure --enable-ltdl-install
make && make install
cd ../../

ln -s /usr/local/lib/libmcrypt.la /usr/lib/libmcrypt.la
ln -s /usr/local/lib/libmcrypt.so /usr/lib/libmcrypt.so
ln -s /usr/local/lib/libmcrypt.so.4 /usr/lib/libmcrypt.so.4
ln -s /usr/local/lib/libmcrypt.so.4.4.8 /usr/lib/libmcrypt.so.4.4.8

cd $cur_dir
tar zxf libxml2-2.7.8.tar.gz
cd libxml2-2.7.8/
./configure --prefix=/usr
make && make install
cd ../

cd $cur_dir
tar zxf freetype-2.4.12.tar.gz
cd freetype-2.4.12/
./configure --prefix=/usr/local/freetype
make && make install
cd ../
cat > /etc/ld.so.conf.d/freetype.conf<<EOF
/usr/local/freetype/lib
EOF
ldconfig
ln -sf /usr/local/freetype/include/freetype2 /usr/local/include
ln -sf /usr/local/freetype/include/ft2build.h /usr/local/include

if [ `getconf WORD_BIT` = '32' ] && [ `getconf LONG_BIT` = '64' ] ; then
        ln -s /usr/lib/x86_64-linux-gnu/libpng* /usr/lib/
        ln -s /usr/lib/x86_64-linux-gnu/libjpeg* /usr/lib/
else
        ln -s /usr/lib/i386-linux-gnu/libpng* /usr/lib/
        ln -s /usr/lib/i386-linux-gnu/libjpeg* /usr/lib/
fi

ulimit -v unlimited

if [ ! `grep -l "/lib"    '/etc/ld.so.conf'` ]; then
	echo "/lib" >> /etc/ld.so.conf
fi

if [ ! `grep -l '/usr/lib'    '/etc/ld.so.conf'` ]; then
	echo "/usr/lib" >> /etc/ld.so.conf
fi

if [ -d "/usr/lib64" ] && [ ! `grep -l '/usr/lib64'    '/etc/ld.so.conf'` ]; then
	echo "/usr/lib64" >> /etc/ld.so.conf
fi

if [ ! `grep -l '/usr/local/lib'    '/etc/ld.so.conf'` ]; then
	echo "/usr/local/lib" >> /etc/ld.so.conf
fi

ldconfig

cat >>/etc/security/limits.conf<<eof
* soft nproc 65535
* hard nproc 65535
* soft nofile 65535
* hard nofile 65535
eof

echo "fs.file-max=65535" >> /etc/sysctl.conf
}



function InstallMySQL55()
{
echo "============================Install MySQL 5.5.37=================================="
cd $cur_dir
rm -f /etc/my.cnf
rm -f /etc/mysql/my.cnf
rm -rf /etc/mysql/
apt-get remove -y mysql-server
apt-get remove -y mysql-common mysql-client

tar zxf mysql-5.5.37.tar.gz
cd mysql-5.5.37/
patch -p1 < $cur_dir/mysql-openssl.patch
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mysql -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
make && make install

groupadd mysql
useradd -s /sbin/nologin -M -g mysql mysql

cp support-files/my-medium.cnf /etc/my.cnf
sed '/skip-external-locking/i\datadir = /usr/local/mysql/var' -i /etc/my.cnf
if [ $installinnodb = "y" ]; then
sed -i 's:#innodb:innodb:g' /etc/my.cnf
sed -i 's:/usr/local/mysql/data:/usr/local/mysql/var:g' /etc/my.cnf
else
sed '/skip-external-locking/i\default-storage-engine=MyISAM\nloose-skip-innodb' -i /etc/my.cnf
fi

/usr/local/mysql/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mysql --datadir=/usr/local/mysql/var --user=mysql
chown -R mysql /usr/local/mysql/var
chgrp -R mysql /usr/local/mysql/.
cp support-files/mysql.server /etc/init.d/mysql
chmod 755 /etc/init.d/mysql

cat > /etc/ld.so.conf.d/mysql.conf<<EOF
/usr/local/mysql/lib
/usr/local/lib
EOF
ldconfig

ln -s /usr/local/mysql/lib/mysql /usr/lib/mysql
ln -s /usr/local/mysql/include/mysql /usr/include/mysql
if [ -d "/proc/vz" ];then
ulimit -s unlimited
fi
/etc/init.d/mysql start

ln -s /usr/local/mysql/bin/mysql /usr/bin/mysql
ln -s /usr/local/mysql/bin/mysqldump /usr/bin/mysqldump
ln -s /usr/local/mysql/bin/myisamchk /usr/bin/myisamchk
ln -s /usr/local/mysql/bin/mysqld_safe /usr/bin/mysqld_safe

/usr/local/mysql/bin/mysqladmin -u root password $mysqlrootpwd

cat > /tmp/mysql_sec_script<<EOF
use mysql;
update user set password=password('$mysqlrootpwd') where user='root';
delete from user where not (user='root') ;
delete from user where user='root' and password=''; 
drop database test;
DROP USER ''@'%';
flush privileges;
EOF

/usr/local/mysql/bin/mysql -u root -p$mysqlrootpwd -h localhost < /tmp/mysql_sec_script

rm -f /tmp/mysql_sec_script

/etc/init.d/mysql restart
/etc/init.d/mysql stop
echo "============================MySQL 5.5.26 install completed========================="
}

function InstallMariaDB()
{
echo "============================Install MariaDB 5.5.37=================================="
cd $cur_dir
rm -f /etc/my.cnf
rm -f /etc/mysql/my.cnf
rm -rf /etc/mysql/
apt-get remove -y mysql-server
apt-get remove -y mysql-common mysql-client

tar zxf mariadb-5.5.37.tar.gz
cd mariadb-5.5.37/
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/mariadb -DWITH_ARIA_STORAGE_ENGINE=1 -DWITH_XTRADB_STORAGE_ENGINE=1 -DWITH_INNOBASE_STORAGE_ENGINE=1 -DWITH_PARTITION_STORAGE_ENGINE=1 -DWITH_MYISAM_STORAGE_ENGINE=1 -DEXTRA_CHARSETS=all -DDEFAULT_CHARSET=utf8 -DDEFAULT_COLLATION=utf8_general_ci -DWITH_READLINE=1 -DWITH_SSL=system -DWITH_ZLIB=system -DWITH_EMBEDDED_SERVER=1 -DENABLED_LOCAL_INFILE=1
make && make install

groupadd mariadb
useradd -s /sbin/nologin -M -g mariadb mariadb

cp support-files/my-medium.cnf /etc/my.cnf
sed '/skip-external-locking/i\pid-file = /usr/local/mariadb/var/mariadb.pid' -i /etc/my.cnf
sed '/skip-external-locking/i\log_error = /usr/local/mariadb/var/mariadb.err' -i /etc/my.cnf
sed '/skip-external-locking/i\basedir = /usr/local/mariadb' -i /etc/my.cnf
sed '/skip-external-locking/i\datadir = /usr/local/mariadb/var' -i /etc/my.cnf
sed '/skip-external-locking/i\user = mariadb' -i /etc/my.cnf
if [ $installinnodb = "y" ]; then
sed -i 's:#innodb:innodb:g' /etc/my.cnf
sed -i 's:/usr/local/mariadb/data:/usr/local/mariadb/var:g' /etc/my.cnf
else
sed '/skip-external-locking/i\default-storage-engine=MyISAM\nloose-skip-innodb' -i /etc/my.cnf
fi

/usr/local/mariadb/scripts/mysql_install_db --defaults-file=/etc/my.cnf --basedir=/usr/local/mariadb --datadir=/usr/local/mariadb/var --user=mariadb
chown -R mariadb /usr/local/mariadb/var
chgrp -R mariadb /usr/local/mariadb/.
cp support-files/mysql.server /etc/init.d/mariadb
chmod 755 /etc/init.d/mariadb

cat > /etc/ld.so.conf.d/mariadb.conf<<EOF
/usr/local/mariadb/lib
/usr/local/lib
EOF
ldconfig

if [ -d "/proc/vz" ];then
ulimit -s unlimited
fi
/etc/init.d/mariadb start

ln -s /usr/local/mariadb/bin/mysql /usr/bin/mysql
ln -s /usr/local/mariadb/bin/mysqldump /usr/bin/mysqldump
ln -s /usr/local/mariadb/bin/myisamchk /usr/bin/myisamchk
ln -s /usr/local/mariadb/bin/mysqld_safe /usr/bin/mysqld_safe

/usr/local/mariadb/bin/mysqladmin -u root password $mysqlrootpwd

cat > /tmp/mariadb_sec_script<<EOF
use mysql;
update user set password=password('$mysqlrootpwd') where user='root';
delete from user where not (user='root') ;
delete from user where user='root' and password=''; 
drop database test;
DROP USER ''@'%';
flush privileges;
EOF

/usr/local/mariadb/bin/mysql -u root -p$mysqlrootpwd -h localhost < /tmp/mariadb_sec_script

rm -f /tmp/mariadb_sec_script

/etc/init.d/mariadb restart
/etc/init.d/mariadb stop
echo "============================MariaDB 5.5.37 install completed========================="
}



function InstallPHP53()
{
echo "============================Install PHP 5.3.28================================"
cd $cur_dir
export PHP_AUTOCONF=/usr/local/autoconf-2.13/bin/autoconf
export PHP_AUTOHEADER=/usr/local/autoconf-2.13/bin/autoheader
phpversion=php-5.5.15
xz -d  $phpversion.tar.xz
tar xvf  $phpversion.tar
cd $phpversion/
./configure --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --enable-fpm --with-fpm-user=www --with-fpm-group=www --with-mysql=mysqlnd --with-mysqli=mysqlnd --with-pdo-mysql=mysqlnd --with-iconv-dir --with-freetype-dir --with-jpeg-dir --with-png-dir --with-zlib --with-libxml-dir=/usr --enable-xml --disable-rpath --enable-magic-quotes --enable-safe-mode --enable-bcmath --enable-shmop --enable-sysvsem --enable-inline-optimization --with-curl --enable-mbregex --enable-mbstring --with-mcrypt --enable-ftp --with-gd --enable-gd-native-ttf --with-openssl --with-mhash --enable-pcntl --enable-sockets --with-xmlrpc --enable-zip --enable-soap --without-pear --with-gettext --disable-fileinfo

make ZEND_EXTRA_LIBS='-liconv'
make install

rm -f /usr/bin/php
ln -s /usr/local/php/bin/php /usr/bin/php
ln -s /usr/local/php/bin/phpize /usr/bin/phpize
ln -s /usr/local/php/sbin/php-fpm /usr/bin/php-fpm
ln -s /usr/local/php/bin/php-config /usr/local/bin
echo "Copy new php configure file."
mkdir -p /usr/local/php/etc
cp php.ini-production /usr/local/php/etc/php.ini
ln -s /usr/local/php/etc/php.ini /etc/php.ini
cd $cur_dir
# php extensions
echo "Modify php.ini......"
sed -i 's/post_max_size = 8M/post_max_size = 50M/g' /usr/local/php/etc/php.ini
sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 50M/g' /usr/local/php/etc/php.ini
sed -i 's/;date.timezone =/date.timezone = PRC/g' /usr/local/php/etc/php.ini
sed -i 's/short_open_tag = Off/short_open_tag = On/g' /usr/local/php/etc/php.ini
sed -i 's/; cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /usr/local/php/etc/php.ini
sed -i 's/; cgi.fix_pathinfo=0/cgi.fix_pathinfo=0/g' /usr/local/php/etc/php.ini
sed -i 's/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g' /usr/local/php/etc/php.ini
sed -i 's/max_execution_time = 30/max_execution_time = 300/g' /usr/local/php/etc/php.ini
sed -i 's/register_long_arrays = On/;register_long_arrays = On/g' /usr/local/php/etc/php.ini
sed -i 's/magic_quotes_gpc = On/;magic_quotes_gpc = On/g' /usr/local/php/etc/php.ini
sed -i 's/disable_functions =.*/disable_functions = passthru,exec,system,chroot,scandir,chgrp,chown,shell_exec,proc_open,proc_get_status,ini_alter,ini_restore,dl,pfsockopen,openlog,syslog,readlink,symlink,popepassthru,stream_socket_server,fsockopen/g' /usr/local/php/etc/php.ini
sed -i 's#;extension_dir = "./"#;extension_dir = "/usr/local/php/lib/php/extensions/no-debug-non-zts-20121212/"\n#' /usr/local/php/etc/php.ini



echo "Creating new php-fpm configure file......"
cat >/usr/local/php/etc/php-fpm.conf<<EOF
[global]
pid = /usr/local/php/var/run/php-fpm.pid
error_log = /usr/local/php/var/log/php-fpm.log
log_level = notice

[www]
listen = /tmp/php-cgi.sock
listen.backlog = -1
listen.allowed_clients = 127.0.0.1
listen.owner = www
listen.group = www
listen.mode = 0666
user = www
group = www
pm = dynamic
pm.max_children = 10
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 6
request_terminate_timeout = 100
request_slowlog_timeout = 0
slowlog = var/log/slow.log
EOF

echo "Copy php-fpm init.d file......"
cp $cur_dir/$phpversion/sapi/fpm/init.d.php-fpm /etc/init.d/php-fpm
chmod +x /etc/init.d/php-fpm
ln -s /usr/local/php/etc/php-fpm.conf /etc/php-fpm.conf
cp $cur_dir/lnmp /root/lnmp
chmod +x /root/lnmp
sed -i 's:/usr/local/php/logs:/usr/local/php/var/run:g' /root/lnmp
echo "============================PHP php-5.5.14 install completed======================"
}

function InstallNginx()
{
echo "============================Install Nginx================================="
groupadd www
useradd -s /sbin/nologin -g www www


mkdir -p /home/wwwroot/default
mkdir -p /home/wwwroot/wrtc_start
chmod +w /home/wwwroot/default
chmod +w /home/wwwroot/wrtc_start
mkdir -p /home/wwwlogs
chmod 777 /home/wwwlogs
touch /home/wwwlogs/nginx_error.log

cd $cur_dir
chown -R www:www /home/wwwroot/default

# nginx
cd $cur_dir
tar zxf pcre-8.12.tar.gz
cd pcre-8.12/
./configure
make && make install
cd ../

ldconfig

tar xvzf  teengine-2.0.3.tar.gz
cd tengine-2.0.3/
./configure --user=www --group=www --prefix=/usr/local/nginx 
--with-http_stub_status_module --with-http_ssl_module --with-http_gzip_static --with-http_sub_module=shared \
--with-http_flv_module=shared \
--with-http_random_index_module=shared \
--with-http_access_module=shared \
--with-http_autoindex_module=shared \
--with-http_upstream_ip_hash_module=shared \
--with-http_upstream_least_conn_module=shared \
--with-http_empty_gif_module \
--with-http_image_filter_module=shared \
--with-http_limit_req_module \
--with-http_limit_conn_module \
--with-http_memcached_module \
--with-http_concat_module \
--with-http_trim_filter_module \
--with-http_footer_filter_module \


make && make install
cd ../

ln -s /usr/local/nginx/sbin/nginx /usr/bin/nginx

cd $cur_dir
rm -f /usr/local/nginx/conf/nginx.conf
cp conf/nginx.conf /usr/local/nginx/conf/nginx.conf
cp conf/pathinfo.conf /usr/local/nginx/conf/pathinfo.conf
mkdir conf/vhost
cp conf/e_*.conf /usr/local/nginx/conf/vhost
ln -s /usr/local/nginx /etc/nginx  
}

function CreatPHPTools()
{
	echo "Create PHP Info Tool..."
#phpinfo
cat >/home/wwwroot/default/phpinfo.php<<eof
<?
phpinfo();
?>
eof

cp conf/index.html /home/wwwroot/default/index.html
}

function AddAndStartup()
{
echo "============================add nginx and php-fpm on startup============================"
echo "Download new nginx init.d file......"
cp init.d.nginx /etc/init.d/nginx
chmod +x /etc/init.d/nginx
if [ "$isinstallmysql55" = "md" ]; then
	update-rc.d -f mariadb defaults
else
	update-rc.d -f mysql defaults
fi
update-rc.d -f nginx defaults
update-rc.d -f php-fpm defaults

cd $cur_dir
cp vhost.sh /root/vhost.sh
chmod +x /root/vhost.sh

if [ "$isinstallmysql55" = "md" ]; then
	sed -i 's:/etc/init.d/mysql:/etc/init.d/mariadb:g' /root/lnmp
fi
echo "===========================add nginx and php-fpm on startup completed===================="
echo "Starting LNMP..."
if [ "$isinstallmysql55" = "md" ]; then
	/etc/init.d/mariadb start
else
	/etc/init.d/mysql start
fi
/etc/init.d/php-fpm start
/etc/init.d/nginx start

#add iptables firewall rules
if [ -s /sbin/iptables ]; then
/sbin/iptables -I INPUT -p tcp --dport 80 -j ACCEPT
/sbin/iptables -I INPUT -p tcp --dport 3306 -j DROP
/sbin/iptables-save
fi
}

function CheckInstall()
{
echo "===================================== Check install ==================================="
clear
isnginx=""
ismysql=""
isphp=""
echo "Checking..."
if [ -s /usr/local/nginx/conf/nginx.conf ] && [ -s /usr/local/nginx/sbin/nginx ]; then
  echo "Nginx: OK"
  isnginx="ok"
  else
  echo "Error: /usr/local/nginx not found!!!Nginx install failed."
fi

if [ "$isinstallmysql55" = "md" ]; then
	if [ -s /usr/local/mariadb/bin/mysql ] && [ -s /usr/local/mariadb/bin/mysqld_safe ] && [ -s /etc/my.cnf ]; then
	  echo "MariaDB: OK"
	  ismysql="ok"
	  else
	  echo "Error: /usr/local/mariadb not found!!!MySQL install failed."
	fi
else
	if [ -s /usr/local/mysql/bin/mysql ] && [ -s /usr/local/mysql/bin/mysqld_safe ] && [ -s /etc/my.cnf ]; then
	  echo "MySQL: OK"
	  ismysql="ok"
	  else
	  echo "Error: /usr/local/mysql not found!!!MySQL install failed."
	fi
fi

if [ -s /usr/local/php/sbin/php-fpm ] && [ -s /usr/local/php/etc/php.ini ] && [ -s /usr/local/php/bin/php ]; then
  echo "PHP: OK"
  echo "PHP-FPM: OK"
  isphp="ok"
  else
  echo "Error: /usr/local/php not found!!!PHP install failed."
fi
if [ "$isnginx" = "ok" ] && [ "$ismysql" = "ok" ] && [ "$isphp" = "ok" ]; then
echo "Install Niuspace 1.1 completed! enjoy it."
echo "========================================================================="
echo "Niuspace  for Ubuntu Linux Server"
echo "========================================================================="
echo ""
echo "For more information please visit http://www.niuspace.com/"
echo ""
echo "lnmp status manage: /root/lnmp {start|stop|reload|restart|kill|status}"
echo "default mysql root password:$mysqlrootpwd"
echo "phpinfo : http://yourIP/phpinfo.php"
echo "phpMyAdmin : http://yourIP/phpmyadmin/"
echo "Prober : http://yourIP/p.php"
echo "Add VirtualHost : /root/vhost.sh"
echo ""
echo "The path of some dirs:"
echo "mysql dir:   /usr/local/mysql"
echo "php dir:     /usr/local/php"
echo "nginx dir:   /usr/local/nginx"
echo "web dir :     /home/wwwroot/default"
echo ""
echo "========================================================================="
/root/lnmp status
netstat -ntl
else
echo "Sorry,Failed to install Niuspace!"
echo "You can download /root/lnmp-install.log from your server,and upload lnmp-install.log to Niuspace Forum."
fi
}

InitInstall 2>&1 | tee /root/lnmp-install.log
CheckAndDownloadFiles 2>&1 | tee -a /root/lnmp-install.log
InstallDependsAndOpt 2>&1 | tee -a /root/lnmp-install.log
if [ "$isinstallmysql55" = "n" ]; then
	InstallMySQL51 2>&1 | tee -a /root/lnmp-install.log
elif [ "$isinstallmysql55" = "y" ]; then
	InstallMySQL56 2>&1 | tee -a /root/lnmp-install.log
else
	InstallMariaDB 2>&1 | tee -a /root/lnmp-install.log
 fi

InstallPHP53 2>&1 | tee -a /root/lnmp-install.log

InstallNginx 2>&1 | tee -a /root/lnmp-install.log
CreatPHPTools 2>&1 | tee -a /root/lnmp-install.log
AddAndStartup 2>&1 | tee -a /root/lnmp-install.log
CheckInstall 2>&1 | tee -a /root/lnmp-install.log

. redis.sh
. memcached.sh
. mongodb.sh
. yaf.sh
 . init_niuspace.sh

