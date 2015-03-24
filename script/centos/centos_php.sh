#!/bin/bash
#exit on error and debug verbose
set -e -v
. common.sh

setup_mode="pro"
cur_dir=`pwd`
echo -e "install php lib\n"

yum -y install mlocate libssh2-devel openssl libssh2 libxml2 libxml2-devel libxslt libxslt-devel libmemcached libmemcached-devel
yum -y install libmcrypt libmcrypt-devel  tidy libtidy libtidy-devel readline-devel
yum -y install libpng-devel libpng bzip2-devel libjpeg  libXpm-devel libtool-ltdl-devel libvpx libvpx-devel  t1lib  t1lib-devel icu libicu-devel


rpm -qa|grep libmcrypt-devel || rpm -ivh $libmcryptDev

rpm -qa|grep libmcrypt || rpm -ivh $libmcrypt
ldconfig
echo -e "finish installing php lib\n"
inst_pkg $aspell
ldconfig
echo -e "install php \n"

#install snmp
inst_pkg $snmp
## 必须安装RPMforge 在centos_minal中否则如libmcryp无法安装
#
#
#
#
#
#
config_pkg  $php --with-libdir=lib64 --prefix=/usr/local --enable-fpm --with-layout=PHP --with-pear  --enable-calendar --enable-bcmath --with-gmp --enable-exif \
--with-mcrypt --with-mhash --with-zlib --with-bz2 --enable-zip --enable-ftp --enable-mbstring --with-iconv --enable-intl --with-icu-dir=/usr --with-gettext \
--with-pspell --enable-sockets --with-openssl --with-curl --with-curlwrappers --with-gd --enable-gd-native-ttf --with-jpeg-dir=/usr --with-png-dir=/usr \
--with-zlib-dir=/usr --with-xpm-dir=/usr --with-vpx-dir=/usr --with-freetype-dir=/usr --with-t1lib=/usr --with-libxml-dir=/usr --with-mysql=mysqlnd --with-mysqli=mysqlnd \
--with-pdo-mysql=mysqlnd --enable-soap --with-xmlrpc --with-xsl --with-tidy=/usr --with-readline --enable-pcntl --enable-sysvshm --enable-sysvmsg --enable-shmop --prefix=/usr/local/php --with-config-file-path=/usr/local/php/etc --with-snmp

echo -e "install php end \n"
if [ -z "pwd|grep 5.6" ];then
make ZEND_EXTRA_LIBS='-liconv'
else 
make
fi
make install

rm -f /usr/bin/php
ln -s -f /usr/local/php/bin/php /usr/bin/php
ln -s -f  /usr/local/php/bin/phpize /usr/bin/phpize
ln -s -f  /usr/local/php/sbin/php-fpm /usr/bin/php-fpm
echo "Copy new php configure file."
mkdir -p  /usr/local/php/etc

cp -f php.ini-production /usr/local/php/etc/php.ini
ln -s -f /usr/local/php/etc/php.ini /etc/php.ini
ln -s -f /usr/local/php/bin/php-config /usr/bin/php-config
# php extensions
echo "Modify php.ini......"


phpVer=`php -v 2>/dev/null|grep "PHP 5"|awk '{print $2}'|cut -d'.' -f1,2`
if [ $phpVer == "5.4" ];then
ext_dir=/usr/lib/php/extensions/no-debug-non-zts-20100525/
elif [ $phpVer == "5.5" ];then
ext_dir=/usr/local/php/lib/php/extensions/no-debug-non-zts-20121212/
elif [ $phpVer == "5.3" ];then
ext_dir=/usr/local/php/lib/php/extensions/no-debug-non-zts-20090626/
elif [ $phpVer == "5.6" ];then
ext_dir=/usr/local/php/lib/php/extensions/no-debug-non-zts-20131226/
else 
	ext_dir="/usr/local/php/lib/php/extensions/`ls /usr/local/php/lib/php/extensions/|head -1`"
fi

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
sed -i "s#extension_dir = \"./\"#extension_dir = \"$ext_dir\"\n#" /usr/local/php/etc/php.ini
sed -i "s#; extension_dir = \"/#extension_dir = \"/#" /usr/local/php/etc/php.ini

cp /usr/local/php/etc/php-fpm.conf.default /usr/local/etc/php-fpm.conf
cat ->/usr/local/etc/php-fpm.conf <<EOC
[global]
pid = /var/run/php-fpm.pid
error_log = /var/log/php-fpm.log
log_level = notice

[www]
listen = /tmp/php-cgi.sock
user = www
group = www
listen.owner = www
listen.group = www
listen.mode = 0660
pm = dynamic
pm.max_children = 20
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 3
EOC
cd $cur_dir
echo "install php extensions"
inst_pkg "$xdebug" --enable-xdebug
inst_pkg "$phpRedis"

inst_pkg "$libmemcached"
inst_pkg "$igbinary"
inst_pkg "$phpMemcached"  --enable-memcached-igbinarynary

inst_pkg "$phpMongo"
inst_pkg "$yaf" yaf.tgz

inst_pkg "$phpGearman"


echo "zend_extension=xdebug.so">>/etc/php.ini
echo "extension=gearman.so">>/etc/php.ini
echo "extension=memcached.so">>/etc/php.ini
echo "extension=redis.so">>/etc/php.ini
echo "extension=mongo.so">>/etc/php.ini
echo "extension=yaf.so">>/etc/php.ini
echo "yaf.use_namespace=1">>/etc/php.ini
#file:///home/chjade/Downloads/webgrind-release-1.0.zip
#sqlbuddy
if [ "$setup_mode" == "dev" ];then
echo -e "install php package \n"
sleep 2
echo -e "install php phing \n"
pear channel-discover pear.phing.info
pear install phing/phing
#skeleton generator
pear install phpunit/PHPUnit_SkeletonGenerator
	
echo -e "install php phpunit \n"
pear config-set auto_discover 1
pear install  pear.phpunit.de/PHPUnit
echo -e "install php CodeSniffer \n"
pear install PHP_CodeSniffer

echo -e "install php phpunit mock filesystem vfsstream \n"
pear channel-discover pear.bovigo.org
pear install bovigo/vfsStream-beta


#install composer global
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
composer self-update

#install memcached
#memcached=https://launchpadlibrarian.net/135986673/libmemcached-1.0.17.tar.gz
#memcached_file=`basename $memcached`
#[ ! -e $memcached_file ] && curl -L "$memcached" -o $memcached_file 
#tar xvjf $memcached_file
#cd ${memcached_file%.tar.bz2}
#./configure && make && make install
#downgrade to libmemcached-1.0.10,use libmemcached-1.0.17 lib will occur errinst_pkg https://launchpad.net/libmemcached/1.0/1.0.10/+download/libmemcached-1.0.10.tar.gz

#extmem=http://pecl.php.net/get/memcached-2.1.0.tgz
#extmem_file=`basename $extmem` 
#[ ! -e $extmem_file ] && curl -L "$extmem" -o $extmem_file 
#tar xvjf $extmem_file
#cd ${extmem_file%.tar.bz2}
#./configure && make && make install
fi

