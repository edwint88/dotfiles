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

#to be continued
