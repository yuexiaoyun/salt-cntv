#!/bin/sh
/usr/local/zabbix/sbin/zabbix_agentd -c /usr/local/zabbix/etc/zabbix_agentd.conf -t system.cpu.num |awk -F'|' '{print $2}'|awk -F']' '{print $1}'
