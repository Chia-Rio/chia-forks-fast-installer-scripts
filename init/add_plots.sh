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
echo "---- ADD PLOTS ----"
echo "-------------------"


PATH_CHIA=$1
EXEC_FILE=$2
MYSRC=$(pwd)

RESTORE='\033[0m'
RED='\033[00;31m'
GREEN='\033[00;32m'

cd $PATH_CHIA
. ./activate

if [ -s $MYSRC/plots.txt ]
then
  while read LINE
    do
    #$EXEC_FILE plots remove d "$LINE\r"
    $EXEC_FILE plots add -d $LINE
  done < $MYSRC/plots.txt
else
  echo "${RED}er: Plots file not found $MYSRC/plots.txt${RESTORE}"
fi
echo "deactivate"
