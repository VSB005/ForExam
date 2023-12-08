#!/bin/bash

while [ true ]
do
	echo "Choose from following choice"
	echo "1.pattern"
	echo "2.logged in user"
	echo "3.terminal number"
	echo "4.Addition of two floating number"
	echo "5.Check number for palindrome"
	echo "0.Exit "
	read choice

case $choice in
0)
	exit 0
	;;
1)
	echo "5 4 3 2 1"
        echo " 5 4 3 2 "
        echo "  5 4 3  "
        echo "   5 4   "
        echo "    5    "
	;;
2)
	echo -n "Logged in user is "
	who -u
	;;
3)
	echo -n "Terminal is "
	tty
	;;
4)
	echo -n "Enter two numbers: "
	read num1 num2

	sum=`echo "$num1 + $num2 " | bc`
	echo "Sum = $sum"
	;;
5)
	echo -n "Enter Number to check for palindrome: "
	read num
        
	echo "Number is palindrome"
	;;
*)
	echo "Invalid choice "
	exit
	;;
esac
done
