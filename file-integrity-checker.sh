#!/usr/bin/bash 


#Script for displaying basic system information including hostname, username, uptime, and disk and network usage !
PACKAGE="figlet"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is already installed."
else
    echo "$PACKAGE is not installed. Installing now..."
    apt update 
    apt install figlet
fi

if [ $# -eq 2 ];then
	#logic for integrity 
else
	echo "Exiting two args required....!"
fi
