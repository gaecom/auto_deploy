#!/bin/bash
#start memcached

memcached -d -u memcache -p 11211
memcached -d -u memcache -p 11212
memcached -d -u memcache -p 11213

#start twemproxy
nutcracker -c /etc/nutcracker.yml -d
