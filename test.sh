#!/bin/bash

echo "hello, Mike" > myfile
exec 1>> myfile
echo  "hello, Alex"
echo "gggg2"

sed /scripts/myfile.txt




