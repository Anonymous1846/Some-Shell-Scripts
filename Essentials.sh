#!/bin/bash

#The shell script to install essential tools and commands for ubuntu and debian based systems(eg:pop_os,ubuntu etc)

#checking for super user privilages !
if (( $EUID!=0 ));
then
	echo "Needs Super User Privilages !"
	exit
fi

#update packages and upgrade them !
apt update 
apt upgrade -y

#text editors !
echo "Installing Text Editors !"
apt install vim
apt install nano

#programming 
apt install python3
apt install python
apt install gcc 
apt install gcc-multilib
apt install python-pip	#python 2
apt install python3-pip	#python 3

#install golang
wget https://golang.org/dl/go1.17.1.linux-amd64.tar.gz -P ~/Downloads/
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.1.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile

#misc tools
apt install neofetch

#adding netfetch to .bashrc
echo "Adding neofetch to .bashrc"
echo neofetch >> ~/.bashrc

apt install git
apt install exiftool
apt install net-tools
apt install binutils
apt install nmap
apt install -y binwalk
