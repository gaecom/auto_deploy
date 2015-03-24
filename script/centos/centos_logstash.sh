#!/bin/bash
set -e -v
. common.sh

# redis 作为代理各地的服务器logstash output和最终的服务器重点的logstash input
# 
# 
# logstash – Our central log server
# Elasticsearch – To store the logs
# Redis – For filter
# Nginx – To run Kibana
# Kibana – Is a beautiful GUI dashboard and puts everything together

rpm --import http://packages.elasticsearch.org/GPG-KEY-elasticsearch
# 
cat ->/etc/yum.repos.d/logstash.repo<<EOF
[logstash] 
name=Logstash
baseurl=http://packages.elasticsearch.org/logstash/1.4/centos 
gpgcheck=1 
gpgkey=http://packages.elasticsearch.org/GPG-KEY-elasticsearch 
enabled=1 
EOF

yum -y install logstash
cd $kibana3

cp *.* $HTDOCS

read -p "config elasticsearch url for kibana" esUrl
if [ ! -z $esUrl ];then 
esUrl=`echo $esUrl|sed '/\//s/\//afda/g'`
#notice: ^elastic cant match startWith elastic string when using double quote
sed "/[^\+]elasticsearch:/s/.*/elasticsearch: \"$esUrl\"/" config.js
fi

read -p "config elasticsearch host for logstash" esHost
read -p "config redis host for logstash" redisHost
cat ->/etc/logstash/conf.d/logstash.conf<<EOF
input {
  file {
    type => "syslog"
    path => [ "/var/log/*.log", "/var/log/messages", "/var/log/syslog" ]
  }
  redis {
    host => "127.0.0.1"
    data_type => "list"
    key => "logstash"
    codec => json
  }
}
filter { 
  grok { 
    type => "syslog" 
    match => [ "message", "%{SYSLOGBASE2}" ] 
    add_tag => [ "syslog", "grokked" ] 
  } 
} 
output {
  elasticsearch { bind_host => "$esHost" }
}


EOF



