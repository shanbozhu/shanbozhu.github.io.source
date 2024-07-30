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
|将**工作区**文件添加到**暂存区**|`git add .`|添加到暂存区|
|将**暂存区**文件提交到**本地仓库**|`git commit -m "message"`|提交到本地|
|将**本地仓库**推送到**远程**|`git push`|推送到远程|
|拉取**远程**更新到**本地**|`git pull`或`git pull --rebase`|`--rebase`以变基的形式拉取|

#### 二、其他命令

|操作|命令|备注|
|---|---|---|
|切换分支|`git checkout test`|如果本地有就切本地，如果本地没有则从远程拉取；如果远程有就从远程拉取，如果远程也没有则失败||
|新建分支|`git branch test`|新建test分支|
|查看本地分支|`git branch`||
|查看远程分支|`git branch -r`||
|删除本地分支|`git branch -D test`||
|将其他分支的提交合并到当前分支|`git cherry-pick b041ff5a643b7b1f5c590dc1a368f956ccc3df94`<br>`git cherry-pick b041ff5a643b7b1f5c590dc1a368f956ccc3df94..79aaa3a9071c2040d602a60bc6e41303c1039bee`<br>`git cherry-pick aae729b78088e10af0f589e51a560f388cde3d6d -m 1`|1、连续的commit id合并，不包含`b041ff5a643b7b1f5c590dc1a368f956ccc3df94`节点<br>2、`aae729b78088e10af0f589e51a560f388cde3d6d`是一个合并节点|
|合并分支|`git merge test --no-ff`|合并test分支到当前分支，不使用快进生成一个新的合并节点|
|变基分支|`git rebase test`|变基test分支到当前分支，**变基也是合并的意思**|
|查看分支状态|`git status`||
|修改提交信息|`git commit --amend`|更正上一次提交|
|修改冲突风格|`git config --global merge.conflictstyle diff3`<br>`git config --global merge.conflictstyle merge`|**diff3风格**或**merge风格（默认）**<br>参考文档：https://blog.csdn.net/Mrrr_Li/article/details/125300057<br>https://blog.csdn.net/weixin_34062329/article/details/92570957<br>https://www.zhihu.com/question/27507789/answer/2233901143|
|查看远程仓库地址|`git remote -v`||
|增加远程仓库地址|`git remote add origin1 https://github.com/shanbozhu/TestOC.git`|一个本地仓库可以对应多个远程仓库地址|
|删除远程仓库地址|`git remote remove origin1`||
|删除缓存|`git rm -r --cached file`|去除git管理，重新添加file到`.gitignore`|
|跟踪远程分支|`git branch -u origin/lite/master`或`git branch --set-upstream-to=origin/lite/master`|本地当前分支跟踪远程分支|
|放弃工作区的更改|`git checkout -- .`||
|放弃暂存区的更改，回到工作区|`git reset HEAD .`||
|放弃工作区和暂存区的更改|`git reset --hard`||

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
修改第二、三次提交的pick为squash或s，保存退出
删除第二、三次提交的提交信息，保存退出
```

#### 四、版本管理
开发各个阶段会在不同的分支进行，一般如下：

`mission/master`->`mission/dev/2.2.0`【功能测试】->`mission/master`（上车）【集成测试】->`mission/release/2.2.0`【灰度测试】一灰、二灰->`mission/release/2.2.0`【发版】

上车具体操作如下：

```
mgit checkout mission/master
mgit pull
mgit merge mission/dev/2.2.0 --no-ff -m "【上车】【2.2.0】【mission/dev/2.2.0】【mission-5968】2.2.0需求上车"
mgit status
mgit push
```

#### 五、Sourcetree问题解决

1. 对GitHub使用git push时提示用户名、密码错误

`Sourcetree`->`偏好设置...`->`高级`->`对 URL 的默认用户名其中不包括`->删除`github.com`一栏-> Sourcetree重新执行`git push`-> Sourcetree弹框提示`输入用户名和密码`->输入用户名`shanbozhu@gmail.com`，输入密码`个人token`->点击ok，推送成功