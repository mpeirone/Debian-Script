#!/bin/bash

#root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

sudo apt install glusterfs-server -y
sudo systemctl start glusterd
sudo systemctl enable glusterd
