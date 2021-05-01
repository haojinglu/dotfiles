" Ensure vim-plug
let data_dir = has('nvim') ? stdpath('data').'/site' : '~/.vim'
if empty(glob(data_dir.'/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Install pulgins
call plug#begin('~/.vim/plugged')
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': 'go' }
	Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
	Plug 'preservim/nerdcommenter'
	Plug 'altercation/vim-colors-solarized'
	Plug 'jiangmiao/auto-pairs'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'vim-airline/vim-airline'
	Plug 'tpope/vim-surround'
	Plug 'joshdick/onedark.vim'
call plug#end()
" Make Vim more useful
set nocompatible
" Make indent as wide as four spaces
set shiftwidth=4
set softtabstop=-1
" Make tab as wide as four spaces
set tabstop=4
" Do not expand tab as spaces
set noexpandtab
" Show invisible characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Show line number
set number
" Show relative line number
set relativenumber
" Turn on syntax highlighting
syntax on
" Highlight dynamically as pattern is typed
set incsearch
" Make search case-insensitive
set ignorecase
" Make search case-sensitive when it contains capital letters
set smartcase
" Always show the status line
set laststatus=2
" Disable error bells
set noerrorbells visualbell t_vb=
" Disable default Vim startup message
set shortmess+=I
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Enable mouse support
set mouse+=a
" Show command as it’s being typed
set showcmd
" Highlight current line
set cursorline
" Load filetype-specific indent files
filetype indent on
set autoindent
" Highlight matching brackets
set showmatch
" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" Change mapleader
let mapleader=","
" Map jj as escape in normal mode
inoremap jj <esc>
inoremap <esc> <nop>
" Break the line if it's too long
set linebreak
" Move vertically by visual line
nnoremap j gj
nnoremap k gk
" Using UTF-8 encoding
set encoding=UTF-8
" Enhance command-line compeletion
set wildmenu
" Show filename on the window bar
set title
" Show lines above and below cursor
set scrolloff=5
" Open/Close NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Make cursor back to NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
" autocmd BufWinEnter * silent NERDTreeMirror
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Using gui colors rather than 256 colors
set termguicolors
colorscheme onedark
