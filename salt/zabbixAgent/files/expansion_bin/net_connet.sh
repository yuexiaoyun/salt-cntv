#!/bin/sh
#    $1 - metric name. Supported:
#        'ALL'
#        'ESTABLISHED'
#        'SYN_SENT'
#        'SYN_RECV'
#        'FIN_WAIT1'
#        'FIN_WAIT2'
#        'TIME_WAIT'
#        'CLOSE'
#        'CLOSE_WAIT'
#        'LAST_ACK'
#        'LISTEN'
#        'CLOSING'
netstat -an |awk '{print $6}'|grep $1 |wc -l
