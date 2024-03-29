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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'csexton/trailertrash.vim'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'godlygeek/tabular'
Plugin 'airblade/vim-gitgutter'
Plugin 'lifepillar/vim-solarized8'
Plugin 'tomasiser/vim-code-dark'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'aklt/plantuml-syntax'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-endwise'
Plugin 'slashmili/alchemist.vim'
Plugin 'uarun/vim-protobuf'
Plugin 'janko-m/vim-test'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'vim-scripts/SyntaxRange'
Plugin 'vim-scripts/ingo-library'
Plugin 'tpope/vim-abolish.git'
"Plugin 'OmniSharp/omnisharp-vim.git'
"Plugin 'tpope/vim-dispatch.git'
"Plugin 'scrooloose/syntastic'
"Plugin 'OrangeT/vim-csharp'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline config
let g:airline_powerline_fonts = 1
let g:airline_section_a = '%4l,%3c'
let g:airline_section_z = ''

" PlantUML config
let g:plantuml_executable_script='plantuml'

" focused window 50%
let &winheight = &lines * 5 / 10

"Always show airline
set laststatus=2
let &t_Co = 256

let g:airline_theme = 'codedark'

syntax enable
colorscheme solarized8
set background=dark
" set background=light
set t_ut=

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
set colorcolumn=100
set eol

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
"CSharp uses tabs
au FileType cs setlocal noexpandtab
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead *.md set filetype=markdown
let g:vim_markdown_folding_disabled = 1
"Tabs stuff
autocmd BufWrite * :retab!

nnoremap <SPACE> <Nop>
let mapleader=" "
map <Leader>w :w<Enter>
map <Leader>q :q<Enter>
map <Leader>/ :noh<Enter>
map <Tab> <C-P>

" Previous Buffer
map <Leader><Leader> <C-^>

" Trim whitespace on save, highight whitespace
autocmd BufWritePre * :TrailerTrim
hi UnwantedTrailerTrash guibg=red ctermbg=red
hi Search cterm=NONE ctermfg=white ctermbg=red

" Tabularize mappings
nmap<Leader>t= :Tabularize /=<CR>
vmap<Leader>t= :Tabularize /=<CR>
nmap<Leader>t: :Tabularize /:\zs<CR>
vmap<Leader>t: :Tabularize /:\zs<CR>
nmap<Leader>t{ :Tabularize /{<CR>
vmap<Leader>t{ :Tabularize /{<CR>

" vim-test mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Splitjoin mappings
map <Leader>s :SplitjoinSplit<Enter>
map <Leader>j :SplitjoinJoin<Enter>

" previous buffer mapping
map <Leader>g :b#<Enter>

" Ctrl-c/x to clipboard
vmap <C-x> :!pbcopy<CR>
vmap <C-c> :w !pbcopy<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'))
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <leader>n :call RenameFile()<cr>

" XML formatting
function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction

" Line numbers
" http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/
set number
set nu
" toggle how line numbers are show
function! NumberToggle()
  if(&relativenumber == 1)
    set rnu!
    set nu
  else
    set rnu
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

command! Xml call DoPrettyXML()
