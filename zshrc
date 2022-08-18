# echo 'Hello from .zshrc'

# Set variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat
export N_PREFIX="$HOME/.n"
export ZSH_PATH="$HOME/.config/zsh"
# Change ZSH Options

# Create Aliases
alias ls='exa -lFh --git --icons'
alias la='exa -lFah --git --icons'
alias lt='exa -lFH --git --icons --tree --level=2'
alias exa='exa -lFh --git --icons'
alias cat='bat'
alias man='batman'
alias grep='batgrep'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'
alias rm='trash -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias h='history'
alias ..='cd ..'
alias ...='cd ../..'
alias vi='nvim'
alias vim='nvim'


# Add locations to $PATH Array
typeset -U path
path=(
  "$N_PREFIX/bin"
  $path
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
)

# Write handy functions
function mkcd(){
	mkdir -p "$@" && cd "$_"
}

# Use ZSH plugins

# ... and other surprises

# loading plugins
source $HOME/.dotfiles/zsh-plugins.zsh
eval "$(starship init zsh)"