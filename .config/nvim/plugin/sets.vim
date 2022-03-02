" -- indention options --
set autoindent
set expandtab
set shiftwidth=2
set smarttab
set smartindent
set shiftround " when shifting lines, round the indentation to the nearest multiple of "shiftwidth."
set tabstop=2
set softtabstop=2

" -- search options --
set nohlsearch
set incsearch
set smartcase
set showmatch
set ignorecase

" -- text rendering options --
set display+=lastline
set linebreak
set scrolloff=8
set sidescroll=8
set sidescrolloff=8
set nowrap
set showbreak=▹ " line break character
" show whitespace characters
set list lcs=lead:.,tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:⣿

" -- user interface options --
set ruler
set wildmenu
set tabpagemax=50
set cursorline
set number
set relativenumber
set noerrorbells
set mouse=a
set title
set showmode " mode message on last line
set showcmd " show command in the last line of the screen
set cmdheight=1 " give more space for messages
set signcolumn=yes
set updatetime=50
" status lines
set laststatus=2 " always display the status bar

" -- code folding options --
set foldmethod=manual
set nofoldenable

" -- misc --
set autoread
set backspace=indent,eol,start " allow backspacing over indention, line breaks and insertion start
set formatoptions+=j " delete comment characters when joining lines
set hidden
set history=1000 " increase the undo limit
set nomodeline
set nrformats-=octal " interpret octal as decimal when incrementing numbers
set nocompatible
set showcmd
set nobackup
set nowritebackup
set noswapfile
set undofile " undo file for each file opened
set exrc " read config if present in directory
set guicursor= 
set clipboard+=unnamedplus
" don't pass messages to |ins-completion-menu|
set shortmess+=c
set spelllang=en,cjk
" show nine spell checking candidates at most
set spellsuggest=best,9

