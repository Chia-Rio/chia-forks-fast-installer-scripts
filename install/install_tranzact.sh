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
tranzact show -a 83.11.197.175:8655
tranzact show -a 83.130.137.231:8655
tranzact show -a 93.190.241.59:8655