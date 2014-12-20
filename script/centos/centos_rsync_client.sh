#!/bin/bash
. common.sh
usage="rsync_client.sh  host user pwdfile srcdir test(section name in remote server rsyncd.conf)\notice:1.pwdfile's perm must be 600\n  2.server user should have permission  operate its file"
[ $# -lt 5 ] && echo -e $usage && exit
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#host1=192.168.9.226  
#host2=192.168.9.228  
#src=/data/www/     
#des1=web1 
#des2=web2 
#user1=www1 
#user2=www2 
user=$2
host=$1
src=$4
dst=$5
pwdfile=$3
inotifywait -mrq --timefmt '%d/%m/%y %H:%M' --format  '%T %w%f' \
-e modify,delete,create,attrib \
${src} \
| while read  file
do
		#vptorgz -rlptgoD=a
		rsync -avPz --exclude ".git*" --delete ${src} ${user}@${host}::${dst} --password-file=$pwdfile &&
		echo "${file} was rsynced" >> /tmp/rsync.log 2>&1
		echo "---------------------------------------------------------------------------"
done
iptables -A INPUT -p tcp -m state --state NEW  -m tcp --dport 873 -j ACCEPT
/etc/init.d/iptables save