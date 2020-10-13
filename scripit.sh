#!/bin/bash

#UBUNTU
sudo clear
sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && sudo apt -f install
sudo apt install git -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mUPDATE E UPGRADE FINALIZADOS\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mZOOM INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Node, NPM e NVM
sudo apt install nodejs -y
sudo apt install npm -y
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
source ~/.profile
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mNODE, NPMe NVM INSTALDOS\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#DISCORD
sudo snap install discord --classic 
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mDISCORD INSTALADO por SNAP\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 




