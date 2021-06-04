#!/bin/bash
read -p "please input test value(int) in 10s:" -t 10 a

b=0

if [ $a -ge $b ] 
then
    echo "the test value is greater than 0"
else
    echo "the test value is less than 0"
fi
