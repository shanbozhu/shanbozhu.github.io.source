---
title: "Universal Link功能的实现"
date: 2019-07-09T15:21:53+08:00
draft: false
---

#### 一. Universal Link是干什么的
通用链接是Apple在iOS 9引入的一个新功能，是通过传统HTTP链接来启动App的技术。可以使用相同的网址打开网站和App。通过唯一的网址，就可以链接到App中具体的页面，如果用户没有安装App则链接到对应的普通网页。

#### 二. Universal Link怎么实现
主要有如下三步:

**1. 苹果开发者中心配置**

登录开发者账号，在`Identifiers -> AppIDs`找到自己的App ID，打开Associated Domains服务。

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_7_9/2019_7_9_0.png?raw=true)

**2. 服务端配置**

1). 新建名为`apple-app-site-association`的json文件，不能加`.json`后缀。

2). 编辑该文件，内容格式如下，注意不能更改其格式和字段名称。

```
{
    "applinks":
    {
        "apps": [],
        "details": [
            {
                "appID": "FFJNMLHK32.cn.damai.iphone",
                "paths": ["*"]
            }
        ]
    }
}
```
appID：由前缀和ID两部分组成，可以在开发者中心中的`Identifiers -> AppIDs`中点击对应的App ID查看

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_7_9/2019_7_9_1.png?raw=true)

paths：对应域名中的路径，用于过滤可以跳转到App的特定链接

3). 把配置好的`apple-app-site-association`文件上传到服务器该域名的根目录下。

4). 点击[https://damai.cn/apple-app-site-association](https://damai.cn/apple-app-site-association)验证`apple-app-site-association`文件是否上传成功

**3. xcode配置**

1). 要用Apple Developer Program members的账号登陆Xcode，个人账号或未登录则看不到Associated Domains选项

2). 找到工程的`Capabilities -> Associated Domains`，打开此功能，在Domains中添加支持跳转的域名，域名的格式为`applinks:www.damai.cn`

![](https://github.com/shanbozhu/shanbozhu.github.io.resource/blob/master/image/2019_7_9/2019_7_9_2.png?raw=true)

3). 在AppDelegate中实现方法，在该方法内可以实现跳转到具体页面的操作

```
- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray * _Nullable))restorationHandler {
    NSURL *url = userActivity.webpageURL;
    NSLog(@"url.absoluteString = %@", url.absoluteString);

    return YES;
}
```
4). 所有操作均已完成

备忘录内点击[https://damai.cn/xx](https://damai.cn/xx)链接可以直接唤起App，验证功能正常。

```
调用场景：
Universal Link：Safari浏览器、网页跨域点击、备忘录。
URL Schema：Safari浏览器、自家APP点击、自家APP内网页点击（调用端能力，在调用openURL打开；非自家APP引导至Safari打开）、备忘录。
```

#### 三. Universal Link注意事项
1. 域名需要SSL证书，也就是需要支持https协议。

2. 对json文件的请求仅在App安装时请求一次，以后除非App更新或重新安装，否则不会在每次打开App时请求`apple-app-site-association`。如果第一次请求时网络连接出了问题, apple会缓存请求，等待有网的时候再去请求。

3. 从iOS 9.2开始，若当前网页的domain与跳转的Universal Link的domain相同则不会工作，必须要跨域才生效。
