#!/usr/bin/env zsh

echo "\n <<< Starting Homebrew Setup >>>\n"

# Node version are managed with `n`, which is in the Brewfile.
# See zshrc for N_PREFIX variable and addition to $pat array.

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node and & NPM with n..."
  n lts
fi

npm install --global yarn
npm install --global typescript
npm install --global trash-cli
npm install --global expo-cli
echo "Global NPM Packages Installed:"
npm list --global --depth=0