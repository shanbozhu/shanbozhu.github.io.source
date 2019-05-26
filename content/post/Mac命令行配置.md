---
title: "Mac命令行配置"
date: 2019-05-22T11:28:09+08:00
draft: false
---

1. **命令补全**

> 在主目录（~）下，新建名为`.inputrc`的隐藏文件，末尾输入如下内容

```
# 支持模糊搜索和不区分大小写
set show-all-if-ambiguous on
set completion-ignore-case on
TAB: menu-complete
```

2. **修改命令行提示符**

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
#export PS1='\u@\h \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\[\033[00m\] \$ '
export PS1='-> \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\[\033[00m\] \$ '
```

3. **别名删除命令进回收站**

> 在主目录（~）下，新建名为`.bash_profile`的隐藏文件，末尾输入如下内容

```
# 别名删除命令进回收站
alias dl='trash -F'
alias rm='echo -e "\033[33m禁用rm\033[0m"'
```

---

给出`.inputrc`和`.bash_profile`文件的[下载地址](https://github.com/shanbozhu/github.io.resource/blob/master/zip/profile.tar.gz?raw=true)