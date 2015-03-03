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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'csexton/trailertrash.vim'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'godlygeek/tabular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_section_a = '%4l,%3c'
let g:airline_section_z = ''

" focused window 50%
let &winheight = &lines * 5 / 10

"Always show airline
set laststatus=2
let &t_Co = 256
set listchars=trail:💩
colorscheme vividchalk
syntax on
set number
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftround
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set colorcolumn=80
:imap jj <Esc>
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
"Javascript set tabs to 4-spaces
au Filetype js setlocal noexpandtab
au Filetype js setlocal ts=4
au Filetype js setlocal sw=4
au Filetype js setlocal sts=4

let mapleader=","
map <Leader>w :w<Enter>
map <Leader>q :q<Enter>
map <Tab> <C-P>

" Trim whitespace on save, highight whitespace
autocmd BufWritePre * :TrailerTrim
hi UnwantedTrailerTrash guibg=red ctermbg=red

" Tabularize Stuff
inoremap <silent> = =<Esc>:call <SID>ealign()<CR>a
function! s:ealign()
  let p = '^.*=\s.*$'
  if exists(':Tabularize') && getline('.') =~# '^.*=' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^=]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*=\s*\zs.*'))
    Tabularize/=/l1
    normal! 0
    call search(repeat('[^=]*=',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

inoremap <silent> { {<Esc>:call <SID>curlyalign()<CR>a
function! s:curlyalign()
  let p = '^.*{\s.*$'
  if exists(':Tabularize') && getline('.') =~# '^.*{' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^{]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*{\s*\zs.*'))
    Tabularize/{/l1
    normal! 0
    call search(repeat('[^{]*{',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" Tabularize mappings
nmap<Leader>t= :Tabularize /=<CR>
vmap<Leader>t= :Tabularize /=<CR>
nmap<Leader>t: :Tabularize /:\zs<CR>
vmap<Leader>t: :Tabularize /:\zs<CR>
nmap<Leader>t{ :Tabularize /{<CR>
vmap<Leader>t{ :Tabularize /{<CR>
