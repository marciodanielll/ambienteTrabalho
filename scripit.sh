#!/bin/bash

sudo clear
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt -f install
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mUPDAT E UPGRADE FINALIZADOS\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Git
sudo apt install git -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mGIT INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#GnomeShell Themes and Icons
sudo apt install gnome-tweak-tool -y
git clone https://github.com/daniruiz/flat-remix
git clone https://github.com/daniruiz/flat-remix-gtk
mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32m.ICONS, TWEAK e THEMES INSTALADOS\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Blueman-Manager Bluetooth
sudo apt-get install bluetooth bluez bluez-tools rfkill -y
sudo apt-get install blueman -y && blueman-managerecho "---------------------------------------------------------------------------"
echo -e "-> \e[01;32m. BLUEMAN-MENAGER INSTALAD\e[00m"
echo "---------------------------------------------------------------------------"



