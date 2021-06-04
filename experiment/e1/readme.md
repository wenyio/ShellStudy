# 实验1

## 1.编写shell脚本，用户输入整数，如果大于等于0，屏幕打印“the test value is greater than 0”，如果小于0，屏幕打印“the test value is less than 0”

```shell
#!/bin/bash
read -p "please input test value(int) in 10s:" -t 10 a

b=0

if [ $a -ge $b ] 
then
    echo "the test value is greater than 0"
else
    echo "the test value is less than 0"
fi
```


## 2. 编写shell脚本，统计/boot分区磁盘使用率，如果超过90，输出“warning! /boot device is full”,如果小于90，输出“/boot device is available”（P91）

```shell
#!/bin/bash

rate=$( df -h | grep "/boot" | awk '{print $5}' | cut -d "%" -f1 )

if [ $rate -ge 90 ] 
then
    echo "warning! /boot device is full"
else
    echo "/boot device is available"
fi
```


## 3、备份/etc目录，备份的压缩包有时间标志。


```shell
#!/bin/bash

echo "创建备份目录"
mkdir -p ./backup

echo "开始备份。。"
tar czf ./backup/etc_$(date +%F_%M).tar.gz /etc/
```


## 4、尝试从文件读取数据前，测试下文件/etc/shadow是否可读(首先判断是否是存在，且是一个文件，如果不存在输出“sorry,the file /etc/shadow  does not exist”;如果存在判断是否可读，如果可读 打印文件的最后一行，如果不可读，输出“sorry,I am unable to read the /etc/shadow file ”


```shell
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
```
