return function(use)
    use {
        'nvim-treesitter/nvim-treesitter', -- Enhanced syntax highlighting
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,

        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = "all",
                highlight = {
                    enable = true,
                },
            }
        end
    }
end
