#!/bin/bash
echo "hello, Mike" > ~/scripts/myfile.txt
exec 1>> ~/scripts/myfile.txt
echo  "hello, Alex"
echo "gggg2"
1>&-

exec 0< ~/scripts/myfile.txt
count=1
while read line;
do
echo "Line #$count: $line"
count=$(( $count + 1 ))
done
#exec 0<&-