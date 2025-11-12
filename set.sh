#!/bin/bash
 # first check super user r not 
 # if super user proceed ,if not should throw  error
 set -e 
 handle_error(){
    echo "Error occured at line  number $1: error command: $2"
 }
 failure(){
    echo "Failed at $1:$2"
 }
 trap 'failed ${LINENO} "$BASH_COMMAND"' ERR #to identify which line number error got

 USERID=$(id -u) #ERR
 

 if [ $USERID -ne 0 ] 
 then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
 else
 echo "super user"
 fi

 
 dnf install mysqlee -y 
 dnf install git -y 


 echo "isscript proceeding?"







 
