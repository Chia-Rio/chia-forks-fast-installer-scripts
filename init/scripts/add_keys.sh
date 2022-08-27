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
echo "----\033[00;32m $2 \033[0m----"
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

#\u0415\u0441\u043b\u0438 \u043d\u0443\u0436\u043d\u043e \u0443\u0434\u0430\u043b\u0438\u0442\u044c \u0432\u0441\u0435 \u043a\u043b\u044e\u0447\u0438 
#$EXEC_FILE keys delete_all

KEYS_LIST=`ls $PATH_KEYS/*.txt`
for file_key in $KEYS_LIST
do
   echo "${GREEN}inf: Import Key" $file_key "${RESTORE}"
   $EXEC_FILE keys add -f $file_key
done
echo "deactivate"