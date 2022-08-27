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
echo "---- EXPORT SSL ----"
echo "--------------------"
echo "----\033[00;32m $2 \033[0m----"
echo "-------------------"

PATH_CHIA=$1
EXEC_FILE=$2
TEMP_PATH_CHIA=$3
TEMP_PATH_CHIA_SSL="$TEMP_PATH_CHIA/mainnet/config/ssl/ca/"
MYSRC=$(pwd)
DIR_CHIA=$(echo "$TEMP_PATH_CHIA" | awk -F/ '{print $NF}'| cut -c 2-)
PATH_SSL_IMPORT="$MYSRC/ssl/$DIR_CHIA"

RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'
echo $PATH_SSL_IMPORT

if [ -n "$TEMP_PATH_CHIA_SSL" ]; then
	mkdir $PATH_SSL_IMPORT
	cp -Rf $TEMP_PATH_CHIA_SSL $PATH_SSL_IMPORT 
fi
if find "$PATH_SSL_IMPORT" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
    echo "${GREEN}SLL IMPORT SUCCESS${RESTORE}"	
else
	echo "${RED}2 SSL files not found $PATH_SSL_IMPORT${RESTORE}"
	exit
fi
echo "deactivate"
