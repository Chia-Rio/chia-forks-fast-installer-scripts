#!/bin/bash
if [ -z "$2" ]; then
  echo "No argument!!!"
  echo "Ex: sh $0 <Path to folder Chia or Forks> <Executable file name>"
  echo "Ex: sh $0 /user/share/chia/chia-blockchain/ chia"
  exit
fi

echo "-------------------"
echo "--- Chia.Moscow ---"
echo "-------------------"
echo "---- DEL PLOTS ----"
echo "-------------------"
echo "----\033[00;32m $2 \033[0m----"
echo "-------------------"

PATH_CHIA=$1
EXEC_FILE=$2
MYSRC=$(pwd)
PATH_KEYS="$MYSRC"
RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'

cd $PATH_CHIA
. ./activate

if [ -s $PATH_KEYS/del_plots.txt ]
then
  while read LINE
    do
    $EXEC_FILE plots remove -d "$LINE"
  done < $PATH_KEYS/del_plots.txt
else
  echo "${RED}er: Plots file not found $PATH_KEYS/del_plots.txt${RESTORE}"
fi
echo "deactivate"
