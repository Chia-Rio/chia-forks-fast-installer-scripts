#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://bitbucket.org/Socks-Network/socks-blockchain.git
cd socks-blockchain
sh install.sh
. ./activate
socks init