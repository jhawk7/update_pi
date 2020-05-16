#!/bin/sh

# script to update raspberry pi on startup
# runs as startup via systemd

echo "updating packages..."
sudo apt-get update
echo "upgrading packages..."
sudo apt-get upgrade -y
ts=$(date +"%Y-%m-%d %T")
sudo echo "Last updated at: $ts" > /home/pirate/update_pi/last_update.txt
echo "fin.."
