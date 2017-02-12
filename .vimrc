" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Molokai color scheme
Plugin 'tomasr/molokai'

" Nerd tree
Plugin 'scrooloose/nerdtree'

" Nerd commenter
Plugin 'scrooloose/nerdcommenter'

" Javascript support
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'maksimr/vim-jsbeautify'

" Statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on
let mapleader=","

"Nerd tree settings
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

filetype plugin on

" Visuals
set term=screen-256color
syntax enable
colorscheme molokai

set tabstop=2
set softtabstop=2
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch

