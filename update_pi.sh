#!/bin/sh

# script to update raspberry pi 

echo "updating packages..."
sudo apt update
echo "upgrading packages..."
sudo apt full-upgrade -y
ts=$(date +"%Y-%m-%d %T")
sudo echo "Last updated at: $ts" > /home/pi/update_pi/last_update.txt
sudo echo "Last updated at: $ts"
echo "fin.."
#remove the lines below if running as service to avoid boot loop
echo "rebooting.."
sudo shutdown -r now
