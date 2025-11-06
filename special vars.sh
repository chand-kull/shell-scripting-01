#!/bin/bash
echo "all vars : $@"
echo "no of vars passed : $#"
echo "script name : $0"
echo "current working directory : $PWD"
echo "Home dirctory of currect user : $HOME"
echo "whic user is running the script : $USER" 
echo "hostname : $HOSTNAME of current script"  #ip address
echo "process id of current shell script : $$ " # which process id is created the linux for this script
sleep 60 &  # slep for one mint
echo " process id of lat background command : $!"

 ## all r interview questions




