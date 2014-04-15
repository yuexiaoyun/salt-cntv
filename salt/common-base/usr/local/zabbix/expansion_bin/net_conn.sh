#!/bin/sh
netstat -nat |awk '{print $6}'|sort|uniq -c|sort -rn |grep $1 
