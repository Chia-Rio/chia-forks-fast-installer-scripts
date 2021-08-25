#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/dream80/lucky-blockchain.git
cd lucky-blockchain
sh install.sh
. ./activate
chia init
chia show -a 2.93.125.22:16664
chia show -a 5.128.0.28:16664