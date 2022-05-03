#!/bin/sh
# Author: 
# UpDate: 03-05-2022
# Description: 

# script to update raspberry pi on startup
# runs as startup via systemd

# Color variables 

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

# Time variable

RIGHT_NOW=$(date +"%x %r %z")
TIME_STAMP="Updated $RIGHT_NOW by $USER"


# Update Upgrade Cleaning

echo -e "\n${GREEN}Starting Update && Upgrade.${NOCOLOR}";sleep 1
echo
sudo dpkg --configure -a
sudo apt-get install -f
sudo apt-get --fix-broken install -y
sudo apt update --fix-missing
sudo apt-get upgrade -y
sudo apt full-upgrade -y
sudo apt-get dist-upgrade -y
echo
echo -e "${GREEN}Update and Upgrade finished.${NOCOLOR}";sleep 1

# System cleaning
echo -e "\n${GREEN}Starting Cleaning.${NOCOLOR}";sleep 1
echo
sudo apt-get --purge autoremove
sudo apt-get autoclean
sudo apt-get clean
echo
echo -e "\n${GREEN}Cleaning finished.${NOCOLOR}";sleep 1
echo
echo -e "${GREEN}$TIME_STAMP ${NOCOLOR}";sleep 1
echo
echo -e "${GREEN}Be light, be Yourself...${NOCOLOR}"
echo
echo

ts=$(date +"%Y-%m-%d %T")
sudo echo -e "${GREEN}Last updated at: $ts${NOCOLOR}" > /home/pi/update_pi/last_update.txt
echo "fin.."
