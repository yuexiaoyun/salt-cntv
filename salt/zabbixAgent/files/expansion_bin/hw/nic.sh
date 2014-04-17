#!/bin/sh
#echo -e `kudzu --probe --class=network|grep 'device'|grep -v 'deviceId'|sed  "s/$/--\n/g"` "\n" `kudzu --probe --class=network |grep desc|sed  "s/$/--\n/g"` "\n" `kudzu --probe --class=network|grep 'network.hwaddr'|sed  "s/$/--\n/g"` "\n" `ethtool eth0 |grep Speed` '--' `ethtool eth1 |grep Speed` '--' "\n" `ethtool eth0 |grep Duplex` '--' `ethtool eth1 |grep Duplex` '--' 
network_eth0(){
kudzu --probe --class=network |grep -E '^device|^desc'|grep -v 'deviceId'|awk -F: '{print $2}'|awk '{if(NR%2==0){printf $0}else{printf "%s:",$0}}'|awk -F'eth1:' '{print $1}'
}
network_eth1(){
kudzu --probe --class=network |grep -E '^device|^desc'|grep -v 'deviceId'|awk -F: '{print $2}'|awk '{if(NR%2==0){printf $0}else{printf "%s:",$0}}'|awk -F'eth1:' '{printf "eth1:" $2}'
}
#`
ethtool_eth0(){
echo eth0: `ethtool eth0 |grep Speed` `ethtool eth0 |grep Duplex`
}
ethtool_eth1(){
echo eth1: `ethtool eth1 |grep Speed` `ethtool eth1 |grep Duplex`
}
#network_eth1

case "$1" in
  networketh0)
       network_eth0 
        ;;
  networketh1)
        network_eth1 
        ;;
  ethtooleth0)
	ethtool_eth0	
        ;;
  ethtooleth1)
	ethtool_eth1
        ;;
#  condrestart)
#        if [ -f ${pidfile} ] ; then
#                stop
#                start
#        fi
#        ;;
#  reload)
#        reload
#        ;;
#  graceful|help|configtest|fullstatus)
#        $apachectl $@
#        RETVAL=$?
#        ;;
  *)
        echo $"Usage: $prog {networketh0|networketh1|ethtooleth0|ethtooleth1}"
        exit 1
esac

exit $RETVAL
