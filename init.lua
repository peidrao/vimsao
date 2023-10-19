-- default settings
require("config.default")
require('config.maps')

-- plugins
require("plugins.packer")
require('plugins.lspconfig')
require('plugins.completions')
require('plugins.nvim-tree')
require('plugins.treesitter')

require('nvim-web-devicons').get_icons()
require('lspconfig').pyright.setup{}
require("bufferline").setup{}
require('lualine').setup{ 
  options = { theme  = 'modus-vivendi', },
}
require('gitblame').setup {
    enabled = false,
}

require('gitsigns').setup()
