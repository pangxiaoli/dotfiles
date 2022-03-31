vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'Mofiqul/dracula.nvim'

	use 'neovim/nvim-lspconfig'
	use 'tami5/lspsaga.nvim'
	use 'onsails/lspkind-nvim'

	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-emoji'
    use 'hrsh7th/cmp-cmdline'
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'
    use 'octaltree/cmp-look'

	use 'kyazdani42/nvim-web-devicons'

	use 'akinsho/bufferline.nvim'

	use 'nvim-lualine/lualine.nvim'

	use 'yamatsum/nvim-cursorline'

	use 'kyazdani42/nvim-tree.lua'

    use 'lewis6991/gitsigns.nvim'

    use 'norcalli/nvim-colorizer.lua'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	---zen mod
	use 'folke/zen-mode.nvim'
end)
