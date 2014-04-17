#!/bin/sh
check_tcp='/usr/local/zabbix/expansion_bin/nagios/check_tcp'
memcache_status='/tmp/memcache_status.file'
list=$(ps -ef|grep memcache|grep -v grep|awk '/-[lp]/'|tr -s " " ","|awk -F'memcached,' '{print $2}')
for i in {$list}
do
	ipadd=$(echo $i|grep '\-l'|grep -v grep)
	#echo $ipadd
	if [ -z $ipadd ]
	then
		ip='127.0.0.1'
                #echo '127.0.0.1'
	else
		ip=$(echo $ipadd |awk -F'-l,' '{print $2}'|awk -F',' '{print $1}')
		#echo $ip
	fi
	portss=$(echo $i|grep '\-p'|grep -v grep)
        #echo $portss
        if [ -z $portss ]
        then
                port='11211'
                #echo '11211'
        else
                port=$(echo $portss|awk -F'-p,' '{print $2}'|awk -F"[,}$]" '{print $1}')
                #echo $port
        fi
	$check_tcp  -H $ip -p $port -t 5 -E -s 'stats\r\nquit\r\n' -e 'uptime' -M crit >$memcache_status.$port
	#echo '**********************************************************************************'
 	#cat $memcache_status.$port |grep $1 	
average_get(){
	cmd_get=$(cat $memcache_status.$port |grep 'cmd_get'|awk '{print $3}')
	uptime=$(cat $memcache_status.$port |grep 'uptime'|awk '{print $3}')
	average_get=$(echo $cmd_get $uptime |awk '{ printf "%0.4f\n" ,$1/$2}')
	echo $average_get
}
cache_hits(){
	get_hits=$(cat $memcache_status.$port |grep 'get_hits'|awk '{print $3}')
	cmd_get=$(cat $memcache_status.$port |grep 'get_misses'|awk '{print $3}')
	cache_hits_sum=$(echo $get_hits $cmd_get |awk '{ printf "%0.4f\n" ,$1/($2+$1)}')
	cache_hits=$(gawk -v x=$cache_hits_sum  "BEGIN{printf \"%.2f%%\",x * 100}")
	echo $cache_hits
		
}
mem_use(){
	use_mem=$($check_tcp  -H 10.70.63.14 -p 11211  -t 5 -E -s 'stats slabs\r\nquit\r\n' -e 'uptime' -M crit |grep total_malloced|awk '{print $3}'|awk '{ printf "%0.4f\n" ,$1/1024/1024/1024}')
	echo ${use_mem}G
}
# When stopping httpd a delay (of default 10 second) is required
# before SIGKILLing the httpd parent; this gives enough time for the
# httpd parent to SIGKILL any errant children.
#########################
case "$1" in
  average_get)
        average_get 
        ;;
  cache_hits)
        cache_hits 
        ;;
  mem_use)
	mem_use
	;;
  *)
	status=$(cat $memcache_status.$port |grep $1|awk '{print $3}')
	echo $status
        exit 1
esac
exit $RETVAL
done
#curr_connections
#bytes
#average_get
#cache_hits
#rusage_user
#rusage_system
#curr_items
