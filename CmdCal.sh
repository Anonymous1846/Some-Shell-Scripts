#!/bin/bash
: '
CmdCal is a simple shell script which takes three arguements namely the first
number, second number and a arithemetic opertaion,and we finally get a
answer which is the result of the mathematical operation.

if the number of commands are three then we have to check if the first two 
are number and final one is a mathematical symbol
if a certain condition is true then we excute it using the then keyword and 
the termination of the conditional is marked by fi keyword'
if (($#==3))
then
	if [ $3 == "+" ]
	then 
		echo "The sum of the numbers is $(($1+$2))"
	elif [ $3 == "-" ]
	then 
		echo "The difference between the numbers is $(($1-$2))"
	elif [ $3 == "/" ]
	then 
		echo "The Quotient is $(($1/$2))"
	elif [ $3 == "x" ]
	then
		echo "The product is $(($1*$2))"
	elif [ $3 == "%" ]
	then 
		echo "The remainder after division is $(($1%$2))"
	else
		echo "Bad Operator !"
	fi
else
	echo "Failed ! Expected Three Arguments $# given !"
#end of the condition !
fi

