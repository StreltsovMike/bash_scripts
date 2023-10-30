#!/bin/bash
echo "how old are you?"
read age
if [[ $age -ge 0 ]] && [[ $age -lt 12 ]]; then
	echo "you are child"
    elif [[ $age -ge 12 ]] && [[ $age -lt 18 ]]; then
		echo "you are teenager"
	elif [[ $age -ge 18 ]]; then
		echo "you are adult"
	else 
		echo "you are dead"
fi
