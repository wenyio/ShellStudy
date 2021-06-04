#!/bin/bash

# 判断是否是文件 -f 判断是否是目录文件 -d 判断是否存在 -e
if [ -f /etc/shadow ] 
then
    # 判断是否可读 -r 判断是否可写 -w 判断是否可执行 -x
    if [ -r /etc/shadow ]
    then
	# 打印文件的最后一行
	cat /etc/shadow | awk 'END {print}'
    else
	echo "sorry, i am unable to read the /etc/shadow file"
    fi
else
    echo "sorry, the file /etc/shadow does not exist"
fi
