#!/bin/bash

if [ -z "$2" ]; then
  echo "er: No argument!!!"
  echo "Ex: sh $0 <Path to folder Chia or Forks> <Executable file name> <Temp folder path Chia or Forks> <Farmer IP:PORT>"
  echo "Ex: sh $0 /user/share/chia/chia-blockchain chia /home/toor/.chia"
  exit
fi
echo "-----------------------"
echo "----- Chia.Moscow -----"
echo "-----------------------"
echo "---- IMPORT CONFIG ----"
echo "-----------------------"
echo "----\033[00;32m $2 \033[0m----"
echo "-------------------"

PATH_CHIA=$1
EXEC_FILE=$2
TEMP_PATH_CHIA=$3
FARMER_HOST=$4


cd $PATH_CHIA
. ./activate

#$EXEC_FILE db upgrade
$EXEC_FILE configure --enable-upnp false
$EXEC_FILE configure --log-level INFO
#$EXEC_FILE configure --set-farmer-peer $FARMER_HOST
$EXEC_FILE init --fix-ssl-permissions
echo "deactivate"
