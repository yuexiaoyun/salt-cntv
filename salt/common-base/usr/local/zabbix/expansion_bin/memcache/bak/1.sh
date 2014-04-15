#! /bin/sh                                                     
awk '{a[NR]=$2;b[NR]=$1;s+=$1}END{for (j=1;j<=NR;j++) printf "%s %.2f%\n",a[j],b[j]*100/s}' 5.txt 
NR  rom
