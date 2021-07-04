---
title: "Charles配置"
date: 2019-05-22T11:28:09+08:00
draft: false
---

1. **Install Charles Root Certificate**

> 新设备连接Charles代理时，无需Charles允许

```
1. Charles设置：Help -> SSL Proxying -> Install Charles Root Certificate on a Mobile Device or Remote Browser
2. 设备的WiFi设置中，输入Charles的IP地址和端口号
3. 设备的Safari访问以下地址，下载安装Charles证书
4. http://chls.pro/ssl
3. iOS10设备开始，需要按照以下操作信任Charles证书
4. 设置 -> 通用 -> 关于本机 -> 证书信任设置
```

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