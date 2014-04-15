#!/bin/sh
#echo physics CPU Sum : 	`cat /proc/cpuinfo | grep 'physical id' | sort | uniq | wc -l`
#cat /proc/cpuinfo |grep 'model name' |tail -n1
#echo Logic  CPU Sum: `cat /proc/cpuinfo | grep "processor"| wc -l`
#echo core sum / physics CPU  : `cat /proc/cpuinfo | grep "cpu cores" |wc -l`
#cat /proc/cpuinfo |grep 'cpu MHz' |tail -n1
#cat /proc/cpuinfo |grep 'cache size'|tail -n1
#echo Logic  CPU Sum / physics CPU : `cat /proc/cpuinfo |grep 'siblings' |tail -n1`
#coresum=`cat /proc/cpuinfo |grep "core id" |wc -l`
#LogicCPU=`cat /proc/cpuinfo |grep "core id"|sort -u |wc -l`
#echo $coresum $LogicCPU |awk '{printf "%d\n" ,$1/$2}' |grep -q "1" && echo  'Hyper-Threading: No' || echo 'Hyper-Threading: Yes' 
##############################
cpuinfo1(){
echo physics CPU Sum :  `cat /proc/cpuinfo | grep 'physical id' | sort | uniq | wc -l`
cat /proc/cpuinfo |grep 'model name' |tail -n1
}
cpuinfo2(){
echo Logic  CPU Sum: `cat /proc/cpuinfo | grep "processor"| wc -l`
echo core sum / physics CPU  : `cat /proc/cpuinfo | grep "cpu cores" |wc -l`
}
cpuinfo3(){
cat /proc/cpuinfo |grep 'cpu MHz' |tail -n1
cat /proc/cpuinfo |grep 'cache size'|tail -n1
#echo Logic  CPU Sum / physics CPU : `cat /proc/cpuinfo |grep 'siblings' |tail -n1`
}

cpuinfo4(){
echo Logic  CPU Sum / physics CPU : `cat /proc/cpuinfo |grep 'siblings' |tail -n1`
}
cpuinfo5(){
coresum=`cat /proc/cpuinfo |grep "core id" |wc -l`
LogicCPU=`cat /proc/cpuinfo |grep "core id"|sort -u |wc -l`
echo $coresum $LogicCPU |awk '{printf "%d\n" ,$1/$2}' |grep -q "1" && echo  'Hyper-Threading: No' || echo 'Hyper-Threading: Yes' 
}
case "$1" in
  cpuinfo1)
       cpuinfo1 
        ;;
  cpuinfo2)
        cpuinfo2 
        ;;
  cpuinfo4)
        cpuinfo4 
        ;;
  cpuinfo3)
        cpuinfo3 
        ;;
  cpuinfo5)
        cpuinfo5
        ;;
  *)
        echo $"Usage: $prog {cpuinfo1|cpuinfo2|cpuinfo3|cpuinfo4|cpuinfo5}"
        exit 1
esac

exit $RETVAL
