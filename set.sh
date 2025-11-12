#!/bin/bash
 # first check super user r not 
 # if super user proceed ,if not should throw  error
 set -e 
 
 failure(){
    echo "Failed at $1:$2"
 }
 
 trap 'failed ${LINENO} "$BASH_COMMAND"' ERR #to identify which line number error got

 USERID=$(id -u)
 

 if [ $USERID -ne 0 ] 
 then
  echo "please run this script with root access"
  exit 1 # manully exit if error comes
 else
  echo "super user"
 fi

 
 dnf install mysqlee -y 
 dnf install git -y 


 echo "isscript proceeding?"







 
