vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Themes 
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'folke/tokyonight.nvim'
  
  use {
	  'kyazdani42/nvim-tree.lua',
	  requires = {
		  'kyazdani42/nvim-web-devicons', -- optional, for file icons
	  },
	tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

end)
