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


# zsh plugins
function ZSH_PLUGIN_ADD(){
	split_str=(${(@s:/:)1})
	zsh_plugin_dir="$ZSH_PATH/${split_str[-1]}"
	if [ -d "$zsh_plugin_dir" ]; then
		echo "${zsh_plugin_dir} already exists..."
	else
		git clone $1 $zsh_plugin_dir
	fi
}

ZSH_PLUGIN_ADD "https://github.com/jeffreytse/zsh-vi-mode"
ZSH_PLUGIN_ADD "https://github.com/rupa/z"
ZSH_PLUGIN_ADD "https://github.com/zsh-users/zsh-autosuggestions"
ZSH_PLUGIN_ADD "https://github.com/zsh-users/zsh-syntax-highlighting"
