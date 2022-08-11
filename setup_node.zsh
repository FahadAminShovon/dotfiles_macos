#!/usr/bin/env zsh

echo "\n <<< Starting Homebrew Setup >>>\n"

if exists node; then
  echo "Node $(node --version) & NPM $(npm --version) already installed"
else
  echo "Installing Node and & NPM with n..."
  n lts
fi

# Install Global NPM Packages
# npm install --global firebase-tools
# npm install --global @angular/cli
# npm install --global @ionic/cli
npm install --global typescript
# npm install --global json-server
# npm install --global http-server

echo "Global NPM Packages Installed:"
npm list --global --depth=0