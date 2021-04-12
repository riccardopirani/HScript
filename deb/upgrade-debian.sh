#!/bin/bash

#script perform debian system by riccardopirani.altervista.org
clear
clear
#install favourite package
sudo apt-get install  -f fish gcc
#update docker images#
#docker images |grep -v REPOSITORY|awk '{print $1}'|xargs -L1 docker pull 
#remove lock apt
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
#upgrade repo and software
sudo apt-get update 
sudo apt-get dist-upgrade -f
sudo do-release-upgrade
#remove unused package
sudo apt autoremove -y
sudo apt autoremove
sudo apt autoclean
#avvio del file di riparazione
sh repair.sh
#avvio del file di riparazione di gitlab
sh  repair-gitlab.sh
