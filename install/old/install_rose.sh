#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/snight1983/chia-rosechain.git
cd chia-rosechain
sh install.sh
. ./activate
chia init
