#!/bin/bash

# Go to your project directory
cd /var/www/githubActions

# Pull changes from the GitHub repository
git pull origin main

# Install dependencies and build your React project
pnpm install
pnpm run build

# Restart your web server (e.g., nginx)
sudo systemctl restart nginx
