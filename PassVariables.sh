#! /usr/bin/env bash

echo "脚本名 $0"
echo "第一个参数 $1"
echo "第二个参数 $2"
echo "第十个参数 ${10}" # 不能写为$10 否则会按照 $1 + 0 拼接字符串

echo "共有$#个参数"

# $* 将所有参数一行显示
echo "$*"

# $@ 所有参数单独显示，如list
for item in $@; do
    echo $item
done

echo "当前脚本运行的进程号是$$"
echo "后台运行的最后一个进程号是$!"
# $- 显示shell的当前选项

# 0是正常，非0都是异常
echo "上一个程序运行状态是:$? "
# 人为制造异常
expr 1 / 0
echo "上一个程序运行状态是:$? "

