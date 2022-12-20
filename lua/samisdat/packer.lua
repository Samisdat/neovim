-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- dep of some(?) other plugins
  use('nvim-lua/plenary.nvim')

  -- colors
  use("bluz71/vim-nightfly-guicolors")

  use { -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    requires = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      -- Useful status updates for LSP
      'j-hui/fidget.nvim',
    },
  }

  use { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  }

  use { -- Additional text objects via treesitter
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
  }
  
  -- statusline
  use("nvim-lualine/lualine.nvim")

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  -- file explorer
  use("nvim-tree/nvim-tree.lua")

  -- vs-code like icons
  use("nvim-tree/nvim-web-devicons")

  -- pin files
  use('theprimeagen/harpoon')
  
  -- tmux & split window navigation
  use("christoomey/vim-tmux-navigator") 

  -- commenting with gc
  use("numToStr/Comment.nvim")

  -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

end)
