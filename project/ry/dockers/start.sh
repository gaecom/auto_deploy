#!/bin/bash




mkdir -m 0777 -p /data/{nginx,mongodb,mysql,redis}/{conf,logs,data}



docker run -p 6379:6379 --name gg-redis  -v /data/redis/conf/redis.conf:/usr/local/etc/redis/redis.conf -v /data/redis/data:/data -d redis:latest


#docker run -p 27017:27017 --name wc-mongodb -v /data/mongodb/log:/data/log -v /data/mongodb/data:/data/db -d mongo:latest --storageEngine wiredTiger --logpath=/data/log/mongo.log

docker run -p 27017:27017 --name gg-mongodb26 -v /data/mongodb/logs:/data/mongodb/logs -v /data/mongodb/data:/data/db -d mongo:2.6.11  --logpath=/data/mongodb/logs/mongo.log


#docker run -p 9000:9000 --name gg-php5632  -d ry:php56  -v /data/nginx:/data/nginx /usr/local/bin/php-fpm  -c  /etc/php.ini
# --net=host 

docker run -p  9000:9000 -v /data/php/conf/php.ini:/etc/php.ini -v /data/nginx/data:/data/nginx/data --name gg-php566 -d ry:php560 php-fpm -c /etc/php.ini
#--net=host

docker run -p 80:80  --name gg-nginx3 -v /data/nginx/conf:/etc/nginx:ro -v /data/nginx:/data/nginx -d ry:nginx1.9


#docker run -p 27017:27017 --name wc2-mongodb1 -e MONGO_USER=admin -e MONGO_PASS=chjade -v /data/mongodb/log:/data/log -v /data/mongodb/log:/data/db -d ry:mongo26

#docker run -it mongo:latest sh -c 'exec mongorestore --dir /root/gogoinfo'

#docker run -it mongo:latest  -v /root/gogoinfo:/root/gogoinfo sh -c 'exec mongorestore --dir /root/gogoinfo'





#docker run -p 27017:27017 --name wc-mongodb -v /data/mongodb/data:/data/db -d ry:mongo





#docker run -p 27017:27017 --name wc-mongodb -v /data/mongodb/log:/data/log -v /data/mongodb/data:/data/db -d mongo:latest 
