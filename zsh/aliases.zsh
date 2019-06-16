# Aliases

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
       colorflag="-G"
fi

# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'

# git
alias logadog='git log --all --decorate --oneline --graph'

# Custom cd
function cdl() {
 	cd $1;
	echo `pwd`":";
	command ls -lFh ${colorflag};
}	

# file system
alias cls='clear'

#alias cd='cdl'
alias ..='cdl ..'
alias ...='cdl ../..'
alias ....="cdl ../../.."
alias .....="cdl ../../../.."

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
