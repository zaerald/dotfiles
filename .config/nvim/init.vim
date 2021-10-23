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
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhinz/vim-startify'
Plug 'vim-utils/vim-man'
Plug 'mhinz/vim-signify'
Plug 'norcalli/nvim-colorizer.lua'

Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" nerdtree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

" misc
Plug 'sbdchd/neoformat'
Plug 'junegunn/goyo.vim'
Plug 'mhinz/vim-rfc'

call plug#end()

