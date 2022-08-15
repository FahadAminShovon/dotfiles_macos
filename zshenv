# echo 'Hello from .zshenv'
export ZSH_PATH="$HOME/.config/zsh"
function exists(){
  # `command -v` is similar to `which`
  command -v $1 >/dev/null 2>&1

  # More explicitly written:
  # command -v $1 >/dev/null 2>/dev/null
}