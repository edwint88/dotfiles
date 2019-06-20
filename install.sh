#!/bin/bash

if [ -z "$HOME_DOTFILES" ]; then
	export HOME_DOTFILES=$PWD;
else
	echo "Path HOME_DOTFILES:$HOME_DOTFILES";
fi

# download material-design-colors
if [[ -z "$(ls -A "$HOME_DOTFILES/themes/iterm/material-design-colors.itermcolors")" ]]; then
		curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
else
	echo "material design already downloaded";
fi

# change shell
if [[ $(command which zsh) == *"not found" ]]; then
	echo "please install zsh";
	exit 1;
else
	command chsh -s "$(command which zsh)";
fi


# install oh-my-zsh

# install plugins for oh-my-zsh
# https://hackernoon.com/oh-my-zsh-made-for-cli-lovers-bea538d42ec1
# zsh-autosuggestions
if [[ -z "$(ls -A "$HOME_DOTFILES/oh-my-zsh/custom/plugins/zsh-autosuggestions")" ]]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions "$HOME_DOTFILES/oh-my-zsh/custom/plugins";
else
	echo "zsh-autosuggestions plugin is already installed";
fi
# zsh-syntax-highlighting
if [[ -z "$(ls -A "$HOME_DOTFILES/oh-my-zsh/custom/plugins/zsh-syntax-highlighting")" ]]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting "$HOME_DOTFILES/oh-my-zsh/custom/plugins";
else
	echo "zsh-syntax-highlighting plugin is already installed";
fi
# zsh-completions
if [[ -z "$(ls -A "$HOME_DOTFILES/oh-my-zsh/custom/plugins/zsh-completions")" ]]; then
	git clone https://github.com/zsh-users/zsh-completions "$HOME_DOTFILES/oh-my-zsh/custom/plugins";
else
	echo "zsh-completions plugin is already installed";
fi
# zsh-apple-touchbar
if [[ -z "$(ls -A "$HOME_DOTFILES/oh-my-zsh/custom/plugins/zsh-apple-touchbar")" ]]; then
	git clone https://github.com/zsh-users/zsh-apple-touchbar "$HOME_DOTFILES/oh-my-zsh/custom/plugins";
else
	echo "zsh-apple-touchbar plugin is already installed";
fi
#to be continued
