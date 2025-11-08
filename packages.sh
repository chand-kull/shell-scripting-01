#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S) # to check time
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) #script name
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log #to save script name with time



if [ $USERID -ne 0 ] # here it seems exit status= 0 and root user id of root =0 
then
  echo "please run this scipt with root acess"
  exit 1 # manully exit if error comes
else
 echo "super user"
fi

validate(){
 if [ $1 -ne 0 ]
  echo "$2.....FAILURE"
  exit 1
 else
  echo "$2....SUCCESS"
 fi
}

for i in $@
do 
 echo "packages to install :$i"
 dnf list installed $i &>>$LOGFILE
 if [ $? -eq 0 ]
 then
  echo "$i already installed ......SKIPPING"
 else
  echo "$i not installed.... NEED TO INSTALl"
 fi
done
