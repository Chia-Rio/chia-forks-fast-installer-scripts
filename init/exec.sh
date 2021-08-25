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

sh $MYSRC/add_keys.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Добавление ключей
sh $MYSRC/add_plots.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Добавление плотов
sh $MYSRC/del_plots.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Удаление плотов
sh $MYSRC/import_config.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA $FARMER_HOST # Установка значений в конфигах форков
sh $MYSRC/export_ssl.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Экспорт SSL
#sh $MYSRC/import_ssl.sh $PATH_CHIA $EXEC_FILE $TEMP_PATH_CHIA #Импорт SSL
exit
echo "deactivate"
