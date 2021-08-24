# Debian-Script
Personal debian script to install things

Single Script:
```
wget https://raw.githubusercontent.com/mpeirone/Debian-Script/main/scriptname.sh #
chmod +x scriptname.sh
./scriptname.sh
```

Multiple Script:
```
git clone https://github.com/mpeirone/Debian-Script.git
find ./Debian-Script -type f -iname "*.sh" -exec chmod +x {} \;
cd Debian-Script
./scriptname.sh
```

Add User to Group
```
sudo usermod -a -G group1,group2 username
```
Set static ip:
  edit this file: /etc/network/interfaces
```
auto eth0
iface eth0 inet static
address 192.168.1.200
netmask 255.255.255.0
gateway 192.168.1.1
```

