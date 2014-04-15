#!/bin/bash

set -x

##替换源
rm -f /etc/yum.repos.d/*
wget http://10.70.63.131/docker/yumRepo/cntvInternal.repo -O /etc/yum.repos.d/cntvInternal.repo

##更新杀进程
yum install -y rsync
killall rsyncCntvCms && rm -f /var/run/rsyncd_cntvCms.pid
sleep 2

##系统调整
sed -i "s/^SELINUX=.*/SELINUX=disabled/g" /etc/sysconfig/selinux
setenforce 0
sed -i "/requiretty/d" /etc/sudoers
sed -i "/autoOps/d" /etc/sudoers
echo "autoOps ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

##rsync
\cp /usr/bin/rsync /usr/bin/rsyncCntvCms
rm -f /etc/cntvCms/*
mkdir -p /etc/cntvCms
wget -c http://10.70.63.131/cntvCmsSetup/rsyncd.conf -O /etc/cntvCms/rsyncd.conf
wget -c http://10.70.63.131/cntvCmsSetup/rsyncd.secrets -O /etc/cntvCms/rsyncd.secrets
chmod 0600 /etc/cntvCms/rsyncd.secrets
/usr/bin/rsyncCntvCms --daemon --config=/etc/cntvCms/rsyncd.conf --port 7878 &
[ `grep 7878 /etc/rc.local |wc -l` -eq 0 ] && echo "/usr/bin/rsyncCntvCms --daemon --config=/etc/cntvCms/rsyncd.conf --port 7878" >> /etc/rc.local

##用户
userdel autoOps -r
useradd -u 7878 -g wheel autoOps
mkdir -p /home/autoOps/.ssh; chmod 0700 /home/autoOps/.ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAutkktlYPv1RZ3r57dTX5DY/OOAL+jwPgxwh/0bB41EGj82hQSD+mVNzLMcZvl8PfglHFZX5cWj1naSs8iJbHjMZYDYGwlU1G6cOWKOsg5rUV659zOkBUM7eHpmxrk9HsV767doklKw3h3nPVfndlcO+nGuDzN1hPgwIk7TSC6a0ge9RDK2AwFjW9mgmEEXuv/5EM65pOSK29BP+FAYZNNqQ3DYjR4kmdMNRKiu4RY2P8SYi8VdoMUMo+RfXjCyBEcxmssBgJMlM6efzQk9qlSvISCWHCDc1S3nZTiXv07xXuTkA676atAqumj8pscDtLSdL0W8W9msxeUr2Y9ftz7w== autoOps@10.70.63.131' > /home/autoOps/.ssh/authorized_keys
chmod 0600 /home/autoOps/.ssh/authorized_keys ;chown autoOps.wheel -R /home/autoOps;
