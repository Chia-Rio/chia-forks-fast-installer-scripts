#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://gitee.com/ext9/ext9-blockchain.git
cd ext9-blockchain
sh install.sh
. ./activate
chia init
chia show -a 113.88.195.238:58445
chia show -a 79.16.107.187:58445