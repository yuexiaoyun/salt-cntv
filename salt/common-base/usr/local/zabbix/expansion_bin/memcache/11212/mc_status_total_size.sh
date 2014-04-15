#!/bin/sh
#############
#Total_Cache_Size=limit_maxbytes
#Used Cache Size=bytes
################
port=11212
ipadd=$(ps -ef|grep memcache |grep -v grep |head -n1|awk -F'-l ' '{print $2}'|awk '{print $1}')
rm -f /tmp/mc_status_total_size.txt
(printf "stats\r\n" | nc 127.0.0.1 $port) 2>&1 >/tmp/mc_status_total_size.txt
sum=`cat /tmp/mc_status_total_size.txt |grep " limit_maxbytes "|awk '{print $3/1024/1024}'`
echo $sum
