#! /usr/bin/env bash

# []
num=101
if [ $num -ge 100 ]; then
    echo "big than special number"
fi
#报错: 需要整数表达式
# num='hello'
# if [ $num -ge 100 ]; then
#     echo "big than special number"
# fi

num=10
if (($((++num)) == 10)); then
    echo "数字相等"
else
    echo "数字不相等"
fi

name='张三1'
if [[ $name == '张三' ]]; then
    echo "名字匹配"
else
    echo "名字不匹配"
fi


num=101
if [[ $num > 100 ]]; then
    echo "big than special number"
fi

if [[ -a "/Users/tobbyquinn/github/ShellStudy/Examples1.sh" ]];then
   echo "文件存在"
else
   echo "文件不存在"
fi


