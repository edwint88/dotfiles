syntax on
set number
set nocompatible
set ruler

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

" error bells
set noerrorbells
set visualbell
set t_vb=
set tm=500

set mouse=a

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
set foldmethod=syntax       " fold based on indent
set foldnestmax=10          " deepest fold is 10 levels
set nofoldenable            " don't fold by default
set foldlevel=1

" highlight pos of cursor(cu) line (l) and column(c)
set cul cuc
filetype off

"set over lenght to 121
highlight OverLength ctermbg=30 ctermfg=white guibg=#212121
match OverLength /\%121v.\+/
if exists('+colorcolumn')
	set colorcolumn=120
  else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif

" make comments and HTML attributes italic
highlight Comment cterm=italic
highlight htmlArg cterm=italic
highlight xmlAttrib cterm=italic
highlight Type cterm=italic
highlight Normal ctermbg=none

set autoindent              " automatically set indent of new line
set smartindent

" toggle invisible characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
set backspace=indent,eol,start

set clipboard=unnamed

set ttyfast                 " faster redrawing
set diffopt=vertical
set laststatus=2            " show the satus line all the time
set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
set showcmd                 " show incomplete commands
set noshowmode              " don't show which mode disabled for PowerLine
set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
set cmdheight=1             " command bar height
set title                   " set terminal title

" Section Mappings {{{
" set a map leader for more key combos
let mapleader = ','

" shortcut to save
nmap <leader>, :w<cr>

" set paste toggle
set pastetoggle=<leader>v

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>
nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" }}}

" Section Plugins {{{
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" nerdtree Plugin
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" fuzzy search Plugin
Plugin 'ctrlpvim/ctrlp.vim'

" syntactics Plugin
Plugin 'vim-syntastic/syntastic'

" git gutter Plugin
Plugin 'airblade/vim-gitgutter'

" vim airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" maokai 
Plugin 'tomasr/molokai'

"super tab
Plugin 'ervandew/supertab'

" rainbow ()
Plugin 'luochen1990/rainbow'

" toggle cursor
Plugin 'jszakmeister/vim-togglecursor'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Launch vim and run :PluginInstall
"
" To install from command line: vim +PluginInstall +qall

" Actions
" map <C-n> :NERDTreeToggle<CR>
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
 nmap <silent> <leader>y :NERDTreeFind<cr>

let NERDTreeShowHidden=1
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Auto
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" syntactics
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" gitgutter options
highlight GitGutterAdd			guifg=#009900 guibg=#212121 ctermfg=2 ctermbg=0
highlight GitGutterChange		guifg=#bbbb01 guibg=#212121 ctermfg=3 ctermbg=0
highlight GitGutterDelete		guifg=#ff2222 guibg=#212121 ctermfg=1 ctermbg=0
highlight GitGutterChangeDelete guifg=#b90ec9 guibg=#212121 ctermfg=4 ctermbg=0
highlight link GitGutterAddLine Type
highlight link GitGutterDeleteLine ErrorMsg
highlight link GitGutterChangeLine Todo
highlight link GitGutterChangeDeleteLine DiffAdd

let g:gitgutter_sign_added = '✓'
let g:gitgutter_sign_removed = '✗'
let g:gitgutter_sign_modified = '✦'
let g:gitgutter_sign_removed_first_line = '➘'
let g:gitgutter_sign_modified_removed = '⤰'

" ignore whitespaces
let g:gitgutter_diff_args='-w'
let g:gitgutter_highlight_lines=1

" maokai template
" let g:rehash256 = 1

" }}}
