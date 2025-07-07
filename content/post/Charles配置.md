---
title: "Charles配置"
date: 2019-05-22T11:28:09+08:00
draft: false
---

#### 一、Charles使用

1. **Install Charles Root Certificate**

> 新设备安装Charles根证书

```
1. Charles安装根证书至移动设备：
2. Help -> SSL Proxying -> Install Charles Root Certificate on a Mobile Device or Remote Browser
3. 设备的WiFi设置中，输入Charles的IP地址和端口号
4. 设备的Safari访问以下地址，下载安装Charles证书
5. http://chls.pro/ssl
6. iOS10设备开始，需要按照以下操作信任Charles证书
7. 设置 -> 通用 -> 关于本机 -> 证书信任设置
```

- 扫码安装证书

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2025_07_07/2025_07_07_0.png?raw=true)

2. **Access Control Setting**

> 新设备连接Charles代理时，无需Charles允许

```
1. Charles设置：Proxy -> Access Control Setting...
2. IP Range输入以下IP地址
3. 0.0.0.0/0 和 ::/0
```

3. **SSL Proxying Settings**

> 配置地址，允许使能SSL代理

```
1. Charles设置：Proxy -> SSL Proxying Settings...
2. 勾选Enable SSL Proxying
3. Include输入以下内容，允许所有地址使能SSL代理
4. *
5. Exclude输入以下内容，排除指定地址使能SSL代理
6. *.apple.com 和 *.mzstatic.com
```

#### 二、常见问题

1. Charles突然无法抓包

答：Charles安装的证书有效期只有一年，到期后需要重置证书。具体步骤如下：

```
1. Charles重置根证书：
2. Help -> SSL Proxying -> Reset Charles Root Certificate... -> Reset
2. Charles重新安装根证书至电脑：
3. Help -> SSL Proxying -> Install Charles Root Certificate
4. 在电脑钥匙串信任Charles根证书
5. Charles重新安装根证书至移动设备
```
