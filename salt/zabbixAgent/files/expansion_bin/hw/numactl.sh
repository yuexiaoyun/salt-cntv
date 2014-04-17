#!/bin/sh
[ -f /usr/bin/numactl ] && echo 'Yes' || echo 'No'
#/usr/bin/numactl --show > /dev/null
#echo "$?" |grep -q "0" && echo aaa ||echo "$result"
