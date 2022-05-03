# update_pi
Script to Update and Upgrade Raspberry Pi on Boot

#### Info
- (update) give the **install_update_pi.sh** script execution permissions and run with sudo to install the update_pi service
- change **update_pi.service.txt** file to **update_pi.service** and use it to create service to run at boot using systemd

#### Services in Linux FYI
- create a <name>.service file in /etc/systemd/system/ and make sure the file is +rwx; also make sure execution file is +rwx (sudo chmod +rwx <file>)
- file paths must be absolute and specific to the host machine's file system
- `sudo systemctl enable <name>` to enable the service
- start the service without rebooting with `sudo systemctl start <name>`
- can stop with `sudo systemctl stop <name>`
- can disable with `sudo systemctl disable <name>`
- Restart=always will continue to start the program after it exits; use on-failure to restart it only on failure




