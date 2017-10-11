# Fonts
	inconsolata -> https://fonts.google.com/specimen/Inconsolata?selection.family=Inconsolata

# Keymaps
## zsh

	ta = tmux attach
	tm = tmux ls
	tms = tmux new session
	tks = tmux kill session

## Vim

	<C-n> NERDTreeToggle - file tree plugin
	<C-p> CtrlP - fuzzy search plugin
	h,j,k,l = <-v^->  

## tmux

- Enter copy mode using Ctrl+a `[`
- navigate to beginning of text, you want to select and hit Space
- move around using arrow keys to select region
- when you reach end of region simply hit Enter to copy the region
- now Ctrl+a `]` will paste the selection

To enable vi like cursor movement in copy mode put the following in your ~/.tmux.conf:
	set-window-option -g mode-keys vi
	
See buffer: tmux show-buffer
Save buffer: tmux save-buffer foo.txt
Paste all buffers: Ctrl+a #

tmux list-buffers
tmux show-buffer -b n
tmux save-buffer -b n foo.txt

### Links
https://awhan.wordpress.com/2010/06/20/copy-paste-in-tmux/

## phpstorm


# Inspirations
 	vim + tmux: https://github.com/nicknisi/dotfiles

