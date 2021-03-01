#!/bin/bash
#the program will accept params from the cmd line program
read -p "Enter a number : " number

function amstrong
{
#the number will be used for checking, while num will be used for operations
num=$number
zero=0
sum=0
div=10
while [ $num -gt $zero ]
do
#extration of last digit and powering !
last=$(($num%$div))
last_power=$(($last*$last*$last))
sum=$(($sum+$last_power))
num=$(($num/$div))
done
#checking whether it is amstrong or not !
if [ $number -eq $sum ]
then
echo 'Amstrong'
else
echo 'Not Amstrong !'
fi
}
result=`amstrong $number`
echo $result
