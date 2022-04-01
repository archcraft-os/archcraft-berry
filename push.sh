#!/usr/bin/env bash

# Push to github

branch="`git branch --show-current`"

echo -e "\nPushing to github...\n"

git add --all .
read -p "Enter Commit Message: " cmt
git commit -m "$cmt"
git push origin "$branch"

echo -e "\nDone!\n"
