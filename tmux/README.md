# Shortcuts & Cheatsheet

## Comands (C + :)

__C = Ctrl + a__

- custom pane -> split-window -v -p 10 -t window
- new window -> new-window -n window
- select pane -> select-pane -t 1
- resize-pane -D 20 (-D=down -U=up -L=left -R=right -t=pane)
- synchronize panes toggle -> :setw synchronize-panes
- list shortcuts -> C + ?
- CLI first line -> C + a <-> Ctrl + e (end of line)

## Panes

- break pane -> C + !
- split vertical -> C + % or C + | or C + \
- split horizontal -> C + " or C + _ or C + -
- next pane -> C + C
- last pane -> C + ;
- swap pane -> C + { or }
- show pane #n -> C + q
- kill pane -> C + x
- toggle zoom -> C + z
- vim pane move -> C + hjkl
- toggle layouts -> C + space

## Sync Panes
- :setw synchronize-panes

## Window

- show windows -> C + w
- find window -> C + f
- select window (from index) -> C + \'
- create windows -> C + c
- next window -> C + n
- previous window -> C + p
- #n window -> C + #n
- rename window -> C + ,
- kill window -> C + &
- clock -> C + t

## Session

- detach -> C + d
- rename session -> C + $
- choose session -> C + s

## Copy Mode

- enter copy mode -> C + \[
- navigate -> arrows
- space -> start selection
- finish copy mode -> enter 
- paste selection -> C + \]

- choose buffer -> C + =
- delete buffer -> C + -

## Config

- reload config -> C + r

## Aliases for tmux
- ta="tmux attach -d -t"
- tm="tmux ls"
- tms="tmux new -s"
- tks="tmux kill-session -t"

## Plugins
Uses TPM (https://github.com/tmux-plugins/tpm)
  Install plugins -> C + I
  Update plugins -> C + U
  Remove/Uninstall plugins -> C + alt + U
  
### Other Plugins
- tmux resurrect (https://github.com/tmux-plugins/tmux-resurrect)
    * save env -> C + Ctrl + s
    * restore env -> C + Ctrl + r
- tmux continumm (https://github.com/tmux-plugins/tmux-continuum)
- tmux copycat (https://github.com/tmux-plugins/tmux-copycat)
    * search regex -> C + /
    * C + ctrl-f -> simple file search
    * C + ctrl-g -> jumping over git status files (best used after git status command)
    * C + alt-h -> jumping over SHA-1 hashes (best used after git log command)
    * C + ctrl-u -> url search (http, ftp and git urls)
    * C + ctrl-d -> number search (mnemonic d, as digit)
    * C + alt-i -> ip address search
    * n,N -> next, previous find
- tmux yank (https://github.com/tmux-plugins/tmux-yank)
    * C + y -> copy (mouse select + y before let go)
    * C + Y -> copy pane
    * Copy Mode:
      * y -> copy selection to clipboard
      * Y -> "put selection" (copy + paste)
- tmux open (https://github.com/tmux-plugins/tmux-open)
    * o ( + selected text) -> open selected text
    * Ctrl + o ( + selected text) -> open in editor (vim)
- tmux pain control (https://github.com/tmux-plugins/tmux-pain-control)
	* C + | or - or _ or \ -> to create a pane
	* C + hjkl -> to move to another pane
	* C + shift + hjkl -> to increase pane size
	* C + > or < -> to change window order
	* set-option -g @pane_resize "10" (default is 5)
- tmux battery status (https://github.com/tmux-plugins/tmux-battery)
- ~~tmux cpu and gpu status (https://github.com/tmux-plugins/tmux-cpu)~~
- tmux facebook fpp [REQ: install brew install fpp] (https://github.com/tmux-plugins/tmux-fpp)
	* C + shift + F
- tmux sidebar (https://github.com/tmux-plugins/tmux-sidebar)
	* C + tab -> show side bar without focus
	* C + backspace -> show side bar with focus
- tmux prefix highlight (https://github.com/tmux-plugins/tmux-prefix-highlight)
- tmux sysstat (https://github.com/samoshkin/tmux-plugin-sysstat)
