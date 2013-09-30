#!/bin/bash

python whv.py > log
if [ $? -ne 0 ];then
	exit
fi
grep "Unfortunately" log

if [ $? -eq 0 ];then
	echo "no palce" >fail.log
	exit	
else
	sleep 20
	python whv.py > log
	grep "Unfortunately" log
	if [ $? -eq 0 ];then
		echo "no palce" >fail.log
        	exit
	else
		python fetion.py
	fi
fi
