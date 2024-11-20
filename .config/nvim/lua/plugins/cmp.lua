return function(use)
    use {
        'hrsh7th/nvim-cmp', -- Autocompletion
        requires = {
            'hrsh7th/vim-vsnip',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-cmdline',
            'onsails/lspkind.nvim'
        },
        config = function()
            local cmp = require'cmp'
            cmp.setup({
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body) -- Requires vsnip
                    end,
                },
                view = {
                    docks = {
                        auto_open = true
                    }
                },
                mapping = cmp.mapping.preset.insert({
                    ['<Tab>'] = cmp.mapping.select_next_item(),
                    --['<Tab>'] = function(fallback)
                    --    if cmp.visible() then
                    --        cmp.mapping.select_next_item()
                    --    else
                    --        fallback()
                    --    end
                    --end,
                    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                    -- ['<S-Tab>'] = function(fallback)
                    --     if cmp.visible() then
                    --         cmp.mapping.select_prev_item()
                    --     else
                    --         fallback()
                    --     end
                    -- end,
                    ['<CR>'] = cmp.mapping.confirm({select = false}),
                    --['<ESC>'] = cmp.mapping.abort()
                    ['<ESC>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            cmp.abort()
                        else
                            fallback()
                        end
                        --return cmp.mapping.abort()
                        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>', true, false, true), 'n', true)
                    end, {'i', 'c'}),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'nvim_lua'},
                    { name = 'path' },
                    { name = 'buffer', keyword_length = 4 },
                    { name = 'vsnip' },
                }),
                completion = {
                    keyword_length = 1,
                    completeopt = "menu,noselect"
                },
                matching = {
                    disallow_fuzzy_matching = false,
                    disallow_fullfuzzy_matching = false,
                    disallow_partial_fuzzy_matching = false,
                    disallow_partial_matching = false,
                    disallow_prefix_unmatching = false,
                    disallow_symbol_nonprefix_matching = false,
                },
                window = {
                    completion = {
                        winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                        col_offset = -3,
                        side_padding = 0,
                    },
                },
                formatting = {
                    fields = { "kind", "abbr", "menu" },
                    format = function(entry, vim_item)
                        local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                        local strings = vim.split(kind.kind, "%s", { trimempty = true })
                        kind.kind = " " .. (strings[1] or "") .. " "
                        kind.menu = "    (" .. (strings[2] or "") .. ")"

                        return kind
                    end,
                },

            })
        end
    }
end
