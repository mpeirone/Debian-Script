#!/bin/bash

#not root check
if [[ $EUID -eq 0 ]]; then
   echo "This script must be run as not root" 
   exit 1
fi

echo "alias kubectl='microk8s kubectl'"  >> ~/.bash_aliases
sudo usermod -a -G microk8s $(whoami)

echo "now reboot"
