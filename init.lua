require('plugins.packer')
require("nvim-autopairs").setup{}
require'lspconfig'.pyright.setup{}
require('lualine').setup()
require'nvim-web-devicons'.get_icons()
require('plugins.treesitter')
require('plugins.lspconfig')
require('globals.remaps')
require('globals.autocompletion')

vim.o.background = "dark"
vim.cmd[[colorscheme gruvbox]]

local g = vim.g
local opt = vim.opt
local cmd = vim.cmd
local disable_filetype = { "TelescopePrompt" }
local disable_in_macro = false  -- disable when recording or executing a macro
local disable_in_visualblock = false -- disable when insert after visual block mode
local ignored_next_char = [=[[%w%%%'%[%"%.]]=]
local enable_moveright = true
local enable_afterquote = true  -- add bracket pairs after quote
local enable_check_bracket_line = true  --- check bracket in same line
local enable_bracket_in_quote = true --
local break_undo = true -- switch for basic rule break undo sequence
local check_ts = false
local map_cr = true
local map_bs = true  -- map the <BS> key
local map_c_h = false  -- Map the <C-h> key to delete a pair
local map_c_w = false -- map <c-w> to delete a pair if possible
-- General
opt.compatible = false
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.lazyredraw = true
opt.synmaxcol = 240

-- Theme
opt.termguicolors = true

-- Editor
opt.number = true
opt.wrap = false
opt.signcolumn = 'yes'
opt.showmatch = true
opt.showmode = false
opt.foldmethod = 'marker'
opt.splitright = true
opt.splitbelow = true
opt.conceallevel = 0
opt.colorcolumn = '80'
opt.cursorline = true
opt.scrolloff = 10
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.shortmess:append {c = true}

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.opt.termguicolors = true

require('plugins.bufferline')
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "python"},
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,

    disable = { "c", "rust" },

    additional_vim_regex_highlighting = false,
  },
}

require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"venv", "__pycache__"},
    mappings = {
      i = {
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
  },
  extensions = {
  }
}


