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


