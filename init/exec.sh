#!/bin/bash

if [ -z "$2" ]; then
  echo "No argument!!!"
  echo "Ex: sh $0 <Path to folder Chia or Forks> <Executable file name> <Temp folder path Chia or Forks> <Farmer IP:PORT>"
  echo "Ex: sh $0 /user/share/chia/chia-blockchain chia /home/toor/.chia 192.168.0.2:8445"
  exit
fi


PATH_CHIA=$1
EXEC_FILE=$2
TEMP_PATH_CHIA=$3
FARMER_HOST=$4
MYSRC=$(pwd)
PATH_="$MYSRC/scripts"

#sh $PATH_/add_keys.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Добавление ключей
#sh $PATH_/del_plots.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Удаление плотов
#sh $PATH_/add_plots.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Добавление плотов
#sh $PATH_/import_config.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA $FARMER_HOST # Установка значений в конфигах форков
#sh $PATH_/export_ssl.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Экспорт SSL
#sh $PATH_/import_ssl.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Импорт SSL
exit
echo "deactivate"
