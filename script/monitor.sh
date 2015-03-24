#!/bin/bash
if [ ! -n "$1" ] ;then
    echo "you have not input the API_KEY!"
    exit 1
fi

API_KEY=${API_KEY:=$1}
COLLECTOR_IP=${COLLECTOR_IP:="collector.monitor.dnspod.cn"}
COLLECTOR_PORT="2003"
PID=$$

ps -ef | grep $API_KEY | grep -v grep | grep -v $PID | cut -c 9-15 | xargs kill -9

IP_ADDRS=`ifconfig | grep 'inet addr' | grep -v '255.0.0.0' | cut -f2 -d':' | awk '{print $1}'`
IP_ADDRS=`echo $IP_ADDRS | sed 's/\n//g'`
HOSTNAME=`hostname -s`


collect() {
    echo time=`date +"%Y-%m-%d %H:%M:%S"` begin collect.
    echo "collector_ip=$COLLECTOR_IP, collector_port=$COLLECTOR_PORT, api_key=$API_KEY"
    echo

    time=`date +%s`

    #top info
    info=$(top -bn 1)
    echo  "$info" | head -n5
    load=`echo  "$info" | sed -n "1p" | grep -Eo "load average:.*"| awk '{print $3}'| sed 's/,//'`
    tasks=`echo  "$info" | sed -n "2p" | grep -Eo ".* total"| grep -Eo "[0-9]+"`
    cpu_use=`echo "$info" | sed -n "3p" | grep -Eo ": .*%us" | grep -Eo "[0-9]+\.?[0-9]*"`
    mem_use=`echo  "$info" | sed -n "4p" | grep -Eo ",.* used" | grep -Eo "[0-9]+"`
    swap_use=`echo  "$info" | sed -n "5p" | grep -Eo ",.* used" | grep -Eo "[0-9]+"`

    echo "will send: load=$load, tasks=$tasks, cpu_use=$cpu_use, mem_use=$mem_use, swap_use=$swap_use"

    echo "$API_KEY/$HOSTNAME/$IP_ADDRS/load $load $time"  | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
    echo "$API_KEY/$HOSTNAME/$IP_ADDRS/tasks $tasks $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
    echo "$API_KEY/$HOSTNAME/$IP_ADDRS/cpu_use $cpu_use $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
    echo "$API_KEY/$HOSTNAME/$IP_ADDRS/mem_use $mem_use $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
    echo "$API_KEY/$HOSTNAME/$IP_ADDRS/swap_use $swap_use $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
    echo

    #ifconfig info
    cards=`ifconfig | grep "Link encap" | cut -d" " -f1`
    i=0
    for card in $cards;do
        i=`expr $i + 1`
        rx_bytes=`ifconfig | grep "RX bytes" | sed -n "${i}p" | grep -Eo "RX bytes:[0-9]+" | grep -Eo "[0-9]+"`
        tx_bytes=`ifconfig | grep "TX bytes" | sed -n "${i}p" | grep -Eo "TX bytes:[0-9]+" | grep -Eo "[0-9]+"`
        echo "will send:rx_bytes_$card=$rx_bytes, tx_bytes_$card=$tx_bytes"
        echo "$API_KEY/$HOSTNAME/$IP_ADDRS/rx_bytes_$card $rx_bytes $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
        echo "$API_KEY/$HOSTNAME/$IP_ADDRS/tx_bytes_$card $tx_bytes $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1 >/dev/null
    done;
    echo

    #df info
    disks=`df -h | grep -Eo "^/dev/sda[0-9]" | sed -r "s/\//_/g"`
    i=0
    
    for disk in $disks;do
        i=`expr $i + 1`
        disk_use=`df -h | grep -E "^/dev/xsda[0-9]" | sed -n "${i}p" | grep -Eo "[0-9]+%" | grep -Eo "[0-9]+"`
        tx_bytes=`ifconfig | grep "TX bytes" | sed -n "${i}p" | grep -Eo "TX bytes:[0-9]+" | grep -Eo "[0-9]+"`
        echo "will send:disk_use.$disk=$disk_use"
        echo "$API_KEY/$HOSTNAME/$IP_ADDRS/disk_use.$disk $disk_use $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1>/dev/null
    done;

    #for ali cloud
    disks=`df -h | grep -Eo "^/dev/xvd[a-z][0-9]" | sed -r "s/\//_/g"`
    i=0
    for disk in $disks;do
        i=`expr $i + 1`
        disk_use=`df -h | grep -E "^/dev/xvd[a-z][0-9]" | sed -n "${i}p" | grep -Eo "[0-9]+%" | grep -Eo "[0-9]+"`
        tx_bytes=`ifconfig | grep "TX bytes" | sed -n "${i}p" | grep -Eo "TX bytes:[0-9]+" | grep -Eo "[0-9]+"`
        echo "will send:disk_use.$disk=$disk_use"
        echo "$API_KEY/$HOSTNAME/$IP_ADDRS/disk_use.$disk $disk_use $time" | nc $COLLECTOR_IP $COLLECTOR_PORT -w1>/dev/null
    done;
    echo



}

run(){
    trap "" HUP
    while :
    do
        sleep 10;
        collect >/var/log/dnspod_collect.log
    done;
}

collect
echo "DNSPod monitor agent run ok."
run &