#!/bin/sh
port=9090
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
