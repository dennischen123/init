#!/bin/sh

for file in *.c; do	

	#check if header exists in file
	exists=`cat $file | grep marvin@42.fr`
	size=${#exists}
	if [ $size -eq 80 ]
	then
		echo Header already exist in $file
	else
		vim -c ":Stdheader" -c "wq" $file
		echo Header added in $file
	fi

done
