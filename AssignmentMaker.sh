#!/bin/bash

#The program takes in 3 arguments, namely the location of the assignment,name of Directory  and the number of questions !

if [ $# -eq 3 ]
then
#check if the path exists !
if [ -d $1 ]
then
cd $1 && mkdir $2 && cd $2
for (( j=1; j<=$3; j++ ))
do
touch "Question$j.sh" && chmod +x "Question$j.sh"
done
#handling the unwanted error !
else
echo "Provided an Invalid Directory !"
fi
else
echo "Invalid Number of Arguements, Expected 3, Got Only "$#
echo "Command Usage : ./AssignmentMaker.sh <Path> <Directory-Name> <Number of Questions>"
fi
