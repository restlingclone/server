#!/bin/bash

clear
read -p 'Eneter your birth date [dd/mm/yyyy] : ' dob
by=$(echo $dob | cut -d "/" -f3)
cy=$(date +%Y)
age=`expr $cy - $by`

echo "You are $age years old ."
if [ $age -ge 60 ]; then
	echo "You are senior citizen."
	elif [ $age -gt 25 -a $age -lt 60 ]; then
       		echo "You are an Adult."
	elif [ $age -gt 19 -o $age -lt 25 ]; then 
		echo "You are a teenager"
	else
		echo "You are a Kid."
fi		
