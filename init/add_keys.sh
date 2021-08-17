#!/bin/bash
if [ -z "$2" ]; then
  echo "No argument!!!"
  echo "Ex: sh $0 <Path to folder Chia or Forks> <Executable file name>"
  echo "Ex: sh $0 /user/share/chia/chia-blockchain chia /home/toor/.chia"
  exit
fi

echo "-------------------"
echo "--- Chia.Moscow ---"
echo "-------------------"
echo "---- ADD KEYS -----"
echo "-------------------"

PATH_CHIA=$1
EXEC_FILE=$2
MYSRC=$(pwd)
PATH_KEYS="$MYSRC/keys"


RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'

cd $PATH_CHIA
. ./activate

if find "$PATH_KEYS" -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
	TEMP=1	
else
	echo "${RED} Keys file not found $PATH_KEYS${RESTORE}"
	exit
fi

#Если нужно удалить все ключи 
#$EXEC_FILE keys delete_all

KEYS_LIST=`ls $PATH_KEYS/*.txt`
for file_key in $KEYS_LIST
do
   echo "${GREEN}inf: Import Key" $file_key "${RESTORE}"
   $EXEC_FILE keys add -f $file_key
done
echo "deactivate"