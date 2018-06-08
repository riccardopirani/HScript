#!/bin/bash

#script perform debian system by riccardopirani.altervista.org

#install favourite package
sudo apt-get install  -f fish gcc
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