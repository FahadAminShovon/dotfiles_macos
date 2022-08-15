# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
alias rm=trash


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
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
