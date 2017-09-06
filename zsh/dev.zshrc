# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/zartu/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Completion
# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Aliases

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
   colorflag="--color"
else # OS X `ls`
   colorflag="-G"
fi

# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# Custom cd
cdls() {
	cd $1;
	ls;
}	

# file system
alias cd='cdls'
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# tmux aliases
alias ta="tmux attach -d -t"
alias tm="tmux ls"
alias tms="tmux new -s"
alias tks="tmux kill-session -t"

