set encoding=utf-8
scriptencoding utf-8
" change leader key
let mapleader=" "
syntax enable " enable syntax highlighting

" -- plugins --
" initialize vim-plug
call plug#begin(stdpath('data') . '/plugged')

" color schemes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" lsp and langs
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

" utils
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'tyru/open-browser.vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-utils/vim-man'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }

" misc
Plug 'sbdchd/neoformat'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-rfc'

call plug#end()

