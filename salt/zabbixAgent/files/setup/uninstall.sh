#!/bin/sh
# by huyong
userdel zabbix
groupdel zabbix
sed -i "/^\/usr\/local\/zabbix\/python\/lib/d"  /etc/ld.so.conf
sed -i "/^\/usr\/local\/zabbix\/lib\/lib/d" /etc/ld.so.conf
ldconfig
sed -i "/^zabbix-agent    10050\/tcp  Zabbix Agent/d" /etc/services 
sed -i "/^zabbix-agent    10050\/udp  Zabbix Agent/d" /etc/services
sed -i "/^zabbix-trapper  10051\/tcp  Zabbix Trapper/d" /etc/services
sed -i "/^zabbix-trapper  10051\/udp  Zabbix Trapper/d" /etc/services
rm -rf /etc/init.d/zabbix_agentd
