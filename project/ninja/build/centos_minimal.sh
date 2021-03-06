#/bin/bash
#config centos network
#setup env


set  -v

. common.sh


# ######---------------------network setting
#exit
#echo "alias dns2=\"cat /var/lib/dhclient/dhclient-eth0.leases|grep domain-name-servers|tail -1|awk '{print \\\"dns is\t\\\",\\\$3}'\"">>~/.bashrc
#
#echo "export PATH=$PATH:/root/script">>~/.bashrc
#
#. ~/.bashrc
#
#
setup_mode="deploy"  #deploy
##
islocal=1
[ $(id -u) != 0 ] && echo "please login with root previledge" && exit
setIp(){
echo -e "start network config,detect network type is dhcp or static"
if [ $islocal -eq 1 ];then
eth0_mac=`ifconfig eth0|grep -i eth0|awk '{print $5}'`
eth0_cfg=/etc/sysconfig/network-scripts/ifcfg-eth0
isstatic=0
isdhcp=0
grep -i "IPADDR" $eth0_cfg
if [ $? -eq 0 ];then
isstatic=1;
fi
grep -i "DHCP" $eth0_cfg
if [ $? -eq 0 ];then
isdhcp=1;
fi

read -p "DHCP(1) or Static(2),default:" iptype

if [ $iptype == 1 && isdhcp == 0 ];then
cat ->$eth0_cfg <<DOC1
DEVICE="eth0"
NM_CONTROLLED="no"
ONBOOT="yes"
BOOTPROTO="dhcp"
USERCTL=no
TYPE=Ethernet
HWADDR="$eth0_mac"
DOC1
chkconfig --levels 2345 network on
service network restart

elif [ $iptype == 2 && $isstatic == 0 ];then
cat /var/lib/dhclient/dhclient-eth0.leases|grep domain-name-servers|tail -1|awk '{print "dns is\t",$3}'
setflag=true
while $setflag;do
	read -p "static ip addr:" ipaddr
	read -p "gateway:" gateway
	read -p "dns1:" dns1
	read -p "dns2:" dns2
	[ ! -z "$ipaddr" -a ! -z "$gateway" -a ! -z "$dns1" ] && setflag=false
done
cat - >$eth0_cfg <<DOC2
IPADDR=$ipaddr
BOOTPROTO=none
NETMASK=255.255.255.0
GATEWAY=$gateway
DNS1=$dns1
DNS2=$dns2
USERCTL=yes
HWADDR="$eth0_mac"
DOC2

chkconfig --levels 2345 network on
service network restart
fi
fi
echo -e "finish network config..."
}
initEnv(){
	if [ -s /etc/selinux/config ]; then
	sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
fi

/bin/cp -f /etc/yum.conf /etc/yum.conf.lnmp
sed -i 's:exclude=.*:exclude=:g' /etc/yum.conf
}

initEnv
[ '$setip' == '1' ] && setIp
# ######---------------------network setting finish


yum -y install yum-fastestmirror perl-CPAN wget mlocate
echo -e "set yum repo mirror...\n"

. update_source.sh
# [ -e "/etc/yum.repos.d/CentOS-Base.repo" ] && mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo_bk
# [ ! -e "/etc/yum.repos.d/CentOS-Base-163.repo" ] && curl -L "http://mirrors.163.com/.help/CentOS6-Base-163.repo" -o /etc/yum.repos.d/CentOS-Base-163.repo
# yum makecache
# echo -e "finish setting 163 repo mirror...\n"
yum -y install screen
#read -p "install system-config-network-tui,config use text ui,default is y(y/n)(options)" network_tui
#[ "$devtoolvar" != "n"  -a ! -e "`which system-config-network-tui`" ] &&



#yum -y install system-config-network-tui wget system-config-firewall-tui

#read -p "install system-config-firewall-tui,config use text ui,default is y(y/n)(options)" firewall_tui
#[ "$devtoolvar" != "n" -a ! -e "`which system-config-firewall-tui`" ] &&

#set build environment
#read -p "set build environment,default is y(y/n)" devtoolvar
#[ "$devtoolvar" != "n" ] &&

yum -y groupinstall "Development tools"


#inst_pkg $libevent

[[ ! -z `rpm -qa|grep openssl-devel` ]] && yum -y install openssl-devel perl-ExtUtils-Embed zlib-devel scons cmake
if [ -s /etc/selinux/config ]; then
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
fi
for packages in time gperf telnet libtool-libs  libjpeg libjpeg-devel libpng libpng-devel  gd gd-devel freetype freetype-devel libxml2 libxml2-devel  zlib-devel  glib2-devel  bzip2-devel libevent libevent-devel ncurses ncurses-devel curl curl-devel e2fsprogs e2fsprogs-devel  libidn libidn-devel openssl openssl-devel vim-minimal nano   ncurses-devel gmp-devel  unzip libcap;
do yum -y install $packages >/dev/nul 2>&1; done

yum -y install axel


#install google tcmalloc
inst_pkg $libunwind
ldconfig

config_pkg $gperftools 
CFLAGS=-fPIC ./configure --prefix=/usr --enable-frame-pointers 
make CFLAGS=-fpic 
make CFLAGS=-fPIC install
ldconfig
cd ..

# #install pcre


inst_pkg $pcre --enable-jit --enable-utf8
#install end 
ldconfig

#Development tools include package
#bison byacc cscope ctags cvs diffstat doxygen flex gcc gcc-c++ gcc-gfortran gettext git indent intltool libtool patch patchutils rcs redhat-rpm-config rpm-build subversion swig systemtap
#bison byacc cscope ctags  diffstat  flex gcc gcc-c++  gettext git indent intltool libtool patch patchutils rcs redhat-rpm-config rpm-build subversion swig systemtap

#Development tools
echo -e "finish setting build environment\n"

sleep 2
cat >>/etc/security/limits.conf<<eof
* soft nproc 65535
* hard nproc 65535
* soft nofile 65535
* hard nofile 65535
eof

cat >>/etc/sysctl.conf<<eof
fs.file-max=65535
#prevent syn attack
net.ipv4.tcp_syncookies = 1
#allow TIME-WAIT sockets reuse
net.ipv4.tcp_tw_reuse = 1
#enable quick tcp recycle 
net.ipv4.tcp_tw_recycle = 1
#waiting time of FIN-WAIT-2 state
net.ipv4.tcp_fin_timeout = 5
#syn queue length
net.ipv4.tcp_max_syn_backlog = 8192 
#the number of time wait state socket
net.ipv4.tcp_max_tw_buckets = 5000 
#the frequency of keepalive sending message 
net.ipv4.tcp_keepalive_time = 1200 
#output connection port range 
net.ipv4.ip_local_port_range = 1024 65000
eof
#for centos 64
#centos 5:wget http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el5.rf.x86_64.rpm

installurl=http://packages.sw.be/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
installfile=`basename $installurl`
[ ! -e $installfile ] && curl -L "$installurl" -o $installfile

rpm -ihv rpmforge-release*.rf.x86_64.rpm
#[install system tools]
yum -y install htop inotify-tools mlocate losf strace screen

### set Asia/Shanghai timezone
##tzselect
#
#date -R see timezone
#
yum -y install ntp
ntpdate us.pool.ntp.org
cp -f /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
type chkfs
if [ $? != 0 ];then
cat ->> $HOME/.bashrc<<<EOF
function chks2 {
  ps -ef|grep [n]ginx  >/dev/null 2>&1 && echo "nginx running"
  ps -ef|grep [m]emcache >/dev/null 2>&1 && echo "memcache running"
  ps -ef|grep [m]ongod >/dev/null 2>&1 && echo "mongod running"
  ps -ef|grep [p]hp-fpm >/dev/null 2>&1 && echo "php-fpm running"
  ps -ef|grep [m]ysql >/dev/null 2>&1 && echo "mysql running"
  ps -ef|grep [s]sl_video_server >/dev/null 2>&1 && echo "webrtc signal server running"
 ps -ef|grep "org.elasticsearch.bootstrap">/dev/null 2>&1 && echo "elastic search runnging"
}
function diag2 {
  local sock=$(cat /proc/net/sockstat)
  echo -e "Socket info:\n $sock"
  echo -e "vmstate info:\n `vmstat`"
  echo -e "opened files:\n `sysctl -a | grep file`"
  echo -e "MEM :\n `free -m`"

}

function nets2 {
  [ $# -lt 1 ] && echo "$0 port" && return
   echo "Tcp status:"
  local ret=$(netstat -nat|grep -i "$1"|grep ESTABLISHED|wc -l)
   echo "ESTABLISHED:$ret"
   netstat -n | grep -i "$1" | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'
}
EOF
fi
function enCentos7Iptables {

systemctl stop firewalld
systemctl mask firewalld
yum install iptables-services -y
systemctl enable iptables

systemctl start iptables
systemctl enable iptables
touch /etc/sysconfig/ip6tables
systemctl start ip6tables
systemctl enable ip6table
}



enCentos7Iptables