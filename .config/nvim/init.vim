set encoding=utf-8
scriptencoding utf-8
let mapleader=" "
syntax enable
filetype plugin on

" -- plugins --
" initialize vim-plug
call plug#begin(stdpath('data') . '/plugged')

" color schemes
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'mhinz/vim-signify'
Plug 'norcalli/nvim-colorizer.lua'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" nvim-tree
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" lsp and langs
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-context'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'hashivim/vim-terraform'

Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }

Plug 'tpope/vim-commentary'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'mattn/emmet-vim'

" utils
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'tyru/open-browser.vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-utils/vim-man'
Plug 'SirVer/ultisnips'
Plug 'sindrets/diffview.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'tommcdo/vim-exchange'
Plug 'andymass/vim-matchup'
Plug 'machakann/vim-highlightedyank'
Plug 'ferrine/md-img-paste.vim'
Plug 'vimwiki/vimwiki'

" misc
Plug 'sbdchd/neoformat'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-rfc'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

