#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/DogeChia/doge-chia.git
cd doge-chia
sh install.sh
. ./activate
dogechia init
