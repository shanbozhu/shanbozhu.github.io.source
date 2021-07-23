---
title: "Mac命令行配置"
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
export PS1='-> \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\[\033[00m\] \$ '
#export PS1='-> \t \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\n\[\033[01;35m\] \$\[\033[00m\] '
```

4. **配置vim**

> 在主目录（~）下配置vim，输入如下命令

```
# vim.tar.gz是打包的vim的配置文件
tar zxvf vim.tar.gz
```

---

5. **安装Homebrew**

访问如下地址，使用国内镜像安装`Homebrew`，序列号选择中科大

```
https://github.com/cunkai/HomebrewCN
```

6. **安装trash**

使用如下命令安装`trash`，具体参见文档：[https://github.com/ali-rantakari/trash](https://github.com/ali-rantakari/trash)

```
brew install trash
```
> 在主目录（~）下，新建名为`.bash_profile`的隐藏文件，末尾输入如下内容

```
# 别名删除命令进回收站
alias dl='trash -F'
alias rm='echo -e "\033[33m禁用rm,请使用dl命令\033[0m"'
```

7. **安装autojump**

使用如下命令安装`autojump`，具体参见文档：[https://github.com/wting/autojump](https://github.com/wting/autojump)

```
brew install autojump
```
> 在主目录（~）下，新建名为`.bash_profile`的隐藏文件，末尾输入如下内容

```
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
```

8. **安装cdto**

任意目录添加打开终端的入口，需要安装`cdto`，具体参见文档：[https://github.com/jbtule/cdto](https://github.com/jbtule/cdto)
