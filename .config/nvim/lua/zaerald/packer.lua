local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- color schemes
  use('folke/tokyonight.nvim')
  use('nvim-lualine/lualine.nvim')
  use('ryanoasis/vim-devicons')
  use('norcalli/nvim-colorizer.lua')

  -- telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzy-native.nvim'},
    }
  }

  -- nvim-tree
  use('kyazdani42/nvim-tree.lua')

  -- lsp and langs
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/nvim-treesitter-textobjects')
  use('nvim-treesitter/nvim-treesitter-context')
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- autocompletion
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-cmdline'},
      {'saadparwaiz1/cmp_luasnip'},

      -- snippets
      {'L3MON4D3/LuaSnip', { run = 'make install_jsregexp' } },
      {'rafamadriz/friendly-snippets'},

      {'j-hui/fidget.nvim'},
    }
  }

  -- utils
  use('JoosepAlviste/nvim-ts-context-commentstring')
  use('Raimondi/delimitMate')
  use('ThePrimeagen/harpoon')
  use('Yggdroot/indentLine')
  use('andymass/vim-matchup')
  use('ferrine/md-img-paste.vim')
  use('iamcco/markdown-preview.nvim', { run = 'cd app && npm install' })
  use('lewis6991/gitsigns.nvim')
  use('machakann/vim-highlightedyank')
  use('mattn/emmet-vim')
  use('mbbill/undotree')
  use('mhinz/vim-startify')
  use('sindrets/diffview.nvim')
  use('tommcdo/vim-exchange')
  use('tpope/vim-commentary')
  use('tpope/vim-fugitive')
  use('tpope/vim-repeat')
  use('tpope/vim-surround')
  use('tyru/open-browser.vim')
  use('vim-utils/vim-man')

  -- misc
  use('christoomey/vim-tmux-navigator')
  use('junegunn/goyo.vim')
  use('kyazdani42/nvim-web-devicons')
  use('mhinz/vim-rfc')
  use('sbdchd/neoformat')

  if packer_bootstrap then
    require('packer').sync()
  end
end)
