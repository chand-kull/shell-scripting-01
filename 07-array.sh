#!/bin/bash

ITEMS=("CAR" "FLIGHT" "BICKES")


#size of above array is 3 
#index are 0, 1, 2

#list always starts with 0.

echo "First item is : ${ITEMS[0]}"
echo "second item is: ${ITEMS[1]}"
echo "third item is : ${ITEMS[@]}"
    