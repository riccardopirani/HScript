#!/bin/bash

#link=https://dl.ubnt.com/unifi/5.6.36/unifi_sysvinit_all.deb
#Install programs and update
sudo apt-get install wget nano openssh-server
#Move into temporary directory
cd /tmp
#Download file
#wget $link
echo 'deb http://www.ubnt.com/downloads/unifi/debian stable ubiquiti' | 
sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 
06E85760C0A52C50 
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
#Unifi Controller Install
sudo apt-get install unifi
sudo apt-get install -f
sudo apt-get autoremove

