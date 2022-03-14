#!/usr/bin/env bash

# Push to github

echo -e "\nPushing to github...\n"

git add --all .
git commit -m "Updated"
git push origin main --force

echo -e "\nDone!\n"
