" --- General Settings ---
set nocompatible
filetype off


set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set cursorline
set showmode
set showmatch
set wildmenu
set foldenable
"set list



set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'spf13/vim-autoclose'
Plugin 'majutsushi/tagbar'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'


" Color schemes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on

" --- BLING ---
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=16
set laststatus=2

let g:airline_detect_paste=1
let g:airline#extension#tabline#enabled=1
let g:airline_theme='solarized'

" --- NAVIGATION REMAPPING --- 
:nnoremap h gh
:nnoremap j gj
:nnoremap k gk
:nnoremap l gl
