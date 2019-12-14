---
title: "Shell常用命令"
date: 2019-12-13T16:20:07+08:00
draft: false
---

#### shell常用命令：
| 命令      | 操作   |  举例  |说明|
| -------- | -----:  | ----:  |---|
| touch    | 新建文件 |  ||
| mkdir -p | 新建目录 |  ||
| cp -a    | 复制 |  ||
| rm -r    |  删除 |     ||
| mv       | 移动、重命名 |    ||
| ls -al   | 文件列表 |  ||
|find      |查找文件名|`find . -name abc`||
|grep      |文件内查找|`grep -rin abc .`||
|sed       |替换|`` sed -i "" "s/abc/def/g" `grep -rl abc .` ``||
|scp -r    |超级拷贝|`scp -r bobo@172.18.22.111:~/Desktop/abc ./`<br>`scp -r ./ bobo@172.18.22.111:~/Desktop/abc`||
