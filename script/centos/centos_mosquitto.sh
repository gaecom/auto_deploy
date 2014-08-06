#!/bin/bash
. ./common.sh
#inst_pkg http://mosquitto.org/files/source/mosquitto-1.2.tar.gz
adduser -s /sbin/nologin -r -U mos
user=$1
pwd=$2
[ -z $user ] &&  user=mos_snowapp && msg_notice "default is $user"
[ -z $pwd ] && pwd=mos_snowapp1@ && msg_notice "default is $pwd"

mosquitto_passwd -c /etc/mosquitto/user_pwd  $user
echo "allow_anonymous false" >> /etc/mosquitto/mosquitto.conf
echo "password_file /etc/mosquitto/user_pwd" >> /etc/mosquitto/mosquitto.conf
echo "user mos" >> /etc/mosquitto/mosquitto.conf

mosquitto -d -c /etc/mosquitto/mosquitto.conf
#clientid_prefixes snow
