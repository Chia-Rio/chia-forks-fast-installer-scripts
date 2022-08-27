#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
git clone https://github.com/bpx-network/bpx-blockchain
cd bpx-blockchain
sh install.sh
. ./activate
bpx init
bpx show -a 208.103.163.7:27911
bpx show -a 176.72.178.160:27911
bpx show -a 94.230.151.245:27911
bpx show -a 87.206.27.241:27911
bpx show -a 217.180.204.98:27911
bpx show -a 193.81.223.42:27911
bpx show -a 195.20.138.90:27911
bpx show -a 209.6.10.58:27911
bpx show -a 194.63.128.244:27911
bpx show -a 50.58.111.250:27911
