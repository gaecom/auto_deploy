#/bin/bash
. common.sh
cat ->/etc/yum.repos.d/mongodb.repo<<EOF
[mongodb-org-3.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/testing/x86_64/RPMS/
gpgcheck=0
enabled=1
EOF
chmod -R mongod:mongod /var/lib/mongo
#latest stable version
#
#read -p "version want to install:" version
yum -y install mongodb-org

#specific version
# version=${version:-2.6.3}
# sudo yum install mongodb-org-$version mongodb-org-server-$version mongodb-org-shell-$version mongodb-org-mongos-$version mongodb-org-tools-$version
# 
# 
# 
# 
# 
# [mongodb-org-2.6]
# name=MongoDB 2.6 Repository
# baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
# gpgcheck=0
# enabled=1