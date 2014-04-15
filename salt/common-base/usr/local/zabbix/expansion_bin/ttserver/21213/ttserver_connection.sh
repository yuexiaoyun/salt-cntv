#!/bin/sh
port=21213
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
