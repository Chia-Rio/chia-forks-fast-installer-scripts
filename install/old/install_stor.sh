#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/Stor-Network/stor-blockchain
cd stor-blockchain
sh install.sh
. ./activate
stor init
stor show -a 104.129.189.130:8668
stor show -a 36.251.97.15:8668
stor show -a 70.77.80.35:8668
