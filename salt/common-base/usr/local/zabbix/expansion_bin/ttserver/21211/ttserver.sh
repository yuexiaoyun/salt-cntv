#!/bin/sh
port=21211
rm -f /tmp/memcache.delete.set.get.txt
##############
eth1=$(ip ad sh|grep eth1|grep inet|awk '{print $2}'|awk -F'/' '{print $1}')
eth0=$(ip ad sh|grep eth0|grep inet|awk '{print $2}'|awk -F'/' '{print $1}')
if [ -z $eth0 ]
then
        ipadd=$eth1
else
        if [ -z $eth1 ]
        then
                ipadd=$eth0
        else
                sum=`ps -ef|grep ttserver|grep -v grep|head -n1|grep $eth0 |wc -l`
                if(( $sum > 0 ))
                then
                        ipadd=$eth0
                else
                        ipadd=$eth1
                fi
        fi
fi
##############
str=$(/usr/local/zabbix/expansion_bin/nagios/check_tcp -H $ipadd -p $port)
sum=$(echo $str|grep 'OK'|wc -l)
if(( $sum == 0 ))
then
	echo ttserver_21211 is down,$str 
else
	(printf "delete cntv\r\n" | nc $ipadd $port) 2>&1 >/tmp/memcache.delete.set.get.txt
	(printf "set cntv 0 0 5\r\n12345\r\n" | nc $ipadd $port) 2>&1 >/tmp/memcache.delete.set.get.txt
	(printf "get cntv\r\n" | nc $ipadd $port) 2>&1 >/tmp/memcache.delete.set.get.txt
	mcgetsum=`cat /tmp/memcache.delete.set.get.txt |grep '12345' |wc -l` 
	if(( $mcgetsum == 0 ))
	then
		echo 'ttserver_21211 get error'
	else
		echo 'ok'
	fi

fi
