set nocompatible		" disable vi-compability

" Set mapleader to ö
let mapleader="ö"

" Clear hlsearch when pressing enter
nnoremap <silent> <CR> :noh<CR><CR>
" Bind Q to :
nnoremap Q :

scriptencoding utf-8

syntax on

set number			" show line number
set showmode			" show current mode
set expandtab			" use space instead of tab
set autoindent			" smart indenting
set shiftwidth=4		" set number of spaces as tab
set softtabstop=4		" correct indent for tab in insert mode
set smartcase			" smarter search, capital letters case sent
set ignorecase			" ignore case when searching
set incsearch                   " incremental search
set hlsearch			" highlight search 
set showmatch			" highlight matching brackets
set visualbell			" no beeping
set showcmd			" show partial command at bottom


" Pathogen plugin handle
execute pathogen#infect()

filetype plugin indent on

""""" Plugins
""" Easymotion
map <Leader> <Plug>(easymotion-prefix)
nmap <LEADER><SPACE> <Plug>(easymotion-s)
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
let g:EasyMotion_smartcase = 1

""" NERDTree
nmap <Leader>nt :NERDTreeToggle<CR>

""" vim-airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

""" fugitive
nnoremap <Leader>gs :Gstatus<CR>

