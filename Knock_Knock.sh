#!/bin/bash

#The shell script is used to brute force the port knocking sequence for three ports
limit=4 #the number of expected arguements

if [ $# == $limit ]
then

echo $1
echo $2
echo $3
echo $4

nmap -nP $1 -p $2
nmap -nP $1 -p $3
nmap -nP $1 -p $4

echo "Sequence Knocking Complete !"
else
echo "Something went wrong !"
fi 
