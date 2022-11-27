#!/usr/bin/env zsh

echo "\n <<< Starting Homebrew Setup >>>\n"

if exists brew; then
  echo "brew exists, skipping install"
else
  echo "brew doesn't exist, continueing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if [ $(/usr/bin/pgrep oahd) ]; then
  echo "rosetta exists, skipping install"
else
  echo "rosetta doesn't exist, continueing with install"
	sudo softwareupdate --install-rosetta --agree-to-license
fi

if exists rvm; then
  echo "rvm exists, skipping install"
else
  echo "rvm doesn't exist, continueing with install"
	curl -sSL https://get.rvm.io | bash -s stable
fi



# TODO: keep an eye out for a different `--no-quarantine` solution.
# Currently, you can't do `brew bundle --no-quarantine` as an option.
# It's currently exported in zshrc:
# export HOMEBREW_CASK_OPTS="--no-quarantine"
# https://github.com/Homebrew/homebrew-bundle/issues/474

brew bundle --verbose