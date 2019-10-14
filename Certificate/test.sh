#!/bin/bash
IFS=","
count=0
while read uname fname remline
#while read line
do
	count=`expr $count + 1`
	#echo "Line is : $line"
	#echo "Uname : "$uname
	#echo "FileName : "$fname
	echo $uname"_"$fname
	pdfseparate -f $count -l $count cert2.pdf $uname"_"$fname
done < test.txt
