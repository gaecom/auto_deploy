#!/bin/bash
#rpm -ivh http://apt.sw.be/redhat/el6/en/x86_64/rpmforge/RPMS/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
#requires lnmp or lamp



set -e -v
. common.sh
#yum -y install rrdtool net-snmp net-snmp-libs net-snmp-utils
#sed -i 's/.1.3.6.1.2.1.1/.1.3.6.1.2.1/' /etc/snmp/snmpd.conf

#service snmpd start
#Testing
# service snmpd start
# snmpwalk -v 1 -c public localhost .1.3.6.1.2.1.1.1.0

inst_pkg http://www.cacti.net/downloads/cacti-0.8.8a.tar.gz

base=cacti-0.8.8a
read -p "mysql user:pwd:" userpwd
user1=`echo $userpwd|cut -d: -f1`
pwd1=`echo  $userpwd|cut -d: -f2`
mysql -u"$user1" -p"$pwd1" -e "create database cacti"
mysql -u"$user1" -p"$pwd1" -Dcacti < "$base/cacti.sql"
read -p "create cacti mysql user:pwd:" userpwd2
cactiuid=`echo $userpwd2|cut -d: -f1`
cactipwd=`echo  $userpwd2|cut -d: -f2`
mysql -u"$user1" -p"$pwd1" -e "GRANT ALL ON cacti.* TO $cactiuid@localhost IDENTIFIED BY '$cactipwd';flush privileges;"
sed -i "s/\(username\s*=\s*[\"']\)cactiuser/\1$cactiuid/" "$base/include/config.php"
sed -i "s/\(password\s*=\s*[\"']\)cactiuser/\1$cactipwd/" "$base/include/config.php"

read -p "nginx html dir:" html


base=cacti-0.8.8a
cp -a "$base" $html/cacti

useradd $cactiuid
chown -R $cactiuid $html/cacti/rra/ $html/cacti/log/

echo "*/5 * * * * $user1 php $html/cacti/poller.php > /dev/null 2>&1">>/etc/crontab

echo -e "finish install cacti\nuseage:visit http://www.domain.com/cacti/\nuser:admin\tpassword:admin"



