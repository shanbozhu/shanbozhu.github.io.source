---
title: "Shell安装必备软件"
date: 2019-05-22T11:28:09+08:00
draft: false
---

1. **安装Homebrew**

brew、gem、npm、pip、pod介绍

* Homebrew：简称`brew`，用于Mac软件的安装或卸载。相当于Linux的`apt-get`软件管理工具。

* RubyGems：简称`gem`，用于ruby编写的软件的安装或卸载。服务于`ruby社区`。

* npm：用于`node.js`模块安装或卸载，安装`node.js`时会自动安装`npm`。服务于`JavaScript社区`。

* pip：用于`python`模块安装或卸载，安装`python`时会自动安装`pip`。服务于`python社区`。

* pod：用于`objective-c`模块安装或卸载。服务于`OC社区`。pod本身是使用ruby编写的软件，通过gem进行安装。

访问如下地址，使用国内镜像安装`Homebrew`，序列号选择`中科大`

[https://github.com/cunkai/HomebrewCN](https://github.com/cunkai/HomebrewCN)

`Homebrew`常用命令

```
// 安装包
brew install mysql

// 卸载包
brew uninstall wget

// 显示已安装的包
brew list

// 更新Homebrew自己
brew update

// 更新所有可以升级的软件
brew upgrade
brew upgrade mysql

// 清理不需要的版本及其安装包缓存
brew cleanup
brew cleanup mysql

// 查看brew帮助
brew –help
```

2. **安装trash**

使用如下命令安装`trash`，具体参见文档：[https://github.com/ali-rantakari/trash](https://github.com/ali-rantakari/trash)

```
brew install trash
```
在主目录`~`下，新建名为`.bash_profile`的配置文件，末尾输入如下内容

```
# 别名删除命令进回收站
alias rm='trash -F'
```

3. **安装autojump**

使用如下命令安装`autojump`，具体参见文档：[https://github.com/wting/autojump](https://github.com/wting/autojump)

```
brew install autojump
```
在主目录`~`下，新建名为`.bash_profile`的配置文件，末尾输入如下内容

```
安装autojump时的输出提示
```

4. **安装cdto**

任意目录添加打开终端的入口，需要安装`cdto`，具体参见文档：[https://github.com/jbtule/cdto](https://github.com/jbtule/cdto)

5. **安装qrencode**

```
// 安装二维码生成软件
brew install qrencode

// 字符串生成二维码
qrencode -o index.png -s 10 -m 1 "zhushanbo"
```

```
// 安装二维码解析软件
brew install zbar

// 二维码生成字符串
// zbarimg index.png > zhushanbo.txt
zbarimg index.png
```
