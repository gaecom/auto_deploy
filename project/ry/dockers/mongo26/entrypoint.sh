#!/bin/bash
set -e


if [ "${1:0:1}" = '-' ]; then
	set -- mongod "$@"
fi

if [ "$1" = 'mongod' ]; then
	chown -R mongodb /data/db

	numa='numactl --interleave=all'
	if $numa true &> /dev/null; then
		set -- $numa "$@"
	fi

	exec gosu mongodb "$@"
fi
exec "$@"

if [ ! -f /data/db/.mongo_user ]; then
    /mongo_user.sh
fi
