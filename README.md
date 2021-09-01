## 1. Shell简介
Shell 是一个用 C 语言编写的程序，通过 Shell 用户可以访问操作系统内核服务。

Shell 既是一种命令语言，又是一种程序设计语言。

Shell script 是一种为 shell 编写的脚本程序。Shell 编程一般指 shell脚本编程，不是指开发 shell 自身。

Shell 编程跟 java、php 编程一样，只要有一个能编写代码的文本编辑器和一个能解释执行的脚本解释器就可以了。

Linux 的 **Shell 解释器** 种类众多，一个系统可以存在多个 shell解释器，可以通过 cat /etc/shells 命令查看系统中安装的 shell解释器。

Bash 由于易用和免费，在日常工作中被广泛使用。同时，Bash 也是大多数Linux 系统默认的 Shell。

可以使用以下方式查看已经注册的Shell解释器:

```shell
[root@localhost ~]# cat /etc/shells
/bin/sh
/bin/bash
/usr/bin/sh
/usr/bin/bash
```

## 2. 查看bash版本 **bash -version**


## 3. 正确编写shell头文件

**#! /usr/bin/env bash** 

让程序通过path去查找第一个遇到的bash,避免有的系统bash存放于其他目录，而不是/bin/目录

## 4. ${}用法
${}指明变量边界.

比如:需要在生日时间后面拼接一个Day字符串
```shell
birth='99-10-10'
echo $birthDay
```
 会输出不来结果，因为解释器去查找birthDay这个变量去了.
 
 正确做法应该是 `echo ${birth}Day`

### 4.1 TODO ${} 其他语法

## 5. $() 和 ``区别
两者都是**命令替换**,$()只是``的一种替代方案

比如:

```shell
uver=$(uname -r)
uver=`uname -r`
```
## 6. [ ]、(( )) 和 [[ ]]区别
三者都是test命令的一种表现形式 `test num -ge 100`
### 6.1 [ ]
- []需要括号的两个内侧都有空格 
- []比较类型必须是数字类型
- 运算符需要转义
- 必须使用$变量符
```shell
num=10
if [ $num -ge 100 ];then
  echo "big than special number"
fi
```
### 6.2 (( ))
- 两侧对空格不再有要求
- 比较类型必须是数字
- 不支持转义字符
- 变量可以不加$符号
- 相对[]拓展了以下运算符的支持


| 运算符                             | 含义                                       |
| ---------------------------------- | ------------------------------------------ |
| id++ id--                          | variable post-increment and post-decrement |
| ++id --id                          | variable pre-increment and pre-decrement   |
| - +                                | unary minus and plus                       |
| ! ~                                | logical and bitwise negation               |
| **                                 | exponentiation                             |
| * / %                              | multiplication, division, remainder        |
| + -                                | addition, subtraction                      |
| << >>                              | left and right bitwise shifts              |
| <= >= < >                          | comparison                                 |
| == !=                              | equality and inequality                    |
| &                                  | bitwise AND                                |
| ^                                  | bitwise exclusive OR                       |
| \|                                 | bitwise OR                                 |
| &&                                 | logical AND                                |
| \|\|                               | logical OR                                 |
| expr ? expr : expr                 | conditional operator                       |
| = *= /= %= += -= <<= >>= &= ^= \|= | assignment                                 |
| expr1 , expr2                      | comma                                      |

参考文档: https://www.gnu.org/software/bash/manual/html_node/Shell-Arithmetic.html

```shell
num=10
if ((++num == 10)); then
    echo "数字相等"
else
    echo "数字不相等"
fi


num=10
if (($((++num)) == 10)); then
    echo "数字相等"
else
    echo "数字不相等"
fi
```
### 6.3 [[ ]]
- 需要括号的两个内侧都有空格 
- 比较类型**支持**数字和**字符串**
- 运算符转义和不转义都可正常使用
- 必须使用$变量符
- 支持模式匹配,如下


| 运算符             | 描述                                                                                                                                                                                                                                                                                                                                                                                                        |
| ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| -a file            | True if file exists.                                                                                                                                                                                                                                                                                                                                                                                        |
| -b file            | True if file exists and is a block special file.                                                                                                                                                                                                                                                                                                                                                            |
| -c file            | True if file exists and is a character special file.                                                                                                                                                                                                                                                                                                                                                        |
| -d file            | True if file exists and is a directory.                                                                                                                                                                                                                                                                                                                                                                     |
| -e file            | True if file exists.                                                                                                                                                                                                                                                                                                                                                                                        |
| -f file            | True if file exists and is a regular file.                                                                                                                                                                                                                                                                                                                                                                  |
| -g file            | True if file exists and its set-group-id bit is set.                                                                                                                                                                                                                                                                                                                                                        |
| -h file            | True if file exists and is a symbolic link.                                                                                                                                                                                                                                                                                                                                                                 |
| -k file            | True if file exists and its "sticky" bit is set.                                                                                                                                                                                                                                                                                                                                                            |
| -p file            | True if file exists and is a named pipe (FIFO).                                                                                                                                                                                                                                                                                                                                                             |
| -r file            | True if file exists and is readable.                                                                                                                                                                                                                                                                                                                                                                        |
| -s file            | True if file exists and has a size greater than zero.                                                                                                                                                                                                                                                                                                                                                       |
| -t fd              | True if file descriptor fd is open and refers to a terminal.                                                                                                                                                                                                                                                                                                                                                |
| -u file            | True if file exists and its set-user-id bit is set.                                                                                                                                                                                                                                                                                                                                                         |
| -w file            | True if file exists and is writable.                                                                                                                                                                                                                                                                                                                                                                        |
| -x file            | True if file exists and is executable.                                                                                                                                                                                                                                                                                                                                                                      |
| -G file            | True if file exists and is owned by the effective group id.                                                                                                                                                                                                                                                                                                                                                 |
| -L file            | True if file exists and is a symbolic link.                                                                                                                                                                                                                                                                                                                                                                 |
| -N file            | True if file exists and has been modified since it was last read.                                                                                                                                                                                                                                                                                                                                           |
| -O file            | True if file exists and is owned by the effective user id.                                                                                                                                                                                                                                                                                                                                                  |
| -S file            | True if file exists and is a socket.                                                                                                                                                                                                                                                                                                                                                                        |
| file1 -ef file2    | True if file1 and file2 refer to the same device and inode numbers.                                                                                                                                                                                                                                                                                                                                         |
| file1 -nt file2    | True if file1 is newer (according to modification date) than file2, or if file1 exists and file2 does not.                                                                                                                                                                                                                                                                                                  |
| file1 -ot file2    | True if file1 is older than file2, or if file2 exists and file1 does not.                                                                                                                                                                                                                                                                                                                                   |
| -o optname         | True if the shell option optname is enabled. The list of options appears in the description of the -o option to the set builtin (see The Set Builtin).                                                                                                                                                                                                                                                      |
| -v varname         | True if the shell variable varname is set (has been assigned a value).                                                                                                                                                                                                                                                                                                                                      |
| -R varname         | True if the shell variable varname is set and is a name reference.                                                                                                                                                                                                                                                                                                                                          |
| -z string          | True if the length of string is zero.                                                                                                                                                                                                                                                                                                                                                                       |
| -n string          |                                                                                                                                                                                                                                                                                                                                                                                                             |
| string             | True if the length of string is non-zero.                                                                                                                                                                                                                                                                                                                                                                   |
| string1 == string2 |                                                                                                                                                                                                                                                                                                                                                                                                             |
| string1 = string2  | True if the strings are equal. When used with the [[ command, this performs pattern matching as described above (see Conditional Constructs).‘=’ should be used with the test command for POSIX conformance.                                                                                                                                                                                                |
| string1 != string2 | True if the strings are not equal.                                                                                                                                                                                                                                                                                                                                                                          |
| string1 < string2  | True if string1 sorts before string2 lexicographically.                                                                                                                                                                                                                                                                                                                                                     |
| string1 > string2  | True if string1 sorts after string2 lexicographically.                                                                                                                                                                                                                                                                                                                                                      |
| arg1 OP arg2       | OP is one of ‘-eq’, ‘-ne’, ‘-lt’, ‘-le’, ‘-gt’, or ‘-ge’. These arithmetic binary operators return true if arg1 is equal to, not equal to, less than, less than or equal to, greater than, or greater than or equal to arg2, respectively. Arg1 and arg2 may be positive or negative integers. When used with the [[ command, Arg1 and Arg2 are evaluated as arithmetic expressions (see Shell Arithmetic). |

参考文档: https://www.gnu.org/software/bash/manual/html_node/Bash-Conditional-Expressions.html
```shell
num=101
if [[ $num > 100 ]]; then
    echo "big than special number"
fi

if [[ -a "/Users/tobbyquinn/github/ShellStudy/Examples1.sh" ]];then
   echo "文件存在"
else
   echo "文件不存在"
fi

```

## 7. $[] 和 $(())区别
- 都是进行算术运算的
- 两者都支持变量不加$

**注意：优先使用\$(()),因为\$[]并没有在bash手册中提及**

```shell
a1=10
a2='20'
echo $[$a1+$a2] #支持
echo $[a1+a2] #支持
echo $((a1+a2)) #优先使用，支持
echo $(($a1+$a2)) #优先使用，支持
```

## 8. Bash官方文档
- https://www.gnu.org/software/bash/manual/
- https://www.gnu.org/software/bash/manual/html_node/index.html