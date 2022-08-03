#!/bin/sh

# script to update raspberry pi on startup

echo "updating packages..."
sudo apt-get update
echo "upgrading packages..."
sudo apt-get upgrade -y
ts=$(date +"%Y-%m-%d %T")
sudo echo "Last updated at: $ts" > /home/pi/update_pi/last_update.txt
echo "fin.."
#remove the lines below if running as service to avoid boot loop
echo "rebooting.."
sudo shutdown -r now
