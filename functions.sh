#!/bin/bash
USERID=$(id -u) 
if [$USERID -ne 0] 
then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi

VALIDATE(){
    echo "exit status : $1"
    echo "what are u doing : $2"

 }


dnf install mysql -y
VALIDATE $? "installing mysql"

dnf install git -y
VALIDATE $? "installing git"
 









 
