#!/bin/bash
NUM=3
PASSWD=jack
SUM=0
while true
do
        read -p "please input your passwd: " pass
        SUM=$((SUM+1))
        if [ $pass == $PASSWD ];then
                echo "you are right, ok"
                exit
        elif [ $SUM -lt 3 ];then
                continue
        else
                exit
        fi
done

