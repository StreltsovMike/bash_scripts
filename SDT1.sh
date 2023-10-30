#!/bin/bash
exec 0< myfile.txt
count=1
while read line;
do
echo "Line #$count: $line"
count=$(( $count + 1 ))
done
