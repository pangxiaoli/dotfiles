local use = require('packer').use
require('packer').startup(function()
    -- packer
    use 'wbthomason/packer.nvim'
    -- theme dracula
    use 'Mofiqul/dracula.nvim'
	-- 
	use 'neovim/nvim-lspconfig'
    use {'hrsh7th/nvim-cmp',
        requires = {
            "onsails/lspkind-nvim", --美化自动完成提示信息
            "hrsh7th/cmp-buffer", --从buffer中智能提示
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
            "octaltree/cmp-look", --用于完成英语单词
            "hrsh7th/cmp-path", --自动提示硬盘上的文件
            "hrsh7th/cmp-emoji", --输入: 可以显示表情
        }
    }
    -- 代码段提示
    use { "L3MON4D3/LuaSnip",
        requires = {
            "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
            "rafamadriz/friendly-snippets" --代码段合集
        }
    }
end)
