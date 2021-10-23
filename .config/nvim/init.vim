set encoding=utf-8
scriptencoding utf-8
" change leader key
let mapleader=" "
" enable syntax highlighting
syntax enable

" -- indention options --
set autoindent " new lines inherit the indentation of previous lines
set expandtab " convert tabs to spaces
set shiftwidth=2 " when shifting, indent using four spaces
set smarttab " insert “tabstop” number of spaces when the “tab” key is pressed
set smartindent
set shiftround " when shifting lines, round the indentation to the nearest multiple of "shiftwidth."
set tabstop=2 " indent using two spaces
set softtabstop=2

" -- search options --
set nohlsearch " don't highlight after search
set incsearch " incremental search that shows partial matches.
set smartcase " automatically switch search to case-sensitive when search query contains an uppercase letter
set showmatch " show matching brackets
set ignorecase

" -- text rendering options --
set display+=lastline " always try to show a paragraph’s last line
set linebreak " avoid wrapping a line in the middle of a word
set scrolloff=8 " the number of screen lines to keep above and below the cursor
set sidescroll=8
set sidescrolloff=8 " the number of screen columns to keep to the left and right of the cursor
set nowrap " disable line wrapping
set showbreak=▹ " line break character
" show whitespace characters
set list lcs=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:⣿

" -- user interface options --
set ruler " always show cursor position
set wildmenu " display command line’s tab complete options as a menu
set tabpagemax=50 " maximum number of tab pages that can be opened from the command line
set cursorline " highlight the line currently under cursor
set number " show line numbers on the sidebar
set relativenumber " show line number on the current line and relative numbers on all other lines
set noerrorbells " disable beep on errors
set mouse=a " enable mouse for scrolling and resizing
set title " set the window’s title, reflecting the file currently being edited
set showmode " mode message on last line
set showcmd " show command in the last line of the screen
set cmdheight=1 " give more space for messages
set signcolumn=yes
set updatetime=50
" status lines
set laststatus=2 " always display the status bar

" -- code folding options --
set foldmethod=indent " fold based on indention levels.
set foldnestmax=3 " only fold up to three nested levels
set nofoldenable " disable folding by default

" -- misc --
set autoread " automatically re-read files if unmodified inside Vim
set backspace=indent,eol,start " allow backspacing over indention, line breaks and insertion start
set formatoptions+=j " delete comment characters when joining lines
set hidden " hide files in the background instead of closing them
set history=1000 " increase the undo limit
set nomodeline " ignore file’s mode lines; use vimrc configurations instead
set nrformats-=octal " interpret octal as decimal when incrementing numbers
set nocompatible " make vim more useful
set showcmd " show the (partial) command as it’s being typed 
set nobackup " don't keep a backup file
set noswapfile " don't keep a swap file
set undodir=~/.config/nvim/undodir
set undofile " undo file for each file opened
set exrc " read config if present in directory
set guicursor= " maintain block cursor type
set clipboard+=unnamedplus
set shortmess+=c
set spelllang=en,cjk
" show nine spell checking candidates at most
set spellsuggest=best,9 

" -- automatic commands --
if has("autocmd")
  " enable file type detection
  filetype on
  " treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

  autocmd BufNewFile,BufRead *.{js,jsx,ts,tsx} :syntax sync fromstart
  autocmd BufNewFile,BufRead *.{js,jsx,ts,tsx} :syntax sync clear
endif

" -- plugins --
" initialize vim-plug
call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-signify'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

Plug 'sbdchd/neoformat'
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'

call plug#end()

" -- colorschemes --
set termguicolors
colorscheme gruvbox
let g:airline_theme='gruvbox'
set background=dark
highlight Normal guibg=NONE ctermbg=NONE

let g:netrw_browse_split=0
let g:netrw_banner=0
let g:netrw_winsize=25
let g:netrw_localrmdir='rm -r'
let g:netrw_http_cmd='open'

" open files from netrw in a previous window, unless we're opening the current dir
if argv(0) == '.'
  let g:netrw_browse_split=0
else
  let g:netrw_browse_split=4
endif

" -- plugin mappings --
nnoremap <leader>u :UndotreeShow<CR>
nmap <Leader>py <Plug>(Prettier)

" - telescope
nnoremap <C-p> <cmd>Telescope git_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" -- custom mappings --
nnoremap <leader>q :q!
nnoremap <leader>w :w<CR>
nnoremap <leader>Y gg"+yG
nnoremap <C-c> <Esc>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" insert lines without insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" close all buffers except current
nnoremap <silent> <leader>bo :w <bar> %bd <bar> e# <bar> bd# <CR><CR>

" allow saving of files as sudo
cmap w!! w !sudo tee > /dev/null %

