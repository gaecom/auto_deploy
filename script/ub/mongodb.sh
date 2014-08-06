#/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

. config.sh

# Check if user is root
if [ $(id -u) != "0" ]; then
    echo "Error: You must be root to run this script, please use root to install mongod"
    exit 1
fi


# echo -e "install mongodb"
# sudo apt-get install mongodb-org
# echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
# sudo apt-get update
# sudo apt-get -y install mongodb-org

tar xvzf  mongo-php-driver.tar.gz
phpize
./configure --with-mongo-sasl=/usr/local
make
sudo make install


echo 'extension=mongo.so'>>/usr/local/php/etc/php.ini

echo "db.addUser('$mongo_user','$mongo_pwd')">/tmp/f.js
mongo admin /tmp/f.js
sed -i '/^#auth/s/#//' /etc/mongod.conf
service mongod restart
