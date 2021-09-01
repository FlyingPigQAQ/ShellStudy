#! /usr/bin/env bash

#打印根路径下的文件
for item in $(ls /); do
    echo ${item}
done

echo "外层可以打印for循环中的声明变量，作用域比较大 ${item}"

for item in Python Java Scala; do
    echo ${item}
done

for item in {1..10}; do
    echo ${item}
done

# 步长 bash4 版本之前不支持
for item in {1..10..2}; do
    echo $item
done

# while
