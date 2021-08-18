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

PATH_CHIA=$1
EXEC_FILE=$2
TEMP_PATH_CHIA=$3
FARMER_HOST=$4
TEMP_PATH_CHIA_SSL="$TEMP_PATH_CHIA/mainnet/config/ssl/ca/"
MYSRC=$(pwd)
DIR_CHIA=$(echo "$TEMP_PATH_CHIA_SSL" | awk -F/ '{print $NF}'| cut -c 2-)
PATH_SSL_IMPORT="$MYSRC/ssl/$DIR_CHIA"

RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'

cd $PATH_CHIA
. ./activate


$EXEC_FILE configure --enable-upnp false
$EXEC_FILE configure --log-level INFO
#$EXEC_FILE configure --set-farmer-peer $FARMER_HOST
echo "deactivate"
