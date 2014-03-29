" Begin .vimrc created April 21, 2012
call pathogen#infect()
syntax on
filetype plugin indent on

set ts=2
set shiftwidth=2
set number
set t_Co=256

" Nerd Tree Auto Start
autocmd vimenter * NERDTree
autocmd vimenter * if argc() | wincmd l | endif

" Close vim if the last tab is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Ignore object files
let NERDTreeIgnore = ['\.o$']

" Use Ctrl-[hjkl] to navigate between active panes 
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Coloring
highlight Comment ctermfg=gray
highlight String ctermfg=red
highlight Number ctermfg=red

" End .vimrc

