set nocompatible
set nobackup
set noswapfile

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"Always show airline
set laststatus=2
let &t_Co = 256
set listchars=trail:💩
colorscheme vividchalk
syntax on
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set number
set shiftround
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
:imap jj <Esc>
nnoremap K <C-W><C-L>
nnoremap J <C-W><C-H>
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  let g:ctrlp_use_caching = 0
endif
"PHP set tabs to 4-spaces
au Filetype php setlocal noexpandtab
au Filetype php setlocal ts=4
au Filetype php setlocal sw=4
au Filetype php setlocal sts=4
