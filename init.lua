require("config.default")
require('config.maps')
require("plugins.packer")
require('lualine').setup{ options = 
	{ theme  = 'gruvbox-material', },
}
require'nvim-web-devicons'.get_icons()
require'lspconfig'.pyright.setup{}
require('plugins.lspconfig')
require('plugins.completions')
require('plugins.nvim-tree')

vim.o.background = "dark" 
vim.cmd([[colorscheme gruvbox]])
