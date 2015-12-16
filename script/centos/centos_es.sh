#!/bin/bash
set -e -v
. common.sh

mkdir /usr/local/es
# cd_pkg $es

# cp -R *.* /usr/local/es

# ln -s /usr/local/es/plugin /usr/local/bin
# ln -s /usr/local/es/elasticsearch /usr/local/bin

# echo -e "install plugins mobz/elasticsearch-head\nelasticsearch-head is a web front end for browsing and interacting with an Elastic Search cluster."

rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch

cat ->/etc/yum.repos.d/elasticsearch.repo<<EOF
[elasticsearch-1.4]
name=Elasticsearch repository for 1.4.x packages
baseurl=http://packages.elasticsearch.org/elasticsearch/1.4/centos
gpgcheck=1
gpgkey=http://packages.elasticsearch.org/GPG-KEY-elasticsearch
enabled=1
EOF
yum -y install elasticsearch





plugin -i mobz/elasticsearch-head
plugin -i lukas-vlcek/bigdesk/2.5.0



#https://github.com/lukas-vlcek/bigdesk/archive/master.zip
echo -e "install chinese word segment"


cd_pkg https://github.com/ifa6/elasticsearch-analysis-ik/archive/master.zip
cp -R config/ik /usr/share/elasticsearch/config
mvn package
cp target/elasticsearch-analysis-ik-*.jar  /usr/share/elasticsearch/lib
cat - >>/usr/share/elasticsearch/config/elasticsearch.yml<<EOF
#index.analysis.analyzer.ik.type : "ik"
http.cors.enabled : true
http.cors.allow-origin : "*"
EOF

