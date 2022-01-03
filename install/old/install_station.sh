#!/bin/bash
apt install sudo -y
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
sudo apt-get install git -y
sudo apt install git -y
git clone https://github.com/STATION-I/staicoin-blockchain
cd staicoin-blockchain
sh install.sh
. ./activate
staicoin init
staicoin show -a 95.179.191.67:1999
staicoin show -a 149.28.115.222:1999
staicoin show -a 45.77.230.175:1999