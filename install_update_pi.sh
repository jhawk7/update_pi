#!/bin/sh

echo "setting up update_pi as service.."
touch last_update.txt
sudo chmod 755 last_update.txt
cp update_pi.service.txt update_pi.service
sudo chmod +rwx update_pi.service
sudo chmod +x update_pi.sh
sudo mv update_pi.service /etc/systemd/system/
echo "enabling update_pi service.."
sudo systemctl enable update_pi
echo "fin"

