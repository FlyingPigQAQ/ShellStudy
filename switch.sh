#! /bin/bash

operate=$1

case $operate in
'start')
    echo "程序启动"
    ;;
'restart')
    echo "程序重启"
    ;;
'stop')
    echo "程序停止"
    ;;
*)
    echo "异常指令"
    ;;
esac
