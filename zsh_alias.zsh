#!/usr/bin/env zsh
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
alias gbr="git branch | command grep -v "master" |command xargs git branch -D"

