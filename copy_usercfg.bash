#!/bin/bash -e

os_version=$(lsb_release -r | awk '{print $2}')

cd $(dirname $0)/

if [[ "$os_version" == "20."* ]]; then
    echo "Ubuntu 20.04 detected. Updating /boot/firmware/usercfg.txt"
    sudo cp /boot/firmware/usercfg.txt /boot/firmware/usercfg-backup.txt
    sudo cp usercfg.txt /boot/firmware/usercfg.txt
else
    echo "Ubuntu 22 or 24 detected. Updating /boot/firmware/config.txt"
    sudo cp /boot/firmware/config.txt /boot/firmware/config-backup.txt
    sudo cat usercfg.txt | sudo tee -a /boot/firmware/config.txt > /dev/null
fi
    
echo "Update completed."
echo "設定を反映するため再起動してください"
