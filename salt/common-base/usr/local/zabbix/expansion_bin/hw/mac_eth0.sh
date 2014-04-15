#!/bin/sh
ifconfig |grep eth0|awk -F'HWaddr' '{print $2}'|tr ' ' '_'|sed 's/_//g'
