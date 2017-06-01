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

" Tags
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'

" Plugins for git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

" Color schemes
Plugin 'junegunn/seoul256.vim'
Plugin 'morhetz/gruvbox'

" Statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Indentation guides
Plugin 'Yggdroot/indentLine'

" Javascript specific
Plugin 'pangloss/vim-javascript'

" Typescript specific
Plugin 'leafgarland/typescript-vim'

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
" Fixed airline symbols
let g:airline_powerline_fonts = 1
" Airline theme
let g:airline_theme='raven'
" Improved tabs
let g:airline#extensions#tabline#enabled = 1
" Always show statusbar
set laststatus=2
" }}}
" Visuals {{{
set term=screen-256color
syntax enable
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
set noshowmode

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
" Tags {{{
" Let Vim walk up dir hierarachy from CWD to root
set tags=tags;/
" Use tags file found by Vim
let g:easytags_dynamic_files=1
" }}}
" vim:foldmethod=marker:foldlevel=0
