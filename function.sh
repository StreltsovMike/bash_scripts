#!/bin/bash
list_files() {
	cd ~/scripts
	ls
}

sort() {

	local array
	array=("$@")
	echo "source array - ${array[@]}" 

for (( i = 0 ; i <= ${#array[@]} ; i++ )); do
	for (( j = 0; j <= ${#array[@]} ; j++ )); do
		if [[ ${array[$j]} -lt ${array[$j+1]} ]]; then
			operate=${array[$j+1]}
			array[$j+1]=${array[$j]}
			array[$j]=$operate
		fi
	done
done
echo "sorted array - ${array[@]}"

}


array=(4 1 55 2 2 13 1)
sort ${array[*]}

