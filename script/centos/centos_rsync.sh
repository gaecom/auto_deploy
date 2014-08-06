#/bin/bash
#config centos network
#setup env
#error when exist
set -e -v
echo "rsync destination configuration file"
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

[ -z "`rpm -qa|grep rsync`" ] && yum -y install rsync

read -p "input rsync path:" rsyncpath
[ ! -d "$rsyncpath" ] && echo -e "not exists path $rsyncpath" && exit

read -p "input secret file:" pwdfile
[ ! -f "$pwdfile" ] && pwdfile=/etc/rsync_user.conf && echo -e "user default rsync user file $pwdfile"

read -p "create user and password with format(user:password):" userpwd
user1=`echo $userpwd|cut -d: -f1`
pwd1=`echo  $userpwd|cut -d: -f2`

[ -z "$user1" -o -z "$pwd1" ] && echo -e "empty user or password" && exit

read -p "input mod:" mod
[ -z "$mod" ] && echo -e "not exists module" && exit

ipaddr=`ifconfig|grep -A 2 eth0|grep "inet addr"|awk '{print $2}'|cut -d: -f2`/255.255.0.0
read -p "ip allowed" 
[ -z "$ipallow" ] && echo -e "user default addr $ipaddr" && ipallow=$ipaddr

echo "$userpwd">>$pwdfile


cat >> /etc/rsyncd.conf << EOF 
uid = root
gid = root
use chroot = no 
max connections = 500   
timeout = 600   
pid file = /var/run/rsyncd.pid    
lock file = /var/run/rsyncd.lock    
log file = /var/log/rsyncd.log    
[$mod]   
path = $rsyncpath    
ignore errors
read only = no   
list = no   
hosts allow = $ipallow    
auth users = $user1   
secrets file = /etc/rsync_user.conf   
EOF
chmod 600 /etc/rsyncd.conf
chmod 600 $pwdfile

read -p "welcome message" $welcome
echo "$welcome" >> /var/rsyncd.motd



echo "start rsyncd,will use /etc/rsyncd.conf"
rsync --daemon 
echo "/usr/bin/rsync --daemon" >> /etc/rc.local
#add rsync
#use -A may  insert after block rule
iptables -I INPUT -p tcp -m state --state NEW  -m tcp --dport 873 -j ACCEPT
/etc/init.d/iptables save
