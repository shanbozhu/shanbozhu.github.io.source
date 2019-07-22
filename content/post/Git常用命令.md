---
title: "Git常用命令"
date: 2019-05-21T19:33:39+08:00
draft: false
---

#### 一、常用命令

> 表格从上往下依次执行

|操作|命令|备注|
|:---:|---|---|
|克隆**远程仓库**到**本地**(下载远程仓库)|`git clone https://github.com/shanbozhu/shanbozhu.github.io.git`||
|将**工作区**文件添加到**暂存区**|`git add .`||
|将**暂存区**文件提交到**本地仓库**|`git commit -m "message"`||
|拉取**远程**更新到**本地**|`git pull`或`git pull --rebase`|`--rebase`以变基的形式拉取|
|将**本地仓库**推送到**远程**|`git push`||

#### 二、其他命令

|操作|命令|备注|
|---|---|---|
|切换分支|`git checkout test`|如果本地有就切本地，如果本地没有则拉取远程；如果远程有就拉取远程，如果远程没有则拉取失败||
|新建分支|`git branch test`|新建分支test|
|查看本地分支|`git branch`||
|查看远程分支|`git branch -r`||
|删除本地分支|`git branch -D test`||
|将其他分支的提交合并到当前分支|`git cherry-pick b041ff5a643b7b1f5c590dc1a368f956ccc3df94`| `b041ff5a643b7b1f5c590dc1a368f956ccc3df94` 为其他分支的一次提交的commit id|
|合并分支|`git merge test`|合并分支test到当前分支|
|变基分支|`git rebase test`|变基分支test到当前分支，**变基也是合并的意思**|
|查看分支状态|`git status`||
|修改提交信息|`git commit --amend`|修改最后一次提交信息|

#### 三、使用场景

1. 变基其他分支到当前分支

```
git rebase test
git status
解决冲突
git add -u
git rebase --continue
```
2. 变基最后三次提交为一次提交

> b041ff5a643b7b1f5c590dc1a368f956ccc3df94 为倒数第四次提交的commit id

```
git log
git rebase -i b041ff5a643b7b1f5c590dc1a368f956ccc3df94
修改第二、三次提交的pick为squash，保存退出
删除第二、三次提交的提交信息，保存退出
```

#### 四、版本管理
开发各个阶段会在不同的分支进行，一般如下：

`mission/dev/2.2.0` -> `mission/master`（合并分支）-> `mission/release/2.2.0`（新建分支）-> `mission/dev/2.3.0`

具体操作如下：

```
mgit checkout mission/master
mgit merge mission/dev/2.2.0 --no-ff -m "【Merge】【2.2.0】【mission/dev/2.2.0】2.2.0合并至master"
mgit push origin HEAD:refs/for/mission/master
```