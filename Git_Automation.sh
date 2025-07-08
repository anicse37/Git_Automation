#!/bin/bash

echo "Hey!!!"

git status 

read  -p "Enter your commit: " msg

git add .

git status

git commit -m "$msg"

git push

nohup google-chrome \
  --restore-last-session \
  --disable-gpu \
  --disable-software-rasterizer \
  --profile-directory="Profile 1" \
  "https://github.com/anicse37/Git_Automation" \
  >/dev/null 2>&1 &
