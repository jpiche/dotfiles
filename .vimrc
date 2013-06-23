set nocp noswapfile
syn on

set bs=indent,eol,start
set ai et sm is ic scs ruler
set ts=2 sts=2 sw=2
set guioptions-=T
if has("gui_running")
  set mouse=a
endif
set number

" `silent` is used for graceful failing on machines without it
silent! call pathogen#infect()
filetype plugin indent on

autocmd FileType java set ts=4 sts=4 sw=4
autocmd FileType php set ts=4 sts=4 sw=4

" if text file, turn on spell check
autocmd FileType text set spell
autocmd FileType text set lbr
autocmd FileType tex set spell
autocmd FileType tex set lbr

noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

noremap Q gqvq

map ; :
