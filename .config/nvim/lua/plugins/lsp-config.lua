
return function(use)
    use {
        'neovim/nvim-lspconfig', -- Language server protocol configurations
        config = function()
            require'lspconfig'.lua_ls.setup{
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim', 'use', 's', 'sn', 'i', 'rep', 'c', 'd', 'f', 't', 'fmta', 'fmt' },
                        }
                    }
                }
            }
        end
    }
end
