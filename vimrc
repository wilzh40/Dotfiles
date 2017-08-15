" --- General Settings ---
set nocompatible
filetype off

let mapleader=","

set backspace=indent,eol,start
set ruler
set number
set showcmd

set incsearch
set hlsearch
set infercase

set cursorline
set showmode
set showmatch
set wildmenu
set foldenable
"set list

" persistent undo
set undofile
set undodir=$HOME/.vimundo/

" Vundle shit
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
" Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'easymotion/vim-easymotion'
Plugin 'spf13/vim-autoclose'
Plugin 'majutsushi/tagbar'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'alvan/vim-closetag'
Plugin 'gregsexton/MatchTag'
Plugin 'mitermayer/vim-prettier'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'

" Color schemes
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

filetype plugin indent on
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab
" --- BLING ---
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=16
set laststatus=2

let g:airline_detect_paste=1
let g:airline#extension#tabline#enabled=1
let g:airline_theme='solarized'

" NERDtree
map <C-e> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" NERDcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let g:jsx_ext_required = 0

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0


" --- NAVIGATION REMAPPING --- 
:nnoremap j gj
:nnoremap k gk

" --- FORMAT ---"
nnoremap gp :silent %!prettier --stdin --trailing-comma es5 --single-quote --jsx-bracket-same-line<CR>
" Use formatprg when available
