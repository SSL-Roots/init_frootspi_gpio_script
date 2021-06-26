#!/bin/bash -e

cd $(dirname $0)/
sudo cp /boot/firmware/usercfg.txt /boot/firmware/usercfg-backup.txt
sudo cp usercfg.txt /boot/firmware/usercfg.txt

echo "設定を反映するため再起動してください"
