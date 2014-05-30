set nocompatible               " be iMproved
let mapleader = ","
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype plugin indent on
syntax on
set term=builtin_ansi
set t_Co=256
filetype plugin indent on     " required!


" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'godlygeek/csapprox.git'
Bundle 'mileszs/ack.vim.git'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'tpope/vim-ragtag.git'
Bundle 'tpope/vim-markdown.git'
Bundle 'godlygeek/tabular.git'
Bundle 'matchit.zip'

" navigation
Bundle 'kien/ctrlp.vim.git'
let g:ctrlp_jump_to_buffer = 0
let g:ctrlp_working_path_mode = 0
map <leader>t :CtrlP<CR>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|venv)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

Bundle 'scrooloose/nerdtree.git'
map <leader>nt :NERDTreeToggle<CR>

Bundle 'majutsushi/tagbar.git'
map <leader>lt :TagbarToggle<CR>

" webdev
Bundle 'hail2u/vim-css3-syntax'
Bundle 'elzr/vim-json'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Raimondi/delimitMate'

" clojure
Bundle 'guns/vim-clojure-static.git'
Bundle 'tpope/vim-fireplace.git'
Bundle 'tpope/vim-classpath.git'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-leiningen'

" colorschemes
Bundle 'vim-scripts/summerfruit256.vim'
Bundle 'noahfrederick/vim-hemisu'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'tomasr/molokai'

" syntax
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

" code completion
Bundle 'marijnh/tern_for_vim'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" python
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'klen/python-mode'
Bundle 'python.vim'

let g:pymode_doc = 1
let g:pymode_doc_key = 'K'
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_folding = 0


" Settings

set pastetoggle=,s
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

" vim: nowrap fdm=marker
let g:markdown_fenced_languages = ['cpp', 'python']

set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

set foldnestmax=2
set foldmethod=indent
set foldlevel=2

" color
colorscheme summerfruit256


