-- nvim-tree config

require("nvim-tree").setup{
  sort_by = "case_sensitive",
  view = {
    side='right',	  
    width = 20,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
}
