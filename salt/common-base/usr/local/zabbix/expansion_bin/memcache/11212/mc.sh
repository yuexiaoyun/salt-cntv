#!/bin/sh
port=11212
rm -f /tmp/memcache.delete.set.get.txt
ipadd=$(ps -ef|grep memcache |grep -v grep |head -n1|awk -F'-l ' '{print $2}'|awk '{print $1}')
str=$(/usr/local/zabbix/expansion_bin/nagios/check_tcp -H 127.0.0.1 -p $port)
sum=$(echo $str|grep 'OK'|wc -l)
if(( $sum == 0 ))
then
	echo mc11212 is down,$str 
else
	(printf "delete cntv\r\n" | nc 127.0.0.1 $port) 2>&1 >/tmp/memcache.delete.set.get.txt
	(printf "set cntv 0 0 5\r\n12345\r\n" | nc 127.0.0.1 $port) 2>&1 >/tmp/memcache.delete.set.get.txt
	(printf "get cntv\r\n" | nc 127.0.0.1 $port) 2>&1 >/tmp/memcache.delete.set.get.txt
	mcgetsum=`cat /tmp/memcache.delete.set.get.txt |grep '12345' |wc -l` 
	if(( $mcgetsum == 0 ))
	then
		echo 'mc11212 get error'
	else
		echo 'ok'
	fi

fi
