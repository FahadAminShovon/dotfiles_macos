echo 'Hello from .zshrc'

# Set variables
# Syntax highlighting for man pages using bat
# export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export NULLCMD=bat

# Change ZSH Options

# Create Aliases
alias ls='exa -laFh --git --icons'
alias lt='exa -lFH --git --icons --tree --level=2'
alias exa='exa -laFh --git --icons'
alias cat='bat'
alias man='batman'
alias grep='batgrep'
alias bbd='brew bundle dump --force --describe'
alias trail='<<<${(F)path}'

# Customize Prompts
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add locations to $PATH variable

# Write handy functions
function mkcd(){
 mkdir -p "$@" && cd "$_"
}

# Use ZSH plugins

# ... and other surprises

