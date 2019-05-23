---
title: "多bundle组件化工程搭建"
date: 2019-05-23T17:36:26+08:00
draft: false
---

多bundle组件化工程搭建(不依赖摩天轮打包平台)

**一、现状**

集团内部提供摩天轮打包平台统一打包、部署，每个bundle生成framework的工作都是由平台完成，我们若完全脱离摩天轮平台，怎样利用普通git仓库实现同样功能的多bundle架构呢？下面将要介绍具体操作，虽然功能简陋没有摩天轮强大，但是基本具备多bundle开发能力。

**二、原理**

多bundle开发可以描述为下图结构，每个bundle单独编译为framework，然后在主工程portal上进行link操作，各bundle只有在个别情况下需要依赖其他bundle，总体来说相互独立，摩天轮做的就是将各bundle后台打包成framework，我们本地通过配置podfile文件使用这些framework。

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_0.png?raw=true)

因此，脱离摩天轮所要做的工作就是：

1. 能够根据源码打包出framework并部署到pod仓库
2. 能够通过podfile管理这些framework

**三、步骤**

1. 本地建立PBAPortal主工程和各业务子bundle

1)建立PBAPortal主工程

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_1.png?raw=true)

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_2.png?raw=true)

2)建立PBHome子工程

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_3.png?raw=true)

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_4.png?raw=true)

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_5.png?raw=true)

3. 找一个git仓库，我在网上使用了[https://coding.net/](https://coding.net/)，实际可以使用内网搭建的git仓库，将建立的工程上传到仓库

1)上传PBAPortal工程

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_6.png?raw=true)

2)上传PBHome子工程

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_7.png?raw=true)

4. 在git仓库上建立一个PBASpec仓库，用于放置spec文件，该仓库和普通存储工程源码的仓库一样操作即可

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_8.png?raw=true)

最终本地目录如下图

![](https://github.com/shanbozhu/github.io.resource/blob/master/image/2019_5_23_9.png?raw=true)











