#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
. config.sh
# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install lnmp"
    exit 1
fi

clear
echo "======================================================================="
echo "Install Redis for Niuspace"
echo "======================================================================="
echo "LNMP is a tool to auto-compile & install Nginx+MySQL+PHP on Linux "
echo "This script is a tool to install Redis for lnmp "
echo ""
echo "For more information please visit http://www.niuspace.com "
echo "======================================================================="
cur_dir=$(pwd)

    ver="old"
    echo "Which version do you want to install:"
    echo "Install Redis 2.8.8   Stable Version please type: s"

    ver=s
    


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
    # echo ""
    # echo "Press any key to start...or Press Ctrl+c to cancel"
    # char=`get_char`

echo "=========================== install Redis ======================"

#Install Redis Stable Version
function install_stable {
if [ -s redis-2.8.8 ]; then
    rm -rf redis-2.8.8/
fi

tar zxf redis-2.8.8.tar.gz
cd redis-2.8.8/
if [ `getconf WORD_BIT` = '32' ] && [ `getconf LONG_BIT` = '64' ] ; then
        make PREFIX=/usr/local/redis install
else
        make CFLAGS="-march=i686" PREFIX=/usr/local/redis install
fi
mkdir -p /usr/local/redis/etc/
cp redis.conf  /usr/local/redis/etc/
sed -i 's/daemonize no/daemonize yes/g' /usr/local/redis/etc/redis.conf
echo "requirepass $redis_pwd">>/usr/local/redis/etc/redis.conf
cd ../
}



function phpredis {
	if [ -s redis-2.2.5 ]; then
	rm -rf redis-2.2.5/
	fi
	sed -i '/redis.so/d' /usr/local/php/etc/php.ini
	wget -c http://pecl.php.net/get/redis-2.2.5.tgz
	tar zxf redis-2.2.5.tgz
	cd redis-2.2.5/
	/usr/local/php/bin/phpize
	./configure --with-php-config=/usr/local/php/bin/php-config
	make && make install
	cd ../
echo 'extension = redis.so'>>/usr/local/php/etc/php.ini/usr/local/php/etc/php.ini
}

function startall {
    rm -f /etc/init.d/redis
    wget -c http://soft.vpser.net/lnmp/ext/init.d.redis -O /etc/init.d/redis
    chmod +x /etc/init.d/redis
    echo "Add to auto start..."
    if [ -s /etc/debian_version ]; then
    update-rc.d -f redis defaults
    elif [ -s /etc/redhat-release ]; then
    chkconfig --level 345 redis on
    fi
	if [ -s /etc/init.d/httpd ] && [ -s /usr/local/apache ]; then
	echo "Restarting Apache......"
	/etc/init.d/httpd restart
	else
	echo "Restarting php-fpm......"
	/etc/init.d/php-fpm restart
	fi
    /etc/init.d/redis start
}

if [ "$ver" = "s" ]; then
    install_stable
elif [ "$ver" = "b" ]; then
    install_beta
else
    install_old
fi
phpredis
startall

echo "===================== install Redis completed ==================="
echo "Install Redis completed,enjoy it!"
echo "======================================================================="
echo "Install Redis for Niuspace "
echo "======================================================================="
echo "LNMP is a tool to auto-compile & install Nginx+MySQL+PHP on Linux "
echo "This script is a tool to install Redis for lnmp "
echo ""
echo "======================================================================="