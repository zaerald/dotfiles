set encoding=utf-8
scriptencoding utf-8
" change leader key
let mapleader=" "
syntax enable " enable syntax highlighting

" -- plugins --
" initialize vim-plug
call plug#begin('~/.vim/plugged')

" color schemes
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'vim-utils/vim-man'
Plug 'mhinz/vim-signify'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sbdchd/neoformat'

" misc
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-rfc'

call plug#end()

