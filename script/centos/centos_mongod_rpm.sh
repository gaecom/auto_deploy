#/bin/bash
cat ->/etc/yum.repos.d/mongodb.repo<<EOF
[mongodb]
name=MongoDB Repository
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/
gpgcheck=0
enabled=1
EOF
chmod -R mongod:mongod /var/lib/mongo
#latest stable version
sudo yum install mongodb-org
read -p "version want to install:" version
#specific version
# version=${version:-2.6.3}
# sudo yum install mongodb-org-$version mongodb-org-server-$version mongodb-org-shell-$version mongodb-org-mongos-$version mongodb-org-tools-$version