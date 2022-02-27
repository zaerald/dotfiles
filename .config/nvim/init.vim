set encoding=utf-8
scriptencoding utf-8
let mapleader=" "
syntax enable

" -- plugins --
" initialize vim-plug
call plug#begin(stdpath('data') . '/plugged')

" color schemes
Plug 'ellisonleao/gruvbox.nvim'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'norcalli/nvim-colorizer.lua'

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
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
Plug 'SirVer/ultisnips'
Plug 'sindrets/diffview.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'machakann/vim-highlightedyank'
Plug 'ferrine/md-img-paste.vim'

" misc
Plug 'sbdchd/neoformat'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-rfc'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

