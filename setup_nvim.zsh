#!/usr/bin/env zsh

echo "\n <<< Starting ZSH Setup >>> \n"

# install packer 
function PACKER_INSTALL(){
	if [ -d $2 ]; then
		echo "$2 already exists..."
	else
		git clone --depth 1 $1 $2
	fi
}

PACKER_INSTALL https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
