#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install yaf"
    exit 1
fi
function phpyaf {
	if [ -s yaf-2.3.2 ]; then

	rm -rf yaf-2.3.2/
	fi
	wget -c http://pecl.php.net/get/yaf-2.3.2.tgz
	sed -i '/yaf.so/d' /usr/local/php/etc/php.ini
	tar zxf yaf-2.3.2.tgz
	cd yaf-2.3.2/
	/usr/local/php/bin/phpize
	./configure --with-php-config=/usr/local/php/bin/php-config
	make && make install
	cd ../
	echo 'extension = yaf.so'>>/usr/local/php/etc/php.ini 
	echo 'yaf.use_namespace=1'>>/usr/local/php/etc/php.ini 
}
phpyaf