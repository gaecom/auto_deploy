#/bin/bash
usage="$0 1(start,end ip range) 2(tftp dir) 3(http iso location) 4(dns ip) 5(gw ip)"
[ $# -lt 3 ] && echo -e $usage && exit
[ $(id -u) != 0 ] && echo "should run as admin" && exit
start_end=${1:-"192.168.10.150,192.168.10.199"}
tftp_dir=${2:-tftp}
default_gw=${5:-"192.168.10.1"}
dns_server=${4:-"192.168.10.1"}
iso_url=$3
sudo apt-get install dnsmasq atftp
echo "you must download the correct netboot in according with ubuntu version"

[ ! -f netboot.tar.gz ] && wget $bootImgUrl

mkdir $tftp_dir

[ -f netboot.tar.gz ] && tar xvzf netboot.tar.gz -C $tftp_dir

chmod -R 777 $tftp_dir


cat ->> $tftp_dir/ubuntu-installer/amd64/boot-screens/txt.cfg
label install
menu label ^Install
menu default
kernel ubuntu-installer/amd64/linux
append ks=$iso_url vga=788 initrd=ubuntu-installer/amd64/initrd.gz -- quiet 

cat - >>/etc/dnsmasq.conf<<EOF
dhcp-range=$start_end,12h
enable-tftp
tftp-root=$tftp_dir
dhcp-boot=pxelinux.0
dhcp-option=3,$default_gw
dhcp-option=6,$dns_server
EOF

service dnsmasq restart

echo "finish setup server,you could restart the pc you want to deploy ubuntu os booting from network in the same lan"



