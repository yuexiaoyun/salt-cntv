#!/bin/sh
# by huyong
groupadd zabbix
useradd zabbix -g zabbix
mkdir -p  /var/log/zabbix/
echo "/usr/local/zabbix/python/lib/" >> /etc/ld.so.conf
echo "/usr/local/zabbix/lib/lib" >>/etc/ld.so.conf
ldconfig
chmod -R 777 /var/log/zabbix
ipaddraa=$(/sbin/ip ad sh |grep inet |grep -v inet6|awk '{print $2}'|awk -F'/' '{print $1}'|grep -v '127.0.0.1')
for i in $ipaddraa
do
        hostzone=$(dig -x $i @10.70.63.152|grep com|awk -F'PTR\t' '{print $2}'|sed -e 's/.$//g')
        if [ -z $hostzone ]
        then
            continue;
        else
            break;
        fi
done
zabbixconf_hostname=`cat /usr/local/zabbix/etc/zabbix_agentd.conf |grep Hostname |grep -v '^#'|awk -F'=' '{print $2}'`
zabbixconf_host=$(cat /usr/local/zabbix/etc/zabbix_agentd.conf|grep Hostname|grep -v '^#')
if [ "$zabbixconf_hostname" != "$hostzone" ]
then
        sed -i "s/$zabbixconf_host/Hostname=$hostzone/g" /usr/local/zabbix/etc/zabbix_agentd.conf
fi
echo 'nameserver 10.70.63.152' > /etc/resolv.conf
echo 'zabbix-agent    10050/tcp  Zabbix Agent' >> /etc/services 
echo 'zabbix-agent    10050/udp  Zabbix Agent' >> /etc/services
echo 'zabbix-trapper  10051/tcp  Zabbix Trapper' >> /etc/services
echo 'zabbix-trapper  10051/udp  Zabbix Trapper' >> /etc/services
\cp /usr/local/zabbix/shell/zabbix_agentd /etc/init.d/
chmod 777 /etc/init.d/zabbix_agentd

service zabbix_agentd restart
chkconfig --add zabbix_agentd
chkconfig zabbix_agentd on
