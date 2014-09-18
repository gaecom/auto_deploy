#/bin/bash
. common.sh
read -p "your nginx webserver mime location" location
ret=`file_exists $location`
if [ $ret == 0 ];then
cat >> $location <<EOF
text/xml                            plist;
application/octet-stream            ipa;
EOF