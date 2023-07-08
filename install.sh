#!/bin/bash
username=$(whoami)
mkdir /home/$username/Downloads/Passkey_PasswordManager
sudo git clone https://github.com/akashbis2021/Passkey_PasswordManager.git  /home/$username/Downloads/Passkey_PasswordManager
sudo mv /home/$username/Downloads/Passkey_PasswordManager/.passkey.sh  /var/log
sudo chown -R $username:$username /var/log/.passkey.sh
sudo chmod +x /var/log/.passkey.sh
clear
setalias='alias passkey="/var/log/.passkey.sh"'
echo $setalias >> /home/$username/.bashrc
sudo rm -r /home/$username/Downloads/Passkey_PasswordManager
echo "Installing done"

