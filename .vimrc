" Plugins {{{
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins for basic functions
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'auto-pairs-gentle'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'

" Plugins for git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Plugins for styling
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on
" }}}
" Mapleader shortcuts {{{
" Change default mapleader
let mapleader=","
" }}}
" Nerd tree {{{
map <C-n> :NERDTreeToggle<CR>
" }}}
" Autopairing settings {{{
let g:AutoPairsUseInsertedCount = 1
" }}}
" Airline {{{
let g:airline_theme='base16'
" Improved tabs
let g:airline#extensions#tabline#enabled = 1
" Always show statusbar
set laststatus=2
" }}}
" Visuals {{{
set term=screen-256color
syntax enable
set background=dark
colo gruvbox
" }}}
" UI Settings {{{
set number
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set updatetime=250

" whitespaces
set list
set listchars=space:·,tab:->,eol:¬

" set columnline
set colorcolumn=120

" }}}
" Tab settings {{{
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
" }}}
" Extra whitespace highlighting {{{
highlight ExtraWhitespace ctermbg=red
" }}}
" Folding settings {{{
" Enable folding
set foldenable

" Open most folds by default
set foldlevelstart=10

" Max folds limited to 10
set foldnestmax=10

" Open/close folds with whitespace
nnoremap <space> za

" Set fold method to indent
set foldmethod=indent
" }}}
" Ctrlp {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" }}}
" vim:foldmethod=marker:foldlevel=0
