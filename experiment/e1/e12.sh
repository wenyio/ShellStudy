#!/bin/bash

rate=$( df -h | grep "/boot" | awk '{print $5}' | cut -d "%" -f1 )

if [ $rate -ge 90 ] 
then
    echo "warning! /boot device is full"
else
    echo "/boot device is available"
fi
