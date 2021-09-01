#! /usr/bin/env bash

# 声明数组 bash只支持一维数组
arr=(1 2 3 "a" "b")
#打印数组
echo "当前数组内容为: ${arr[*]}"

# 打印数组指定元素 数组下标从0开始
echo "当前第一个位置元素: ${arr[0]}"

# 修改指定下标数组元素
arr[1]=100
echo "当前数组内容为: ${arr[*]}"

# 输出数组长度
echo "当前数组中元素个数为: ${#arr[*]}"

#遍历数组
for i in ${arr[*]}; do
    echo $i
done
