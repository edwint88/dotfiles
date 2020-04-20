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

# install oh-my-zsh
if [[ $(command which zsh) == *"not found" ]]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
	echo "zsh is already installed";
fi

# change shell
if [[ $(command which zsh) == *"not found" ]]; then
	echo "please install zsh";
	exit 1;
else
	command chsh -s "$(command which zsh)";
fi

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

# install brew

if [[ $(command which brew) == *"not found" ]]; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
	echo "brew is already installed";
fi

# install jenv for java versions
brew install jenv

# setup jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ./zsh/zshrc.symlink
echo 'eval "$(jenv init -)"'>> ./zsh/zshrc.symlink

# install cask versions
brew tap homebrew/cask-versions

# install keepassxc for macos
brew cask install keepassxc

# install k9s
brew install derailed/k9s/k9s 

# install nmap
brew cask install zenmap
# brew install nmap

# install tmux
brew install ncurses
brew install utf8proc
brew install tmux

# install nvm
brew install nvm

# install git-flow
brew install git-flow

# install ffmpeg
brew install ffmpeg

# install maven
brew install maven

# install postman
brew cask install postman

# install java versions
brew cask install java11

# add java13 to jenv
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/home

echo "Now you can do 'jenv versions' --- 'jenv glboal #version' ---- 'jenv local #version' ---- 'jenv shell #version'"


#to be continued
