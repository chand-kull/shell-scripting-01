#!/bin/bash

PERSON1=ramesh # declaring variable
PERSON2=suresh

echo "hi $PERSON1" # refering a variable
echo "hi $PERSON2"


#second method of variable
#!/bin/bash
 person1=$1
 person2=$2

 echo "hi $person1"
 echo "hi $person2"

 this is arguments without touvhing the script we can pass the variables from outside 
  
#!/bin/bash
echo "please enetr password"
read  -s USERNAME #user name is variable
echo "please enetr password"
read  -s PASSWORD

echo "user name is $USERNAME, password is $PASSWORD"

