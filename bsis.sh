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
figlet "$HOSTNAME Information" 
echo -e "Username: $USER\nUptime: $(uptime)"
ifconfig 
du -h 
free
