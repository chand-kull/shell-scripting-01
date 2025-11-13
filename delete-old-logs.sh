#!/bin/bash
SOURCE_DIRECTORY=/tmp/app-log

R="\e[31m"
G="\e[32m"

if [ -d $SOURCE_DIRECTORY ]
then
  echo -e  "$G sourec directory exists $N"
else
  echo "$R please make sure $SOURCE_DIRECTORY exists $N"
  exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +5)
while IFS= read -r line ; do #internal field seperator  
    echo "Deleting files : $line" 
    rm -rf $line
done <<< "$FILES"


