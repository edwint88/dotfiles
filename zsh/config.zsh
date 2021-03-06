export EDITOR=vim

# reenable me when adding zsh functions
# #fpath=($ZSH/zsh/functions $fpath)
# #autoload -U $ZSH/zsh/functions/*(:t)

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

# history stuff
setopt HIST_VERIFY # don\'t immediately run a command when loading it with something like !$, but show for preview
setopt SHARE_HISTORY # share history between sessions
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history, instead of obliterating the entire file per shell
setopt HIST_IGNORE_DUPS  # don\'t record dupes in history, if they happen directly after each other (but en masse dupes allowed)
setopt HIST_REDUCE_BLANKS # i think this means trim commands, docs unclear...
#setopt INC_APPEND_HISTORY # this is implied by SHARE_HISTORY, and docs say not to do both

# autocomplete stuff https://github.com/sorin-ionescu/prezto/blob/master/modules/completion/init.zsh
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.
setopt ALWAYS_TO_END       # Move cursor to the end of a completed word.
setopt PATH_DIRS           # Perform path search even on command names with slashes.
setopt AUTO_MENU           # Show completion menu on a successive tab press.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH    # If completed parameter is a directory, add a trailing slash.
unsetopt MENU_COMPLETE     # Do not autoselect the first completion entry.
unsetopt FLOW_CONTROL      # Disable start/stop characters in shell editor.

# zsh tmux settings
ZSH_TMUX_AUTOSTART='true'

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt COMPLETE_ALIASES

# set themes
#ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="powerlevel9k"
# install ruby rmv 
ZSH_THEME="zsh2000"

#zle -N newtab

# # when pasting in a URL, escape necessary chars (?, &, etc.)
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
