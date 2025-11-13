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
echo "files to delete : $FILES"
while IFS= read -r file; do
  if [ -f "$file" ]; then
    echo "Deleting: $FILES"
    
 
done <<< "$FILES"


