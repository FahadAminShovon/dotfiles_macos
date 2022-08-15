#!/usr/bin/env zsh

echo "\n <<< Starting ZSH Setup >>> \n"

# Installation unnecessary; it's in the Brewfile.

# if grep -Fxq '/opt/homebrew/bin/zsh' '/etc/shells'; then
#   echo '/opt/homebrew/bin/zsh already exits in /etc/shells'
# else
#   echo "Enter superuser (sudo) password to edit /etc/shells"
#   echo '/opt/homebrew/bin/zsh' | sudo tee -a '/etc/shells' >/dev/null
# fi

# if [ "$SHELL" = '/opt/homebrew/bin/zsh' ] ; then
#   echo '$SHELL is already' $SHELL
# else
#   echo "Enter user password to change login shell"
#   chsh -s '/opt/homebrew/bin/zsh'
# fi

# if sh --version | grep -q zsh; then
#   echo '/private/var/selected/sh already linked to /bin/zsh'
# else
#   echo "Enter superuser (sudo) password to symlink sh to zsh"
#   sudo ln -sfv /bin/zsh /private/var/select/sh
# fi


defaults write -g ApplePressAndHoldEnabled -bool false 

# zsh plugins
git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_PATH/zsh-vi-mode
git clone https://github.com/romkatv/powerlevel10k $ZSH_PATH/powerlevel10k
git clone https://github.com/rupa/z $ZSH_PATH/z
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PATH/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_PATH/zsh-syntax-highlighting