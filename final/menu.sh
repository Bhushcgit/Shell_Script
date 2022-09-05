#! /bin/sh


while true
do
clear
echo "====================="
echo "Menu"
echo "====================="

echo "1\033[1;35m USER \033[0m:"
echo "2\033[1;35m Last Reboot \033[0m :"
echo "3\033[1;35m Network details \033[0m:"
echo "4\033[1;35m diskspace usages \033[0m :"
echo "5\033[1;35m openports \033[0m :"
echo "6\033[1;35m OS name \033[0m:"
echo "7\033[1;35m hostname \033[0m:"
echo "8\033[1;35m running process \033[0m:"
echo "9\033[1;35m free_ram \033[0m:"
echo "10\033[1;35m last login \033[0m:"
echo "11\033[1;35m list of process\033[0m :"
echo "12\033[1;35m git version\033[0m  :"
echo "13\033[1;35m find highest size file from current Dir \033[0m:  "
echo "14\033[1;35m find the ip of this machine \033[0m:"
echo "15\033[1;35m list the files\033[0m :"
echo "16\033[1;35m disk usages by file\033[0m :"
echo "17\033[1;35m current working dir \033[0m:"

echo "Enter q exit"

echo   "Enter the selection \c"

read ans

case "$ans" in


1)echo "login Username is \n "
 who  ;;
2)echo "\n Last reboot time \n"
uptime;;
3)echo "\n network details\n"
 netstat |head -10 ;;
4) echo "\n disk free \n"
df -kh ;;
5)echo "\n find open ports \n"
sudo lsof -i -P -n |grep -i listen ;;
6)echo "\n OS name \n"
uname -a ;;
7)echo " hostname \n"
hostname ;;
8)echo "\n process running \n"
p |head -10;;
9)echo "\n free ram \n"
free -m;;
10)echo "\n last five login user \n"
last |head -5 ;;
11)echo "\n process running for particular users \n"
ps -ef $user |head -5;;
12)echo " git version \n"
 git --version ;; 
13)echo "find file more than 2Kb\n"
find . -size +2k |head -5 ;;
14)echo " \n ip of m/c \n"
hostname -i ;;
15)echo "Listing of files"
ls -lrt ;;
16)echo "disk usages by files and dir \n"
du -sh *|sort -nr ;;
17)echo "Present working dir is \n"
pwd ;;

q) exit ;;

esac

echo "\033[1;32m Enter \033[0m return  continue \c"
read input

done
