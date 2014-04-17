#!/bin/sh
result_tmp=$(/usr/local/zabbix/expansion_bin/nagios/check_disk -l -w 10% -c 5%)
result=$(echo $result_tmp|awk -F'-' '{print $1}')
echo "$result" |grep -q "OK" && echo 0 ||echo "$result"
