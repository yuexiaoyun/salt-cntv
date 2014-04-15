#!/bin/sh
port=11211
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
