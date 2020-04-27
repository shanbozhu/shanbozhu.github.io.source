#!/bin/bash
# 用法./update.sh
cp -a public/* ../shanbozhu.github.io
rm -r public/*

cd ../shanbozhu.github.io
git add .
git commit -m "no message"
git push
