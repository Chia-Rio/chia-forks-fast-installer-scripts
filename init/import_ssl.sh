#!/bin/bash

if [ -z "$2" ]; then
  echo "er: No argument!!!"
  echo "Ex: sh $0 <Path to folder Chia or Forks> <Executable file name> <Temp folder path Chia or Forks> "
  echo "Ex: sh $0 /user/share/chia/chia-blockchain chia /home/toor/.chia"
  exit
fi
echo "--------------------"
echo "--- Chia.Moscow ----"
echo "--------------------"
echo "---- IMPORT SSL ----"
echo "--------------------"
echo "----\033[00;32m $2 \033[0m----"
echo "-------------------"

PATH_CHIA=$1
EXEC_FILE=$2
TEMP_PATH_CHIA=$3
TEMP_PATH_CHIA_SSL="$TEMP_PATH_CHIA/mainnet/config/ssl/ca"
TEMP_PATH_CHIA_SSL2="$TEMP_PATH_CHIA/mainnet/config/ssl"
MYSRC=$(pwd)
DIR_CHIA=$(echo "$TEMP_PATH_CHIA" | awk -F/ '{print $NF}'| cut -c 2-)
PATH_SSL_IMPORT="$MYSRC/ssl/$DIR_CHIA/ca"

RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'

cd $PATH_CHIA
. ./activate

#$EXEC_FILE -h
if find "$PATH_SSL_IMPORT" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
	TEMP=1	
else
	echo "${RED}1 SSL files not found $PATH_SSL_IMPORT${RESTORE}"
	echo "${RED}Exit${RESTORE}"
	exit
fi

echo "inf: SSL DELETE $TEMP_PATH_CHIA_SSL"
rm -fr $TEMP_PATH_CHIA_SSL


echo "inf: SSL IMPORT $PATH_SSL_IMPORT"
$EXEC_FILE init -c $PATH_SSL_IMPORT
cp -fr "$PATH_SSL_IMPORT/" "$TEMP_PATH_CHIA_SSL2/"  

if find "$TEMP_PATH_CHIA_SSL" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
    echo "${GREEN}SLL IMPORT SUCCESS${RESTORE}"	
else
	echo "${RED}2 SSL files not found $TEMP_PATH_CHIA_SSL${RESTORE}"	
fi
echo "deactivate"
