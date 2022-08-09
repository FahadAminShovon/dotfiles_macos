echo 'Hello from .zshrc'

# Set variables
# Syntax highlighting for man pages using bat
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Change ZSH Options
alias ls='ls -lAFh'
alias cat='bat'

# Create Aliases

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

