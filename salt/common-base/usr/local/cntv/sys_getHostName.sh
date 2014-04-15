#!/bin/bash
ip=`/usr/local/cntv/sys_getAdminIP.sh`
dig -x $ip |grep "PTR" |grep -v "^;" |awk '{print $5}' |sed "s/.$//g" |head -n 1