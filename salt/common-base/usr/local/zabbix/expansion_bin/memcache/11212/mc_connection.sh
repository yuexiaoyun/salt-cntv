#!/bin/sh
port=11212
netstat -antlp |grep ESTABLISHED |grep $port |wc -l
