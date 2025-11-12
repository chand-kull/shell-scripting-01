#!/bin/bash
 # first check super user r not 
 # if super user proceed ,if not should throw  error
 set -e 

 USERID=$(id -u)
 

 if [ $USERID -ne 0 ] # here it seems exit status= 0 and root user id of root =0 
 then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
 else
 echo "super user"
 fi

 
 dnf install mysqlee -y 
 dnf install git -y 


 echo "isscript proceeding?"







 
