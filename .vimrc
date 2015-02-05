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
  Bundle 'derekwyatt/vim-scala'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'groenewege/vim-less'
  Bundle 'tpope/vim-haml'
  Bundle 'digitaltoad/vim-jade'
  Bundle 'scrooloose/nerdtree'

  " Dash
  Bundle 'rizzatti/funcoo.vim'
  Bundle 'rizzatti/dash.vim'
end

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && exists(':NERDTree') | NERDTree | endif
nmap <C-c><C-c> :NERDTreeToggle<CR>

filetype plugin indent on

au FileType java set ts=4 sts=4 sw=4
au FileType php set ts=4 sts=4 sw=4

" if text file, turn on spell check
au FileType text set spell lbr
au FileType tex set spell lbr

au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
au FileType markdown set spell
au FileType markdown set wrap linebreak nolist
au FileType markdown set nonumber

" display invisible characters, except eol
set listchars=tab:>-,trail:~,extends:>,precedes:<
set list

noremap j gj
noremap k gk
vnoremap j gj
vnoremap k gk

noremap Q gqvq

map ; :
