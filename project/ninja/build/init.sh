#!/bin/bash
#
. config.sh

htmlRoot="/data/home/wwwroot/$mysql_db"

[ ! -d $htmlRoot ] && echo "create html root" && mkdir -p -m 777 /data/home/wwwroot/$mysql_db


tar xvjf $mysql_db.tar.bz2 -C $htmlRoot



cd $mysql_db

tar xvjf $htmlRoot/mongodb.tar.bz2 -C $htmlRoot



chown -R www:www $htmlRoot
chmod -R 777 $htmlRoot

function initMysql {


echo -e "import db and create user mysqlrootpwd\n"
mysql -uroot -p$mysqlrootpwd -e "create database $mysql_db DEFAULT CHARACTER SET utf8 collate utf8_general_ci"



echo "add mysql user add import sql data"
mysql -uroot -p$mysqlrootpwd -e "GRANT ALL PRIVILEGES ON $mysql_db.* TO '$mysql_user'@'$mysql_ip' identified by '$mysql_pwd' WITH GRANT OPTION;"

mysql -uroot -p$mysqlrootpwd $mysql_db < $htmlRoot/my.sql

}

function initNginx {

/bin/cp -Rf conf/vhost /etc/nginx
/bin/cp -Rf conf/nginx.conf /etc/nginx/
/bin/cp -Rf conf/site.key /data/home/wwwroot
/bin/cp -Rf conf/site.cert /data/home/wwwroot
cd $htmlRoot
git init 
cat -> .gitignore <<EOF
packages/*
*.tar.gz
*.tar.bz2
*.tar.zip
.idea/
*.zip
*.tgz
*.7zip
docs/
tools/
*node_modules
*bower_components
*/logs/*
*.mode1v3
*.perspectivev3
*.pbxuser
.DS_Store
build/
inst_config.sh
*/.DS_Store
application/data/cache/templates_c/*.php
public/upload
EOF
git config --global user.email "support@ryatek.com"
git config --global user.name "xiaoming"
git add .
git commit -a -m "init $mysql_db"
}
function initMongo {
  echo "create mongodb"

cd $htmlRoot
mongorestore 
mongo admin --eval "db.getSiblingDB('admin').createUser({user: '$MONGO_USER', pwd: '$MONGO_PWD', roles:[{role:'userAdminAnyDatabase', db:'admin'}]})"


mongo $mysql_db --eval "db.getSiblingDB('$mysql_db').createUser({user: '$MONGO_USER', pwd: '$MONGO_PWD', roles:[{role:'userAdmin', db:'$mysql_db'}]})"
}

function startService {

if [ -z "`ps -ef|grep [m]ysql`" ];then
service mysql start
fi

if [ -z "`ps -ef|grep [m]ongod`" ];then
service mongod start
fi
}
startService
initMysql
initNginx
initMongo


