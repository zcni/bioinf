#!/bin/bash
# calculates a number's factorial 
echo "please enter a positive integer:"
read number
max=$number
factorial=1
for ((i=2;i<=max;i++))
do 
    ((factorial=factorial*i))
done
echo "${max}'factorial is $factorial."
