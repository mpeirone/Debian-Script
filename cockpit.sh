#!/bin/bash

#root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

#thanks to https://cockpit-project.org/running#debian

echo 'deb http://deb.debian.org/debian buster-backports main' > /etc/apt/sources.list.d/backports.list
apt update

apt install -t buster-backports cockpit -y
