#/bin/bash
. common.sh
[ ! -z "`uname -r|grep el6`" ] && rpm -ivh $centos_extra_repos_6
