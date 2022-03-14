#!/usr/bin/env bash

# Repository cleanup

echo "Cleaning up repository..."

# Backup config & remove git dir
echo "Backing up config & deleting git dir..."
mv .git/config config
rm -rf .git

# Setup git 
echo "Setting up git repository..."
git config --global init.defaultBranch main
git init
git config --global user.name "adi1090x"
git config --global user.email "adi1090x@gmail.com"
sudo git config --system core.editor vim
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple
echo "Git repository setup complete!"

# Move config to git again & push changes to repository
echo "Moving config to git dir & push changes..."
mv config .git/config
git add --all .
git commit -m "Updated"
git push origin main --force

echo "Clean up completed."
