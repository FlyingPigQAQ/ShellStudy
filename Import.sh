#! /usr/bin/env bash

# shell中引入其他脚本的变量，是通过source命令

source ./Constant.sh

#遍历引入后的数组
for i in ${arr[*]}; do
    echo $i
done

#输出引入后的变量name
echo $name
