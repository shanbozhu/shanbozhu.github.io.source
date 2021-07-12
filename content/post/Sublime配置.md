---
title: "Sublime配置"
date: 2019-05-22T11:28:09+08:00
draft: false
---

1. **安装Sublime**

> 输入如下注册码激活Sublime

```
----- BEGIN LICENSE -----
Mifeng User
Single User License
EA7E-1184812
C0DAA9CD 6BE825B5 FF935692 1750523A
EDF59D3F A3BD6C96 F8D33866 3F1CCCEA
1C25BE4D 25B1C4CC 5110C20E 5246CC42
D232C83B C99CCC42 0E32890C B6CBF018
B1D4C178 2F9DDB16 ABAA74E5 95304BEF
9D0CCFA9 8AF8F8E2 1E0A955E 4771A576
50737C65 325B6C32 817DCB83 A7394DFA
27B7E747 736A1198 B3865734 0B434AA5
------ END LICENSE ------
```

2. **配置Sublime**

> 1. sublime设置：Preference -> Settings
> 2. 在Preference.sublime-settings - User文件中`增加`如下内容

```
{
	"font_size": 14,
	"open_files_in_new_window": false,
	"update_check": false
}
```

3. **安装Package Control**

> 1. 使用快捷键：`command + shift + p`
> 2. 在弹出的对话框中输入：`pc`，安装Package Control
> 3. 在输入：`pci`，安装Package Control: Install Package

4. **配置Package Control**

> 1. sublime设置：Preference -> Package Settings -> Package Control -> Settings
> 2. 在Package Control.sublime-settings - User文件中`增加`如下内容，具体参见：[https://github.com/wbond/package_control/issues/1220](https://github.com/wbond/package_control/issues/1220)

```
{
  "bootstrapped": true,
  "channels": [
    "/Users/zhushanbo/myshells/channel_v3.json"
  ],
  "debug": true,
  "downloader_precedence": {
    "linux": [
      "curl",
      "urllib",
      "wget"
    ],
    "osx": [
      "curl",
      "urllib"
    ],
    "windows": [
      "wininet"
    ]
  }
}
```

5. **安装HTML-CSS-JS Prettify**

> 1. 使用快捷键：`command + shift + p`
> 2. 在弹出的对话框中输入：`pci`，打开Package Control: Install Package
> 3. 在弹出的对话框中输入：`HTML-CSS-JS Prettify`，安装插件

6. **安装Pretty JSON**

> 1. 使用快捷键：`command + shift + p`
> 2. 在弹出的对话框中输入：`pci`，打开Package Control: Install Package
> 3. 在弹出的对话框中输入：`Pretty JSON`，安装插件
> 4. 使用快捷键：`command + shift + p`，选中`Pretty Json: Format (Pretty Print) JSON`，完成json格式化

7. **安装ExportHtml**

> 1. 使用快捷键：`command + shift + p`
> 2. 在弹出的对话框中输入：`pci`，打开Package Control: Install Package
> 3. 在弹出的对话框中输入：`ExportHtml`，安装插件

8. **其他推荐安装的插件**

> 1. ChineseLocalizations
> 2. auto-save
> 3. Docblockr