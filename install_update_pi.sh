#!/bin/sh

# Color variables 

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

# Systemd

echo "\n${GREEN}setting up update_pi as service..${NOCOLOR}"
cp update_pi.service.txt update_pi.service
sudo chmod +rwx update_pi.service
sudo chmod +x update_pi.sh
sudo mv update_pi.service /etc/systemd/system/
echo "\n${GREEN}enabling update_pi service..${NOCOLOR}"
sudo systemctl enable update_pi
echo "\n${GREEN}fin${NOCOLOR}\n"

