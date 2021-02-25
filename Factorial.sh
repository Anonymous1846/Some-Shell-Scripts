#!/bin/bash
#initializing the factorial value to one to multiply with numbers
fact=1
#to keep track of numbers 
counter=1
echo 'Enter a number ?'
read number
#if number equals 0 then 1 otherwise go iteratively !
if [ $number -eq 0 ]
then
echo '1'
else
while [ $counter -lt $(($number+1)) ]
do
fact=$(($fact*$counter))
counter=$(($counter+1))
done
echo $fact
fi
