#!/bin/sh
port=21211
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
