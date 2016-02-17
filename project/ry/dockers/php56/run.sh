#!/bin/bash
export MONGO_USER="m2"
export MONGO_PWD="m2"
docker run --name  mongo-ninja -p 27017:27017 -v /root/mongo:/data/db -d mongo:latest --storageEngine wiredTiger --auth
docker exec mongo-ninja  mongo --eval "db.getSiblingDB('admin').createUser({user: '$MONGO_USER', pwd: '$MONGO_PWD', roles:[{role:'userAdminAnyDatabase', db:'admin'}]})"

#docker run -it --link mongo:latest sh -c 'exec mongo "$MONGO_PORT_27017_TCP_ADDR:$MONGO_PORT_27017_TCP_PORT/test"'
#

