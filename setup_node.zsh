#!/usr/bin/env zsh

echo "\n <<< Starting Homebrew Setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node and & NPM with n..."
  n lts
fi

npm install --global typescript
npm install --global trash-cli

echo "Global NPM Packages Installed:"
npm list --global --depth=0