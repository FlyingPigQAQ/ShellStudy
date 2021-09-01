#! /usr/bin/env bash

#声明函数
add() {
    echo "第一个参数： $1"
    echo "第二个参数： $2"
    echo "第三个参数： $3"
    return $(($1 + $2 + $3))
}

# 函数调用
add 5 7 9
#获取函数返回结果
echo "计算结果为: $?"
