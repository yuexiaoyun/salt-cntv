#!/bin/sh
port=11213
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
