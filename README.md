# Debian-Script
Personal debian script to install things

Add User to Group
```
sudo usermod -a -G group1,group2 username
```

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
