#!/bin/sh
port=11212
ipadd=$(ps -ef|grep memcache |grep -v grep |head -n1|awk -F'-l ' '{print $2}'|awk '{print $1}')
rm -f /tmp/mc_status_free_percentage.txt
(printf "stats\r\n" | nc 127.0.0.1 $port) 2>&1 >/tmp/mc_status_free_percentage.txt
Total_Cache_Size=`cat /tmp/mc_status_free_percentage.txt |grep 'STAT limit_maxbytes'|awk '{print $3}'`
Used_Cache_Size=`cat /tmp/mc_status_free_percentage.txt |grep 'STAT bytes '|awk '{print $3}'`
echo $Used_Cache_Size $Total_Cache_Size|awk '{printf "%0.2f\n",($2-$1)*100/$2}'
