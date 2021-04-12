#!/bin/bash

#nextcloud repair script by riccardopirani.altervista.org

#nextcloud directory
dir="/var/www/html/nextcloud"

#move into dir
cd $dir
sudo -u apache php occ maintenance:mode --off
sudo -u apache  php occ files:scan --all
sudo -u apache php occ maintenance:repair
sudo -u apache php occ maintenance:mode --off
#remove update folder of nextcloud
rm -r data/updater-*/
cd
