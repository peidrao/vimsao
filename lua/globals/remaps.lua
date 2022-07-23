local set = vim.api.nvim_set_keymap
local ns = { noremap = true, silent = true }

-- Command
set("n", ";", ":", { noremap = true })

-- Clean Search
set("n", "<Leader><Space>", ":let @/=''<CR>", ns)

-- Window
set("n", "<C-j>", ":resize -2<CR>", ns)
set("n", "<C-k>", ":resize +2<CR>", ns)
set("n", "<C-h>", ":vertical resize -2<CR>", ns)
set("n", "<C-l>", ":vertical resize +2<CR>", ns)
set("n", "<Leader>h", ":<C-u>split<CR>", ns)
set("n", "<Leader>v", ":<C-u>vsplit<CR>", ns)

-- Moving
set("n", "j", "gj", ns)
set("n", "k", "gk", ns)


set('n', "<C-b>", ':NvimTreeToggle<CR>', ns)
