# Shell 变量

定义变量时，变量名不加美元符号（$）,如：

```shell
your_name="weny.io"
```

变量名和等号之间不能有空格，变量名的命名规则如下：

- 命名只能用英文字母，数字和下划线，首个字符不能以数字开头。
- 中间不能有空格，可以使用下划线
- 不能使用标点符号。
- 不能使用bash里的关键字（可用help命令查看保留关键字）

有效的Shell变量名示例如下：

```shell
RUNOOB
LD_SSS_PATH
_var
var2
```

无效的变量名：

```shell
?var=123
user*name=runoob
```

使用语句给变量赋值：

```shell
for file in `ls /etc`

或

for file in $(ls /etc)
```

## 使用变量

```shell
your_name="mwy"
echo $your_name
echo ${your_name}
```

变量名外面使用花括号是可选的，加不加都行，加是为了帮助解释器识别变量的边界，如：

```shell
for skill in Ada Coffee Action Java; do
    echo "I am good at ${skill}Script"
done
```

推荐给所有变量加上花括号，这是个好的编程习惯。

已定义的变量，可以被重新定义，如：

```shell
your_name="weny"
echo ${your_name}
your_name="mwy"
echo ${your_name}
```

第二次赋值时不能写$your\_name="alibaba"，使用变量时才加美元符。

## 只读变量

使用readonly命令可以讲变量定义为只读变量，只读变量的值不能被改变

```shell
myUrl="weny.io"
readonly myUrl
myUrl="iscolt.com"
```

运行脚本，结果如下：

```shell
/bin/sh: NAME: This variable is read only.
```

## 删除变量

使用unset命令可以删除变量

```shell
unset variable_name
```

变量被删除后不能再次是使用，unset命令不能删除只读变量

```shell
#!/bin/sh
myUrl="weny.io"
unset myUrl
echo ${myUrl}
```

以上执行没有任何输出

## 变量类型

运行shell时，会同时存在三种变量：

- 局部变量
- 环境变量
- shell 变量：有一部分是环境变量，有一部分是局部变量


## Shell 字符串

### 单引号

```shell
str='this is a string'
```

单引号字符串的限制：

- 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
- 单引号字串中不能出现单独一个单引号（使用转义符也不行），可以成对出现，作为字符串拼接使用


### 双引号

```shell
your_name="weny"
str="Hello, I know you are \"$your_name\"! \n"
echo -e $str
```

输出结果为：

```
Hello, I know you are "weny"! 
```


双引号的优点：

- 双引号里可以有变量
- 双引号里可以出现转义字符

### 拼接字符串

```shell
your_name="weny"
# 使用双引号拼接
greeting="hello "$your_name" !"
greeting_1="hello, ${your_name} !"
echo $greeting $greeting_1
# 使用单引号拼接
greeting_2='hello, '$your_name' !'
greeting_3='hello, ${your_name} !'
echo $greeting_2 $greeting_3
```

输出结果为：

```shell
hello weny ! hello, weny !
hello, weny ! hello, ${your_name} !
```

### 获取字符串长度

```shell
string="abcd"
echo ${#string} # 输出4
```

### 提取子字符串

```shell
string="wenyi is a great site"
echo ${string:1:4} # 输出 enyi
```

### 查找子字符串

查找字符串i或o的位置（哪个字母先出现就计算哪个）：

```shell
string="weny is a great site"
echo `expr index "$string" io` # 输出 6
```

## Shell 数组



bash支持一维数组（不支持多维），没有限定数组大小。






