Shell 是一个用 C 语言编写的程序，通过 Shell 用户可以访问操作系统内核服务。

Shell 既是一种命令语言，又是一种程序设计语言。

Shell script 是一种为 shell 编写的脚本程序。Shell 编程一般指 shell脚本编程，不是指开发 shell 自身。

Shell 编程跟 java、php 编程一样，只要有一个能编写代码的文本编辑器和一个能解释执行的脚本解释器就可以了。

Linux 的 **Shell 解释器** 种类众多，一个系统可以存在多个 shell解释器，可以通过 cat /etc/shells 命令查看系统中安装的 shell解释器。

Bash 由于易用和免费，在日常工作中被广泛使用。同时，Bash 也是大多数Linux 系统默认的 Shell。

可以以下方式查看Shell解释器:

```shell
[root@node01 ~]# cat /etc/shells
/bin/sh
/bin/bash
/sbin/nologin
/usr/bin/sh
/usr/bin/bash
/usr/sbin/nologin
/bin/tcsh
/bin/csh
```

查看bash版本 **bash -version**

**#! /usr/bin/env bash** 让程序通过path去查找第一个遇到的bash,避免有的系统bash存放于其他目录，而不是/bin/目录