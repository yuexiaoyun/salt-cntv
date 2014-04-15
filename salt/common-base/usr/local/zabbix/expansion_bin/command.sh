#!/bin/sh
command=$(echo "$1"|sed "s/____/ /g")
echo "$command" >> /tmp/hy.txt
$command
