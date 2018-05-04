#File di aggiornamento Ubuntu 

#risoluzione bug installazione non riuscita
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock

#aggiorno repo e software
sudo apt-get update 
sudo apt-get dist-upgrade -f
sudo do-release-upgrade

#rimozione pacchetti inutilizzati
sudo apt autoremove -y

#Invio email 
echo "Upgrade Debian" | mail -s "Upgrade" riccardo@pirani.it

#riavvio tutto
sudo reboot
