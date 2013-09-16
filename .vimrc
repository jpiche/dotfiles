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

filetype off

" load plugins with vundle
set rtp+=~/.vim/bundle/vundle/
silent! call vundle#rc()
if exists(':Bundle')
  Bundle 'gmarik/vundle'
  Bundle 'kchmck/vim-coffee-script'
  Bundle 'eraserhd/vim-ios'
  Bundle 'derekwyatt/vim-scala'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'groenewege/vim-less'
  Bundle 'tpope/vim-haml'

  " Dash
  Bundle 'rizzatti/funcoo.vim'
  Bundle 'rizzatti/dash.vim'
end

filetype plugin indent on

au FileType java set ts=4 sts=4 sw=4
au FileType php set ts=4 sts=4 sw=4

" if text file, turn on spell check
au FileType text set spell
au FileType text set lbr
au FileType tex set spell
au FileType tex set lbr

" display invisible characters, except eol
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

noremap Q gqvq

map ; :
