#!/bin/bash

your_name="weny"
str="Hello, I know you are \"$your_name\"! \n"
echo -e $str


your_name="weny"
# 使用双引号拼接
greeting="hello "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2 $greeting_3

string="abcd"
echo ${#string} # 输出4


string="wenyi is a great site"
echo ${string:1:4} # 输出 enyi


string="weny is a great site"
echo `expr index "$string" io` # 输出 6

