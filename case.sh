#!/bin/bash
echo "phone brend:"
read brand
case $brand in
	samsung) 
        echo "sale for $brand - 10%";;
    apple) 
        echo "sale for $brand - 5%";;
    xiaomi)
        echo "sale for $brand - 3%";;
    *) 
        echo "no sale for $brand";;
esac