#!/bin/bash


echo "使用while了"

i=1
s=0

while [ $i -le 100 ]
do
	s=$(( $s + $i))
	i=$(( $i + 1))
done

echo "sum is: $s"

echo "使用until了"

i=1
s=0

until [ $i -gt 100 ]
do
	s=$(( $s + $i))
        i=$(( $i + 1))
done

echo "sum is: $s"
