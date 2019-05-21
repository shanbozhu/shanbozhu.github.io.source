---
title: "安装CocoaPods"
date: 2019-05-21T16:12:56+08:00
draft: false
---

1. 更换Ruby镜像源

`sudo gem sources --remove https://rubygems.org/`

`sudo gem sources -a https://gems.ruby-china.org/`

2. 查看当前镜像源

`sudo gem sources -l`

3. 安装CocoaPods指定版本

`sudo gem install -n /usr/local/bin cocoapods -v 1.2.0`

下面步骤处理异常情况，若是本机安装过高版本CocoaPods，使用下面命令降级

1. 查看CocoaPods版本号

`pod --version`

2. 卸载指定版本

`sudo gem uninstall cocoapods -v 1.5.0`

3. 使用上面第三步重新安装1.2.0版本Cocoapods