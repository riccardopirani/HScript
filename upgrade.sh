#!/bin/bash

sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock

sudo apt-get update 
sudo apt-get dist-upgrade -f
sudo do-release-upgrade

sudo apt autoremove -y

