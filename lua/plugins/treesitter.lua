local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart
nvim_treesitter.setup {
  ensure_installed = {
    'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python',
    'typescript', 'vim'
  },
  sync_install = false,
  highlight = {
    enable = true,
  },
}