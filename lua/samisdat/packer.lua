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

end)
