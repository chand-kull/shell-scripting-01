#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S) # to check time
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #to save script name with time
R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $USERID -ne 0 ] # here it seems exit status= 0 and root user id of root =0 
then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi

validate(){
 if [ $1 -ne 0 ]
 then
    echo "$2..... $R FAILURE $N"
    exit 1
 else
    echo "$2.... $G SUCCESS $N"
 fi
}

for i in $@
do 
 echo "packages to install :$i"
 dnf list installed $i &>>$LOGFILE

 if [ $? -eq 0 ]
 then
   echo  -e "$i already installed ...... $G SKIPPING $N"
 else
   dnf install $i -y &>>$LOGFILE
   VALIDATE $? "installation of $i"
 fi

done


