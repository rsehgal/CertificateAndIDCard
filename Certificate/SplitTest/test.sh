#!/bin/bash
IFS=","
count=0
csv=$1
filename=$2
while read uname fname status fullname affil
#while read sno uname email categ title  authrsF authrsR fname status type dept inst remline
#while read line
do
	count=`expr $count + 1`
	#echo "Line is : $line"
	#echo "Uname : "$uname
	#echo "FileName : "$fname
	echo "cert_"$uname"_"$fname
	pdfseparate -f $count -l $count $filename $uname"_"$fname
done < $csv
