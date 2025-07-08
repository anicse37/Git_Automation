# Git Automation Script

This is a simple Bash script that helps you automate common Git tasks and then opens your GitHub repository in Google Chrome.

## 🛠 What It Does

- Checks the current Git status
- Prompts you to enter a commit message
- Stages all changes (`git add .`)
- Shows updated Git status
- Commits the changes using your provided message
- Pushes to the remote repository
- Opens your GitHub repository in **Google Chrome** (Profile 1) using `nohup`

## 📄 Script

```bash
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
  "https://github.com/username/repositories_name" \
  >/dev/null 2>&1 &
