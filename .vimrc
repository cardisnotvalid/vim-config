" Enable syntax highlighting
syntax on
" Enable file type detection, plugins and indenting
filetype plugin indent on

" Appearance settings
set background=dark
colorscheme retrobox

set cursorline
set list
set listchars=tab:»·,trail:·
set number
set relativenumber
set ruler
set showcmd
set showmatch
set wrap

" Clipboard settings
set clipboard=unnamedplus

" Configure expanding of tabs for various file types
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.c set expandtab
au BufRead,BufNewFile *.h set expandtab
au BufRead,BufNewFile MakeFile* set expandtab

" Indentation settings
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set autoindent

" Search settings
set hlsearch
set ignorecase
set incsearch
set smartcase

" Status line settings
set laststatus=2

" Command line settings
set wildmenu
set wildmode=longest:full,full

" Split window settings
set splitbelow
set splitright

" Buffer settings
set hidden

" Undo settings
set undofile
set undolevels=1000

" Backspace behavior
set backspace=indent,eol,start

" Autocommands
autocmd BufReadPost,FileReadPost * normal zR

" Key mappings
nnoremap <C-s> :w<CR>
nnoremap <C-c> :noh<CR>
nnoremap <Space> :noh<CR>

" Window navigation key mappings
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Insert mode key mappings
inoremap <C-BS> <C-W>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs' " Auto pairs
Plug 'ervandew/supertab'    " Autocomplete
Plug 'tpope/vim-surround'   " Surrounding pairs
Plug 'garbas/vim-snipmate'  " Snippets
Plug 'tpope/vim-commentary' " Comment code

call plug#end()

let g:SuperTabCompleteCase = 'match' " Autocomplete match case
