" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" seoul256 color scheme
Plugin 'junegunn/seoul256.vim'

" Nerd tree
Plugin 'scrooloose/nerdtree'

" Nerd commenter
Plugin 'scrooloose/nerdcommenter'

" Javascript support
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'maksimr/vim-jsbeautify'

" Syntax checking
Plugin 'scrooloose/syntastic'

" Typescript
Plugin 'leafgarland/typescript-vim'

" Auto pairing brackets
Plugin 'auto-pairs-gentle'

" Statusbar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Git change indicator
Plugin 'airblade/vim-gitgutter'

" Highlight whitespaces
Plugin 'ntpeters/vim-better-whitespace'

call vundle#end()

filetype plugin indent on
let mapleader=","

"Nerd tree settings
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Autopairing settings
let g:AutoPairsUseInsertedCount = 1

" Visuals
set term=screen-256color
syntax enable
colo seoul256-light

set number
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set updatetime=250

" Tab settings
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Whitespaces
set list
set listchars=space:.,tab:->,eol:¬

" Extra whitespace highlighting
highlight ExtraWhitespace ctermbg=red

" Column line
set colorcolumn=120

