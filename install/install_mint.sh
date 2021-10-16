#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/MintNetwork/mint-blockchain
cd mint-blockchain
sh install.sh
. ./activate
mint init
mint show -a 60.186.188.77:29222
mint show -a 81.38.61.149:29222
mint show -a 93.56.110.119:29222
mint show -a 95.149.10.197:29222