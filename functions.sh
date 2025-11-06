#!/bin/bash
 # first check super user r not 
 # if super user proceed ,if not should throw  error

 USERID=$(id -u) 

 VALIDATE(){
    echo "exit status : $1"
    echo "what are u doing : $2"

 }

 if [$USERID -ne 0] # here it seems exit status= 0 and root user id of root =0 
 then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi

dnf install mysql -y
VALIDATE $? "installing MYSQL
 









 
