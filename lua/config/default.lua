opt, g, wo, cmd = vim.opt, vim.g, vim.wo, vim.cmd

wo.number = true

g.maplocalleader = ' '
g.loaded_netrw = 1
g.mapleader = ' '
g.loaded_netrwPlugin = 1
g.encoding = "utf8"

opt.swapfile = false
opt.wrap = false
opt.colorcolumn = '80'
opt.cursorline = true

opt.hlsearch = false
opt.mouse = 'a'
opt.clipboard = 'unnamedplus'
opt.breakindent = true
opt.undofile = true
opt.ignorecase = true
opt.smartcase = true
opt.updatetime = 250
opt.timeout = true
opt.timeoutlen = 300

opt.signcolumn = 'yes' 

opt.hidden = true
opt.lazyredraw = true
opt.synmaxcol = 240
opt.tabstop = 2
opt.softtabstop = 4
opt.smartindent = true
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.completeopt = 'menuone,noselect'

opt.background = "dark"
opt.termguicolors = true

cmd[[colorscheme xcodedarkhc]]
