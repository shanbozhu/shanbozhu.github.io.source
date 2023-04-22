---
title: "Shell命令行配置"
date: 2019-05-22T11:28:09+08:00
draft: false
---

1. **替换默认shell**

首先将shell字体设置为`14`号，然后将mac默认shell替换为`bash`，输入如下命令

```
chsh -s /bin/bash
```

2. **命令补全**

> 在主目录（~）下，新建名为`.inputrc`的隐藏文件，末尾输入如下内容

```
# 支持模糊搜索和不区分大小写
set show-all-if-ambiguous on
set completion-ignore-case on
TAB: menu-complete
```

3. **修改命令行提示符**

> 在主目录（~）下，新建名为`.bash_profile`的隐藏文件，末尾输入如下内容

```
# 命令行提示符
function git_branch {
    branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
    if [ "${branch}" != "" ];then
        if [ "${branch}" = "(no branch)" ];then
            branch="(`git rev-parse --short HEAD`...)"
        fi
        echo " ($branch)"
    fi
}
function DesktopDirname {
    branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
    if [ "${branch}" != "" ];then
        path=`pwd`
        array=(${path//// })
        name=${array[3]}
        echo " $name"
    fi
}
function currentTime {
    time=$(date "+%H:%M:%S")
    echo " $time"
}
export PS1='\[\033[01;34m\]-> \[\033[01;36m\]\W\[\033[01;36m\]$(DesktopDirname)\[\033[01;32m\]$(git_branch)\[\033[01;36m\]$(currentTime)\n\[\033[01;34m\] \$\[\033[00m\] '
```

4. **修改shell环境变量**

```
export PATH=${PATH}:/Users/wsc/myshells
#alias mqrencode='/Users/wsc/myshells/mqrencode.sh'
```

5. **配置vim**

> 在主目录（~）下配置vim，输入如下命令

```
# vim.tar.gz是打包的vim的配置文件
tar zxvf vim.tar.gz
```