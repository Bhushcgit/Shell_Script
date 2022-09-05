#!/bin/bash

#PS3='Choose an option(Continent) : '

#select opt in `ls ~/bhushan/script/practical/zoneinfo`
#do

#select country in `grep -w $opt  ~/bhushan/script/final/countrycode.txt|awk '{print $3}' ~/bhushan/script/final/countrycode.txt|uniq -u |sort `
#select country in `grep -w $opt ~/bhushan/script/final/gcountrycode.txt |awk '{print $1}' ~/bhushan/final/countrycode.txt |uniq -u |sort `

#do

echo "Enter the Continent : "

#select opt in `ls ~/bhushan/script/practical/zoneinfo `
select opt in `ls /usr/share/zoneinfo |head -7`
#ls ~/bhushan/script/practical/zoneinfo ;
do
#read opt

echo "Enter the country : "

#country=`grep $opt ~/bhushan/script/final/gcountrycode.txt |awk '{print $1}'|uniq |sort`

echo $country

#read country

#select country in `grep $country ~/bhushan/script/final/gcountrycode.txt |awk '{print $2}'|uniq |sort`

select country in `grep $opt ~/bhushan/script/final/countrycode.txt |awk '{print $1}'|uniq |sort`
do

echo "Enter the city : "

#city=`grep $country ~/bhushan/script/final/gcountrycode.txt |awk '{print $2}'|uniq |sort`
#echo $city

select city in `grep $country ~/bhushan/script/final/countrycode.txt |awk '{print $2}'|uniq |sort`
do

zdump /usr/share/zoneinfo/$city
zdump /usr/share/zoneinfo/Asia/Kolkata
#timedatectl list-timezones |grep Asia/Kolkata

done
done
done

