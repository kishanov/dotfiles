set nocompatible               " be iMproved
let mapleader = ","
filetype off                   " required!

" color
set t_Co=256
set bg=dark
colorscheme desert

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'mileszs/ack.vim.git'
Bundle 'kien/ctrlp.vim.git'
Bundle 'scrooloose/nerdtree.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'tpope/vim-ragtag.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'klen/python-mode.git'
Bundle 'godlygeek/tabular.git'
Bundle 'majutsushi/tagbar.git'
Bundle 'pangloss/vim-javascript'
Bundle 'godlygeek/csapprox.git'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'Valloric/YouCompleteMe'
Bundle 'bling/vim-airline'
Bundle 'elzr/vim-json'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'tomasr/molokai'

Bundle 'matchit.zip'
Bundle 'python.vim'
Bundle 'python_match.vim'

filetype plugin indent on     " required!

set pastetoggle=<F12>
set backspace=indent,eol,start
set history=50
set incsearch
set visualbell t_vb=
set hidden
set nojoinspaces
set nrformats=
if has('mouse')
  " Don't want the mouse to work in insert mode.
  set mouse=nv
endif

" Tab-completion in command-line mode
set wildmode=full
set wildmenu
set wildignore=*.pdf,*.fo,*.xml
set suffixes=.otl

set ruler
set showcmd
set laststatus=2
set listchars=tab:▸\ ,eol:¬
set number
set cursorline
set hlsearch
set foldlevelstart=99

set nobackup
set noswapfile


nmap <silent> <leader>l :set list!<CR>
nmap <silent> <C-l> :silent :nohlsearch<CR>

" Gundo.vim {{{2
map <Leader>u :GundoToggle<CR>

" vim: nowrap fdm=marker
let g:markdown_fenced_languages = ['cpp', 'python']

" Ctlr-P {{{2
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
map <leader>t :CtrlP<CR>

" NERDTree {{{2
map <leader>nt :NERDTreeToggle<CR>

" Tagbar {{{2
map <leader>lt :TagbarToggle<CR>

" Python mode {{{1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

" Airline tabs
let g:airline#extensions#tabline#enabled = 1

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

set foldnestmax=2
set foldmethod=indent
set foldlevel=2

" CtrlP

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|venv)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
