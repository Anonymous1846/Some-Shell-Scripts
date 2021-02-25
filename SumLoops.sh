#!/bin/sh
echo 'Enter the number ?'
a=1
sum=0
read counter 
while [ $a -lt $(($counter+1)) ]
do
   sum=$(( $sum + $a))
   a=$(($a+1))
done
echo $sum
