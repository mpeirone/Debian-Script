#!/bin/bash

#root check
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

apt-get update
apt-get install -y rtl-sdr

echo 'blacklist dvb_usb_rtl28xxu' > /etc/modprobe.d/blacklist-rtl.conf
echo 'blacklist rtl2832' > /etc/modprobe.d/blacklist-rtl.conf
echo 'blacklist rtl2830' > /etc/modprobe.d/blacklist-rtl.conf
