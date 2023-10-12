vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  use { "ellisonleao/gruvbox.nvim" }
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig' 
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
