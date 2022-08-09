echo 'Hello from .zshrc'

# Set variables

# Change ZSH Options
alias ls='ls -lAFh'

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

