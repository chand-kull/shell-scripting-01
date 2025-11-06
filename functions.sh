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
   if [$1 -ne 0]
   then 
      echo "$2..FAILURE"
      exit 1
   else
    echo "$2 ...susscess"
   fi
}

dnf install mysql -y
VALIDATE $? "installing mysql"

dnf install git -y
VALIDATE $? "installing git"
 









 
