#!/bin/bash

#root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

#thanks to https://cockpit-project.org/running#debian

echo 'deb http://deb.debian.org/debian buster-backports main contrib non-free' > /etc/apt/sources.list.d/backports.list
apt update

apt install -t buster-backports cockpit -y
#enable network interfaces management using https://wiki.debian.org/it/NetworkManager#Abilitare_la_gestione_delle_interfacce
