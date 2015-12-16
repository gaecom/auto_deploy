### howto setup

1. make auto install ubuntu iso.
	1. download ubuntu-14.04-server-amd64.iso on this directory.
	2. run sudo auto_install_ubuntu_cdrom.sh

2. setup webserver
1. extract auto_install.iso under your web server some directry(such as ubuntu)
2. chmod 777 ks.cfg
3. edit ks.cfg,set url --url http://192.168.10.200/ubuntu
4. edit ks.preseed, change the following line or the install process will fail with error message "install the system"
d-i live-installer/net-image string http://192.168.10.200/ubuntu/install/filesystem.squashfs


3. in ubuntu server,run the following script
	sudo tftp_dnsmasq_setup.sh

4. if use net boot(pxe) install,you should add the following append txt.cfg,and the txt.cfg content are like following text
	label install
	  menu label ^Install Ubuntu Server
	  kernel /ubuntu-installer/amd64/vmlinuz
	  append ks=http://192.168.10.200/autoinstall/ks.cfg i initrd=ubuntu-installer/amd64/initrd.gz -- quiet vga=788
	
## Note:
if you terminate the pxe auto install process,when you want to reinstall,you should
1. shutdown the client
2. restart dnsmasq
3. start client