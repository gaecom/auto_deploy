#!/bin/bash
. common.sh
. config.sh
./centos_minimal.sh

./centos_mysql.sh
./centos_php.sh
./centos_tenginx.sh

./centos_memcached.sh

./centos_compile_mongodb.sh
./centos_gearman.sh
./centos_node.sh
./centos_redis.sh
./centos_service_node_video.sh
./centos_extra.sh