---
title: "Git常用命令"
date: 2019-05-21T19:33:39+08:00
draft: false
---

**一、常用命令**

> 表格从上往下依次执行

|操作|命令|备注|
|:---:|---|---|
|克隆**远程仓库**到**本地**(下载远程仓库)|`git clone https://github.com/shanbozhu/shanbozhu.github.io.git`||
|将**工作区**文件添加到**暂存区**|`git add .`||
|将**暂存区**文件提交到**本地仓库**|`git commit -m "message"`||
|拉取**远程**更新到**本地**|`git pull`或`git pull --rebase`|`--rebase`以变基的形式拉取|
|将**本地仓库**推送到**远程**|`git push`||

**二、其他命令**

1. 切换分支

> 如果本地有就切本地，如果本地没有则拉取远程；如果远程有就拉取远程，如果远程没有则拉取失败

`git checkout test`

2. 新建分支

> 新建分支test

`git branch test`

3. 查看本地分支

`git branch`

4. 查看远程分支

`git branch -r`

5. 删除本地分支

`git branch -D test`

6. 合并其他分支的提交到当前分支

> `b041ff5a643b7b1f5c590dc1a368f956ccc3df94` 为其他分支的一次提交的commit id

`git cherry-pick b041ff5a643b7b1f5c590dc1a368f956ccc3df94`



|操作|命令|备注|
|---|---|---|
|切换分支|`git checkout test`|如果本地有就切本地，如果本地没有则拉取远程；如果远程有就拉取远程，如果远程没有则拉取失败||
|新建分支|`git branch test`|新建分支test|
|查看本地分支|`git branch`||
|查看远程分支|`git branch -r`||
|删除本地分支|`git branch -D test`||
|合并其他分支的提交到当前分支|`git cherry-pick b041ff5a643b7b1f5c590dc1a368f956ccc3df94`| `b041ff5a643b7b1f5c590dc1a368f956ccc3df94` 为其他分支的一次提交的commit id|