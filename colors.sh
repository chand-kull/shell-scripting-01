#!/bin/bash
USERID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S) # to check time
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #to save script name with time
R="\e[31m"
G="\e[32m"

echo "script started executinga at: $TIMESTAMP"

 VALIDATE(){
   if [ $1 -ne 0 ]
   then 
      echo -e "$2..$R FAILURE $N"
      exit 1
   else
    echo -e "$2 ... $G SUCCESS $N"
   fi
}


dnf install mysql -y &>>$LOGFILE # store the output in script name with time file
VALIDATE $? "installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "installing git"

dnf install dokerrr -y &>>$LOGFILE
validate $? "insalling-docker"









 
