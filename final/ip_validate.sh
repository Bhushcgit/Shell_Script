#!/bin/bash

echo "========================================================="
echo -e "||#\033[1;35m This Script is used to check IP \033[0m #||"
echo "========================================================="


IP1=${1:-1.2.3.4}


p=`echo $IP1 | tr '.' '\n' | wc -l`
#echo $p
IFS=.
set $IP1
#echo $IP1
a=$1
b=$2
c=$3
d=$4

if [[ $p == 4 &&  $a -lt 256 && $b -lt 256 && $c -lt 256 && $d -lt 256 ]]
then
        echo -e "\033[1;32m $IP1 \n This is Valid IP  \033[0m "

else
        echo -e " \033[1;33m $IP1 \n This is not a valid IP,please enter valid IP\033[0m"
fi
