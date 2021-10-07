set encoding=utf-8 " use an encoding that supports unicode
scriptencoding utf-8 " update script encoding

" -- indention options --
set autoindent " new lines inherit the indentation of previous lines
set expandtab " convert tabs to spaces
set shiftround " when shifting lines, round the indentation to the nearest multiple of "shiftwidth."
set shiftwidth=2 " when shifting, indent using four spaces
set smarttab " insert “tabstop” number of spaces when the “tab” key is pressed
set tabstop=2 " indent using two spaces
set softtabstop=2
set smartindent

" -- search options --
set hlsearch " enable search highlighting.
set ignorecase " ignore case when searching.
set incsearch " incremental search that shows partial matches.
set smartcase " automatically switch search to case-sensitive when search query contains an uppercase letter
set showmatch " show matching brackets

" -- text rendering options --
set display+=lastline " always try to show a paragraph’s last line
set linebreak " avoid wrapping a line in the middle of a word
set scrolloff=8 " the number of screen lines to keep above and below the cursor
set sidescrolloff=3 " the number of screen columns to keep to the left and right of the cursor
set nowrap " disable line wrapping
set showbreak=▹ " line break
syntax enable: Enable syntax highlighting.
" show 'invisible' characters
set list lcs=tab:▸\ ,trail:·,extends:»,precedes:«,nbsp:⣿

" -- user interface options --
set ruler " always show cursor position
set wildmenu " display command line’s tab complete options as a menu
set tabpagemax=50 " maximum number of tab pages that can be opened from the command line
set cursorline " highlight the line currently under cursor
set number " show line numbers on the sidebar
set relativenumber " show line number on the current line and relative numbers on all other lines
set noerrorbells " disable beep on errors
set visualbell " flash the screen instead of beeping on errors
set mouse=a " enable mouse for scrolling and resizing
set title " set the window’s title, reflecting the file currently being edited
set showmode " mode message on last line
set showcmd " show command in the last line of the screen
set cmdheight=1 " give more space for messages
set signcolumn=yes
set termguicolors
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
set nohlsearch " don't highlight after search
set hidden " hide files in the background instead of closing them
set history=1000 " increase the undo limit
set nomodeline " ignore file’s mode lines; use vimrc configurations instead
set nrformats-=octal " interpret octal as decimal when incrementing numbers
set nocompatible " make vim more useful
set showcmd " show the (partial) command as it’s being typed 
set nobackup " don't keep a backup file
set noswapfile " don't keep a swap file
set undodir=~/.vim/undodir
set undofile " undo file for each file opened
set exrc " read config if present in directory
set guicursor= " maintain block cursor type
set shortmess+=c
let mapleader=" " " change leader key
" allow saving of files as sudo
cmap w!! w !sudo tee > /dev/null %

" -- automatic commands --
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" -- plugins --
" initialize vim-plug
call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'jparise/vim-graphql'
Plug 'vim-utils/vim-man'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" -- colorschemes --
colorscheme gruvbox
set background=dark " use colors that suit a dark background
highlight Normal guibg=NONE ctermbg=NONE

if executable('rg')
  let g:rg_derive_root='true'
endif

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

" open files from netrw in a previous window, unless we're opening the current dir
if argv(0) ==# '.'
    let g:netrw_browse_split = 0
else
    let g:netrw_browse_split = 4
endif

" -- custom mappings --
nnoremap <leader>q :q!
nnoremap <leader>p "+p
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" insert lines without insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" sort the buffer removing duplicates
nmap <Leader>s :%!sort -u --version-sort<CR>

