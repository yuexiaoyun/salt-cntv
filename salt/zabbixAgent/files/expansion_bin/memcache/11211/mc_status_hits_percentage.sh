#!/bin/sh
port=11211
ipadd=$(ps -ef|grep memcache |grep -v grep |head -n1|awk -F'-l ' '{print $2}'|awk '{print $1}')
rm -f /tmp/mc_status_hits_percentage.txt
(printf "stats\r\n" | nc 127.0.0.1  $port) 2>&1 >/tmp/mc_status_hits_percentage.txt
get_hits=`cat /tmp/mc_status_hits_percentage.txt |grep 'STAT get_hits '|awk '{print $3}'`
get_misses=`cat /tmp/mc_status_hits_percentage.txt |grep 'STAT get_misses '|awk '{print $3}'`
echo $get_hits $get_misses |awk '{printf "%0.2f\n",$1*100/($2+$1)}'
