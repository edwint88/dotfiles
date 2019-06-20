#!/bin/bash

if [ -z "$HOME_DOTFILES" ]; then
	echo "set HOME_DOTFILES first";
	exit 1;
else
	echo "Path HOME_DOTFILES:$HOME_DOTFILES";
fi

# instal rvm if is not installed
if [[ $(command which rvm) == *"not found" ]]; then
	\curl -L https://get.rvm.io | bash -s stable --rails --autolibs=enable;
else
	echo "rvm already installed";
	rvm -v;
fi

# clone theme if is not clonned
if [ ! -d "$HOME_DOTFILES/themes/zsh2000" ]; then
	# check if the zsh2000 is empty
	if [ -z "$(ls -A "$HOME_DOTFILES/themes/zsh2000")" ]; then
		rmdir "$HOME_DOTFILES/theme/zsh2000";
		git clone https://github.com/maverick9000/zsh2000.git "$HOME_DOTFILES/themes/zsh2000";
	else
		echo "zsh2000 module files are available";
	fi
else
	echo "theme already clonned";
fi

# link theme
if [ ! -e "$HOME_DOTFILES/oh-my-zsh/themes/zsh2000.zsh-theme" ]; then
	ln -s "$HOME_DOTFILES/themes/zsh2000/zsh2000.zsh-theme" "$HOME_DOTFILES/oh-my-zsh/themes/zsh2000.zsh-theme";
else
	echo "theme already linked";
fi
