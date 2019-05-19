#!/bin/sh
echo "开始执行hugo"
hugo
echo "完成执行hugo"
echo "开始执行拷贝"
cp -a public/* ~/Desktop/shanbozhu.github.io
echo "完成执行拷贝"
