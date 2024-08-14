---
title: "Shell常用命令和快捷键"
date: 2019-12-13T16:20:07+08:00
draft: false
---

#### shell常用命令：
| 命令      | 操作   |  举例  |说明|
| -------- | -----:  | ----:  |---|
|touch     |新建文件|||
|mkdir -p  |新建目录|||
|cp -a     |复制|||
|rm -r     |删除|||
|mv        |移动、重命名|||
|ls -al    |文件列表|||
|find      |查找文件名|`find . -name "abc"`||
|grep -rin |文件内查找|`grep -rin abc .`||
|sed       |替换|`` sed -i "" "s/abc/def/g" `grep -rl abc .` ``||
|scp -r    |超级拷贝|`scp -r bobo@172.18.22.111:~/Desktop/abc ./`<br>`scp -r ./ bobo@172.18.22.111:~/Desktop/abc`||
|ssh       |登录远程服务器|`ssh zhushanbo@relay01.damai.cn`||
|sudo su   |切换超级用户|||
|pwd       |打印目录|||
|realpath  |打印路劲|||
|cat       |查看文件内容|||
|more      |分页查看文件内容|||
|head      |查看文件前10行|||
|tail      |查看文件后10行|||
|ln -s     |创建软连接|ln -s 源文件 目标文件||
|man       |查看manpage|`man ls`||
|which     |显示命令路径|`which ls`||
|tar       |压缩、解压缩|`tar zcvf abc.tar.gz abc`<br>`tar zxvf abc.tar.gz`||
|shutdown  |关机|`shutdown -h now`<br>`shutdown -h 20:25`<br>`shutdown -h +10`||
|halt -p   |关机|||
|history   |查看历史命令|||
|ps aux    |查看系统进程|||
|top       |查看资源消耗|||
|kill -9   |关闭进程|||
|du -sh *  |查看文件或目录大小|||
|df -h     |显示磁盘占用|||
|>         |重定向到文件（覆盖）|`ls > test.log`<br>`ls 1 > test.log`<br>`command > file 2>&1`<br>等价于<br>`command &> file`|`2>&1`：将命令的标准错误重定向到标准输出。2>&1是标准写法，不可改变<br>`&>`：将命令的标准输出和标准错误都重定向到file文件<br>`0`：文件描述符，标准输入（stdin）<br>`1`：文件描述符，标准输出（stdout）<br>`2`：文件描述符，标准错误输出（stderr）|
|>>        |追加到文件|||
|chmod     |修改文件权限|`chmod 777 abc`<br>`chmod +x abc`|r=4，w=2，x=1|
|apt-get   |安装软件|`apt-get install abc`||
|brew      |安装软件|`brew install abc`||
|mount     |挂载设备|`mount /dev/cdrom /mnt/cdrom`||
|echo      |输出|`echo "hello world"`<br>`echo -n "hello world"`<br>`echo -e "hello \nworld"`|-n不换行，-e识别转义字符|
|\|        |管道|`ls \| grep abc`||
|date +%s  |unix时间戳|||
|alias     |别名|`alias dl='trash -F'`||
|tree -aN  |目录结构|||
|curl      |网络请求|下载文件：`curl -O http://dldir1.qq.com/qqfile/QQforMac/QQ_V5.4.0.dmg`<br>断点续传：`curl -O -C - http://dldir1.qq.com/qqfile/QQforMac/QQ_V5.4.0.dmg`<br>`curl -fsSL`|-fsSL：这种组合通常用于脚本中，以确保下载过程安静且可靠，并在失败时返回明确的错误信息。<br>-f：遇到 HTTP 错误时不输出内容，只返回错误状态码。<br>-s：静默模式，不显示进度条或错误信息。<br>-S：在静默模式下显示错误信息。<br>-L：自动跟随重定向。|
|wget      |下载|下载文件：`wget http://dldir1.qq.com/qqfile/QQforMac/QQ_V5.4.0.dmg`<br>断点续传：`wget -c http://dldir1.qq.com/qqfile/QQforMac/QQ_V5.4.0.dmg`||

#### shell常用快捷键：
| 命令      | 操作   |
| -------- | -----: |
|Ctrl + a  |移到命令行首|
|Ctrl + e  |移到命令行尾|
|Ctrl + f  |按字符前移|
|Ctrl + b  |按字符后移|
|Alt + f   |按单词前移|
|Alt + b   |按单词后移|
|Ctrl + u  |从光标处删除至命令行首|
|Ctrl + k  |从光标处删除至命令行尾|
|Ctrl + w  |从光标处删除至单词首|
|Ctrl + d  |删除光标处的字符|
|Ctrl + h  |删除光标前的字符|
|Ctrl + y  |粘贴至光标后|
|Ctrl + r  |逆向搜索命令历史|
|Ctrl + p  |历史中的上一条命令|
|Ctrl + n  |历史中的下一条命令|
|Ctrl + l  |清屏|
|Ctrl + s  |阻止屏幕输出|
|Ctrl + q  |允许屏幕输出|
|Ctrl + c  |取消命令|
|Ctrl + z  |挂起命令|