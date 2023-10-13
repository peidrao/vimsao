vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  use { "ellisonleao/gruvbox.nvim" }
  use 'wbthomason/packer.nvim'

  use 'wakatime/vim-wakatime'

  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  use 'neovim/nvim-lspconfig' 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use 'nvim-tree/nvim-web-devicons'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } 
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons',},
  }
end)
