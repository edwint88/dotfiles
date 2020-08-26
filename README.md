__Use the dotfiles on your own risk!!!__

# Fonts
	inconsolata -> https://fonts.google.com/specimen/Inconsolata?selection.family=Inconsolata

# Keymaps

## zsh
__plugins__
- zsh-completions
- zsh-autosuggestions
- zsh-syntax-highlighting

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
Paste all buffers: `C + #`

tmux list-buffers\
tmux show-buffer -b n\
tmux save-buffer -b n foo.txt

## other tools
https://github.com/sharkdp/bat

### Links
https://awhan.wordpress.com/2010/06/20/copy-paste-in-tmux/

## phpstorm


# Inspirations 
- https://github.com/nicknisi/dotfiles
- https://blogs.technet.microsoft.com/jessicadeen/linux/macos-ohmyzsh-tmux-vim-iterm2-powerlevel9k-badass-terminal/

