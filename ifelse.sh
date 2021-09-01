#! /bin/bash

scores=$1

<<comment
 常用的判定条件运算符,只支持数字，不支持字符串(字符串是数字的除外)
 -eq equal两数是否相等，相等返回true ==
 -ne notEqual  !=                 
 -gt greaterThan >
 -lt lessThan    <
 -ge greaterOrEqual >=
 -le lessOrEqual    <=
comment

if [ $scores -ge 90 ]; then
    echo "成绩优秀"
elif [ $scores -ge 80 ]; then
    echo "成绩良好"
elif [ $scores -ge 60 ]; then
    echo "成绩一般"
else
    echo "不及格"
fi