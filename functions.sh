#!/bin/bash
 
 USERID=$(id -u) 

 VALIDATE(){
    echo "exit status : $1"
    echo "what are u doing : $2"

 }

 if [$USERID -ne 0] 
 then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi

dnf install mysql -y
VALIDATE $? "installing mysql"

dnf install git -y
VALIDATE $? "installing MYSQL"
 









 
