#!/bin/sh
ipaddr=`/sbin/ifconfig eth0|grep Bcast|grep inet|awk -F':' '{print $2}'|awk -F'  ' '{print $1}'`
hostzone=`dig -x $ipaddr @192.168.115.133|grep com|awk -F'PTR\t' '{print $2}'|sed -e 's/.$//g'`
echo $hostzone
