#!/bin/bash

echo 'Enter the first number '
read one
echo 'Enter the second number'
read two
echo 'Enter the third number'
read three

if [ $one -gt $two ]
then
if [ $three -gt $one ]
then
echo $three' is the largest '
else
echo $one' is the largest'
fi
else
if [ $two -gt $three ]
then
echo $two' is the largest '
else
echo $three' is the largest '
fi
fi
