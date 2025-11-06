#!/bin/bash
# i want to check the number geater than 20 r not 
# first get the number
# chekc if it is greater than 20
#if greater print greter
#if not print lesser 

NUMBER=$1
if $(NUMBER>10){
     print "print number is greater thn 10"
}
else {
    print " given number is leass than 10"
} 

NUMBER=5
if (!NUMBER>10){
     print "print number is greater thn 10"
}
else {
    print " given number is leass than 10"
} 


NUMBER=$1
if [ $NUMBER -gt 10]
then 
  echo " given number $NUMBER is greater"

else
  echo " given number $NUMBER is lesser"
fi




