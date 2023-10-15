vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- use { "ellisonleao/gruvbox.nvim" }
    use "folke/tokyonight.nvim" 

    use 'wbthomason/packer.nvim'
  
    use 'nvim-treesitter/nvim-treesitter'

    use 'wakatime/vim-wakatime'

    use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

    use 'f-person/git-blame.nvim'
    use 'lewis6991/gitsigns.nvim'

    use 'neovim/nvim-lspconfig' 
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'

    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true } 
    }
    use { 'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons',},
    }

end)
