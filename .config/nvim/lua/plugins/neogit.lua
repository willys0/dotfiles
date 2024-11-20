
return function(use)
    use {
        'NeogitOrg/neogit',
        tag = "v0.0.1",
        requires = {
            "nvim-lua/plenary.nvim",         -- required
            "sindrets/diffview.nvim",        -- optional - Diff integration 
        },
        config = function()
            require('neogit').setup {
                graph_style = "unicode"
            }
        end
    }
end
