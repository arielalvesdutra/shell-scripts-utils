#!/bin/bash
echo "....Remove old files"
read -p "....Please, type the number of days: " NUMBER_OF_DAYS

if [ "$NUMBER_OF_DAYS" == "" ];then
  NUMBER_OF_DAYS=1
fi

read -p "....Please, select the folder that you want remove the files: " FOLDER

if [ "$FOLDER" == "" ];then
  echo "....Is mandatory type the selected folder. Try again. Bye."
  exit 0
fi

echo "....Selected number of days is: $NUMBER_OF_DAYS"
echo "....Selected folder: $FOLDER"

ls  -la "$FOLDER"

echo "....Removing files from folder $FOLDER with until $NUMBER_OF_DAYS days of existence"
rm $(find $FOLDER -mtime +$NUMBER_OF_DAYS)
