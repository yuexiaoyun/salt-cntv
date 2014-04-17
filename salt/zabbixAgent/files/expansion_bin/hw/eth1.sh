#!/bin/sh
ip ad sh|grep eth1|grep inet|awk '{print $2}'|awk -F'/' '{print $1}'
