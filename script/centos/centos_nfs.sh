#!/bin/bash
. common.sh
service rpcbind start
yum -y install nfs-utils
#if error occur,use the following command
#dos2unix /etc/sysconfig/network
chkconfig --add nfs
chkconfig --level 2345 nfs on
