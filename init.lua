require("config.default")
require("plugins.packer")
require('lualine').setup()
require'nvim-web-devicons'.get_icons()
require'lspconfig'.pyright.setup{}
require('plugins.lspconfig')