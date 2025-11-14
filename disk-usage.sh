#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

while IFS= read -r line
do
  USAGE=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk '{print $NF}')

  if [ "$USAGE" -ge "$DISK_THRESHOLD" ]
  then
    echo "$FOLDER is more than $DISK_THRESHOLD%, current usage: $USAGE%"
  fi
done <<< "$DISK_USAGE"
echo "Message: $MESSAGE



