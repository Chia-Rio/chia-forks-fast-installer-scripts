#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/Tranzact-Network/tranzact-blockchain
cd tranzact-blockchain
sh install.sh
. ./activate
tranzact init