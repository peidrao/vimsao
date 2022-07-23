options = { noremap = true }

-- Change panes on vim ctrl mappings

-- Escape maps to a rolling jk
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', options)
vim.api.nvim_set_keymap('n', 'b', ':NvimTreeToggle', { noremap = true, silent = true })
