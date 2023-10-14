require("config.default")
require('config.maps')
require('plugins.lspconfig')
require('plugins.completions')
require('plugins.nvim-tree')
require("plugins.packer")
require('plugins.treesitter')

require'nvim-web-devicons'.get_icons()
require'lspconfig'.pyright.setup{}
require("bufferline").setup{}
require('lualine').setup{ 
  options = { theme  = 'gruvbox-material', },
}

