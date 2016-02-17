#!/bin/bash

USER=${MONGO_USER:-"ryadmin"}

PASS=${MONGO_PASS:-"ryadmin"}
_word=$( [ ${MONGO_PASS} ] && echo "preset" || echo "random" )

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MongoDB service startup"
    sleep 5
    mongo admin --eval "help" >/dev/null 2>&1
    RET=$?
done

echo "=> Creating an admin user with a ${_word} password in MongoDB"

mongo admin --eval "db.createUser({user: '$USER', pwd: '$PASS', roles:[{role:'root',db:'admin'}]});"

echo "=> Done!"

touch /data/db/.mongo_user

echo "========================================================================"
echo "You can now connect to this MongoDB server using:"
echo ""
echo "    mongo admin -u admin -p $PASS --host <host> --port <port>"
echo ""
echo "Please remember to change the above password as soon as possible!"
echo "========================================================================"