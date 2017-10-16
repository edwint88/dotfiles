# Fonts
	inconsolata -> https://fonts.google.com/specimen/Inconsolata?selection.family=Inconsolata

# Keymaps

## zsh
#### tmux
	ta = tmux attach
	tm = tmux ls
	tms = tmux new session
	tks = tmux kill session

## Vim

	<C-n> NERDTreeToggle - file tree plugin
	<C-p> CtrlP - fuzzy search plugin
	h,j,k,l = <-v^->  

## tmux

To enable vi like cursor movement in copy mode put the following in your ~/.tmux.conf:
	set-window-option -g mode-keys vi
	
See buffer: tmux show-buffer\
Save buffer: tmux save-buffer foo.txt\
Paste all buffers: `C + #`\

tmux list-buffers\
tmux show-buffer -b n\
tmux save-buffer -b n foo.txt\

### Links
https://awhan.wordpress.com/2010/06/20/copy-paste-in-tmux/

## phpstorm


# Inspirations
 	vim + tmux: https://github.com/nicknisi/dotfiles

