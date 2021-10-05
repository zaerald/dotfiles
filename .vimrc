set encoding=utf-8 " use an encoding that supports unicode
scriptencoding utf-8 " update script encoding

" -- indention options --
set autoindent " new lines inherit the indentation of previous lines
set expandtab " convert tabs to spaces
set shiftround " when shifting lines, round the indentation to the nearest multiple of "shiftwidth."
set shiftwidth=2 " when shifting, indent using four spaces
set smarttab " insert “tabstop” number of spaces when the “tab” key is pressed
set tabstop=2 " indent using two spaces

" -- search options --
set hlsearch " enable search highlighting.
set ignorecase " ignore case when searching.
set incsearch " incremental search that shows partial matches.
set smartcase " automatically switch search to case-sensitive when search query contains an uppercase letter
set showmatch " show matching brackets

" -- text rendering options --
set display+=lastline " always try to show a paragraph’s last line
set linebreak " avoid wrapping a line in the middle of a word
set scrolloff=3 " the number of screen lines to keep above and below the cursor
set sidescrolloff=3 " the number of screen columns to keep to the left and right of the cursor
set wrap " enable line wrapping
set showbreak=▹ " line break
syntax enable: Enable syntax highlighting.

" -- user interface options --
set laststatus=2 " always display the status bar
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
set background=dark " use colors that suit a dark background
set list lcs=tab:▸\ ,lead:·,trail:· " show 'invisible' characters

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
let mapleader="," " change leader key to comma
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

" -- custom --
nnoremap <leader>L Lzt
nnoremap <leader>H Hzb

" insert lines without insert mode
nnoremap o o<Esc>
nnoremap O O<Esc>

" sort the buffer removing duplicates
nmap <Leader>s :%!sort -u --version-sort<CR>

