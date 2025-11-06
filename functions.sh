#!/bin/bash
USERID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S) # to check time
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #to save script name with time

 VALIDATE(){
   if [ $1 -ne 0 ]
   then 
      echo "$2..FAILURE"
      exit 1
   else
    echo "$2 ...SUCCESS"
   fi
}

if [ $USERID -ne 0 ] 
then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi
# # dn install nginx -y
# if [$? -ne 0]
# then 
#  echo "instalin nginx is failure"
# else 
#  echo" installing nginx is success"
# fi



dnf install mysql -y &>>$LOGFILE # store the output in script name with time file
VALIDATE $? "installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git"
 









 
