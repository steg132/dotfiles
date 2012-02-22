" I like backups, but not when they clutter the filesystem
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" allowing vim's 'improved' functionality
set nocompatible

" syntax highlighting
filetype plugin indent on
syntax enable
set background=dark

" use a 256 color scheme if we support it
if &t_Co > 255
   " No reason to catch the exception if lucius doesn't exist. If it's not
   " there, then we just won't use it.
   :silent! color lucius
endif

" mouse support
set mouse=a
set ttymouse=xterm2

" line numbers
set number

" so we always know where we are in a file
set ruler

" spaces instead of tabs (yes, I'm one of -those-)
set expandtab
set smarttab

" tab width
set shiftwidth=2
set softtabstop=2

" a column width of 80 for coding is generally standard, so lets show it
" NOTE: Only supported in Vim 7.3 and above
if exists('+colorcolumn')
  set colorcolumn=80
endif

" python uses a 4-space standard
autocmd FileType python setlocal shiftwidth=4 softtabstop=4

" custom mappings {
" }
