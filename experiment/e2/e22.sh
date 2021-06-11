#!/bin/bash

r=0

for index in 1 2 3 4 5
do
	r=$(($index**2))
	echo "$index 的平方是：$r"
done
