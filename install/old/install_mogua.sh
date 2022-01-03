#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/mogua-network/mogua-blockchain
cd mogua-blockchain
sh install.sh
. ./activate
mogua init
mogua show -a 125.94.202.14:6999
mogua show -a 178.239.222.228:6999
mogua show -a 179.105.241.190:6999
mogua show -a 93.91.157.22:6999
mogua show -a 98.211.145.120:6999