---
title: "draft_Ubuntu相关"
date: 2019-05-20T19:14:49+08:00
draft: true
---

## Ubuntu上怎样安装交叉编译器

Ubuntu上怎样安装交叉编译器呢？现说明如下：

1. 将下载的交叉编译器复制到/opt目录
2. 进入主目录，终端执行如下命令，编辑.bashrc文件：

`vi .bashrc`

3. 在.bashrc文件末尾加上如下语句：

`export PATH=$PATH:/opt/raspberrypi/tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin` 

4. 重启终端，至此交叉编译器安装完成。

## 64位Ubuntu上怎样编译出32位的可执行文件

在64位的ubuntu上编译程序时默认生成64位的可执行文件，但是怎样在64位的ubuntu上编译出32位的可执行文件呢？现说明如下：

1. 终端输入如下命令：

`sudo apt-get install gcc-multilib g++-multilib`

2. 用gcc编译时加上`-m32`选项

3. 至此编译的可执行文件为32位。

## Ubuntu上怎样安装中文输入法

Ubuntu系统自带ibus输入法框架，但是输入效果不太理想，推荐使用fcitx输入法框架，并安装fcitx-googlepinyin输入法，现说明如下：

1. 终端输入如下命令安装fcitx输入法框架：

`sudo apt-get install fcitx`

2. 终端输入如下命令安装fcitx输入法框架下的googlepinyin输入法：

`sudo apt-get install fcitx-googlepinyin`

3. 重启系统

4. 在系统设置中单击语言支持按钮，将键盘输入方式系统设为`fcitx`

5. 至此安装完成。

## Ubuntu上怎样设置宽带连接

Ubuntu下设置宽带连接需要安装pppoe客户端，设置过程如下：

1. 安装pppoe客户端，终端执行：

`sudo apt-get install pppoe pppoeconf pppstatus`

2. 配置宽带连接，终端执行：

`pppoeconf`

3. 根据pppoeconf的提示，输入用户名和密码，至此宽带连接设置完成。

4. 查看宽带连接状态，终端执行：

`pppstatus`

## Ubuntu上怎样使删除的文件进入回收站

Ubuntu下的`rm -r`命令删除文件不会进入回收站，因此被误删的文件是不可恢复的，我们可以通过添加dl命令使删除的文件进入回收站，现说明如下：

1. 终端输入：`cd`

2. 终端输入：`sudo vi .bashrc`

3. 在.bashrc文件的末行加入语句：`alias dl='gvfs-trash'`

4. 保存退出，之后使用dl命令删除文件可以将其移至回收站。

## Ubuntu上怎样安装Gnome2

新版本的Ubuntu开始使用自己的Unity桌面环境，但是很多人喜欢使用Gnome2经典桌面，怎样在Ubuntu上安装Gnome2经典桌面呢？现说明如下：

1. 终端执行：`sudo apt-get update`

2. 终端执行：`sudo apt-get install gnome-session-fallback`

3. 至此安装完成，重启选择进入Gnome2经典桌面。

## Ubuntu上怎样安装manpages

Ubuntu怎样安装最新版manpages呢？现说明如下：

1. 官网下载最新版manpages至桌面，地址为`https://www.kernel.org/pub/linux/docs/man-pages/`，如下载man-pages-3.65.tar.gz版本；

2. 终端执行：`sudo tar zxvf man-pages-3.65.tar.gz`

3. 终端执行：`cd ~/desktop/man-pages-3.65/`

4. 终端执行：`sudo make install`

5. 至此安装完成。

## Ubuntu上怎样安装windows字体

Ubuntu自带的字体十分稀少，怎样将windows中的字体移植到ubuntu上呢？现说明如下：

1. 复制windows下的fonts文件夹至桌面并将其重命名为winfonts；

2. 将winfonts文件夹复制到ubuntu上；

3. 终端执行：`sudo cp -a winfonts/ /usr/share/fonts/`

4. 终端执行：`sudo fc-cache /usr/share/fonts/winfonts/`

5. 至此字体安装完成。

## Ubuntu上怎样安装bumblebee

Ubuntu在双显卡的电脑上运行时会导致电脑温度非常高，我们必须安装bumblebee来关闭独立显卡，在终端输入如下命令即可安装，现说明如下：

1. 终端执行：`sudo add-apt-repository ppa:bumblebee/stable`
2. 终端执行：`sudo apt-get update`

3. 终端执行：`sudo apt-get install bumblebee bumblebee-nvidia`

4. 终端执行：`lspci | grep VGA`

5. 至此安装完成。

## Ubuntu上怎样安装应用软件

Ubuntu上怎样安装应用软件，现说明如下：

1. 命令安装

`sudo apt-get install <软件名>`

2. 安装包安装

`sudo dpkg -i <软件名>`

## Ubuntu上怎样卸载应用软件

Ubuntu上怎样卸载应用软件？现说明如下：

终端输入：

`sudo apt-get autoremove <软件名>`

或者分别输入：

`sudo apt-get remove <软件名>`

`sudo apt-get autoremove`

## 怎样在双系统中卸载ubuntu系统

很多人喜欢在一台电脑上同时安装windows和ubuntu，若不想继续使用ubuntu，怎样卸载ubuntu？现介绍步骤如下：

1. 从网上下载MbrFix软件，然后将其复制到D盘根目录；

2. 在windows系统下进入cmd命令行模式；

3. 在命令行输入命令`d:`，回车进入D盘；

4. 输入命令`MbrFix /drive 0 fixmbr`，回车重置Mbr；

5. 进入windows磁盘管理删除ubuntu系统所在分区；

6. 至此ubuntu系统卸载完毕。

## 关于安装操作系统

> 系统包括原版和Ghost版，安装操作系统的方法很多，现分别介绍如下：

### 一、光盘安装

1. 将第一启动项设为从光盘启动。

2. 插入光盘，按提示分区并安装系统。

   `注：Ghost版系统在安装过程中会自动格式化原有分区。`

### 二、优盘安装

1. 制作优盘启动盘，然后将系统复制到优盘。

2. 将第一启动项设为从优盘启动。

3. 插入优盘，按提示分区并安装系统。

   `注：优盘启动盘实质是将WinPE写入优盘或者利用UltraISO将系统镜像写入优盘。`

**怎样设置第一启动项？**

1. 开机连续按Delete键进入BIOS设置，此处不是所有的电脑都是Delete键。开机的时候，屏幕左下角会出现进入Setup的提示。
2. 在BIOS设置里按提示将第一启动项设为需要优先启动的选项。

**怎样对硬盘进行分区？**

一个硬盘最多只能分成四个主分区或三个主分区加一个扩展分区，然后扩展分区又可以分成多个逻辑分区。我们既可以使用系统自带的分区工具，也可使用专业分区工具，现分别介绍如下：

1. 使用系统自带的分区工具

   系统自带的分区工具它只能把硬盘分成最大分区数，具体分为两种，一是安装过程中分区，在安装过程中会出现驱动器高级选项，此时单击驱动器高级选项，则最多可以把硬盘分成四个主分区。二是安装完之后分区，在安装过程中不单击驱动器高级选项，直接在没有分区的硬盘上安装系统，安装完之后会自动形成一个主分区和系统保留分区，然后对主分区采用压缩卷的方式进行再次分区，则可以把这个主分区分成两个主分区加一个扩展分区，由于系统保留分区也是主分区，所以最多只能分成三个主分区加一个扩展分区。

2. 使用专业的分区工具

   专业的分区工具推荐使用磁盘精灵，首先使用一键优盘装系统等软件将WinPE写入优盘，开机将第一启动项设为从优盘启动，插入优盘开机进入WinPE，在WinPE里面利用内置的磁盘精灵等分区工具进行分区。