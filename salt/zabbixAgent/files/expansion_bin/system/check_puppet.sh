#!/bin/sh
sum=$(/usr/local/zabbix/sbin/zabbix_agentd -c /usr/local/zabbix/etc/zabbix_agentd.conf -t proc.num[puppetd])
puppetsum=$(echo $sum|awk -F'|' '{print $2}'|awk -F']' '{print $1}')
if(($puppetsum < 1))
then
	echo 'puppet is down'
	/etc/init.d/puppet restart
else
	#echo 'puppetd is running...'
	echo 'puppet is OK'
fi
