#!/bin/bash


set -x 
curVer=$(cat /etc/redhat-release)
echo -e "$curVer\n"

yum list updates

yum update

yum clean all
yum makecache