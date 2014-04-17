#!/bin/sh
port=21212
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
