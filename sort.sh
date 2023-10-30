
array=(4 1 55 2 2 13 1)
echo "source array - ${array[@]}" 

for i in ${!array[@]}; do
	for j in ${!array[@]}; do
		if [[ j -ne ${#array[@]} ]]; then
		    if [[ ${array[$j]} -lt ${array[$j+1]} ]]; then
			    operate=${array[$j+1]}
			    array[$j+1]=${array[$j]}
			    array[$j]=$operate
			fi
		fi
	done
done
echo "sorted array - ${array[@]}"


array=(4 1 55 2 2 13 1)
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

