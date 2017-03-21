" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" color schemes I use
Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'

" Tern for vim
Plugin 'marijnh/tern_for_vim'
Plugin 'valloric/youcompleteme'

" Nerd tree
Plugin 'scrooloose/nerdtree'

" Nerd commenter
Plugin 'scrooloose/nerdcommenter'

" Javascript support
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'maksimr/vim-jsbeautify'

" Typescript
Plugin 'leafgarland/typescript-vim'

" Auto pairing brackets
Plugin 'auto-pairs-gentle'

" Statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git change indicator
Plugin 'airblade/vim-gitgutter'

" Git plugin
Plugin 'tpope/vim-fugitive'

" Highlight whitespaces
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

filetype plugin indent on
let mapleader=","

"Nerd tree settings
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Autopairing settings
let g:AutoPairsUseInsertedCount = 1

" Visuals
set term=screen-256color
syntax enable
set background=dark
colo gruvbox

set number
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set updatetime=250

" Tab settings
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Whitespaces
set list
set listchars=space:·,tab:->,eol:¬

" Extra whitespace highlighting
highlight ExtraWhitespace ctermbg=red

" Column line
set colorcolumn=120

" Find settings
set path+=**

