#!/bin/bash
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/homebrew/bin"

echo "Checking for updates..." >> "/Users/mamta/Desktop/DevOps Course/GIT Test Server/pull.log"

cd "/Users/mamta/Desktop/DevOps Course/GIT Test Server/CI-Auto"

git fetch origin master
LOCAL=$(git rev-parse @)
REMOTE=$(git rev-parse @{u})

if [ "$LOCAL" != "$REMOTE" ]; then
  git pull origin main
  echo "Updated at $(date)" >> "/Users/mamta/Desktop/DevOps Course/GIT Test Server/pull.log"
else
  echo "No updates at $(date)" >> "/Users/mamta/Desktop/DevOps Course/GIT Test Server/pull.log"
fi
