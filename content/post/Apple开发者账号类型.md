---
title: "苹果开发者账号类型"
date: 2019-11-14T14:38:31+08:00
draft: false
---

<table>
    <tr>
        <td><b>账号类型</b></td>
        <td><b>签名证书</b></td>
        <td><b>描述文件</b></td>
        <td><b>版本</b></td>
        <td><b>推送证书</b></td>
        <td><b>Bundle ID</b></td>
        <td><b>支持安装设备数量</b></td>
   </tr>
   <tr>
        <td rowspan="2"><b>公司开发者账号</b>（$99、申请条件：邓白氏编码）、<b>个人开发者账号</b>（$99、申请条件：无限制）</td>
        <td>开发（签名）证书（.p12）</td>
        <td>开发描述文件（.mobileprovision）</td>
        <td><b>开发包</b></td>
        <td>开发（环境）推送证书（.p12）</td>
        <td rowspan="2">com.baidu.BaiduMobileInfo</td>
        <td>100</td>
   </tr>
   <tr>
        <td>发布（签名）证书（.p12）</td>
        <td>发布描述文件（.mobileprovision）</td>
        <td><b>商店包</b></td>
        <td>生产（环境）推送证书（.p12）</td>
        <td>无限制（需Apple审核）</td>
   </tr>
    <tr>
        <td rowspan="2"><b>企业开发者账号</b>（$299、申请条件：邓白氏编码）</td>
        <td>开发（签名）证书（.p12）</td>
        <td>开发描述文件（.mobileprovision）</td>
        <td>企业开发包</td>
        <td>开发（环境）推送证书（.p12）</td>
        <td rowspan="2">com.baidu.BaiduMobileInfoEnterprise</td>
        <td>100</td>
    </tr>
    <tr>
        <td>发布（签名）证书（.p12）</td>
        <td>发布描述文件（.mobileprovision）</td>
        <td><b>企业包</b></td>
        <td>生产（环境）推送证书（.p12）</td>
        <td>无限制（无需Apple审核）</td>
    </tr>
</table>

**签名证书**：App使用，同一开发者账号下的不同App的签名证书相同。

**描述文件**：App使用，同一开发者账号下的不同App的描述文件不同。包含Bundle Id、授权文件、签名证书（同一开发者账号下只有一个）、设备UDID（勾选签名证书添加的100个设备中的部分或全部设备去支持真机调试）。

**推送证书**：推送后端使用，同一开发者账号下的不同App的推送证书不同。

```
同一开发者账号下只有一个开发（签名）证书和一个发布（签名）证书。
同一开发者账号下注册多个App，使用同一个签名证书、不同的描述文件、不同的推送证书。
```

**一、如何从.p12证书文件查看证书到期时间：**

1、使用openssl将.p12文件解压缩到.pem文件

`openssl pkcs12 -in certificate.p12 -out certificate.pem -nodes`

2、使用下面命令从.pem文件中查看到期时间

`cat certificate.pem | openssl x509 -noout -enddate`

3、返回的是格林尼治时间，北京时间需要加8

**二、验证pem推送证书是否有效**

1、验证开发推送证书

`openssl s_client -connect api.development.push.apple.com:443 -cert certificate_tomas_daily_dev.pem`

2、验证发布推送证书

`openssl s_client -connect api.push.apple.com:443 -cert certificate_tomas_daily_dis.pem`

**三、查找安装包内的授权文件**

`codesign -d --entitlements :- BaiduTomasApp.app`或`mgrep.sh "aps-environment"`