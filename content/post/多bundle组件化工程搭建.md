---
title: "多bundle组件化工程搭建"
date: 2019-05-23T17:36:26+08:00
draft: false
---

多bundle组件化工程搭建（不依赖摩天轮打包平台）

#### 一、现状

集团内部提供摩天轮打包平台统一打包、部署，每个bundle生成framework的工作都是由平台完成，我们若完全脱离摩天轮平台，怎样利用普通git仓库实现同样功能的多bundle架构呢？下面将要介绍具体操作，虽然功能简陋没有摩天轮强大，但是基本具备多bundle开发能力。

#### 二、原理

多bundle开发可以描述为下图结构，每个bundle单独编译为framework，然后在主工程portal上进行link操作，各bundle只有在个别情况下需要依赖其他bundle，总体来说相互独立，摩天轮做的就是将各bundle后台打包成framework，我们本地通过配置podfile文件使用这些framework。

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_0.png?raw=true)

因此，脱离摩天轮所要做的工作就是：

* 能够根据源码打包出framework并部署到pod仓库
* 能够通过podfile管理这些framework

#### 三、步骤

1. 本地建立PBAPortal主工程和各业务子bundle

* 建立PBAPortal主工程

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_1.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_2.png?raw=true)

* 建立PBHome子工程

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_3.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_4.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_5.png?raw=true)

2. 找一个git仓库，我在网上使用了[https://coding.net/](https://coding.net/)，实际可以使用内网搭建的git仓库，将建立的工程上传到仓库

* 上传PBAPortal工程

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_6.png?raw=true)

* 上传PBHome子工程

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_7.png?raw=true)

3. 在git仓库上建立一个PBASpec仓库，用于放置spec文件，该仓库和普通存储工程源码的仓库一样操作即可

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_8.png?raw=true)

最终本地目录如下图

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_23/2019_5_23_9.png?raw=true)

4. 分别在主工程和子工程内增加podfile文件，利用pod管理每个工程

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_0.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_1.png?raw=true)

注意添加图中标注的私有仓库路径，即spec仓库地址

5. 编辑子工程对应的spec文件

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_2.png?raw=true)

将PBASpec目录上传至对应git仓库

6. 配置子工程脚本文件

因为子工程生成的framework位于DerivedData子目录下，spec文件指定的framework需要位于工程根目录下，脚本的作用就是拷贝framework到工程根目录

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_3.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_4.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_5.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_6.png?raw=true)

编译之后会将生成的framework拷贝至根目录

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_7.png?raw=true)

将含有PBHome.framework的工程上传至git仓库

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_8.png?raw=true)

至此在主工程和其他子bundle中就可以通过podfile引入该framework了

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_9.png?raw=true)

主工程执行`pod install`

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_10.png?raw=true)

7. 子bundle图片等资源文件的处理

* 未联合编译的情况下

若只使用PBAPortal工程，framework中的资源文件会被执行`pod install`后自动生成的脚本文件拷贝到app包中

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_11.png?raw=true)

下图是framework未引入资源文件时脚本文件中的内容

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_12.png?raw=true)

下图是framework引入资源文件时脚本文件中的内容

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_13.png?raw=true)

图中框选部分就是将framework中的资源文件拷贝到app包中

我们在图片调用时只需要写明具体的路径即可

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_14.png?raw=true)

* 联合编译的情况下

将子bundle和PBAPortal联合编译，手动拖拽PBHome.xcodeproj至PBAPortal的平级目录

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_15.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_16.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_17.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_18.png?raw=true)

联合编译的情况下PBAPortal工程并不能够自动的获取子bundle中的最新图片，此时需要在PBAPortal手动配置脚本，将子bundle工程中的资源文件通过脚本拷贝到app包中

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_19.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_20.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_21.png?raw=true)

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_22.png?raw=true)

脚本拷贝资源文件内容如下图

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_23.png?raw=true)

编译过程中输出的拷贝信息如下图

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_5_24/2019_5_24_24.png?raw=true)

至此，整个组件化工程搭建完成，本文只列举了PBHome作为子bundle，可以按照步骤添加任意多个子bundle。
