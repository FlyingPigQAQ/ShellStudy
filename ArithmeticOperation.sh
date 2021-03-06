#! /usr/bin/env bash

<<comment
原生 bash 不支持简单的数学运算，但是可以通过其他命令来实现，例如expr。
expr 是一款表达式计算工具，使用它能完成表达式的求值操作。
使用expr表达式时要注意：
操作数和运算符之间要有空格 ，例如2 + 2，而不能写成2+2
完整的表达式要被 \` 包含，注意不是单引号，在 Esc 键下边
comment

result=$(expr 2 + 2)
echo ${result}

