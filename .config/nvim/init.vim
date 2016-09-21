"----------General Settings----------"

" Clear hlsearch when pressing enter
nnoremap <silent> <CR> :noh<CR><CR>


let mapleader="ö"                   " Set mapleader to ö

set number			                " show line number
set background=dark                 " dark theme background (used by vim-airline)
set smartcase			            " smarter search, capital letters case sent
set ignorecase			            " ignore case when searching
set expandtab			            " use space instead of tab
set shiftwidth=4	    	        " when using '>', use 4 spaces width
set tabstop=4

so ~/.config/nvim/plugins.vim       " Source plugins

"----------Split Management----------"
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

