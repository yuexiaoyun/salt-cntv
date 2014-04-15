#!/bin/sh
port=9090
log_filename='tomcat_9090_stats'
rm -f /tmp/$log_filename.txt
str=$(/usr/local/zabbix/expansion_bin/nagios/check_tcp -H 127.0.0.1 -p $port)
sum=$(echo $str|grep 'OK'|wc -l)
if(( $sum == 0 ))
then
	echo ${log_filename} $port $str 
else
	echo 'ok'

fi
