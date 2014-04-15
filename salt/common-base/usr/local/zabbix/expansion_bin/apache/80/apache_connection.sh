#!/bin/sh
port=80
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
