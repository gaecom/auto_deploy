#!/bin/bash
#hash  declare -A a;a[w]=abc;a[b]=efg
. common.sh
[ $# -lt 2 ] && echo "usage:$0 user pwd" && exit

#start checking environment
modprobe ppp-compress-18 && msg_ok "check ppp-compress-18"
cat /dev/net/tun 2>&1|grep "bad state" && msg_ok " check /dev/net/tun"


yum remove -y pptpd ppp

#iptables --flush FORWARD
rm -rf /etc/pptpd.conf
rm -rf /etc/ppp

arch=`uname -m`
#[ -e pptpd-1.3.4-2.el6.$arch.rpm ] && wget http://poptop.sourceforge.net/yum/stable/packages/pptpd-1.3.4-2.el6.$arch.rpm
read -p "download http://sourceforge.net/projects/poptop/files/pptpd/pptpd-1.3.4/pptpd-1.3.4.tar.gz first"

yum -y install  libpcap   tcp_wrappers dkms kernel_ppp_mppe ppp


#rpm -Uvh pptpd-1.3.4-2.el6.$arch.rpm


mknod /dev/ppp c 108 0
echo 1 > /proc/sys/net/ipv4/ip_forward

/sbin/sysctl -p

echo "mknod /dev/ppp c 108 0" >> /etc/rc.local
echo "echo 1 > /proc/sys/net/ipv4/ip_forward" >> /etc/rc.local
echo "localip 172.16.36.1" >> /etc/pptpd.conf
echo "remoteip 172.16.36.2-254" >> /etc/pptpd.conf

cat -> /etc/ppp/options.pptpd <<EOF
name pptpd
refuse-pap
refuse-chap
refuse-mschap
require-mschap-v2
require-mppe-128
proxyarp
lock
nobsdcomp
novj
novjccomp
nologfd
idle 2592000
ms-dns 8.8.8.8
ms-dns 8.8.4.4
EOF
pass=`openssl rand 6 -base64`
if [ "$2" != "" ]
then pass=$2
fi
if [ "$1" != "" ]
then user=$1
fi

echo "$user pptpd ${pass} *" >> /etc/ppp/chap-secrets


service iptables save

chkconfig pptpd on

service iptables restart
service pptpd start

echo "VPN service is installed, your VPN username is $user, VPN password is ${pass}"
