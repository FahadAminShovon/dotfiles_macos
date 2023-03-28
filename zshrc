# echo 'Hello from .zshrc'

# Set variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export ZSH_PATH="$HOME/.config/zsh"
export EDITOR="nvim"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export RVM_PATH=$HOME/.rvm/bin

# Add locations to $PATH Array
typeset -U path
path=(
  "$N_PREFIX/bin"
  $path
  "$HOME/.pub-cache/bin"
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
  "$ANDROID_SDK_ROOT/emulator"
  "$ANDROID_SDK_ROOT/platform-tools"
	$RVM_PATH
)

# Write handy functions
function mkcd(){
  mkdir -p "$@" && cd "$_"
}

# Use ZSH plugins

# ... and other surprises

# loading plugins
source $HOME/.dotfiles/zsh-plugins.zsh
# load alias
source $HOME/.dotfiles/zsh_alias.zsh
eval "$(starship init zsh)"
