#!/bin/bash

arr=(1 3 5 7)

arr[8]=8

echo ${arr[8]}

echo ${arr[@]}

# 取得数组元素的个数
length=${#arr[@]}
echo $length
# 或者
length=${#arr[*]}
echo $length
# 取得数组单个元素的长度
lengthn=${#arr[n]}
echo $lengthn
