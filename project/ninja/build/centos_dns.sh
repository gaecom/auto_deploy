#!/bin/bash
. common.sh

yum install bind

chmod -R 770 /var/named

echo -e "allow query from any\n"


sed -i "_bak" '/\tallow-query/s/.*/\tallow-query      \{ 11any\; \}\;/' /etc/named.conf

        # allow-query      { any; };
        # recursion yes;
        # //forward only;
        # //forwarders {114.114.114.114;}