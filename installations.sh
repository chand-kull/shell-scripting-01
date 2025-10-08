#!bin/bash

USERID=$(id -u)

if [ $USERID-ne 0 ]
then
    echo "please run this script with root access"
    else
        echo "you are syper user."
        exit 1 #manually exit if error comes.
fi

yum install mysql -y

if [ $? -ne 0 ]
then
    echo "installation of my sql ....... FAILURE"
    exit 1
else
    echo "installation of mysql ........SUCCESS"


fi    

yum install git -y

if [ $? -ne 0 ]
then
    echo "installation of git ....... FAILURE"
    exit 1
else 
    echo "installation of git ...SUCCESS"

fi 

echo "is script procceding."


