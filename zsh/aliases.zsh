# Aliases

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
       colorflag="-G"
fi

# reload zsh config
alias reload!='RELOAD=1 source ~/.zshrc'
alias show-zsh-alias="cat ~/dotfiles/zsh/aliases.zsh"

# git
alias logadog='git log --all --decorate --oneline --graph'
alias git-ci='git commit -m'
alias git-co='git checkout'
alias git-a='git add'
alias git-all='git add *'
alias git-st='git status'
alias git-pso='git push origin'
alias git-pl='git pull'
alias git-f='git fetch'

# Custom cd
function cdl() {
 	cd $1;
	echo `pwd`":";
	command ls -lFh ${colorflag};
}	

# file system
alias cls='clear'

# tar
alias tarls='tar -tvf'
alias targzls='tar -ztvf'
alias untar='tar -xvf'
alias untargz='tar -xvzf'

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
alias show-tm="cat ~/dotfiles/tmux/README.md"

# docker aliases
alias dkps="docker ps"
alias dkpsa="docker ps -a"
alias dkim="docker images"
alias dkrm="docker rm -f"
alias dkrmi="docker rmi -f"
alias dkins="docker inspect"

# k8s aliases
alias k="kubectl"
alias kpodsw="kubectl get pods -o wide"
alias kpods="kubectl get pods"
alias knodes="kubectl get nodes"
alias knodesw="kubectl get nodes -o wide"
alias kdeploy="kubectl get deploy"
alias ksvc="kubectl get svc"
alias ksvcw="kubectl get svc -o wide"
alias kpvc="kubectl get pvc -o wide"
alias kaf="kubectl apply -f"

