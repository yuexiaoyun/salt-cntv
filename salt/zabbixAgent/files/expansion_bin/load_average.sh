#!/bin/sh
load5=$(/usr/local/zabbix/sbin/zabbix_agentd -c /usr/local/zabbix/etc/zabbix_agentd.conf -t system.cpu.load|awk -F'|' '{print  $2}'|awk -F']' '{print  $1}')
core=$(/usr/local/zabbix/sbin/zabbix_agentd -c /usr/local/zabbix/etc/zabbix_agentd.conf -t system.cpu.num|awk -F'|' '{print  $2}'|awk -F']' '{print  $1}')
c=$(echo "$core - $load5"|bc)
countg=`echo $c | awk '{print sprintf("%d", $0);}'`
if (($countg > 0 ))
then
	echo "0"
	#echo "1"
else
	echo "$load5"
fi
