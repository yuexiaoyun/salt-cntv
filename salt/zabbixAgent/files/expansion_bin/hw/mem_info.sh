#!/bin/sh
#/usr/sbin/dmidecode -t memory |grep 'Error Correction Type'
#/usr/sbin/dmidecode -t memory |grep 'Maximum Capacity' 
#echo -e  `/usr/sbin/dmidecode -t memory |grep 'Size'|sed  "s/$/||\n/g"` "\n"`/usr/sbin/dmidecode -t memory |grep 'Type' |grep -v 'Type Detail'|grep -v 'Error Correction Type'|sed  "s/$/||\n/g"`"\n"`/usr/sbin/dmidecode -t memory |grep 'Speed'|sed  "s/$/||\n/g"`
memsize(){
#echo -e size `/usr/sbin/dmidecode -t memory |grep 'Size'|sed  "s/No Module Installed$/no\n/g" |sed 's/Size//g'`
echo -e `/usr/sbin/dmidecode -t memory |grep 'Size'|awk '{print $2}'|sed  's/No/N/g'|awk '{printf("%s:",$0/1024)}'|sed 's/:$//g'`\(G\)
}
memtype(){
#echo -e `/usr/sbin/dmidecode -t memory |grep 'Type'|grep -v 'Type Detail'|grep -v 'Error Correction Type'|sed "s/Unknown$/N/g" |sed 's/Type//g'|awk '{printf("%s",$0)}'`
/usr/sbin/dmidecode -t memory |grep 'Type'|grep -v 'Type Detail'|grep -v 'Error Correction Type'|awk '{print $2}'|tail -n1
}
memSpeed(){
#echo -e Speed `/usr/sbin/dmidecode -t memory |grep 'Speed'|awk '{print $2}'|sed  "s/Unknown$/N/g" |sed 's/^/:/g'|sed 's/([0-9].[0-9] ns)//g'|sed 's/ //g'|sed 's/MHz//g'`MHz 
echo -en `/usr/sbin/dmidecode -t memory |grep 'Speed'|awk '{print $2}'|sed  "s/Unknown$/N/g" |sed 's/^/:/g'|sed 's/([0-9].[0-9] ns)//g'|sed 's/ //g'|sed 's/MHz//g'|awk '{printf("%s",$0)}'|sed 's/667/6/g'|sed s/1333/1/g|sed 's/^://g'`\(MHz\) 
}
memdmidecode(){
/usr/sbin/dmidecode -t memory |grep 'Error Correction Type'
/usr/sbin/dmidecode -t memory |grep 'Maximum Capacity'
}
case "$1" in
  memdmidecode)
       memdmidecode 
        ;;
  memSpeed)
        memSpeed 
        ;;
  memtype)
        memtype 
        ;;
  memsize)
        memsize 
        ;;
  *)
        echo $"Usage: $prog {memdmidecode|memSpeed|memtype|memsize}"
        exit 1
esac

exit $RETVAL
