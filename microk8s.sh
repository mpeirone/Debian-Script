#!/bin/bash

#root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

#thanks to https://microk8s.io/
apt update
apt install snapd -yy
echo 'export PATH="$PATH:/snap/bin"'  >> ~/.bashrc
snap install microk8s --classic

echo 'now run microk8s_cust.sh and reboot'

