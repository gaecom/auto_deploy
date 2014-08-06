#!/bin/bash
. ./common.sh
#inst_pkg http://mosquitto.org/files/source/mosquitto-1.2.tar.gz
z_add_sysuser  mos



mosquitto_passwd -c /etc/mosquitto/user_pwd  $mos_user
echo "allow_anonymous false" >> /etc/mosquitto/mosquitto.conf
echo "password_file /etc/mosquitto/user_pwd" >> /etc/mosquitto/mosquitto.conf
echo "user mos" >> /etc/mosquitto/mosquitto.conf

mosquitto -d -c /etc/mosquitto/mosquitto.conf
#clientid_prefixes snow
