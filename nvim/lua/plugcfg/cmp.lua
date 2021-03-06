local cmp = require'cmp'
local lspkind = require('lspkind')

cmp.setup {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    -- 来源
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'snippy' },
    	{ name = 'buffer' },
        { name = 'path' },
        { name = 'look' },
        { name = 'emoji' }
    }),

    formatting = {
    	format = lspkind.cmp_format({
      	    with_text = true,
      	    maxwidth = 50,
            before = function (entry, vim_item)
                vim_item.menu = "["..string.upper(entry.source.name).."]"
                return vim_item
            end
        })
    },

    mapping = {
        -- 上一个
        ['<Up>'] = cmp.mapping.select_prev_item(),
        -- 下一个
        ['<Down>'] = cmp.mapping.select_next_item(),
        -- 出现补全
        ['<A-.>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        -- 取消
        ['<A-,>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<Enter>'] = cmp.mapping.confirm({ select = true }), 
    },
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
  sources = {
    { name = 'buffer' }
  }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
      { name = 'cmdline' }
    })
})
