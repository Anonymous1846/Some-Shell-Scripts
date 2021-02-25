#!/bin/bash

echo 'Enter a number ?'
read number

flag=0
if [ $number -eq 0 ] || [ $number -eq 1 ]
then
echo 'They are neither prime nor composite '
else
for (( c=2; c<=$(($number/2)); c++ ))
do
if [ $(($number % $c)) -eq 0 ]
then
flag=$(( $flag+1 ))
fi
done

if [ $flag -eq 0 ]
then
echo 'It is Prime'
else
echo 'It is Composite'
fi
fi
