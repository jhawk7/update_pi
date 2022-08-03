# update_pi
Script to Update and Upgrade Raspberry Pi on Boot

#### Info
- (Option 1 - Unix cronjob **prefered**) give root permissions to execute update_pi.sh and create a linux cronjob with `crontab -e`
- (Option 2 - System background service ) give the **install_update_pi.sh** script execution permissions and run with sudo to install the update_pi service. **Remove reboot line in update_pi.sh if using this option, or else boot loop**

#### Services in Linux FYI
- create a <name>.service file in /etc/systemd/system/ and make sure the file is +rwx; also make sure execution file is +rwx (sudo chmod +rwx <file>)
- file paths must be absolute and specific to the host machine's file system
- `sudo systemctl enable <name>` to enable the service
- start the service without rebooting with `sudo systemctl start <name>`
- can stop with `sudo systemctl stop <name>`
- Restart=always will continue to start the program after it exits; use on-failure to restart it only on failure




