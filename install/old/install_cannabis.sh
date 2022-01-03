#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/CannabisChain/cannabis-blockchain.git
cd cannabis-blockchain
sh install.sh
. ./activate
cannabis init
