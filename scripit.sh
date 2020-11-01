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

#Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mCHROME INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#BraveBrowser
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mBRAVE INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
sudo apt install ./slack-desktop-*.deb -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mSLACK INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#VS-Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/ 
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code # or code-insiders -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mVS-CODE INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Extensões vs-code
# code --list-extensions | xargs -L 1 echo code --install-extension 
code --install-extension abusaidm.html-snippets
code --install-extension adpyke.codesnap
code --install-extension ajhyndman.jslint
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension dbaeumer.jshint
code --install-extension ecmel.vscode-html-css
code --install-extension EditorConfig.EditorConfig
code --install-extension FallenMax.mithril-emmet
code --install-extension formulahendry.code-runner
code --install-extension foxundermoon.shell-format
code --install-extension HookyQR.beautify
code --install-extension kisstkondoros.vscode-codemetrics
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.LiveServer
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension vscode-icons-team.vscode-icons
code --install-extension xabikos.JavaScriptSnippets
md@md-To-be-filled-by-O-E-M:~$ ^C


echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mEXTENSÕES DO VS-CODE INSTALADAS\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#VLC
sudo apt install vlc -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mVLC INSTALADO\e[00m"
echo "---------------------------------------------------------------------------"
sleep 4 

#Spotify
curl -s https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32mSPOTIFY INSTALADO\e[00m"
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

#GnomeShell Themes and Icons
sudo apt install gnome-tweak-tool -y
git clone https://github.com/marciodanielll/iconsThemes.git
git clone https://github.com/marciodanielll/gnomeShellThemes.git
mkdir -p ~/.icons && mkdir -p ~/.themes
cp -r iconsThemes/* ~/.icons
cp -r gnomeShellThemes/* ~/.themes
echo "---------------------------------------------------------------------------"
echo -e "-> \e[01;32m.ICONS E .THEMES INSTALADOS\e[00m"
echo "---------------------------------------------------------------------------"




