#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/Equality-Network/equality-blockchain.git
cd equality-blockchain
sh install.sh
. ./activate
equality init