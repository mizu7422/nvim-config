-- This file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'mattn/emmet-vim'}
  use 'wbthomason/packer.nvim'
  use {   
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'windwp/nvim-autopairs'}
  use {
    'EdenEast/nightfox.nvim',

    config = function()
      vim.cmd("colorscheme carbonfox")
    end
  }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use ('theprimeagen/harpoon')
  use ('mbbill/undotree')
  use ('tpope/vim-fugitive')

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment the two plugins below if you want to manage the language servers from neovim
      -- {'williamboman/mason.nvim'},
      -- {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    'folke/trouble.nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
    end
  }
  -- Lua code
  use {
    'SirVer/ultisnips',
    config = function()
      vim.g.UltiSnipsExpandTrigger = '<C-y>'
      vim.g.UltiSnipsJumpForwardTrigger = '<C-y>'
      vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
    end
  }
  use {'norcalli/nvim-colorizer.lua'}
  use {'nvim-tree/nvim-web-devicons'}
  use {"Yggdroot/indentLine"}


end)

