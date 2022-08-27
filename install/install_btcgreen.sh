#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
git clone https://github.com/BTCgreen-Network/btcgreen-blockchain
cd btcgreen-blockchain
sh install.sh
. ./activate
btcgreen init
btcgreen show -a 151.65.156.167:9282
btcgreen show -a 213.14.189.219:9282
btcgreen show -a 213.195.114.147:9282
btcgreen show -a 73.197.252.99:9282
btcgreen show -a 78.42.119.106:9282