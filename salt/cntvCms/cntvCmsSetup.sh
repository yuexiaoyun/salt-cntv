#!/bin/bash

set -x

##更新杀进程
killall rsyncCntvCms && rm -f /var/run/rsyncd_cntvCms.pid
sleep 2

##启动服务
/usr/bin/rsyncCntvCms --daemon --config=/etc/cntvCms/rsyncd.conf --port 7878 &
[ `grep 7878 /etc/rc.local |wc -l` -eq 0 ] && echo "/usr/bin/rsyncCntvCms --daemon --config=/etc/cntvCms/rsyncd.conf --port 7878" >> /etc/rc.local
