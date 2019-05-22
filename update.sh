#!/bin/bash
cp -a public/* ~/Desktop/shanbozhu.github.io
rm -r public/*

cd ~/Desktop/shanbozhu.github.io
git add .
git commit -m "no message"
git push
