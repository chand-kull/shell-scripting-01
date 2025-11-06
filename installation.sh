#!/bin/bash
 # first check super user r not 
 # if super user proceed ,if not should throw  error

 USERID=$(id -u) 1001
 if [$USERID -ne 0] # here it seems exit status= 0 and root user id of root =0 
 then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi

echo "is script proceeding"

dnf install mysql -y
if [ $? -ne 0]
then
echo " installaton of mysql is .....failure"
else
 echo " installation of mysql is ... success"
fi







 
